%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libEmergencyAndAssistanceService
else:
    import libEmergencyAndAssistanceService") EmergencyAndAssistanceService

%feature("director") driverAssistance::emergencyAndAssistance::AssistanceServicesServiceClient;
%feature("director") driverAssistance::emergencyAndAssistance::ServiceCallServiceClient;
%feature("director") driverAssistance::emergencyAndAssistance::ECallServiceClient;
%feature("director") driverAssistance::emergencyAndAssistance::ABAServiceClient;
%feature("director") driverAssistance::emergencyAndAssistance::GeneralEmergencyAndAssistanceServiceClient;

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
%include "../swig-patch/EmergencyAndAssistanceService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/DiagnosticsDataTransmissionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ResponseType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/RemoteDiagnosticsMessageType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/NotificationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/RequestStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ServiceCallProgressStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/CallStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ServiceCallType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/Severity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/MaintenanceLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ParkingDamage.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/Time.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/DateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ParkingDamageImpact.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ECallProgressStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/SOSReadyStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/VehicleRolloverState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/OnOff.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ABAInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ABAType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AssistanceAtBreakdownOrAccidentConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SCN_ABACountry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SCNWarningTriangle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SCNFirstAidKit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/MBECallConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ServiceCallConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ServiceCallCounter.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/AssistanceServicesService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ServiceCallService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ECallService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ABAService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/GeneralEmergencyAndAssistanceService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/AssistanceServicesService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ServiceCallService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ECallService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/ABAService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EmergencyAndAssistanceService/inc/GeneralEmergencyAndAssistanceService.h"
%}

%inline %{
driverAssistance::emergencyAndAssistance::AssistanceServicesServiceClient*
AssistanceServicesServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::AssistanceServicesServiceClient > client = driverAssistance::emergencyAndAssistance::AssistanceServicesServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::AssistanceServicesServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::emergencyAndAssistance::AssistanceServicesServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AssistanceServicesServiceClient_waitForConnection(driverAssistance::emergencyAndAssistance::AssistanceServicesServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::emergencyAndAssistance::ServiceCallServiceClient*
ServiceCallServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::ServiceCallServiceClient > client = driverAssistance::emergencyAndAssistance::ServiceCallServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::ServiceCallServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::emergencyAndAssistance::ServiceCallServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ServiceCallServiceClient_waitForConnection(driverAssistance::emergencyAndAssistance::ServiceCallServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::emergencyAndAssistance::ECallServiceClient*
ECallServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::ECallServiceClient > client = driverAssistance::emergencyAndAssistance::ECallServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::ECallServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::emergencyAndAssistance::ECallServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ECallServiceClient_waitForConnection(driverAssistance::emergencyAndAssistance::ECallServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::emergencyAndAssistance::ABAServiceClient*
ABAServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::ABAServiceClient > client = driverAssistance::emergencyAndAssistance::ABAServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::ABAServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::emergencyAndAssistance::ABAServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ABAServiceClient_waitForConnection(driverAssistance::emergencyAndAssistance::ABAServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

driverAssistance::emergencyAndAssistance::GeneralEmergencyAndAssistanceServiceClient*
GeneralEmergencyAndAssistanceServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::GeneralEmergencyAndAssistanceServiceClient > client = driverAssistance::emergencyAndAssistance::GeneralEmergencyAndAssistanceServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::emergencyAndAssistance::GeneralEmergencyAndAssistanceServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::emergencyAndAssistance::GeneralEmergencyAndAssistanceServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralEmergencyAndAssistanceServiceClient_waitForConnection(driverAssistance::emergencyAndAssistance::GeneralEmergencyAndAssistanceServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_AssistanceServicesServiceClient_createSimpleClient(address):
    return libEmergencyAndAssistanceService.AssistanceServicesServiceClient_createSimpleClient(address)
AssistanceServicesServiceClient.createClient = static_AssistanceServicesServiceClient_createSimpleClient

def AssistanceServicesServiceClient_waitForConnection(self):
    return libEmergencyAndAssistanceService.AssistanceServicesServiceClient_waitForConnection(self)
AssistanceServicesServiceClient.waitForConnection = AssistanceServicesServiceClient_waitForConnection

@staticmethod
def static_ServiceCallServiceClient_createSimpleClient(address):
    return libEmergencyAndAssistanceService.ServiceCallServiceClient_createSimpleClient(address)
ServiceCallServiceClient.createClient = static_ServiceCallServiceClient_createSimpleClient

def ServiceCallServiceClient_waitForConnection(self):
    return libEmergencyAndAssistanceService.ServiceCallServiceClient_waitForConnection(self)
ServiceCallServiceClient.waitForConnection = ServiceCallServiceClient_waitForConnection

@staticmethod
def static_ECallServiceClient_createSimpleClient(address):
    return libEmergencyAndAssistanceService.ECallServiceClient_createSimpleClient(address)
ECallServiceClient.createClient = static_ECallServiceClient_createSimpleClient

def ECallServiceClient_waitForConnection(self):
    return libEmergencyAndAssistanceService.ECallServiceClient_waitForConnection(self)
ECallServiceClient.waitForConnection = ECallServiceClient_waitForConnection

@staticmethod
def static_ABAServiceClient_createSimpleClient(address):
    return libEmergencyAndAssistanceService.ABAServiceClient_createSimpleClient(address)
ABAServiceClient.createClient = static_ABAServiceClient_createSimpleClient

def ABAServiceClient_waitForConnection(self):
    return libEmergencyAndAssistanceService.ABAServiceClient_waitForConnection(self)
ABAServiceClient.waitForConnection = ABAServiceClient_waitForConnection

@staticmethod
def static_GeneralEmergencyAndAssistanceServiceClient_createSimpleClient(address):
    return libEmergencyAndAssistanceService.GeneralEmergencyAndAssistanceServiceClient_createSimpleClient(address)
GeneralEmergencyAndAssistanceServiceClient.createClient = static_GeneralEmergencyAndAssistanceServiceClient_createSimpleClient

def GeneralEmergencyAndAssistanceServiceClient_waitForConnection(self):
    return libEmergencyAndAssistanceService.GeneralEmergencyAndAssistanceServiceClient_waitForConnection(self)
GeneralEmergencyAndAssistanceServiceClient.waitForConnection = GeneralEmergencyAndAssistanceServiceClient_waitForConnection
%}
