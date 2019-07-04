%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libWifiService
else:
    import libWifiService") WifiService

%feature("director") communication::wifi::WifiP2PServiceClient;
%feature("director") communication::wifi::WifiTestServiceClient;
%feature("director") communication::wifi::WifiControlServiceClient;
%feature("director") communication::wifi::GeneralWifiControlServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/InvalidDeviceAddressException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiP2PDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiP2PGroup.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/PeerConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/PeerDiscoveryProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiResponseType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiP2PProcessResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiTransceptionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiStandard.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiTransceptionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiChannel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiDateRate.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiConnectionMethod.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/ConnectionModeUnsupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/WLANCountryCodeV2.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiAccessPoint.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiAccessPointConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiAccessPointFrequencyBand.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiEncryption.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/HeadUnitWifiAccessPoint.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiClient.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiAccessPointOperatingBand.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiActivationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/HeadUnitWPSType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WPSMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiAntennaOperatingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/CountryCodeApplyStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/ProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/AccessPointInquiryStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiAntennaOperatingModeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WPSProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/WirelessSubsystemConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/WLANAntenna.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotInstalledInstalled.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/PrefixInfotainmentName.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiP2PService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiTestService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/GeneralWifiControlService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiP2PService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiTestService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/WifiControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/WifiService/inc/GeneralWifiControlService.h"
%}

%inline %{
communication::wifi::WifiP2PServiceClient*
WifiP2PServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::wifi::WifiP2PServiceClient > client = communication::wifi::WifiP2PServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::wifi::WifiP2PServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::wifi::WifiP2PServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WifiP2PServiceClient_waitForConnection(communication::wifi::WifiP2PServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::wifi::WifiTestServiceClient*
WifiTestServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::wifi::WifiTestServiceClient > client = communication::wifi::WifiTestServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::wifi::WifiTestServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::wifi::WifiTestServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WifiTestServiceClient_waitForConnection(communication::wifi::WifiTestServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::wifi::WifiControlServiceClient*
WifiControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::wifi::WifiControlServiceClient > client = communication::wifi::WifiControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::wifi::WifiControlServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::wifi::WifiControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WifiControlServiceClient_waitForConnection(communication::wifi::WifiControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::wifi::GeneralWifiControlServiceClient*
GeneralWifiControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::wifi::GeneralWifiControlServiceClient > client = communication::wifi::GeneralWifiControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::wifi::GeneralWifiControlServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::wifi::GeneralWifiControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralWifiControlServiceClient_waitForConnection(communication::wifi::GeneralWifiControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_WifiP2PServiceClient_createSimpleClient(address):
    return libWifiService.WifiP2PServiceClient_createSimpleClient(address)
WifiP2PServiceClient.createClient = static_WifiP2PServiceClient_createSimpleClient

def WifiP2PServiceClient_waitForConnection(self):
    return libWifiService.WifiP2PServiceClient_waitForConnection(self)
WifiP2PServiceClient.waitForConnection = WifiP2PServiceClient_waitForConnection

@staticmethod
def static_WifiTestServiceClient_createSimpleClient(address):
    return libWifiService.WifiTestServiceClient_createSimpleClient(address)
WifiTestServiceClient.createClient = static_WifiTestServiceClient_createSimpleClient

def WifiTestServiceClient_waitForConnection(self):
    return libWifiService.WifiTestServiceClient_waitForConnection(self)
WifiTestServiceClient.waitForConnection = WifiTestServiceClient_waitForConnection

@staticmethod
def static_WifiControlServiceClient_createSimpleClient(address):
    return libWifiService.WifiControlServiceClient_createSimpleClient(address)
WifiControlServiceClient.createClient = static_WifiControlServiceClient_createSimpleClient

def WifiControlServiceClient_waitForConnection(self):
    return libWifiService.WifiControlServiceClient_waitForConnection(self)
WifiControlServiceClient.waitForConnection = WifiControlServiceClient_waitForConnection

@staticmethod
def static_GeneralWifiControlServiceClient_createSimpleClient(address):
    return libWifiService.GeneralWifiControlServiceClient_createSimpleClient(address)
GeneralWifiControlServiceClient.createClient = static_GeneralWifiControlServiceClient_createSimpleClient

def GeneralWifiControlServiceClient_waitForConnection(self):
    return libWifiService.GeneralWifiControlServiceClient_waitForConnection(self)
GeneralWifiControlServiceClient.waitForConnection = GeneralWifiControlServiceClient_waitForConnection
%}
