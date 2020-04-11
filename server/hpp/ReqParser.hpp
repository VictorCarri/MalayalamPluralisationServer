#ifndef REQPARSER_HPP
#define REQPARSER_HPP

/* STL */
#include <array> // std::array
#include <sstream> // std::wstringstream
#include <string> // std::wstring, std::string

#ifdef DEBUG
#include <map> // std::map
#include <iostream> // std::cout, std::wcout, std::endl
#endif

/* Boost */
#include <boost/tuple/tuple.hpp> // boost::tuple
#include <boost/logic/tribool.hpp> // boost::tribool, boost::indeterminate
#include <boost/locale.hpp> // boost::locale::generator
#include <boost/logic/tribool_io.hpp>

/* Our headers */
#include "Request.hpp" // Represents a request
#include "Reply.hpp" // Reply::FailureCode (to indicate why the parser failed)

/*
* Parses a request uses a buffer of data obtained by the server.
*/
class ReqParser
{
	public:
		/**
		* Construct ready to parse the request method.
		**/
		ReqParser();

		/**
		* Reset to initial parser state.
		**/
		void reset();

		template<typename InputIterator>
		boost::tuple<boost::tribool, InputIterator> parse(Request& req, InputIterator begin, InputIterator end)
		{
			while (begin != end)
			{
				#ifdef DEBUG
				std::cout << "ReqParser::parse: Character at begin = ";
				std::wcout << *begin;
				std::cout << std::endl;
				#endif

				boost::tribool res = consume(req, *begin++);
				
				if (res || !res)
				{
					#ifdef DEBUG
					std::cout << "ReqParser::parse: returning (" << res << ", " << *begin << ")" << std::endl;
					#endif

					return boost::make_tuple(res, begin);
				}
			}

			#ifdef DEBUG
			std::cout << "ReqParser::parse: reached end of input." << std::endl
			<< "\tReturning (" << boost::indeterminate << ", " << *begin << ")" << std::endl;
			#endif

			boost::tribool res = boost::indeterminate;
			return boost::make_tuple(res, begin);
		}

		/**
		* @desc Fetches the reason why the parser couldn't finish parsing a request. Needed by Reply::stockReply in Server.
		* @return A reason code that indicates why the parser couldn't finish.
		**/
		Reply::FailureCode getFailedReason() const;

	private:
		/**
		* @desc Handles the next character of input.
		* @param req The request object to set parameters on.
		* @param input The next character of input.
		**/
		boost::tribool consume(Request& req, wchar_t input);

		enum State
		{
			/* Reading "MPP" */
			protocol_name_m = 1, // Expecting 'M' of 'MPP'
			protocol_name_first_p, // Expecting first 'P' of 'MPP'
			protocol_name_second_p, // Expecting second 'P' of 'MPP'

			/* Reading version */
			slash, // Expecting '/' in "MPP/{ver}"
			major, // Reading major version #
			minor, // Reading minor version #
			patch, // Reading patch #

			/* Reading verbs */
			verb_start, // Reading the first char of the request's verb
			fof_o, // Expect 'o' of 'FOF'
			fof_f, // Expect second 'f' of 'FOF'
			issing_first_s, // Expecting first 'S' of "ISSING"
			issing_second_s, // Expecting second 'S' of "ISSING"
			issing_second_i, // Expecting second 'I' in "ISSING"
			issing_n, // Expecting 'N' in "ISSING"
			issing_g, // Expecting 'G' in "ISSING"

			/* Other */	
			space, // Expecting a space character. Uses the prevStat var. to determine which state to go to next.

			/* Parsing headers */
			header_start
		};

		State curStat; // Current state
		State prevStat; // Previous state
		Reply::FailureCode failedReason;
		const std::array<short, 3> version; // Current parser/server version
		std::array<std::wstringstream, 3> verSS; // Used to store textual versions of version #s for each part of the version string (VER_MAJOR.VER_MINOR.VER_PATCH) until we need to convert them to numbers for comparison
		const std::array<std::wstring, 2> verbs; // Recognised verbs
		boost::locale::generator gen; // Used to switch between US English and Malayalam locales

		#ifdef DEBUG
		std::map<State, std::string> stateNames; // Used to name states for debugging
		#endif
};

#endif // REQPARSER_HPP