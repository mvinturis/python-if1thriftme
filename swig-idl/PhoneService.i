%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libPhoneService
else:
    import libPhoneService") PhoneService

%feature("director") communication::phone::NetworkServiceClient;
%feature("director") communication::phone::MultiseatTelephonyServiceClient;
%feature("director") communication::phone::BatteryServiceClient;
%feature("director") communication::phone::GeneralPhoneServiceClient;
%feature("director") communication::phone::CallManagerServiceClient;
%feature("director") communication::phone::CallListServiceClient;

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
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/NetworkInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/RoamingStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/AccessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/BatteryChargingStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/BatteryInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/DownloadStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallListType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/DeviceVoiceRecognitionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/PhoneAttributesInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/PhoneAttribute.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/SpeakingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TelephoneConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/OutgoingCallInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallListEntryDeviceType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallListEntryEnvironmentType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/PhoneLabel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/InvalidPhoneNumberException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/Call.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallResultType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/DateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/Time.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallDirection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/PersonalName.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/InvalidDTMFToneException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/DtmfStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallListEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/NetworkService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/MultiseatTelephonyService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/BatteryService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/GeneralPhoneService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallManagerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallListService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/NetworkService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/MultiseatTelephonyService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/BatteryService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/GeneralPhoneService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallManagerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PhoneService/inc/CallListService.h"
%}

%inline %{
communication::phone::NetworkServiceClient*
NetworkServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::phone::NetworkServiceClient > client = communication::phone::NetworkServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::phone::NetworkServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::phone::NetworkServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void NetworkServiceClient_waitForConnection(communication::phone::NetworkServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::phone::MultiseatTelephonyServiceClient*
MultiseatTelephonyServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::phone::MultiseatTelephonyServiceClient > client = communication::phone::MultiseatTelephonyServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::phone::MultiseatTelephonyServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::phone::MultiseatTelephonyServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MultiseatTelephonyServiceClient_waitForConnection(communication::phone::MultiseatTelephonyServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::phone::BatteryServiceClient*
BatteryServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::phone::BatteryServiceClient > client = communication::phone::BatteryServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::phone::BatteryServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::phone::BatteryServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void BatteryServiceClient_waitForConnection(communication::phone::BatteryServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::phone::GeneralPhoneServiceClient*
GeneralPhoneServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::phone::GeneralPhoneServiceClient > client = communication::phone::GeneralPhoneServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::phone::GeneralPhoneServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::phone::GeneralPhoneServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralPhoneServiceClient_waitForConnection(communication::phone::GeneralPhoneServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::phone::CallManagerServiceClient*
CallManagerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::phone::CallManagerServiceClient > client = communication::phone::CallManagerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::phone::CallManagerServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::phone::CallManagerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void CallManagerServiceClient_waitForConnection(communication::phone::CallManagerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::phone::CallListServiceClient*
CallListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::phone::CallListServiceClient > client = communication::phone::CallListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::phone::CallListServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::phone::CallListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void CallListServiceClient_waitForConnection(communication::phone::CallListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_NetworkServiceClient_createSimpleClient(address):
    return libPhoneService.NetworkServiceClient_createSimpleClient(address)
NetworkServiceClient.createClient = static_NetworkServiceClient_createSimpleClient

def NetworkServiceClient_waitForConnection(self):
    return libPhoneService.NetworkServiceClient_waitForConnection(self)
NetworkServiceClient.waitForConnection = NetworkServiceClient_waitForConnection

@staticmethod
def static_MultiseatTelephonyServiceClient_createSimpleClient(address):
    return libPhoneService.MultiseatTelephonyServiceClient_createSimpleClient(address)
MultiseatTelephonyServiceClient.createClient = static_MultiseatTelephonyServiceClient_createSimpleClient

def MultiseatTelephonyServiceClient_waitForConnection(self):
    return libPhoneService.MultiseatTelephonyServiceClient_waitForConnection(self)
MultiseatTelephonyServiceClient.waitForConnection = MultiseatTelephonyServiceClient_waitForConnection

@staticmethod
def static_BatteryServiceClient_createSimpleClient(address):
    return libPhoneService.BatteryServiceClient_createSimpleClient(address)
BatteryServiceClient.createClient = static_BatteryServiceClient_createSimpleClient

def BatteryServiceClient_waitForConnection(self):
    return libPhoneService.BatteryServiceClient_waitForConnection(self)
BatteryServiceClient.waitForConnection = BatteryServiceClient_waitForConnection

@staticmethod
def static_GeneralPhoneServiceClient_createSimpleClient(address):
    return libPhoneService.GeneralPhoneServiceClient_createSimpleClient(address)
GeneralPhoneServiceClient.createClient = static_GeneralPhoneServiceClient_createSimpleClient

def GeneralPhoneServiceClient_waitForConnection(self):
    return libPhoneService.GeneralPhoneServiceClient_waitForConnection(self)
GeneralPhoneServiceClient.waitForConnection = GeneralPhoneServiceClient_waitForConnection

@staticmethod
def static_CallManagerServiceClient_createSimpleClient(address):
    return libPhoneService.CallManagerServiceClient_createSimpleClient(address)
CallManagerServiceClient.createClient = static_CallManagerServiceClient_createSimpleClient

def CallManagerServiceClient_waitForConnection(self):
    return libPhoneService.CallManagerServiceClient_waitForConnection(self)
CallManagerServiceClient.waitForConnection = CallManagerServiceClient_waitForConnection

@staticmethod
def static_CallListServiceClient_createSimpleClient(address):
    return libPhoneService.CallListServiceClient_createSimpleClient(address)
CallListServiceClient.createClient = static_CallListServiceClient_createSimpleClient

def CallListServiceClient_waitForConnection(self):
    return libPhoneService.CallListServiceClient_waitForConnection(self)
CallListServiceClient.waitForConnection = CallListServiceClient_waitForConnection
%}
