%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libUserDataIF2Service
else:
    import libUserDataIF2Service") UserDataIF2Service

%feature("director") vehicle::userDataIF2::UserDataSynchronizationInformationServiceClient;
%feature("director") vehicle::userDataIF2::EmotionServiceClient;
%feature("director") vehicle::userDataIF2::UserDataExchangeServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/UserDataSynchronizationState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatIdentifier.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/ExtendedEvents.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/ProfileData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/ProfileState.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/UserDataSynchronizationInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/EmotionService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/UserDataExchangeService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/UserDataSynchronizationInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/EmotionService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/UserDataIF2Service/inc/UserDataExchangeService.h"
%}

%inline %{
vehicle::userDataIF2::UserDataSynchronizationInformationServiceClient*
UserDataSynchronizationInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::userDataIF2::UserDataSynchronizationInformationServiceClient > client = vehicle::userDataIF2::UserDataSynchronizationInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::userDataIF2::UserDataSynchronizationInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::userDataIF2::UserDataSynchronizationInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UserDataSynchronizationInformationServiceClient_waitForConnection(vehicle::userDataIF2::UserDataSynchronizationInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::userDataIF2::EmotionServiceClient*
EmotionServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::userDataIF2::EmotionServiceClient > client = vehicle::userDataIF2::EmotionServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::userDataIF2::EmotionServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::userDataIF2::EmotionServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EmotionServiceClient_waitForConnection(vehicle::userDataIF2::EmotionServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::userDataIF2::UserDataExchangeServiceClient*
UserDataExchangeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::userDataIF2::UserDataExchangeServiceClient > client = vehicle::userDataIF2::UserDataExchangeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::userDataIF2::UserDataExchangeServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::userDataIF2::UserDataExchangeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UserDataExchangeServiceClient_waitForConnection(vehicle::userDataIF2::UserDataExchangeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_UserDataSynchronizationInformationServiceClient_createSimpleClient(address):
    return libUserDataIF2Service.UserDataSynchronizationInformationServiceClient_createSimpleClient(address)
UserDataSynchronizationInformationServiceClient.createClient = static_UserDataSynchronizationInformationServiceClient_createSimpleClient

def UserDataSynchronizationInformationServiceClient_waitForConnection(self):
    return libUserDataIF2Service.UserDataSynchronizationInformationServiceClient_waitForConnection(self)
UserDataSynchronizationInformationServiceClient.waitForConnection = UserDataSynchronizationInformationServiceClient_waitForConnection

@staticmethod
def static_EmotionServiceClient_createSimpleClient(address):
    return libUserDataIF2Service.EmotionServiceClient_createSimpleClient(address)
EmotionServiceClient.createClient = static_EmotionServiceClient_createSimpleClient

def EmotionServiceClient_waitForConnection(self):
    return libUserDataIF2Service.EmotionServiceClient_waitForConnection(self)
EmotionServiceClient.waitForConnection = EmotionServiceClient_waitForConnection

@staticmethod
def static_UserDataExchangeServiceClient_createSimpleClient(address):
    return libUserDataIF2Service.UserDataExchangeServiceClient_createSimpleClient(address)
UserDataExchangeServiceClient.createClient = static_UserDataExchangeServiceClient_createSimpleClient

def UserDataExchangeServiceClient_waitForConnection(self):
    return libUserDataIF2Service.UserDataExchangeServiceClient_waitForConnection(self)
UserDataExchangeServiceClient.waitForConnection = UserDataExchangeServiceClient_waitForConnection
%}
