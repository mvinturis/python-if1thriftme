%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libUiRvcService
else:
    import libUiRvcService") UiRvcService

%feature("director") driverAssistance::uiRvc::UIRearViewCameraServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/UiRvcService/inc/CaptureStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiRvcService/inc/OverlayStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiRvcService/inc/UIRearViewCameraService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/UiRvcService/inc/UIRearViewCameraService.h"
%}

%inline %{
driverAssistance::uiRvc::UIRearViewCameraServiceClient*
UIRearViewCameraServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::uiRvc::UIRearViewCameraServiceClient > client = driverAssistance::uiRvc::UIRearViewCameraServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::uiRvc::UIRearViewCameraServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::uiRvc::UIRearViewCameraServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UIRearViewCameraServiceClient_waitForConnection(driverAssistance::uiRvc::UIRearViewCameraServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_UIRearViewCameraServiceClient_createSimpleClient(address):
    return libUiRvcService.UIRearViewCameraServiceClient_createSimpleClient(address)
UIRearViewCameraServiceClient.createClient = static_UIRearViewCameraServiceClient_createSimpleClient

def UIRearViewCameraServiceClient_waitForConnection(self):
    return libUiRvcService.UIRearViewCameraServiceClient_waitForConnection(self)
UIRearViewCameraServiceClient.waitForConnection = UIRearViewCameraServiceClient_waitForConnection
%}
