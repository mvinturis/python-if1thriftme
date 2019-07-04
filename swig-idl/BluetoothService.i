%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libBluetoothService
else:
    import libBluetoothService") BluetoothService

%feature("director") communication::bluetooth::DeviceManagerServiceClient;
%feature("director") communication::bluetooth::ConnectionManagerServiceClient;
%feature("director") communication::bluetooth::GeneralBluetoothSettingServiceClient;
%feature("director") communication::bluetooth::WirelessChargingServiceClient;
%feature("director") communication::bluetooth::CommunicationTestServiceClient;
%feature("director") communication::bluetooth::NFCControlServiceClient;
%feature("director") communication::bluetooth::BTHControlServiceClient;
%feature("director") communication::bluetooth::SIMControlServiceClient;

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
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/DeviceInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ClassOfDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/TelephonyConnectionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/DeviceType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/DeviceUsageType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/DeviceProfileType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ProfileVersionInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/PhonebookDownloadMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/AutoConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/DeviceConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/HeadunitBluetoothData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/BluetoothDeviceConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ActivationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ConnectionProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ConnectionStatusChangeReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/DeauthorizationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/PairingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ExternalAuthorizationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ExternalAuthorizationResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/InquiryStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/InquiryResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/BluetoothConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/WirelessChargingLocation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/WirelessChargingStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/HURole.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/SignalLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/VersionInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/BluetoothTestModeSetting.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/BluetoothTestCommand.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/HoppingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/BluetoothPacketType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/BluetoothTestScenario.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/RSSIStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/NFCFunction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/NFCContext.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/NFCSendStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/NFCTouchpointType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/NFCSendResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/NFCType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/SIMInsertionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/SIMStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/DeviceManagerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ConnectionManagerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/GeneralBluetoothSettingService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/WirelessChargingService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/CommunicationTestService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/NFCControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/BTHControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/SIMControlService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/DeviceManagerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/ConnectionManagerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/GeneralBluetoothSettingService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/WirelessChargingService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/CommunicationTestService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/NFCControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/BTHControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/SIMControlService.h"
%}

