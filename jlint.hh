//-< JLINT.H >-------------------------------------------------------+--------+
// Jlint                      Version 2.2        (c) 1998  GARRET    |     ?  |
// (Java Lint)                                                       |   /\|  |
//                                                                   |  /  \  |
//                          Created:     28-Mar-98    K.A. Knizhnik  | / [] \ |
//                          Last update: 05-Jun-01    Cyrille Artho  | GARRET |
//-------------------------------------------------------------------+--------+
// Java verifier 
//-------------------------------------------------------------------+--------+

#ifndef __JLINT_HH__
#define __JLINT_HH__

#define VERSION 2.2

#include "types.hh"
#include "message_node.hh"
#include "utf_string.hh"
#include "method_desc.hh"
#include "field_desc.hh"
#include "class_desc.hh"
#include "constant.hh"
#include "callee_desc.hh"
#include "access_desc.hh"
#include "graph.hh"
#include "component_desc.hh"
#include "var_desc.hh"
#include "local_context.hh"
#include "overridden_method.hh"
#include "string_pool.hh"

enum const_types { 
    c_none,
    c_utf8,
    c_reserver,
    c_integer,
    c_float,
    c_long,
    c_double, 
    c_class,
    c_string,
    c_field_ref,
    c_method_ref,
    c_interface_method_ref,
    c_name_and_type
};

//
// Constants for extracting zip file
//

#define LOCAL_HDR_SIG     "\113\003\004"   /*  bytes, sans "P" (so unzip */
#define LREC_SIZE     26    /* lengths of local file headers, central */
#define CREC_SIZE     42    /*  directory headers, and the end-of-    */
#define ECREC_SIZE    18    /*  central-dir record, respectively      */
#define TOTAL_ENTRIES_CENTRAL_DIR  10
#define SIZE_CENTRAL_DIRECTORY     12
#define C_UNCOMPRESSED_SIZE        20
#define C_FILENAME_LENGTH          24
#define C_EXTRA_FIELD_LENGTH       26
#define C_RELATIVE_OFFSET_LOCAL_HEADER    38
#define L_FILENAME_LENGTH                 22
#define L_EXTRA_FIELD_LENGTH              24

#endif
