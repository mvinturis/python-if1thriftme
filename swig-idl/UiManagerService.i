%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libUiManagerService
else:
    import libUiManagerService") UiManagerService

%feature("director") platform::uiManager::UIStateServiceClient;
%feature("director") platform::uiManager::UIStreamingServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/ConsumerState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/VideoSource.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/StreamConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/ViewPort.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/UIStateService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/UIStreamingService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/UIStateService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/UIStreamingService.h"
%}

%inline %{
platform::uiManager::UIStateServiceClient*
UIStateServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::uiManager::UIStateServiceClient > client = platform::uiManager::UIStateServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::uiManager::UIStateServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::uiManager::UIStateServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UIStateServiceClient_waitForConnection(platform::uiManager::UIStateServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::uiManager::UIStreamingServiceClient*
UIStreamingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::uiManager::UIStreamingServiceClient > client = platform::uiManager::UIStreamingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::uiManager::UIStreamingServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::uiManager::UIStreamingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UIStreamingServiceClient_waitForConnection(platform::uiManager::UIStreamingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_UIStateServiceClient_createSimpleClient(address):
    return libUiManagerService.UIStateServiceClient_createSimpleClient(address)
UIStateServiceClient.createClient = static_UIStateServiceClient_createSimpleClient

def UIStateServiceClient_waitForConnection(self):
    return libUiManagerService.UIStateServiceClient_waitForConnection(self)
UIStateServiceClient.waitForConnection = UIStateServiceClient_waitForConnection

@staticmethod
def static_UIStreamingServiceClient_createSimpleClient(address):
    return libUiManagerService.UIStreamingServiceClient_createSimpleClient(address)
UIStreamingServiceClient.createClient = static_UIStreamingServiceClient_createSimpleClient

def UIStreamingServiceClient_waitForConnection(self):
    return libUiManagerService.UIStreamingServiceClient_waitForConnection(self)
UIStreamingServiceClient.waitForConnection = UIStreamingServiceClient_waitForConnection
%}
