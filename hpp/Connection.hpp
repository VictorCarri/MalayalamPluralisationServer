#ifndef CONNECTION_HPP
#define CONNECTION_HPP

/* STL */
#include <cstddef> // std::size_t

/* Boost */
#include <boost/enable_shared_from_this.hpp> // boost::enable_shared_from_this
#include <boost/noncopyable.hpp> // boost::noncopyable
#include <boost/asio.hpp> // boost::asio::io_context, boost::asio::ip::tcp::socket
#include <boost/array.hpp> // boost::array
#include <boost/system/error_code.hpp> // boost::system::error_code
#include <boost/shared_ptr.hpp> // boost::shared_ptr

/* Our headers */
#include "ReqHandler.hpp" // Request handler
#include "ReqParser.hpp" // Request parser
#include "Request.hpp" // Represents a request
#include "Reply.hpp" // Represents a reply

class Connection : public boost::enable_shared_from_this<Connection>,
			private boost::noncopyable
{
	public:
		/**
		* @desc Constructs a Connection with the givne io_context & request handler.
		* @param io_context The io_context to use.
		* @param handler The request handler object to use.
		**/
		explicit Connection(boost::asio::io_context& io_context, ReqHandler& handler);
	
		/**
		* @desc Fetches the socket associated with this Connection.
		* @return The socket associated with this Connection.
		**/	
		boost::asio::ip::tcp::socket& socket();

		/**
		* @desc Starts the first asynchronous operation for the connection.
		**/
		void start();

	private:

		/**
		* @desc Handles completion of a read operation.
		* @param e An error code. Set if an error occurred during the read.
		* @param bytesTransferred # of bytes transferred during the read.
		**/
		void handleRead(const boost::system::error_code& e, std::size_t bytesTransferred);

		/**
		* @desc Handles completion of a write operation.
		* @param e Describes what error occurred, if any.
		**/
		void handleWrite(const boost::system::error_code& e);

		boost::asio::ip::tcp::socket socket; // We listen on this
		ReqHandler& reqHandler; // Parses requests
		boost::array<wchar_t, 8192> buffer; // Stores data read from the socket
		RequestParser reqParser;
		Request req;
		Reply rep;
};

typedef boost::shared_ptr<Connection> ConnectionPtr;
#endif // CONNECTION_HPP
