%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libAirConditionService
else:
    import libAirConditionService") AirConditionService

%feature("director") vehicle::airCondition::AirPulseModeServiceClient;
%feature("director") vehicle::airCondition::FanAdjustmentServiceClient;
%feature("director") vehicle::airCondition::PreconditioningServiceClient;
%feature("director") vehicle::airCondition::AirFlowServiceClient;
%feature("director") vehicle::airCondition::GeneralAirConditionSettingsServiceClient;
%feature("director") vehicle::airCondition::ScentGenerationServiceClient;
%feature("director") vehicle::airCondition::IonizationServiceClient;
%feature("director") vehicle::airCondition::AirDistributionServiceClient;
%feature("director") vehicle::airCondition::TemperatureServiceClient;
%feature("director") vehicle::airCondition::AirQualityServiceClient;
%feature("director") vehicle::airCondition::IndependentCarHeaterServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ReadyState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirConditionZone.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirPulseAttributes.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirPulseModeTempDirection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/PreconditionSelection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ACOnOffStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/PreconditioningType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/OperatingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/PreConSelection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirConditionFunctionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirConditionFunction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ACValueValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirConditionRow.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirFilterStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AutomaticMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirConditionFunctionAvailability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AirconditionConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AirconZonesV1.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AirconFrontZones.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotInstalledInstalled.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/PreconTypes.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotAvailableAvailable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/CodingSource.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ServiceModeType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ServiceModeState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AutomaticFunction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/OnOffState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/FanReductionMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/WindowsComfortFunction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/CartridgeLockStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/CartridgeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/Vent.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/TemperatureUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirQualityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ParticleSensorState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ParticleSensorType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/WindowsRecommendation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/DepartureTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/SelectedDepartTime.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirPulseModeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/FanAdjustmentService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/PreconditioningService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirFlowService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/GeneralAirConditionSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ScentGenerationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/IonizationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirDistributionService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/TemperatureService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirQualityService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/IndependentCarHeaterService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirPulseModeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/FanAdjustmentService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/PreconditioningService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirFlowService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/GeneralAirConditionSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/ScentGenerationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/IonizationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirDistributionService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/TemperatureService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/AirQualityService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/IndependentCarHeaterService.h"
%}

