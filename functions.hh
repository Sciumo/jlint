// extern function declarations

#ifndef FUNCTIONS_HH
#define FUNCTIONS_HH

#include <string>
#include "types.hh"
class utf_string;

extern void format_message(int code, utf_string const& file, int line, va_list ap);
extern void message_at(int code, utf_string const& file, int line, ...);
extern int get_type(utf_string const& str);
extern int get_number_of_parameters(utf_string const& str);
extern unsigned string_hash_function(byte* p);

#endif
