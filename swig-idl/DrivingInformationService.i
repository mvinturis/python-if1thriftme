%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libDrivingInformationService
else:
    import libDrivingInformationService") DrivingInformationService

%feature("director") cluster::drivingInformation::AssystPlusServiceClient;
%feature("director") cluster::drivingInformation::RevMeterServiceClient;
%feature("director") cluster::drivingInformation::AssystServiceClient;
%feature("director") cluster::drivingInformation::PowerMeterServiceClient;
%feature("director") cluster::drivingInformation::OdometerServiceClient;
%feature("director") cluster::drivingInformation::AdBlueServiceClient;
%feature("director") cluster::drivingInformation::WiperServiceClient;
%feature("director") cluster::drivingInformation::SuperSportServiceClient;
%feature("director") cluster::drivingInformation::TripComputerServiceClient;
%feature("director") cluster::drivingInformation::OutsideTemperatureServiceClient;
%feature("director") cluster::drivingInformation::TransmissionServiceClient;
%feature("director") cluster::drivingInformation::CoolantTemperatureServiceClient;
%feature("director") cluster::drivingInformation::OffroadServiceClient;
%feature("director") cluster::drivingInformation::FuelLevelServiceClient;
%feature("director") cluster::drivingInformation::SpeedometerServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/ServiceDispMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/ServicePrioritySelector.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int32Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/DataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/VehicleHandoverStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OilQuality.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/ServiceConfirmationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/ServiceConfirmationRequest.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OilLevelMeasDispReq.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/AvailablePower.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/ExtInt8Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/ExtDataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/PowerValues.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int8Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TriState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/PwrMtrDriveState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/AdBlueDispRq.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/BargraphStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/GMeterDataType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/EngineTorqueMinMax.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/EnginePowerMinMax.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TorqueDistributionData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TCCurrentConsumptionData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TCInt32Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TCDataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TCLifetimeConsumptionData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TCRangeData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TCInt16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TCMemoryData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TripComputerType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OutsideTemperatureData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OutsideTemperatureStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/GearStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/GearIndicationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/IndicatorError.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/ClutchCooldownTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/ShiftRecommendationData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/ShiftRecGearPos.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/ShiftRecStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/DynamicSelectStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/SuspensionLevelDataType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/VehLevelTarget.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/DamperSettingType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TorqueOnDemandType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/InclinationDataType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/SpdWrnIcons.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/SpeedLimitData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/SpeedLimitUnitBase.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/AssystPlusService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/RevMeterService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/AssystService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/PowerMeterService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OdometerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/AdBlueService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/WiperService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/SuperSportService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TripComputerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OutsideTemperatureService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TransmissionService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/CoolantTemperatureService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OffroadService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/FuelLevelService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/SpeedometerService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/AssystPlusService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/RevMeterService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/AssystService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/PowerMeterService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OdometerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/AdBlueService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/WiperService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/SuperSportService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TripComputerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OutsideTemperatureService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/TransmissionService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/CoolantTemperatureService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/OffroadService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/FuelLevelService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DrivingInformationService/inc/SpeedometerService.h"
%}

