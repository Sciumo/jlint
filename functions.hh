// extern function declarations

#ifndef FUNCTIONS_HH
#define FUNCTIONS_HH

#include "stdio.h"
#include "types.hh"
class utf_string;

// cygwin fix:
#ifndef __VALIST
#ifdef va_list
#define __VALIST va_list
#else
#define __VALIST void*
#endif
#endif

extern void format_message(int code, utf_string const& file, int line, __VALIST ap);
extern void message_at(int code, utf_string const& file, int line, ...);
extern int get_type(utf_string const& str);
extern int get_number_of_parameters(utf_string const& str);
extern unsigned string_hash_function(byte* p);

#endif
