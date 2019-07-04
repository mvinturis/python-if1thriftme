%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libErrormemoryICCService
else:
    import libErrormemoryICCService") ErrormemoryICCService

%feature("director") vcpu::errormemoryICC::ErrorMemoryClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/ErrormemoryICCService/inc/DTCStatusType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ErrormemoryICCService/inc/DTCDataType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ErrormemoryICCService/inc/StorageConditionLevel.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ErrormemoryICCService/inc/ErrorMemory.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/ErrormemoryICCService/inc/ErrorMemory.h"
%}

%inline %{
vcpu::errormemoryICC::ErrorMemoryClient*
ErrorMemoryClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::errormemoryICC::ErrorMemoryClient > client = vcpu::errormemoryICC::ErrorMemoryClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::errormemoryICC::ErrorMemoryClient > shared_ptr_eraser(nullptr, 
        [](vcpu::errormemoryICC::ErrorMemoryClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ErrorMemoryClient_waitForConnection(vcpu::errormemoryICC::ErrorMemoryClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_ErrorMemoryClient_createSimpleClient(address):
    return libErrormemoryICCService.ErrorMemoryClient_createSimpleClient(address)
ErrorMemoryClient.createClient = static_ErrorMemoryClient_createSimpleClient

def ErrorMemoryClient_waitForConnection(self):
    return libErrormemoryICCService.ErrorMemoryClient_waitForConnection(self)
ErrorMemoryClient.waitForConnection = ErrorMemoryClient_waitForConnection
%}
