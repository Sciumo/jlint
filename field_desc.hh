#ifndef FIELD_DESC_HH
#define FIELD_DESC_HH

#include "component_desc.hh"
#include "class_desc.hh"
#include "utf_string.hh"

class field_desc : public component_desc { 
 public:
  field_desc*    next;
  int            attr;
  enum { 
    f_static     = 0x0008, 
    f_final      = 0x0010,
    f_volatile   = 0x0040, 
	
    f_used       = 0x10000,
    f_serialized = 0x20000 // field is accessed only from methods 
    // of related classes
  };  

  field_desc(utf_string const& field_name, class_desc* owner, 
             field_desc* chain) 
    : component_desc(field_name, owner)
    {
      next = chain; 
      attr = f_serialized;
    }
};

#endif
