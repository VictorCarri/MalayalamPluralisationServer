#ifndef MPP_EXCEPTIONS_EXCEPTION_HPP
#define MPP_EXCEPTIONS_EXCEPTION_HPP

/* Standard C++ */
#include <stdexcept> // std::logic_error
#include <string> // std::string

namespace mpp
{
	namespace exceptions
	{
		/**
		* Base class of all MPP exceptions. Used to separate our exceptions from other sources.
		**/
		class Exception : public virtual std::logic_error
		{
			public:
				/**
				* @desc Constructor. Creates an exception that contains the given text.
				* @param what The text to store in this exception.
				**/
				Exception(std::string what);

				/**
				* @desc Constructor. Creates an exception that contains the given text.
				* @param what The text to store in this exception.
				**/
				Exception(char* what);

				/**
				* @desc Ensure that this base class has a virtual destructor, to enable polymorphism.
				**/
				virtual ~Exception() = default;
		};
	};
};

#endif // MPP_EXCEPTIONS_EXCEPTION_HPP
