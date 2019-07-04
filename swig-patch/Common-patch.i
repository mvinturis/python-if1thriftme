%ignore SUBSCRIBE_ID;
%ignore UNSUBSCRIBE_ID;
%ignore GET_SERVICE_DESCRIPTOR_ID;

%ignore __isset;
%ignore Isset;

%ignore *::operator>;
%ignore *::operator<;
%ignore *::operator==;
%ignore *::operator!=;

%define int8_t
int
%enddef
%define int16_t
int
%enddef
%define int32_t
int
%enddef
%define int64_t
long
%enddef

%define result
result_type
%enddef

%define _THRIFT_BEGIN_HASH_NAMESPACE
namespace std {
%enddef

%define _THRIFT_HASHCLASS_TYPE
struct
%enddef

%define _THRIFT_END_HASH_NAMESPACE
}
%enddef

%define TM_DECL_LOCAL
%enddef

%define THRIFTME_EXPORT
%enddef
