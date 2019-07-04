%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libConnectivityService
else:
    import libConnectivityService") ConnectivityService

%feature("director") communication::connectivity::InternetAccessPointControlServiceClient;
%feature("director") communication::connectivity::GeneralConnectivityServiceClient;
%feature("director") communication::connectivity::ConnectivityInformationServiceClient;

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
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/InternetAccessPoint.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/DeviceConnectionState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/ProviderConnectionSetting.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/PhoneSystem.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/PDPType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/DataVolumeCounter.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/DataUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/AccessPointDeviceType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/DataPlanInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/DataPlanSubscription.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/DataPlanCoverage.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/DataVolumeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/DataPlanSpeedType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/MobileNetwork.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/AskBeforeUseState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/ConnectionMechanism.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/StatusPerConnectionMechanism.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/ConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/InternetApplicationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/InternetConnectivityConfigurationEx.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotAvailableAvailable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/BackendType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/KeepaliveFailedProbes.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/KeepaliveTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OperatingModeTEL_ECU.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/ConnectionErrorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/InternetApplication.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/OfflineModeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/InternetConnectivityConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TriggerWiFiHotspotSearch.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ExternalWiFiHotspotMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DeactivatedActivated.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/LogEventType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/ApplicationTrafficCounter.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/InterfaceInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/IfDataStats.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/PacketCounters.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/SSLProxyServerConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/SSLProxyServerConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/ConnectivityLogEvent.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/Time.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/InternetAccessPointControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/GeneralConnectivityService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/ConnectivityInformationService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/InternetAccessPointControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/GeneralConnectivityService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/ConnectivityService/inc/ConnectivityInformationService.h"
%}

%inline %{
communication::connectivity::InternetAccessPointControlServiceClient*
InternetAccessPointControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::connectivity::InternetAccessPointControlServiceClient > client = communication::connectivity::InternetAccessPointControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::connectivity::InternetAccessPointControlServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::connectivity::InternetAccessPointControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void InternetAccessPointControlServiceClient_waitForConnection(communication::connectivity::InternetAccessPointControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::connectivity::GeneralConnectivityServiceClient*
GeneralConnectivityServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::connectivity::GeneralConnectivityServiceClient > client = communication::connectivity::GeneralConnectivityServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::connectivity::GeneralConnectivityServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::connectivity::GeneralConnectivityServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralConnectivityServiceClient_waitForConnection(communication::connectivity::GeneralConnectivityServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::connectivity::ConnectivityInformationServiceClient*
ConnectivityInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::connectivity::ConnectivityInformationServiceClient > client = communication::connectivity::ConnectivityInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::connectivity::ConnectivityInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::connectivity::ConnectivityInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ConnectivityInformationServiceClient_waitForConnection(communication::connectivity::ConnectivityInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_InternetAccessPointControlServiceClient_createSimpleClient(address):
    return libConnectivityService.InternetAccessPointControlServiceClient_createSimpleClient(address)
InternetAccessPointControlServiceClient.createClient = static_InternetAccessPointControlServiceClient_createSimpleClient

def InternetAccessPointControlServiceClient_waitForConnection(self):
    return libConnectivityService.InternetAccessPointControlServiceClient_waitForConnection(self)
InternetAccessPointControlServiceClient.waitForConnection = InternetAccessPointControlServiceClient_waitForConnection

@staticmethod
def static_GeneralConnectivityServiceClient_createSimpleClient(address):
    return libConnectivityService.GeneralConnectivityServiceClient_createSimpleClient(address)
GeneralConnectivityServiceClient.createClient = static_GeneralConnectivityServiceClient_createSimpleClient

def GeneralConnectivityServiceClient_waitForConnection(self):
    return libConnectivityService.GeneralConnectivityServiceClient_waitForConnection(self)
GeneralConnectivityServiceClient.waitForConnection = GeneralConnectivityServiceClient_waitForConnection

@staticmethod
def static_ConnectivityInformationServiceClient_createSimpleClient(address):
    return libConnectivityService.ConnectivityInformationServiceClient_createSimpleClient(address)
ConnectivityInformationServiceClient.createClient = static_ConnectivityInformationServiceClient_createSimpleClient

def ConnectivityInformationServiceClient_waitForConnection(self):
    return libConnectivityService.ConnectivityInformationServiceClient_waitForConnection(self)
ConnectivityInformationServiceClient.waitForConnection = ConnectivityInformationServiceClient_waitForConnection
%}
