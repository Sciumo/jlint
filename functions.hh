// extern function declarations

#ifndef FUNCTIONS_HH
#define FUNCTIONS_HH

#include "stdio.h"
#include "types.hh"
#include <stdarg.h>
class utf_string;

#ifndef __VALIST
#ifdef va_list
#define __VALIST va_list
#endif
// FreeBSD uses typedef in stdarg.h
#ifdef __FreeBSD__
#define __VALIST va_list
#endif
// so does OpenBSD
#ifdef __OpenBSD__
#define __VALIST va_list
#endif
// so does MSVC++
#ifdef VISUAL_CPP
#define __VALIST va_list
#endif

// Fix for cygwin (and possible others), if va_list typedef'd or undefined
#ifndef __VALIST
#define __VALIST void*
#endif
#endif

extern void format_message(int code, utf_string const& file, int line, __VALIST ap);
extern void message_at(int code, utf_string const& file, int line, ...);
extern int get_type(utf_string const& str);
extern int get_number_of_parameters(utf_string const& str);
extern unsigned string_hash_function(byte* p);

#endif
