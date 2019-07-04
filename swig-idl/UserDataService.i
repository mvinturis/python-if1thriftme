%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libUserDataService
else:
    import libUserDataService") UserDataService

%feature("director") vehicle::userData::EmotionServiceClient;
%feature("director") vehicle::userData::SystemProfileServiceClient;
%feature("director") vehicle::userData::GeneralUserDataServiceClient;
%feature("director") vehicle::userData::UserDataServiceClient;
%feature("director") vehicle::userData::UserProfileServiceClient;

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
%include "../swig-patch/UserDataService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/InvalidEmotionException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserNotLoggedInException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionParamGroup.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionParamGroupSubSetting.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionCounters.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionPGSubsettings.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/Emotion.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/DefaultEmotion.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/DriveProgramName.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionProcessResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionOperation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfileProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/InvalidUserProfileException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/Volume.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/AnalysisResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/AnalysisResultType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/AnalysisResultDetail.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfileProcessResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/Backup.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/Timestamp.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfile.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfileLockStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfileLoginState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatIdentifier.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserSession.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/UserDataConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/UDXSettings.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/DataSyncOnlineResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/PinProtectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/InvalidPinException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/InvalidPinFormatException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/PinRequiredReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/DataSyncOnlineStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/MaximumNumberOfUserProfilesReachedException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/SeatPositioningStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/ConnectedUserIDStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfileSelectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserAlreadyLoggedInException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfileLogonProcessResult.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/SystemProfileService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/GeneralUserDataService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserDataService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfileService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/EmotionService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/SystemProfileService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/GeneralUserDataService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserDataService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/UserDataService/inc/UserProfileService.h"
%}

%inline %{
vehicle::userData::EmotionServiceClient*
EmotionServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::userData::EmotionServiceClient > client = vehicle::userData::EmotionServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::userData::EmotionServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::userData::EmotionServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EmotionServiceClient_waitForConnection(vehicle::userData::EmotionServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::userData::SystemProfileServiceClient*
SystemProfileServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::userData::SystemProfileServiceClient > client = vehicle::userData::SystemProfileServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::userData::SystemProfileServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::userData::SystemProfileServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SystemProfileServiceClient_waitForConnection(vehicle::userData::SystemProfileServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::userData::GeneralUserDataServiceClient*
GeneralUserDataServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::userData::GeneralUserDataServiceClient > client = vehicle::userData::GeneralUserDataServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::userData::GeneralUserDataServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::userData::GeneralUserDataServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralUserDataServiceClient_waitForConnection(vehicle::userData::GeneralUserDataServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::userData::UserDataServiceClient*
UserDataServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::userData::UserDataServiceClient > client = vehicle::userData::UserDataServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::userData::UserDataServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::userData::UserDataServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UserDataServiceClient_waitForConnection(vehicle::userData::UserDataServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::userData::UserProfileServiceClient*
UserProfileServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::userData::UserProfileServiceClient > client = vehicle::userData::UserProfileServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::userData::UserProfileServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::userData::UserProfileServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UserProfileServiceClient_waitForConnection(vehicle::userData::UserProfileServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_EmotionServiceClient_createSimpleClient(address):
    return libUserDataService.EmotionServiceClient_createSimpleClient(address)
EmotionServiceClient.createClient = static_EmotionServiceClient_createSimpleClient

def EmotionServiceClient_waitForConnection(self):
    return libUserDataService.EmotionServiceClient_waitForConnection(self)
EmotionServiceClient.waitForConnection = EmotionServiceClient_waitForConnection

@staticmethod
def static_SystemProfileServiceClient_createSimpleClient(address):
    return libUserDataService.SystemProfileServiceClient_createSimpleClient(address)
SystemProfileServiceClient.createClient = static_SystemProfileServiceClient_createSimpleClient

def SystemProfileServiceClient_waitForConnection(self):
    return libUserDataService.SystemProfileServiceClient_waitForConnection(self)
SystemProfileServiceClient.waitForConnection = SystemProfileServiceClient_waitForConnection

@staticmethod
def static_GeneralUserDataServiceClient_createSimpleClient(address):
    return libUserDataService.GeneralUserDataServiceClient_createSimpleClient(address)
GeneralUserDataServiceClient.createClient = static_GeneralUserDataServiceClient_createSimpleClient

def GeneralUserDataServiceClient_waitForConnection(self):
    return libUserDataService.GeneralUserDataServiceClient_waitForConnection(self)
GeneralUserDataServiceClient.waitForConnection = GeneralUserDataServiceClient_waitForConnection

@staticmethod
def static_UserDataServiceClient_createSimpleClient(address):
    return libUserDataService.UserDataServiceClient_createSimpleClient(address)
UserDataServiceClient.createClient = static_UserDataServiceClient_createSimpleClient

def UserDataServiceClient_waitForConnection(self):
    return libUserDataService.UserDataServiceClient_waitForConnection(self)
UserDataServiceClient.waitForConnection = UserDataServiceClient_waitForConnection

@staticmethod
def static_UserProfileServiceClient_createSimpleClient(address):
    return libUserDataService.UserProfileServiceClient_createSimpleClient(address)
UserProfileServiceClient.createClient = static_UserProfileServiceClient_createSimpleClient

def UserProfileServiceClient_waitForConnection(self):
    return libUserDataService.UserProfileServiceClient_waitForConnection(self)
UserProfileServiceClient.waitForConnection = UserProfileServiceClient_waitForConnection
%}
