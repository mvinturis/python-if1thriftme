%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libVariantCodingICCService
else:
    import libVariantCodingICCService") VariantCodingICCService

%feature("director") vcpu::variantCodingICC::VariantCodingClient;

%begin %{
#define SWIG_PYTHON_2_UNICODE
%}

%include <std_vector.i>
%include <std_string.i>
%include <std_shared_ptr.i>
%include <std_unordered_map.i>
%include <std_unordered_set.i>

%include "../swig-patch/Common-patch.i"
%include "../swig-patch/TDeferredResponse-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingICCService/inc/VariantCodingVersion.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingICCService/inc/Status.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingICCService/inc/VariantCodingStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingICCService/inc/VariantCoding.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingICCService/inc/VariantCoding.h"
%}

%inline %{
vcpu::variantCodingICC::VariantCodingClient*
VariantCodingClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::variantCodingICC::VariantCodingClient > client = vcpu::variantCodingICC::VariantCodingClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::variantCodingICC::VariantCodingClient > shared_ptr_eraser(nullptr, 
        [](vcpu::variantCodingICC::VariantCodingClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VariantCodingClient_waitForConnection(vcpu::variantCodingICC::VariantCodingClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_VariantCodingClient_createSimpleClient(address):
    return libVariantCodingICCService.VariantCodingClient_createSimpleClient(address)
VariantCodingClient.createClient = static_VariantCodingClient_createSimpleClient

def VariantCodingClient_waitForConnection(self):
    return libVariantCodingICCService.VariantCodingClient_waitForConnection(self)
VariantCodingClient.waitForConnection = VariantCodingClient_waitForConnection
%}
