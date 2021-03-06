/* C++ versions of C headers */
#include <cstdint> // std::uintmax_t
#include <cstddef> // std::size_t

/* Standard C++ */
#ifdef DEBUG
#include <iostream> // std::cout, std::cerr
#include <iomanip> // std::quoted
#endif
#include <bitset> // std::bitset
#include <vector> // std::vector
#include <algorithm> // std::for_each_n

/* Boost */
#include <boost/asio/io_context.hpp> // boost::asio::io_context
#include <boost/asio/buffer.hpp> // boost::asio::buffer, boost::asio::const_buffer
#include <boost/asio/write.hpp> // boost::asio::async_write
#include <boost/asio/ip/tcp.hpp> // boost::asio::ip::tcp::socket::shutdown_both
#include <boost/logic/tribool.hpp> // boost::tribool
#include <boost/logic/tribool_io.hpp> // operator<< for boost::tribool
#include <boost/tuple/tuple.hpp> // boost::tie, boost::tuples::ignore
#include <boost/system/error_code.hpp> // boost::system::error_code

/* Our headers */
#include "bosmacros/error_code.hpp" // ERROR_CODE macro
#include "bosmacros/filesystem.hpp" // FILESYSTEM_PATH
#include "mpp/ReqHandler.hpp" // Request handler class
#include "Connection.hpp" // Class def

/**
* @desc Constructs a Connection with the givne io_context & request handler.
* @param io_context The io_context to use.
* @param dbConfFilePath Path to configuration file containing DB vars. Used to construct ReqHandler.
**/
Connection::Connection(boost::asio::io_context& io_context, std::string dbConfFilePath) : socket(io_context), // Create our socket
	reqHandler(dbConfFilePath) // Construct our own ReqHandler so that it won't try to maintain a connection to the DB for too long
{
	#ifdef DEBUG
	std::cout << "Connection::Connection running" << std::endl;
	#endif
}

/**
* @desc Fetches the socket associated with this Connection.
* @return The socket associated with this Connection.
**/	
boost::asio::ip::tcp::socket& Connection::getSocket()
{
	return socket;
}

/**
* @desc Starts the first asynchronous operation for the connection.
**/
void Connection::start()
{
	#ifdef DEBUG
	std::cout << "Connection::start called." << std::endl;
	#endif
	socket.async_read_some(
		boost::asio::buffer(
			buffer
		),
		[lifetime = shared_from_this(), this](const ERROR_CODE& e, std::size_t bTrans)
		{
			handleRead(e, bTrans);
		}
	);
	#ifdef DEBUG
	std::cout << "Connection::start ending." << std::endl;
	#endif
}

