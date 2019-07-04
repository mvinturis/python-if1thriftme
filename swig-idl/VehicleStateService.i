%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libVehicleStateService
else:
    import libVehicleStateService") VehicleStateService

%feature("director") cluster::vehicleState::VehicleLightsServiceClient;
%feature("director") cluster::vehicleState::ElectricPowerSupplyServiceClient;
%feature("director") cluster::vehicleState::TerminalBehaviorServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/TurnIndicatorLights.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/LightStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/FrontLights.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/LightStatusLR.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/BrakeLights.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/FogLights.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int8Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/DataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/BargraphStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/HVBatteryData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int32Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TriState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/MinSOCLimitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/MaxSOCLimitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/ChrgCurrentLimit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/ExtInt16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/ExtDataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/ChargingSourceType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/ChargingSourceErrorType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/ChargePredictionIconStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/PreconditionIconStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/PreconditionMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/HybridDayAndTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/HybridDayOfWeek.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/ExtInt8Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/HybridRelTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/RelOrAbsTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TCInt16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TCDataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/ChargeProgram.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/ChrgFlowStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/IgnitionSwitchData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/IgnitionSwitchState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/PowerState.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/VehicleLightsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/ElectricPowerSupplyService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/TerminalBehaviorService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/VehicleLightsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/ElectricPowerSupplyService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleStateService/inc/TerminalBehaviorService.h"
%}

%inline %{
cluster::vehicleState::VehicleLightsServiceClient*
VehicleLightsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleState::VehicleLightsServiceClient > client = cluster::vehicleState::VehicleLightsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleState::VehicleLightsServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleState::VehicleLightsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VehicleLightsServiceClient_waitForConnection(cluster::vehicleState::VehicleLightsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::vehicleState::ElectricPowerSupplyServiceClient*
ElectricPowerSupplyServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleState::ElectricPowerSupplyServiceClient > client = cluster::vehicleState::ElectricPowerSupplyServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleState::ElectricPowerSupplyServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleState::ElectricPowerSupplyServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ElectricPowerSupplyServiceClient_waitForConnection(cluster::vehicleState::ElectricPowerSupplyServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::vehicleState::TerminalBehaviorServiceClient*
TerminalBehaviorServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleState::TerminalBehaviorServiceClient > client = cluster::vehicleState::TerminalBehaviorServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleState::TerminalBehaviorServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleState::TerminalBehaviorServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TerminalBehaviorServiceClient_waitForConnection(cluster::vehicleState::TerminalBehaviorServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_VehicleLightsServiceClient_createSimpleClient(address):
    return libVehicleStateService.VehicleLightsServiceClient_createSimpleClient(address)
VehicleLightsServiceClient.createClient = static_VehicleLightsServiceClient_createSimpleClient

def VehicleLightsServiceClient_waitForConnection(self):
    return libVehicleStateService.VehicleLightsServiceClient_waitForConnection(self)
VehicleLightsServiceClient.waitForConnection = VehicleLightsServiceClient_waitForConnection

@staticmethod
def static_ElectricPowerSupplyServiceClient_createSimpleClient(address):
    return libVehicleStateService.ElectricPowerSupplyServiceClient_createSimpleClient(address)
ElectricPowerSupplyServiceClient.createClient = static_ElectricPowerSupplyServiceClient_createSimpleClient

def ElectricPowerSupplyServiceClient_waitForConnection(self):
    return libVehicleStateService.ElectricPowerSupplyServiceClient_waitForConnection(self)
ElectricPowerSupplyServiceClient.waitForConnection = ElectricPowerSupplyServiceClient_waitForConnection

@staticmethod
def static_TerminalBehaviorServiceClient_createSimpleClient(address):
    return libVehicleStateService.TerminalBehaviorServiceClient_createSimpleClient(address)
TerminalBehaviorServiceClient.createClient = static_TerminalBehaviorServiceClient_createSimpleClient

def TerminalBehaviorServiceClient_waitForConnection(self):
    return libVehicleStateService.TerminalBehaviorServiceClient_waitForConnection(self)
TerminalBehaviorServiceClient.waitForConnection = TerminalBehaviorServiceClient_waitForConnection
%}
