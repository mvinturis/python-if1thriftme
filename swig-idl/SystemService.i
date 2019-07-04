%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libSystemService
else:
    import libSystemService") SystemService

%feature("director") cluster::system::OnOffServiceClient;
%feature("director") cluster::system::WatchdogServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/RebootDomain.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/StateChangeResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/ClientHeartbeatMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/ClientExpectBehavior.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/WatchdogEventType.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/OnOffService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/WatchdogService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/OnOffService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemService/inc/WatchdogService.h"
%}

%inline %{
cluster::system::OnOffServiceClient*
OnOffServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::system::OnOffServiceClient > client = cluster::system::OnOffServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::system::OnOffServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::system::OnOffServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void OnOffServiceClient_waitForConnection(cluster::system::OnOffServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::system::WatchdogServiceClient*
WatchdogServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::system::WatchdogServiceClient > client = cluster::system::WatchdogServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::system::WatchdogServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::system::WatchdogServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WatchdogServiceClient_waitForConnection(cluster::system::WatchdogServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_OnOffServiceClient_createSimpleClient(address):
    return libSystemService.OnOffServiceClient_createSimpleClient(address)
OnOffServiceClient.createClient = static_OnOffServiceClient_createSimpleClient

def OnOffServiceClient_waitForConnection(self):
    return libSystemService.OnOffServiceClient_waitForConnection(self)
OnOffServiceClient.waitForConnection = OnOffServiceClient_waitForConnection

@staticmethod
def static_WatchdogServiceClient_createSimpleClient(address):
    return libSystemService.WatchdogServiceClient_createSimpleClient(address)
WatchdogServiceClient.createClient = static_WatchdogServiceClient_createSimpleClient

def WatchdogServiceClient_waitForConnection(self):
    return libSystemService.WatchdogServiceClient_waitForConnection(self)
WatchdogServiceClient.waitForConnection = WatchdogServiceClient_waitForConnection
%}
