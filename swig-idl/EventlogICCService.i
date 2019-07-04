%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libEventlogICCService
else:
    import libEventlogICCService") EventlogICCService

%feature("director") vcpu::eventlogICC::EventLoggerClient;

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


%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EventlogICCService/inc/EventLogger.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/EventlogICCService/inc/EventLogger.h"
%}

%inline %{
vcpu::eventlogICC::EventLoggerClient*
EventLoggerClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::eventlogICC::EventLoggerClient > client = vcpu::eventlogICC::EventLoggerClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::eventlogICC::EventLoggerClient > shared_ptr_eraser(nullptr, 
        [](vcpu::eventlogICC::EventLoggerClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EventLoggerClient_waitForConnection(vcpu::eventlogICC::EventLoggerClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_EventLoggerClient_createSimpleClient(address):
    return libEventlogICCService.EventLoggerClient_createSimpleClient(address)
EventLoggerClient.createClient = static_EventLoggerClient_createSimpleClient

def EventLoggerClient_waitForConnection(self):
    return libEventlogICCService.EventLoggerClient_waitForConnection(self)
EventLoggerClient.waitForConnection = EventLoggerClient_waitForConnection
%}
