#ifndef MPP_REPPARSER_HPP
#define MPP_REPPARSER_HPP

/* STL */
#ifdef DEBUG
#include <iostream> // std::cout, std::wcout
#include <map> // std::map
#include <string> // std::string
#endif

#include <array> // std::array
#include <memory> // std::unique_ptr
#include <sstream> // std::stringstream

/* Boost */
#include <boost/tuple/tuple.hpp> // boost::tuple, boost::make_tuple
#include <boost/logic/tribool.hpp> // boost::tribool, boost::indeterminate
#ifdef DEBUG
#include <boost/logic/tribool_io.hpp> // operator<< for boost::tribool
#endif

/* MPP */
#include "mpp/Reply.hpp" // Represents a Reply to parse

namespace mpp
{
	/**
	* @desc This class parses a reply from the server into a Response object.
	**/
	class RepParser
	{
		public:
			/**
			* We don't include states for '\r' and '\n's because the Client program that uses us
			* is expected to read until encountering a sequence of "\r\n", and
			* to set the parser's state before calling our parse() member as appropriate.
			**/
			enum State // Parser state
			{
				/* Reading "MPP" */
				initial_m, // Expecting 'M' in "MPP"
				first_p,
				second_p,

				/* Reading the protocol version */
				slash, // Expecting the slash in "MPP/{ver}"
				major, // Protocol major version number
				minor,
				patch, // Patch #

				/* Reading the code */
				first_code_digit, // Expecting the first digit of the reply code
				second_code_digit,
				third_code_digit,
				dont_care, // Used to ignore characters after the third code digit. The caller must manually set the parser's state before parsing headers

				/* Reading headers */
				header_name,
				space_after_colon,
				header_val
			};

			/**
			* @desc Default constructor. Constructs the parser in a state such that it is ready to parse the beginning of a reply.
			**/
			RepParser();

			/**
			* @desc Resets the parser to its initial state.
			**/
			void reset();

			template<typename InputIterator>
			boost::tuple<boost::tribool, InputIterator> parse(Reply& rep, InputIterator begin, InputIterator end)
			{
				boost::tribool res;

				while (begin != end)
				{
					#ifdef DEBUG
					std::cout << "mpp::RepParser::parse: character at begin = '";
					std::wcout << *begin;
					std::cout << "'" << std::endl;
					#endif

					res = consume(rep, *begin++); // Handle the current character and see what happens

					if (res || !res) // We have either successfully parsed a response, or encountered a malformed response
					{
						#ifdef DEBUG
						std::cout << "mpp::RepParser::parse: either finished parsing or encountered malformed data." << std::endl;
						std::cout << "\tReturning (" << res << "," << *begin << ")" << std::endl;
						#endif
						return boost::make_tuple(res, begin);
					}

					#ifdef DEBUG
					std::cout << std::endl;
					#endif
				}

				res = boost::indeterminate;
				#ifdef DEBUG
				std::cout << "mpp::RepParser::parse: reached end of input." << std::endl;
				std::cout << "\tReturning (" << res << ", " << *begin << ")" << std::endl;
				#endif
				return boost::make_tuple(res, begin);
			}

			/**
			* @desc Sets our state before parsing more data.
			* @param newStat The new state to change to.
			**/
			void setState(State newStat);

			/**
			* @desc Fetches the parser's current state.
			* @return The parser's current state.
			**/
			State getState() const;

			#ifdef DEBUG
			std::string getStateName(State stat);
			#endif

			/**
			* @desc Adds a header to the given reply.
			* @param rep The reply object to add a header to.
			**/
			void storeHeader(Reply& rep);

		private:
			/**
			* @desc Handles the current character in the input stream.
			* @param rep The Reply object whose parameters we'll set while parsing.
			* @param input The next character of input.
			**/
			boost::tribool consume(Reply& rep, char input);

			State curStat; // Parser's current state
			Reply::Status curRepStat; // To provide feedback to the client
			std::array<short, 3> version; // Current parser/client version
			std::unique_ptr<std::stringstream> pMajSS; // Stores the major version number
			std::unique_ptr<std::stringstream> pMinSS; // Used to read the minor version #
			std::unique_ptr<std::stringstream> pPatchSS; // Used to read the patch #
			std::unique_ptr<std::stringstream> pCodeSS; // Used to build the string that'll be converted into a numeric code
			std::unique_ptr<std::stringstream> pHeaderNameSS; // Used to read a header's name
			std::unique_ptr<std::stringstream> pHeaderValSS; // Used to read a header's value
			#ifdef DEBUG
			std::map<State, std::string> stateNames; // Used for debugging
			std::map<char, std::string> charPrintStrings; // Used to print special characters ('\n', '\r', etc.) as strings
			#endif
	}; // class RepParser
}; // namespace mpp

#endif // MPP_REPPARSER_HPP