%inline %{
communication::bluetooth::DeviceManagerServiceClient*
DeviceManagerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::bluetooth::DeviceManagerServiceClient > client = communication::bluetooth::DeviceManagerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::bluetooth::DeviceManagerServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::bluetooth::DeviceManagerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DeviceManagerServiceClient_waitForConnection(communication::bluetooth::DeviceManagerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::bluetooth::ConnectionManagerServiceClient*
ConnectionManagerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::bluetooth::ConnectionManagerServiceClient > client = communication::bluetooth::ConnectionManagerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::bluetooth::ConnectionManagerServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::bluetooth::ConnectionManagerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ConnectionManagerServiceClient_waitForConnection(communication::bluetooth::ConnectionManagerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::bluetooth::GeneralBluetoothSettingServiceClient*
GeneralBluetoothSettingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::bluetooth::GeneralBluetoothSettingServiceClient > client = communication::bluetooth::GeneralBluetoothSettingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::bluetooth::GeneralBluetoothSettingServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::bluetooth::GeneralBluetoothSettingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralBluetoothSettingServiceClient_waitForConnection(communication::bluetooth::GeneralBluetoothSettingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::bluetooth::WirelessChargingServiceClient*
WirelessChargingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::bluetooth::WirelessChargingServiceClient > client = communication::bluetooth::WirelessChargingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::bluetooth::WirelessChargingServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::bluetooth::WirelessChargingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WirelessChargingServiceClient_waitForConnection(communication::bluetooth::WirelessChargingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::bluetooth::CommunicationTestServiceClient*
CommunicationTestServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::bluetooth::CommunicationTestServiceClient > client = communication::bluetooth::CommunicationTestServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::bluetooth::CommunicationTestServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::bluetooth::CommunicationTestServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void CommunicationTestServiceClient_waitForConnection(communication::bluetooth::CommunicationTestServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::bluetooth::NFCControlServiceClient*
NFCControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::bluetooth::NFCControlServiceClient > client = communication::bluetooth::NFCControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::bluetooth::NFCControlServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::bluetooth::NFCControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void NFCControlServiceClient_waitForConnection(communication::bluetooth::NFCControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::bluetooth::BTHControlServiceClient*
BTHControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::bluetooth::BTHControlServiceClient > client = communication::bluetooth::BTHControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::bluetooth::BTHControlServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::bluetooth::BTHControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void BTHControlServiceClient_waitForConnection(communication::bluetooth::BTHControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::bluetooth::SIMControlServiceClient*
SIMControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::bluetooth::SIMControlServiceClient > client = communication::bluetooth::SIMControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::bluetooth::SIMControlServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::bluetooth::SIMControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SIMControlServiceClient_waitForConnection(communication::bluetooth::SIMControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_DeviceManagerServiceClient_createSimpleClient(address):
    return libBluetoothService.DeviceManagerServiceClient_createSimpleClient(address)
DeviceManagerServiceClient.createClient = static_DeviceManagerServiceClient_createSimpleClient

def DeviceManagerServiceClient_waitForConnection(self):
    return libBluetoothService.DeviceManagerServiceClient_waitForConnection(self)
DeviceManagerServiceClient.waitForConnection = DeviceManagerServiceClient_waitForConnection

@staticmethod
def static_ConnectionManagerServiceClient_createSimpleClient(address):
    return libBluetoothService.ConnectionManagerServiceClient_createSimpleClient(address)
ConnectionManagerServiceClient.createClient = static_ConnectionManagerServiceClient_createSimpleClient

def ConnectionManagerServiceClient_waitForConnection(self):
    return libBluetoothService.ConnectionManagerServiceClient_waitForConnection(self)
ConnectionManagerServiceClient.waitForConnection = ConnectionManagerServiceClient_waitForConnection

@staticmethod
def static_GeneralBluetoothSettingServiceClient_createSimpleClient(address):
    return libBluetoothService.GeneralBluetoothSettingServiceClient_createSimpleClient(address)
GeneralBluetoothSettingServiceClient.createClient = static_GeneralBluetoothSettingServiceClient_createSimpleClient

def GeneralBluetoothSettingServiceClient_waitForConnection(self):
    return libBluetoothService.GeneralBluetoothSettingServiceClient_waitForConnection(self)
GeneralBluetoothSettingServiceClient.waitForConnection = GeneralBluetoothSettingServiceClient_waitForConnection

@staticmethod
def static_WirelessChargingServiceClient_createSimpleClient(address):
    return libBluetoothService.WirelessChargingServiceClient_createSimpleClient(address)
WirelessChargingServiceClient.createClient = static_WirelessChargingServiceClient_createSimpleClient

def WirelessChargingServiceClient_waitForConnection(self):
    return libBluetoothService.WirelessChargingServiceClient_waitForConnection(self)
WirelessChargingServiceClient.waitForConnection = WirelessChargingServiceClient_waitForConnection

@staticmethod
def static_CommunicationTestServiceClient_createSimpleClient(address):
    return libBluetoothService.CommunicationTestServiceClient_createSimpleClient(address)
CommunicationTestServiceClient.createClient = static_CommunicationTestServiceClient_createSimpleClient

def CommunicationTestServiceClient_waitForConnection(self):
    return libBluetoothService.CommunicationTestServiceClient_waitForConnection(self)
CommunicationTestServiceClient.waitForConnection = CommunicationTestServiceClient_waitForConnection

@staticmethod
def static_NFCControlServiceClient_createSimpleClient(address):
    return libBluetoothService.NFCControlServiceClient_createSimpleClient(address)
NFCControlServiceClient.createClient = static_NFCControlServiceClient_createSimpleClient

def NFCControlServiceClient_waitForConnection(self):
    return libBluetoothService.NFCControlServiceClient_waitForConnection(self)
NFCControlServiceClient.waitForConnection = NFCControlServiceClient_waitForConnection

@staticmethod
def static_BTHControlServiceClient_createSimpleClient(address):
    return libBluetoothService.BTHControlServiceClient_createSimpleClient(address)
BTHControlServiceClient.createClient = static_BTHControlServiceClient_createSimpleClient

def BTHControlServiceClient_waitForConnection(self):
    return libBluetoothService.BTHControlServiceClient_waitForConnection(self)
BTHControlServiceClient.waitForConnection = BTHControlServiceClient_waitForConnection

@staticmethod
def static_SIMControlServiceClient_createSimpleClient(address):
    return libBluetoothService.SIMControlServiceClient_createSimpleClient(address)
SIMControlServiceClient.createClient = static_SIMControlServiceClient_createSimpleClient

def SIMControlServiceClient_waitForConnection(self):
    return libBluetoothService.SIMControlServiceClient_waitForConnection(self)
SIMControlServiceClient.waitForConnection = SIMControlServiceClient_waitForConnection
%}
