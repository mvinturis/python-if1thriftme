%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libVehicleIndicatorsService
else:
    import libVehicleIndicatorsService") VehicleIndicatorsService

%feature("director") cluster::vehicleIndicators::SeatbeltsAndDoorsServiceClient;
%feature("director") cluster::vehicleIndicators::TireMonitoringServiceClient;
%feature("director") cluster::vehicleIndicators::VehicleIndicatorsServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/BoolData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/DataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/SeatStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/SeatOccupationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/SeatbeltStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/SeatID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/FTWStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/FTWWarning.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/TPMStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/TireData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/TirePressureSeverity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/TireTemperatureSeverity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/TireID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/IndicationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/IndicatorID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/IndicatorError.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/SpotlightIndicatorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/YellowRedIndicatorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/StartStopIndicatorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/HybridPTReadyStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/ReserveIndicatorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/ReserveIndicatorOnOff.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/ReserveIndicatorBlink.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/RoofLampIndicationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/CurrentlyChargingIndication.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/ConvertibleTopMovementStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/TopMovementIndication.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/SeatbeltsAndDoorsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/TireMonitoringService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/VehicleIndicatorsService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/SeatbeltsAndDoorsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/TireMonitoringService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleIndicatorsService/inc/VehicleIndicatorsService.h"
%}

%inline %{
cluster::vehicleIndicators::SeatbeltsAndDoorsServiceClient*
SeatbeltsAndDoorsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleIndicators::SeatbeltsAndDoorsServiceClient > client = cluster::vehicleIndicators::SeatbeltsAndDoorsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleIndicators::SeatbeltsAndDoorsServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleIndicators::SeatbeltsAndDoorsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SeatbeltsAndDoorsServiceClient_waitForConnection(cluster::vehicleIndicators::SeatbeltsAndDoorsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::vehicleIndicators::TireMonitoringServiceClient*
TireMonitoringServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleIndicators::TireMonitoringServiceClient > client = cluster::vehicleIndicators::TireMonitoringServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleIndicators::TireMonitoringServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleIndicators::TireMonitoringServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TireMonitoringServiceClient_waitForConnection(cluster::vehicleIndicators::TireMonitoringServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::vehicleIndicators::VehicleIndicatorsServiceClient*
VehicleIndicatorsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleIndicators::VehicleIndicatorsServiceClient > client = cluster::vehicleIndicators::VehicleIndicatorsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleIndicators::VehicleIndicatorsServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleIndicators::VehicleIndicatorsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VehicleIndicatorsServiceClient_waitForConnection(cluster::vehicleIndicators::VehicleIndicatorsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_SeatbeltsAndDoorsServiceClient_createSimpleClient(address):
    return libVehicleIndicatorsService.SeatbeltsAndDoorsServiceClient_createSimpleClient(address)
SeatbeltsAndDoorsServiceClient.createClient = static_SeatbeltsAndDoorsServiceClient_createSimpleClient

def SeatbeltsAndDoorsServiceClient_waitForConnection(self):
    return libVehicleIndicatorsService.SeatbeltsAndDoorsServiceClient_waitForConnection(self)
SeatbeltsAndDoorsServiceClient.waitForConnection = SeatbeltsAndDoorsServiceClient_waitForConnection

@staticmethod
def static_TireMonitoringServiceClient_createSimpleClient(address):
    return libVehicleIndicatorsService.TireMonitoringServiceClient_createSimpleClient(address)
TireMonitoringServiceClient.createClient = static_TireMonitoringServiceClient_createSimpleClient

def TireMonitoringServiceClient_waitForConnection(self):
    return libVehicleIndicatorsService.TireMonitoringServiceClient_waitForConnection(self)
TireMonitoringServiceClient.waitForConnection = TireMonitoringServiceClient_waitForConnection

@staticmethod
def static_VehicleIndicatorsServiceClient_createSimpleClient(address):
    return libVehicleIndicatorsService.VehicleIndicatorsServiceClient_createSimpleClient(address)
VehicleIndicatorsServiceClient.createClient = static_VehicleIndicatorsServiceClient_createSimpleClient

def VehicleIndicatorsServiceClient_waitForConnection(self):
    return libVehicleIndicatorsService.VehicleIndicatorsServiceClient_waitForConnection(self)
VehicleIndicatorsServiceClient.waitForConnection = VehicleIndicatorsServiceClient_waitForConnection
%}