%inline %{
cluster::drivingInformation::AssystPlusServiceClient*
AssystPlusServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::AssystPlusServiceClient > client = cluster::drivingInformation::AssystPlusServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::AssystPlusServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::AssystPlusServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AssystPlusServiceClient_waitForConnection(cluster::drivingInformation::AssystPlusServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::RevMeterServiceClient*
RevMeterServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::RevMeterServiceClient > client = cluster::drivingInformation::RevMeterServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::RevMeterServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::RevMeterServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void RevMeterServiceClient_waitForConnection(cluster::drivingInformation::RevMeterServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::AssystServiceClient*
AssystServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::AssystServiceClient > client = cluster::drivingInformation::AssystServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::AssystServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::AssystServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AssystServiceClient_waitForConnection(cluster::drivingInformation::AssystServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::PowerMeterServiceClient*
PowerMeterServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::PowerMeterServiceClient > client = cluster::drivingInformation::PowerMeterServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::PowerMeterServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::PowerMeterServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void PowerMeterServiceClient_waitForConnection(cluster::drivingInformation::PowerMeterServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::OdometerServiceClient*
OdometerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::OdometerServiceClient > client = cluster::drivingInformation::OdometerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::OdometerServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::OdometerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void OdometerServiceClient_waitForConnection(cluster::drivingInformation::OdometerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::AdBlueServiceClient*
AdBlueServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::AdBlueServiceClient > client = cluster::drivingInformation::AdBlueServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::AdBlueServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::AdBlueServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AdBlueServiceClient_waitForConnection(cluster::drivingInformation::AdBlueServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::WiperServiceClient*
WiperServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::WiperServiceClient > client = cluster::drivingInformation::WiperServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::WiperServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::WiperServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WiperServiceClient_waitForConnection(cluster::drivingInformation::WiperServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::SuperSportServiceClient*
SuperSportServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::SuperSportServiceClient > client = cluster::drivingInformation::SuperSportServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::SuperSportServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::SuperSportServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SuperSportServiceClient_waitForConnection(cluster::drivingInformation::SuperSportServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::TripComputerServiceClient*
TripComputerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::TripComputerServiceClient > client = cluster::drivingInformation::TripComputerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::TripComputerServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::TripComputerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TripComputerServiceClient_waitForConnection(cluster::drivingInformation::TripComputerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::OutsideTemperatureServiceClient*
OutsideTemperatureServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::OutsideTemperatureServiceClient > client = cluster::drivingInformation::OutsideTemperatureServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::OutsideTemperatureServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::OutsideTemperatureServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void OutsideTemperatureServiceClient_waitForConnection(cluster::drivingInformation::OutsideTemperatureServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::TransmissionServiceClient*
TransmissionServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::TransmissionServiceClient > client = cluster::drivingInformation::TransmissionServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::TransmissionServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::TransmissionServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TransmissionServiceClient_waitForConnection(cluster::drivingInformation::TransmissionServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::CoolantTemperatureServiceClient*
CoolantTemperatureServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::CoolantTemperatureServiceClient > client = cluster::drivingInformation::CoolantTemperatureServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::CoolantTemperatureServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::CoolantTemperatureServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void CoolantTemperatureServiceClient_waitForConnection(cluster::drivingInformation::CoolantTemperatureServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::OffroadServiceClient*
OffroadServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::OffroadServiceClient > client = cluster::drivingInformation::OffroadServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::OffroadServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::OffroadServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void OffroadServiceClient_waitForConnection(cluster::drivingInformation::OffroadServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::FuelLevelServiceClient*
FuelLevelServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::FuelLevelServiceClient > client = cluster::drivingInformation::FuelLevelServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::FuelLevelServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::FuelLevelServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void FuelLevelServiceClient_waitForConnection(cluster::drivingInformation::FuelLevelServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::drivingInformation::SpeedometerServiceClient*
SpeedometerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::drivingInformation::SpeedometerServiceClient > client = cluster::drivingInformation::SpeedometerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::drivingInformation::SpeedometerServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::drivingInformation::SpeedometerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SpeedometerServiceClient_waitForConnection(cluster::drivingInformation::SpeedometerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_AssystPlusServiceClient_createSimpleClient(address):
    return libDrivingInformationService.AssystPlusServiceClient_createSimpleClient(address)
AssystPlusServiceClient.createClient = static_AssystPlusServiceClient_createSimpleClient

def AssystPlusServiceClient_waitForConnection(self):
    return libDrivingInformationService.AssystPlusServiceClient_waitForConnection(self)
AssystPlusServiceClient.waitForConnection = AssystPlusServiceClient_waitForConnection

@staticmethod
def static_RevMeterServiceClient_createSimpleClient(address):
    return libDrivingInformationService.RevMeterServiceClient_createSimpleClient(address)
RevMeterServiceClient.createClient = static_RevMeterServiceClient_createSimpleClient

def RevMeterServiceClient_waitForConnection(self):
    return libDrivingInformationService.RevMeterServiceClient_waitForConnection(self)
RevMeterServiceClient.waitForConnection = RevMeterServiceClient_waitForConnection

@staticmethod
def static_AssystServiceClient_createSimpleClient(address):
    return libDrivingInformationService.AssystServiceClient_createSimpleClient(address)
AssystServiceClient.createClient = static_AssystServiceClient_createSimpleClient

def AssystServiceClient_waitForConnection(self):
    return libDrivingInformationService.AssystServiceClient_waitForConnection(self)
AssystServiceClient.waitForConnection = AssystServiceClient_waitForConnection

@staticmethod
def static_PowerMeterServiceClient_createSimpleClient(address):
    return libDrivingInformationService.PowerMeterServiceClient_createSimpleClient(address)
PowerMeterServiceClient.createClient = static_PowerMeterServiceClient_createSimpleClient

def PowerMeterServiceClient_waitForConnection(self):
    return libDrivingInformationService.PowerMeterServiceClient_waitForConnection(self)
PowerMeterServiceClient.waitForConnection = PowerMeterServiceClient_waitForConnection

@staticmethod
def static_OdometerServiceClient_createSimpleClient(address):
    return libDrivingInformationService.OdometerServiceClient_createSimpleClient(address)
OdometerServiceClient.createClient = static_OdometerServiceClient_createSimpleClient

def OdometerServiceClient_waitForConnection(self):
    return libDrivingInformationService.OdometerServiceClient_waitForConnection(self)
OdometerServiceClient.waitForConnection = OdometerServiceClient_waitForConnection

@staticmethod
def static_AdBlueServiceClient_createSimpleClient(address):
    return libDrivingInformationService.AdBlueServiceClient_createSimpleClient(address)
AdBlueServiceClient.createClient = static_AdBlueServiceClient_createSimpleClient

def AdBlueServiceClient_waitForConnection(self):
    return libDrivingInformationService.AdBlueServiceClient_waitForConnection(self)
AdBlueServiceClient.waitForConnection = AdBlueServiceClient_waitForConnection

@staticmethod
def static_WiperServiceClient_createSimpleClient(address):
    return libDrivingInformationService.WiperServiceClient_createSimpleClient(address)
WiperServiceClient.createClient = static_WiperServiceClient_createSimpleClient

def WiperServiceClient_waitForConnection(self):
    return libDrivingInformationService.WiperServiceClient_waitForConnection(self)
WiperServiceClient.waitForConnection = WiperServiceClient_waitForConnection

@staticmethod
def static_SuperSportServiceClient_createSimpleClient(address):
    return libDrivingInformationService.SuperSportServiceClient_createSimpleClient(address)
SuperSportServiceClient.createClient = static_SuperSportServiceClient_createSimpleClient

def SuperSportServiceClient_waitForConnection(self):
    return libDrivingInformationService.SuperSportServiceClient_waitForConnection(self)
SuperSportServiceClient.waitForConnection = SuperSportServiceClient_waitForConnection

@staticmethod
def static_TripComputerServiceClient_createSimpleClient(address):
    return libDrivingInformationService.TripComputerServiceClient_createSimpleClient(address)
TripComputerServiceClient.createClient = static_TripComputerServiceClient_createSimpleClient

def TripComputerServiceClient_waitForConnection(self):
    return libDrivingInformationService.TripComputerServiceClient_waitForConnection(self)
TripComputerServiceClient.waitForConnection = TripComputerServiceClient_waitForConnection

@staticmethod
def static_OutsideTemperatureServiceClient_createSimpleClient(address):
    return libDrivingInformationService.OutsideTemperatureServiceClient_createSimpleClient(address)
OutsideTemperatureServiceClient.createClient = static_OutsideTemperatureServiceClient_createSimpleClient

def OutsideTemperatureServiceClient_waitForConnection(self):
    return libDrivingInformationService.OutsideTemperatureServiceClient_waitForConnection(self)
OutsideTemperatureServiceClient.waitForConnection = OutsideTemperatureServiceClient_waitForConnection

@staticmethod
def static_TransmissionServiceClient_createSimpleClient(address):
    return libDrivingInformationService.TransmissionServiceClient_createSimpleClient(address)
TransmissionServiceClient.createClient = static_TransmissionServiceClient_createSimpleClient

def TransmissionServiceClient_waitForConnection(self):
    return libDrivingInformationService.TransmissionServiceClient_waitForConnection(self)
TransmissionServiceClient.waitForConnection = TransmissionServiceClient_waitForConnection

@staticmethod
def static_CoolantTemperatureServiceClient_createSimpleClient(address):
    return libDrivingInformationService.CoolantTemperatureServiceClient_createSimpleClient(address)
CoolantTemperatureServiceClient.createClient = static_CoolantTemperatureServiceClient_createSimpleClient

def CoolantTemperatureServiceClient_waitForConnection(self):
    return libDrivingInformationService.CoolantTemperatureServiceClient_waitForConnection(self)
CoolantTemperatureServiceClient.waitForConnection = CoolantTemperatureServiceClient_waitForConnection

@staticmethod
def static_OffroadServiceClient_createSimpleClient(address):
    return libDrivingInformationService.OffroadServiceClient_createSimpleClient(address)
OffroadServiceClient.createClient = static_OffroadServiceClient_createSimpleClient

def OffroadServiceClient_waitForConnection(self):
    return libDrivingInformationService.OffroadServiceClient_waitForConnection(self)
OffroadServiceClient.waitForConnection = OffroadServiceClient_waitForConnection

@staticmethod
def static_FuelLevelServiceClient_createSimpleClient(address):
    return libDrivingInformationService.FuelLevelServiceClient_createSimpleClient(address)
FuelLevelServiceClient.createClient = static_FuelLevelServiceClient_createSimpleClient

def FuelLevelServiceClient_waitForConnection(self):
    return libDrivingInformationService.FuelLevelServiceClient_waitForConnection(self)
FuelLevelServiceClient.waitForConnection = FuelLevelServiceClient_waitForConnection

@staticmethod
def static_SpeedometerServiceClient_createSimpleClient(address):
    return libDrivingInformationService.SpeedometerServiceClient_createSimpleClient(address)
SpeedometerServiceClient.createClient = static_SpeedometerServiceClient_createSimpleClient

def SpeedometerServiceClient_waitForConnection(self):
    return libDrivingInformationService.SpeedometerServiceClient_waitForConnection(self)
SpeedometerServiceClient.waitForConnection = SpeedometerServiceClient_waitForConnection
%}