%inline %{
vehicle::airCondition::AirPulseModeServiceClient*
AirPulseModeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::AirPulseModeServiceClient > client = vehicle::airCondition::AirPulseModeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::AirPulseModeServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::AirPulseModeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AirPulseModeServiceClient_waitForConnection(vehicle::airCondition::AirPulseModeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::FanAdjustmentServiceClient*
FanAdjustmentServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::FanAdjustmentServiceClient > client = vehicle::airCondition::FanAdjustmentServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::FanAdjustmentServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::FanAdjustmentServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void FanAdjustmentServiceClient_waitForConnection(vehicle::airCondition::FanAdjustmentServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::PreconditioningServiceClient*
PreconditioningServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::PreconditioningServiceClient > client = vehicle::airCondition::PreconditioningServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::PreconditioningServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::PreconditioningServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void PreconditioningServiceClient_waitForConnection(vehicle::airCondition::PreconditioningServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::AirFlowServiceClient*
AirFlowServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::AirFlowServiceClient > client = vehicle::airCondition::AirFlowServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::AirFlowServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::AirFlowServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AirFlowServiceClient_waitForConnection(vehicle::airCondition::AirFlowServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::GeneralAirConditionSettingsServiceClient*
GeneralAirConditionSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::GeneralAirConditionSettingsServiceClient > client = vehicle::airCondition::GeneralAirConditionSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::GeneralAirConditionSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::GeneralAirConditionSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralAirConditionSettingsServiceClient_waitForConnection(vehicle::airCondition::GeneralAirConditionSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::ScentGenerationServiceClient*
ScentGenerationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::ScentGenerationServiceClient > client = vehicle::airCondition::ScentGenerationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::ScentGenerationServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::ScentGenerationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ScentGenerationServiceClient_waitForConnection(vehicle::airCondition::ScentGenerationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::IonizationServiceClient*
IonizationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::IonizationServiceClient > client = vehicle::airCondition::IonizationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::IonizationServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::IonizationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void IonizationServiceClient_waitForConnection(vehicle::airCondition::IonizationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::AirDistributionServiceClient*
AirDistributionServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::AirDistributionServiceClient > client = vehicle::airCondition::AirDistributionServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::AirDistributionServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::AirDistributionServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AirDistributionServiceClient_waitForConnection(vehicle::airCondition::AirDistributionServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::TemperatureServiceClient*
TemperatureServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::TemperatureServiceClient > client = vehicle::airCondition::TemperatureServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::TemperatureServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::TemperatureServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TemperatureServiceClient_waitForConnection(vehicle::airCondition::TemperatureServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::AirQualityServiceClient*
AirQualityServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::AirQualityServiceClient > client = vehicle::airCondition::AirQualityServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::AirQualityServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::AirQualityServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AirQualityServiceClient_waitForConnection(vehicle::airCondition::AirQualityServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::airCondition::IndependentCarHeaterServiceClient*
IndependentCarHeaterServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::airCondition::IndependentCarHeaterServiceClient > client = vehicle::airCondition::IndependentCarHeaterServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::airCondition::IndependentCarHeaterServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::airCondition::IndependentCarHeaterServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void IndependentCarHeaterServiceClient_waitForConnection(vehicle::airCondition::IndependentCarHeaterServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_AirPulseModeServiceClient_createSimpleClient(address):
    return libAirConditionService.AirPulseModeServiceClient_createSimpleClient(address)
AirPulseModeServiceClient.createClient = static_AirPulseModeServiceClient_createSimpleClient

def AirPulseModeServiceClient_waitForConnection(self):
    return libAirConditionService.AirPulseModeServiceClient_waitForConnection(self)
AirPulseModeServiceClient.waitForConnection = AirPulseModeServiceClient_waitForConnection

@staticmethod
def static_FanAdjustmentServiceClient_createSimpleClient(address):
    return libAirConditionService.FanAdjustmentServiceClient_createSimpleClient(address)
FanAdjustmentServiceClient.createClient = static_FanAdjustmentServiceClient_createSimpleClient

def FanAdjustmentServiceClient_waitForConnection(self):
    return libAirConditionService.FanAdjustmentServiceClient_waitForConnection(self)
FanAdjustmentServiceClient.waitForConnection = FanAdjustmentServiceClient_waitForConnection

@staticmethod
def static_PreconditioningServiceClient_createSimpleClient(address):
    return libAirConditionService.PreconditioningServiceClient_createSimpleClient(address)
PreconditioningServiceClient.createClient = static_PreconditioningServiceClient_createSimpleClient

def PreconditioningServiceClient_waitForConnection(self):
    return libAirConditionService.PreconditioningServiceClient_waitForConnection(self)
PreconditioningServiceClient.waitForConnection = PreconditioningServiceClient_waitForConnection

@staticmethod
def static_AirFlowServiceClient_createSimpleClient(address):
    return libAirConditionService.AirFlowServiceClient_createSimpleClient(address)
AirFlowServiceClient.createClient = static_AirFlowServiceClient_createSimpleClient

def AirFlowServiceClient_waitForConnection(self):
    return libAirConditionService.AirFlowServiceClient_waitForConnection(self)
AirFlowServiceClient.waitForConnection = AirFlowServiceClient_waitForConnection

@staticmethod
def static_GeneralAirConditionSettingsServiceClient_createSimpleClient(address):
    return libAirConditionService.GeneralAirConditionSettingsServiceClient_createSimpleClient(address)
GeneralAirConditionSettingsServiceClient.createClient = static_GeneralAirConditionSettingsServiceClient_createSimpleClient

def GeneralAirConditionSettingsServiceClient_waitForConnection(self):
    return libAirConditionService.GeneralAirConditionSettingsServiceClient_waitForConnection(self)
GeneralAirConditionSettingsServiceClient.waitForConnection = GeneralAirConditionSettingsServiceClient_waitForConnection

@staticmethod
def static_ScentGenerationServiceClient_createSimpleClient(address):
    return libAirConditionService.ScentGenerationServiceClient_createSimpleClient(address)
ScentGenerationServiceClient.createClient = static_ScentGenerationServiceClient_createSimpleClient

def ScentGenerationServiceClient_waitForConnection(self):
    return libAirConditionService.ScentGenerationServiceClient_waitForConnection(self)
ScentGenerationServiceClient.waitForConnection = ScentGenerationServiceClient_waitForConnection

@staticmethod
def static_IonizationServiceClient_createSimpleClient(address):
    return libAirConditionService.IonizationServiceClient_createSimpleClient(address)
IonizationServiceClient.createClient = static_IonizationServiceClient_createSimpleClient

def IonizationServiceClient_waitForConnection(self):
    return libAirConditionService.IonizationServiceClient_waitForConnection(self)
IonizationServiceClient.waitForConnection = IonizationServiceClient_waitForConnection

@staticmethod
def static_AirDistributionServiceClient_createSimpleClient(address):
    return libAirConditionService.AirDistributionServiceClient_createSimpleClient(address)
AirDistributionServiceClient.createClient = static_AirDistributionServiceClient_createSimpleClient

def AirDistributionServiceClient_waitForConnection(self):
    return libAirConditionService.AirDistributionServiceClient_waitForConnection(self)
AirDistributionServiceClient.waitForConnection = AirDistributionServiceClient_waitForConnection

@staticmethod
def static_TemperatureServiceClient_createSimpleClient(address):
    return libAirConditionService.TemperatureServiceClient_createSimpleClient(address)
TemperatureServiceClient.createClient = static_TemperatureServiceClient_createSimpleClient

def TemperatureServiceClient_waitForConnection(self):
    return libAirConditionService.TemperatureServiceClient_waitForConnection(self)
TemperatureServiceClient.waitForConnection = TemperatureServiceClient_waitForConnection

@staticmethod
def static_AirQualityServiceClient_createSimpleClient(address):
    return libAirConditionService.AirQualityServiceClient_createSimpleClient(address)
AirQualityServiceClient.createClient = static_AirQualityServiceClient_createSimpleClient

def AirQualityServiceClient_waitForConnection(self):
    return libAirConditionService.AirQualityServiceClient_waitForConnection(self)
AirQualityServiceClient.waitForConnection = AirQualityServiceClient_waitForConnection

@staticmethod
def static_IndependentCarHeaterServiceClient_createSimpleClient(address):
    return libAirConditionService.IndependentCarHeaterServiceClient_createSimpleClient(address)
IndependentCarHeaterServiceClient.createClient = static_IndependentCarHeaterServiceClient_createSimpleClient

def IndependentCarHeaterServiceClient_waitForConnection(self):
    return libAirConditionService.IndependentCarHeaterServiceClient_waitForConnection(self)
IndependentCarHeaterServiceClient.waitForConnection = IndependentCarHeaterServiceClient_waitForConnection
%}