/**
* @desc Handles completion of a read operation.
* @param e An error code. Set if an error occurred during the read.
* @param bytesTransferred # of bytes transferred during the read.
**/
void Connection::handleRead(const ERROR_CODE& e, std::size_t bytesTransferred)
{
	if (!e)
	{
		#ifdef DEBUG
		std::cout << "Connection::handleRead: no error" << std::endl
		<< "\tTransferred " << bytesTransferred << " bytes" << std::endl;

		/* Write the data to a file so that we can see it */
		FILESYSTEM_PATH reqPath("request"); // The path to the output file
		FILESYSTEM_PATH binReqPath("requestBinDump"); // Path to file containing binary values of each character
		
		if (FILESYSTEM_EXISTS(reqPath)) // The file exists
		{
			std::cout << "Connection::handleRead: the file " << reqPath << " exists" << std::endl;

			try
			{
				FILESYSTEM_REMOVE(reqPath);
				std::cout << "Connection::handleRead: removed file " << reqPath << std::endl;
			}

			catch (FILESYSTEM_ERROR& fe)
			{
				std::cerr << "Connection::handleRead: error while removing file " << reqPath << ": " << fe.what() << std::endl;
			}
		}

		if (FILESYSTEM_EXISTS(binReqPath)) // The file exists
		{
			std::cout << "Connection::handleRead: The file " << binReqPath << " exists." << std::endl;

			try
			{
				FILESYSTEM_REMOVE(binReqPath);
				std::cout << "Connection::handleRead: removed file " << binReqPath << std::endl;
			}

			catch (FILESYSTEM_ERROR& fe)
			{
				std::cerr << "Connection::handleRead: error while removing file " << binReqPath << ": " << fe.what() << std::endl;
			}
		}

		OFSTREAM writeStrm(reqPath); // Open the file for writing
		std::cout << "Connection::handleRead: the file " << reqPath << " is " << (writeStrm.is_open() ? "open" : "closed") << std::endl;
		OFSTREAM binDumpStrm(binReqPath); // Open path of file containing binary values
		std::cout << "Connection::handleRead: the file " << binReqPath << " is " << (binDumpStrm.is_open() ? "open" : "closed") << std::endl;

        for (std::size_t i = 0; i < bytesTransferred; i++) // Write each byte to each of the files and stdout
        {
            std::cout << buffer[i];
            writeStrm << buffer[i];
		    std::bitset<8> charBits(static_cast<unsigned long long>(buffer[i]));
            binDumpStrm << charBits << " ";
        }

		std::cout << "Connection::handleRead: size of file " << reqPath << " after writing is " << FILESYSTEM_SIZE(reqPath) << std::endl
		<< "Connection::handleRead: size of file " << binReqPath << " after writing is " << FILESYSTEM_SIZE(binReqPath) << std::endl;
		#endif

		/* Parse a request and check what state the parser is in */
		boost::tribool result;
		boost::tie(result, boost::tuples::ignore) = reqParser.parse(
			req,
			buffer.data(),
			buffer.data() + bytesTransferred
		);

		#ifdef DEBUG
		std::cout << "Connection::handleRead: parse result was " << result << std::endl;
		#endif

		if (result) // The parser successfully parsed an entire request
		{
			#ifdef DEBUG
			std::cout << "Connection::handleRead: the parser successfully parsed an entire request" << std::endl;
			#endif
			reqHandler.handleReq(req, rep); // Handle a request - generate a reply according to what the client requested
			#ifdef DEBUG
			std::cout << "Connection::handleRead: reply to send is: " << std::endl
			<< rep << std::endl;
			#endif
			repBufs = rep.toBuffers(); // Fetch the buffers to write
			#ifdef DEBUG
			std::cout << "Connection::handleRead: # of reply buffers = " << repBufs.size() << std::endl
			<< "Connection::handleRead: reply buffer contents: " << std::endl;
			unsigned short bufNum = 1;

			for (auto buf : repBufs)
			{
				const char* bufDat = static_cast<const char*>(buf.data());
				std::size_t bufSiz = buf.size();
				std::cout << bufNum << ")\t";

				for (std::size_t i = 0; i < bufSiz; i++)
				{
					std::cout << bufDat[i];
				}

				std::cout << std::endl;
				++bufNum;
			}
	
			std::cout << "server::Connection::handleRead: finished writing buffers to cout" << std::endl;
			#endif
			boost::asio::async_write(
				socket,
				repBufs,
				[lifetime = shared_from_this(), this](const ERROR_CODE& err, std::size_t bytesTrans)
				{
					handleWrite(err, bytesTrans);
				}
			);
		}

		else if (!result) // Malformed request
		{
			#ifdef DEBUG
			std::cout << "Connection::handleRead: the request was malformed." << std::endl;
			#endif

			rep = mpp::Reply::stockReply(reqParser.getStatus()); // Generate a stock reply using the error code which the parser identified
			rep.setContent(""); // Clear the reply's content
			rep.clearHeaders(); // Clear the reply's headers
			repBufs = rep.toBuffers();
			boost::asio::async_write(
				socket,
				repBufs,
				[lifetime = shared_from_this(), this](const ERROR_CODE& err, std::size_t bTrans)
				{
					handleWrite(err, bTrans);
				}
			);
		}

		else // Need more data
		{
			#ifdef DEBUG
			std::cout << "Connection::handleRead: we need more data" << std::endl;
			#endif

			socket.async_read_some(
				boost::asio::buffer(buffer),
				[lifetime = shared_from_this(), this](const ERROR_CODE& err, std::size_t bTrans)
				{
					handleRead(err, bTrans);
				}
			);
		}
	}
	
	else
	{
		#ifdef DEBUG
		std::cerr << "Connection::handleRead: an error occurred while handling the previous read operation." << std::endl
		<< "\tError value = " << e.value() << std::endl
		<< "\tError message = " << std::quoted(e.message()) << std::endl
		<< "\tThe operation " << (e.failed() ? "failed" : "didn't fail") << std::endl;
		#endif
	}

	/*
	* No new async. ops. are started if an error occurs. Thus, all shared_ptr
	* references to the connection object will disappear and the object will be
	* destroyed automatically after this handler returns. The Connection class'
	* destructor closes the socket.
	*/
}

/**
* @desc Handles completion of a write operation.
* @param e Describes what error occurred, if any.
**/
void Connection::handleWrite(const ERROR_CODE& e, std::size_t bytesTransferred)
{
	#ifdef DEBUG
	std::cout << "Connection::handleWrite: wrote " << bytesTransferred << " bytes" << std::endl;
	#endif

	if (!e) // No error
	{
		#ifdef DEBUG
		std::cout << "Connection::handleWrite: no error occurred." << std::endl;
		#endif

		/* Close the connection gracefully */
		ERROR_CODE ignoredEc;
		socket.shutdown(boost::asio::ip::tcp::socket::shutdown_both, ignoredEc);

		#ifdef DEBUG
		std::cout << "Connection::handleWrite: shutdown socket." << std::endl;
		#endif
	}

	else
	{
		#ifdef DEBUG
		std::cerr << "Connection::handleWrite: an error occurred while handling the previous write operation." << std::endl
		<< "\tError value = " << e.value() << std::endl
		<< "\tError message = " << std::quoted(e.message()) << std::endl
		<< "\tThe operation " << (e.failed() ? "failed" : "didn't fail") << std::endl;
		#endif
	}

	/*
	* No new async. ops. are started. Thus, all shared_ptr references to the
	* Connection object will disappear, and the object will be destroyed
	* automatically after this handler returns. The connection class'
	* (automatic) destructor closes the socket.
	*/
}
