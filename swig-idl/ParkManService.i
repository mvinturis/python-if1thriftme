%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libParkManService
else:
    import libParkManService") ParkManService

%feature("director") driverAssistance::parkMan::SurroundViewSystemService_v2Client;
%feature("director") driverAssistance::parkMan::RearViewCameraServiceClient;
%feature("director") driverAssistance::parkMan::RemoteParkingAssistantServiceClient;
%feature("director") driverAssistance::parkMan::ParkingNotificationServiceClient;
%feature("director") driverAssistance::parkMan::APCServiceClient;
%feature("director") driverAssistance::parkMan::ParkingAssistanceSettingsServiceClient;
%feature("director") driverAssistance::parkMan::GeneralCameraServiceClient;
%feature("director") driverAssistance::parkMan::AutomatedValetParkingServiceClient;
%feature("director") driverAssistance::parkMan::HomeParkingServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/SVSDisplayModes_v2.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/GPSCameraActivationPoint.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/WarningStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RPA_State.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RPAStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotInitialized.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RPADevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RPAProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RPAProcessResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RPADeviceCountStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ActionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/NotificationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/APCDrivingInstruction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/APCInformation_v2.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingSpaceListType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingSpaceDescription_v2.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingSpaceShape_v2.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ActiveFunction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HitchtronicAngleInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HitchtronicDrivingInstructionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkPilotMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkPopUpID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/UserInputType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingManeuverSelection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/InvalidParkingManeuverSelection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingManeuverRequestType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/PTSAcousticStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/Status.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/AttenuationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/AssistArea.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/PTSArea.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/PDDPictureDescription.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ServiceModeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ParkingSupportConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/CameraType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotAvailableAvailable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/InstalledNotInstalled.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/FalseTrue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DisplayType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/TransferState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/AVP_STATE.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HPCommunicationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HPManeuver.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HPManeuverState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HPManeuversList.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HPManeuversListSize.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HPManeuverChangeReason.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/SurroundViewSystemService_v2.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RearViewCameraService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RemoteParkingAssistantService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingNotificationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/APCService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingAssistanceSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/GeneralCameraService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/AutomatedValetParkingService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HomeParkingService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/SurroundViewSystemService_v2.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RearViewCameraService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/RemoteParkingAssistantService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingNotificationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/APCService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/ParkingAssistanceSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/GeneralCameraService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/AutomatedValetParkingService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ParkManService/inc/HomeParkingService.h"
%}

