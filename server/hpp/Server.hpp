#ifndef SERVER_HPP
#define SERVER_HPP

/* C++ Versions of C headers */
#include <cstddef> // std::size_t

/* STL */
#include <string> // std::string

/* Boost */
#include <boost/noncopyable.hpp>
#include <boost/asio.hpp> // boost::asio::signal_set, boost:asio::ip::tcp::acceptor
#include <boost/system/error_code.hpp> // boost::system::error_code

/* Our headers */
#include "IoContextPool.hpp" // io_context pool
#include "Connection.hpp" // Represents a connection
#include "ReqHandler.hpp" // Handles a request

class Server : private boost::noncopyable
{
	public:
		/**
		* @desc Creates a server that listens on the given port, and uses a pool of io_contexts of the given size.
		* @param port Port to listen on.
		* @param numThreads # of threads to use.
		**/
		explicit Server(const std::string& address, int port, std::size_t numThreads);

		/**
		* @desc Runs the server's io_context loop.
		**/
		void run();

	private:
		/**
		* @desc Handles a request to stop the server.
		**/
		void handleStop();

		/**
		* @desc Initiates an asynchronous accept operation.
		**/
		void startAccept();

		/**
		* @desc Handles completion of an asynchronous accept operation.
		* @param e An error object, if any occurred.
		**/
		void handleAccept(const boost::system::error_code& e);

		IoContextPool iocp; // Pool of io_contexts used for async ops
		boost::asio::signal_set signals; // Used to receive signals
		boost::asio::ip::tcp::acceptor acceptor; // Used to listen for incoming connections
		ConnectionPtr newConn; // Pointer to a new connection
		ReqHandler reqHandler; // Handdles a request
};

#endif // SERVER_HPP