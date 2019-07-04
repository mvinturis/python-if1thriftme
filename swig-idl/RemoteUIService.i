%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libRemoteUIService
else:
    import libRemoteUIService") RemoteUIService

%feature("director") communication::remoteUI::RemoteUITurnByTurnClient;
%feature("director") communication::remoteUI::RemoteUIControlServiceClient;
%feature("director") communication::remoteUI::ApplicationStateControlServiceClient;
%feature("director") communication::remoteUI::GeneralRemoteUIServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/GuidingService/inc/LaneInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/GuidingService/inc/DividerType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/GuidingService/inc/LaneDirectionBitfield.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/GuidingService/inc/LaneType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/GuidingService/inc/LanePositionConfidence.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/Distances.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/DistanceUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/Maneuver.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ManeuverState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/TurnType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RouteGuidanceState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/TargetApplication.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RemoteUIDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RemoteUIProtocol.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/AutomaticLaunchType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/DeviceState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/WifiConfirmation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallListType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ScreenModeType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RemoteApplication.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ApplicationCategory.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ApplicationListException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/InvalidActionIDException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/InvalidNotificationIDException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ApplicationLaunchException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/BatteryStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/BatteryChargingStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/StandbyModeChangeReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/InitializationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ReturnScreenInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/LaunchResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/DisconnectReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/Notification.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/NotificationAction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/AppStateID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/AppInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/SpeechMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ResourceID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ResourceTransferPriority.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/AppInfoState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RequestState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/RemoteUISettingsConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RemoteUITurnByTurn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RemoteUIControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ApplicationStateControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/GeneralRemoteUIService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RemoteUITurnByTurn.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/RemoteUIControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/ApplicationStateControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUIService/inc/GeneralRemoteUIService.h"
%}

%inline %{
communication::remoteUI::RemoteUITurnByTurnClient*
RemoteUITurnByTurnClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::remoteUI::RemoteUITurnByTurnClient > client = communication::remoteUI::RemoteUITurnByTurnClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::remoteUI::RemoteUITurnByTurnClient > shared_ptr_eraser(nullptr, 
        [](communication::remoteUI::RemoteUITurnByTurnClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void RemoteUITurnByTurnClient_waitForConnection(communication::remoteUI::RemoteUITurnByTurnClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::remoteUI::RemoteUIControlServiceClient*
RemoteUIControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::remoteUI::RemoteUIControlServiceClient > client = communication::remoteUI::RemoteUIControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::remoteUI::RemoteUIControlServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::remoteUI::RemoteUIControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void RemoteUIControlServiceClient_waitForConnection(communication::remoteUI::RemoteUIControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::remoteUI::ApplicationStateControlServiceClient*
ApplicationStateControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::remoteUI::ApplicationStateControlServiceClient > client = communication::remoteUI::ApplicationStateControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::remoteUI::ApplicationStateControlServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::remoteUI::ApplicationStateControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ApplicationStateControlServiceClient_waitForConnection(communication::remoteUI::ApplicationStateControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::remoteUI::GeneralRemoteUIServiceClient*
GeneralRemoteUIServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::remoteUI::GeneralRemoteUIServiceClient > client = communication::remoteUI::GeneralRemoteUIServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::remoteUI::GeneralRemoteUIServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::remoteUI::GeneralRemoteUIServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralRemoteUIServiceClient_waitForConnection(communication::remoteUI::GeneralRemoteUIServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_RemoteUITurnByTurnClient_createSimpleClient(address):
    return libRemoteUIService.RemoteUITurnByTurnClient_createSimpleClient(address)
RemoteUITurnByTurnClient.createClient = static_RemoteUITurnByTurnClient_createSimpleClient

def RemoteUITurnByTurnClient_waitForConnection(self):
    return libRemoteUIService.RemoteUITurnByTurnClient_waitForConnection(self)
RemoteUITurnByTurnClient.waitForConnection = RemoteUITurnByTurnClient_waitForConnection

@staticmethod
def static_RemoteUIControlServiceClient_createSimpleClient(address):
    return libRemoteUIService.RemoteUIControlServiceClient_createSimpleClient(address)
RemoteUIControlServiceClient.createClient = static_RemoteUIControlServiceClient_createSimpleClient

def RemoteUIControlServiceClient_waitForConnection(self):
    return libRemoteUIService.RemoteUIControlServiceClient_waitForConnection(self)
RemoteUIControlServiceClient.waitForConnection = RemoteUIControlServiceClient_waitForConnection

@staticmethod
def static_ApplicationStateControlServiceClient_createSimpleClient(address):
    return libRemoteUIService.ApplicationStateControlServiceClient_createSimpleClient(address)
ApplicationStateControlServiceClient.createClient = static_ApplicationStateControlServiceClient_createSimpleClient

def ApplicationStateControlServiceClient_waitForConnection(self):
    return libRemoteUIService.ApplicationStateControlServiceClient_waitForConnection(self)
ApplicationStateControlServiceClient.waitForConnection = ApplicationStateControlServiceClient_waitForConnection

@staticmethod
def static_GeneralRemoteUIServiceClient_createSimpleClient(address):
    return libRemoteUIService.GeneralRemoteUIServiceClient_createSimpleClient(address)
GeneralRemoteUIServiceClient.createClient = static_GeneralRemoteUIServiceClient_createSimpleClient

def GeneralRemoteUIServiceClient_waitForConnection(self):
    return libRemoteUIService.GeneralRemoteUIServiceClient_waitForConnection(self)
GeneralRemoteUIServiceClient.waitForConnection = GeneralRemoteUIServiceClient_waitForConnection
%}