%inline %{
driverAssistance::parkMan::SurroundViewSystemService_v2Client*
SurroundViewSystemService_v2Client_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::SurroundViewSystemService_v2Client > client = driverAssistance::parkMan::SurroundViewSystemService_v2Client::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::SurroundViewSystemService_v2Client > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::SurroundViewSystemService_v2Client *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SurroundViewSystemService_v2Client_waitForConnection(driverAssistance::parkMan::SurroundViewSystemService_v2Client *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::parkMan::RearViewCameraServiceClient*
RearViewCameraServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::RearViewCameraServiceClient > client = driverAssistance::parkMan::RearViewCameraServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::RearViewCameraServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::RearViewCameraServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void RearViewCameraServiceClient_waitForConnection(driverAssistance::parkMan::RearViewCameraServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::parkMan::RemoteParkingAssistantServiceClient*
RemoteParkingAssistantServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::RemoteParkingAssistantServiceClient > client = driverAssistance::parkMan::RemoteParkingAssistantServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::RemoteParkingAssistantServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::RemoteParkingAssistantServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void RemoteParkingAssistantServiceClient_waitForConnection(driverAssistance::parkMan::RemoteParkingAssistantServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::parkMan::ParkingNotificationServiceClient*
ParkingNotificationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::ParkingNotificationServiceClient > client = driverAssistance::parkMan::ParkingNotificationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::ParkingNotificationServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::ParkingNotificationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ParkingNotificationServiceClient_waitForConnection(driverAssistance::parkMan::ParkingNotificationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::parkMan::APCServiceClient*
APCServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::APCServiceClient > client = driverAssistance::parkMan::APCServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::APCServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::APCServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void APCServiceClient_waitForConnection(driverAssistance::parkMan::APCServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::parkMan::ParkingAssistanceSettingsServiceClient*
ParkingAssistanceSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::ParkingAssistanceSettingsServiceClient > client = driverAssistance::parkMan::ParkingAssistanceSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::ParkingAssistanceSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::ParkingAssistanceSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ParkingAssistanceSettingsServiceClient_waitForConnection(driverAssistance::parkMan::ParkingAssistanceSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::parkMan::GeneralCameraServiceClient*
GeneralCameraServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::GeneralCameraServiceClient > client = driverAssistance::parkMan::GeneralCameraServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::GeneralCameraServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::GeneralCameraServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralCameraServiceClient_waitForConnection(driverAssistance::parkMan::GeneralCameraServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::parkMan::AutomatedValetParkingServiceClient*
AutomatedValetParkingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::AutomatedValetParkingServiceClient > client = driverAssistance::parkMan::AutomatedValetParkingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::AutomatedValetParkingServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::AutomatedValetParkingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AutomatedValetParkingServiceClient_waitForConnection(driverAssistance::parkMan::AutomatedValetParkingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::parkMan::HomeParkingServiceClient*
HomeParkingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::parkMan::HomeParkingServiceClient > client = driverAssistance::parkMan::HomeParkingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::parkMan::HomeParkingServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::parkMan::HomeParkingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void HomeParkingServiceClient_waitForConnection(driverAssistance::parkMan::HomeParkingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_SurroundViewSystemService_v2Client_createSimpleClient(address):
    return libParkManService.SurroundViewSystemService_v2Client_createSimpleClient(address)
SurroundViewSystemService_v2Client.createClient = static_SurroundViewSystemService_v2Client_createSimpleClient

def SurroundViewSystemService_v2Client_waitForConnection(self):
    return libParkManService.SurroundViewSystemService_v2Client_waitForConnection(self)
SurroundViewSystemService_v2Client.waitForConnection = SurroundViewSystemService_v2Client_waitForConnection

@staticmethod
def static_RearViewCameraServiceClient_createSimpleClient(address):
    return libParkManService.RearViewCameraServiceClient_createSimpleClient(address)
RearViewCameraServiceClient.createClient = static_RearViewCameraServiceClient_createSimpleClient

def RearViewCameraServiceClient_waitForConnection(self):
    return libParkManService.RearViewCameraServiceClient_waitForConnection(self)
RearViewCameraServiceClient.waitForConnection = RearViewCameraServiceClient_waitForConnection

@staticmethod
def static_RemoteParkingAssistantServiceClient_createSimpleClient(address):
    return libParkManService.RemoteParkingAssistantServiceClient_createSimpleClient(address)
RemoteParkingAssistantServiceClient.createClient = static_RemoteParkingAssistantServiceClient_createSimpleClient

def RemoteParkingAssistantServiceClient_waitForConnection(self):
    return libParkManService.RemoteParkingAssistantServiceClient_waitForConnection(self)
RemoteParkingAssistantServiceClient.waitForConnection = RemoteParkingAssistantServiceClient_waitForConnection

@staticmethod
def static_ParkingNotificationServiceClient_createSimpleClient(address):
    return libParkManService.ParkingNotificationServiceClient_createSimpleClient(address)
ParkingNotificationServiceClient.createClient = static_ParkingNotificationServiceClient_createSimpleClient

def ParkingNotificationServiceClient_waitForConnection(self):
    return libParkManService.ParkingNotificationServiceClient_waitForConnection(self)
ParkingNotificationServiceClient.waitForConnection = ParkingNotificationServiceClient_waitForConnection

@staticmethod
def static_APCServiceClient_createSimpleClient(address):
    return libParkManService.APCServiceClient_createSimpleClient(address)
APCServiceClient.createClient = static_APCServiceClient_createSimpleClient

def APCServiceClient_waitForConnection(self):
    return libParkManService.APCServiceClient_waitForConnection(self)
APCServiceClient.waitForConnection = APCServiceClient_waitForConnection

@staticmethod
def static_ParkingAssistanceSettingsServiceClient_createSimpleClient(address):
    return libParkManService.ParkingAssistanceSettingsServiceClient_createSimpleClient(address)
ParkingAssistanceSettingsServiceClient.createClient = static_ParkingAssistanceSettingsServiceClient_createSimpleClient

def ParkingAssistanceSettingsServiceClient_waitForConnection(self):
    return libParkManService.ParkingAssistanceSettingsServiceClient_waitForConnection(self)
ParkingAssistanceSettingsServiceClient.waitForConnection = ParkingAssistanceSettingsServiceClient_waitForConnection

@staticmethod
def static_GeneralCameraServiceClient_createSimpleClient(address):
    return libParkManService.GeneralCameraServiceClient_createSimpleClient(address)
GeneralCameraServiceClient.createClient = static_GeneralCameraServiceClient_createSimpleClient

def GeneralCameraServiceClient_waitForConnection(self):
    return libParkManService.GeneralCameraServiceClient_waitForConnection(self)
GeneralCameraServiceClient.waitForConnection = GeneralCameraServiceClient_waitForConnection

@staticmethod
def static_AutomatedValetParkingServiceClient_createSimpleClient(address):
    return libParkManService.AutomatedValetParkingServiceClient_createSimpleClient(address)
AutomatedValetParkingServiceClient.createClient = static_AutomatedValetParkingServiceClient_createSimpleClient

def AutomatedValetParkingServiceClient_waitForConnection(self):
    return libParkManService.AutomatedValetParkingServiceClient_waitForConnection(self)
AutomatedValetParkingServiceClient.waitForConnection = AutomatedValetParkingServiceClient_waitForConnection

@staticmethod
def static_HomeParkingServiceClient_createSimpleClient(address):
    return libParkManService.HomeParkingServiceClient_createSimpleClient(address)
HomeParkingServiceClient.createClient = static_HomeParkingServiceClient_createSimpleClient

def HomeParkingServiceClient_waitForConnection(self):
    return libParkManService.HomeParkingServiceClient_waitForConnection(self)
HomeParkingServiceClient.waitForConnection = HomeParkingServiceClient_waitForConnection
%}
