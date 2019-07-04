%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libAntiTheftService
else:
    import libAntiTheftService") AntiTheftService

%feature("director") platform::antiTheft::GeneralAntiTheftServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/AntiTheftService/inc/AntiTheftStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AntiTheftService/inc/GeneralAntiTheftService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/AntiTheftService/inc/GeneralAntiTheftService.h"
%}

%inline %{
platform::antiTheft::GeneralAntiTheftServiceClient*
GeneralAntiTheftServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::antiTheft::GeneralAntiTheftServiceClient > client = platform::antiTheft::GeneralAntiTheftServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::antiTheft::GeneralAntiTheftServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::antiTheft::GeneralAntiTheftServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralAntiTheftServiceClient_waitForConnection(platform::antiTheft::GeneralAntiTheftServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_GeneralAntiTheftServiceClient_createSimpleClient(address):
    return libAntiTheftService.GeneralAntiTheftServiceClient_createSimpleClient(address)
GeneralAntiTheftServiceClient.createClient = static_GeneralAntiTheftServiceClient_createSimpleClient

def GeneralAntiTheftServiceClient_waitForConnection(self):
    return libAntiTheftService.GeneralAntiTheftServiceClient_waitForConnection(self)
GeneralAntiTheftServiceClient.waitForConnection = GeneralAntiTheftServiceClient_waitForConnection
%}
