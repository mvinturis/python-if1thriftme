%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libDriveProgramsService
else:
    import libDriveProgramsService") DriveProgramsService

%feature("director") vehicle::drivePrograms::EngineDataServiceClient;
%feature("director") vehicle::drivePrograms::OffroadScoreServiceClient;
%feature("director") vehicle::drivePrograms::WheelDataServiceClient;
%feature("director") vehicle::drivePrograms::DriveProgramControlServiceClient;
%feature("director") vehicle::drivePrograms::IndividualDriveProgramServiceClient;
%feature("director") vehicle::drivePrograms::CarDataServiceClient;
%feature("director") vehicle::drivePrograms::GeneralDriveProgramServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DoubleValueData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/EnginePowerUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/EngineTorqueUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DriveProgramStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/OffroadScoreRanking.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/DateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/Time.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/OffroadScoreTip.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/PowertrainState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/OffroadScoreRideActionState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/OffroadScoreRideAction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/IndividualWheelAdjustment.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/TirePressureMonitoringStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/VehicleExteriorPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/TireStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/TireTemperatureStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/RearAxleSteeringStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/Availability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DriveProgram.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DriveProgramName.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DistronicMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/ESPMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/ExhaustFlapMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/HybridMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/LevelMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/PowertrainMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SailMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SoundMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SSAMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SteeringMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SuspensionMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/TransmissionMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DrivingDynamicsMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/AeroModes.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DPLastModeRqData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DPCLastMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/CurveCarvingLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DriveProgramUnavailableException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DriveProgramDataMatrix.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/EdrivePreventiveMessage.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SettingStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/FunctionName.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/EnabledDriveProgram.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/TCASEGearMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/HADStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DPLastModePopupState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/ButtonState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/ActiveDPParameterData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DynamicSelectSwitchStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/InvalidSettingException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/VehicleAxle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/ETrailerHitchWorkPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/IlluminationMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/MCSPreviewMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SensorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SteeringVariant.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/SuspensionAdjustmentMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/PressureUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AirConditionService/inc/TemperatureUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DifferentialLockStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DifferentialLockPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/CarRoofStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/VehicleLevelOffset.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/CarDataVisualizationDisplayStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/CarDataVisualizationConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/CarDataVisualizationObjectLayer.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AnalogueUnitsScreenSwitch.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotAvailableAvailable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/GForceAccMaxVal.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/IndicationBrakeTorqueGainFactor.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AnalogueInstrumentTorqueScaleValueType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AnalogueInstrumentPowerScaleValueType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleLevelPositionM1RelativeReference.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleLevelPositionP0RelativeReference.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleLevelPositionP1RelativeReference.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleLevelPositionP2RelativeReference.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleLevelPositionP3RelativeReference.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleLevelPositionM2RelativeReference.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/GForceLStretchFactor.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleWheelPlungerDataSourceSignal.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/EngineBoostPressure.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleSpeedDivisorType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/GForceParameterK.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OSReceiveBufferSize.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OSDisplayBufferSize.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OSDisplayBufferUpdateTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OSRankingMaximumDataLines.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OSHistoryMaximumDataLines.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DriveProgramDataMatrixConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgram.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DriveProgramHMIUsageOrder.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SpeedThreshold.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SpeedHysteresis.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/FalseTrue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DriveProgramsIndividualSettingsConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DriveProgramsSettingsConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramSelectionSwitchType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramIndicationTimeout.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramIndicationTimeoutOffset.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramOperationTimeoutDSS.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramDropTimeout.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramFaultTimeout.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramRecoveryRequestAnswerFocus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrvProgTimerType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrvProgSpeedType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivingProgramSLMaxEntries.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/EngineDataService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/OffroadScoreService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/WheelDataService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DriveProgramControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/IndividualDriveProgramService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/CarDataService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/GeneralDriveProgramService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/EngineDataService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/OffroadScoreService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/WheelDataService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DriveProgramControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/IndividualDriveProgramService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/CarDataService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/GeneralDriveProgramService.h"
%}

%inline %{
vehicle::drivePrograms::EngineDataServiceClient*
EngineDataServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::drivePrograms::EngineDataServiceClient > client = vehicle::drivePrograms::EngineDataServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::drivePrograms::EngineDataServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::drivePrograms::EngineDataServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EngineDataServiceClient_waitForConnection(vehicle::drivePrograms::EngineDataServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::drivePrograms::OffroadScoreServiceClient*
OffroadScoreServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::drivePrograms::OffroadScoreServiceClient > client = vehicle::drivePrograms::OffroadScoreServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::drivePrograms::OffroadScoreServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::drivePrograms::OffroadScoreServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void OffroadScoreServiceClient_waitForConnection(vehicle::drivePrograms::OffroadScoreServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::drivePrograms::WheelDataServiceClient*
WheelDataServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::drivePrograms::WheelDataServiceClient > client = vehicle::drivePrograms::WheelDataServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::drivePrograms::WheelDataServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::drivePrograms::WheelDataServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WheelDataServiceClient_waitForConnection(vehicle::drivePrograms::WheelDataServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::drivePrograms::DriveProgramControlServiceClient*
DriveProgramControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::drivePrograms::DriveProgramControlServiceClient > client = vehicle::drivePrograms::DriveProgramControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::drivePrograms::DriveProgramControlServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::drivePrograms::DriveProgramControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DriveProgramControlServiceClient_waitForConnection(vehicle::drivePrograms::DriveProgramControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::drivePrograms::IndividualDriveProgramServiceClient*
IndividualDriveProgramServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::drivePrograms::IndividualDriveProgramServiceClient > client = vehicle::drivePrograms::IndividualDriveProgramServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::drivePrograms::IndividualDriveProgramServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::drivePrograms::IndividualDriveProgramServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void IndividualDriveProgramServiceClient_waitForConnection(vehicle::drivePrograms::IndividualDriveProgramServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::drivePrograms::CarDataServiceClient*
CarDataServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::drivePrograms::CarDataServiceClient > client = vehicle::drivePrograms::CarDataServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::drivePrograms::CarDataServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::drivePrograms::CarDataServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void CarDataServiceClient_waitForConnection(vehicle::drivePrograms::CarDataServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::drivePrograms::GeneralDriveProgramServiceClient*
GeneralDriveProgramServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::drivePrograms::GeneralDriveProgramServiceClient > client = vehicle::drivePrograms::GeneralDriveProgramServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::drivePrograms::GeneralDriveProgramServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::drivePrograms::GeneralDriveProgramServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralDriveProgramServiceClient_waitForConnection(vehicle::drivePrograms::GeneralDriveProgramServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_EngineDataServiceClient_createSimpleClient(address):
    return libDriveProgramsService.EngineDataServiceClient_createSimpleClient(address)
EngineDataServiceClient.createClient = static_EngineDataServiceClient_createSimpleClient

def EngineDataServiceClient_waitForConnection(self):
    return libDriveProgramsService.EngineDataServiceClient_waitForConnection(self)
EngineDataServiceClient.waitForConnection = EngineDataServiceClient_waitForConnection

@staticmethod
def static_OffroadScoreServiceClient_createSimpleClient(address):
    return libDriveProgramsService.OffroadScoreServiceClient_createSimpleClient(address)
OffroadScoreServiceClient.createClient = static_OffroadScoreServiceClient_createSimpleClient

def OffroadScoreServiceClient_waitForConnection(self):
    return libDriveProgramsService.OffroadScoreServiceClient_waitForConnection(self)
OffroadScoreServiceClient.waitForConnection = OffroadScoreServiceClient_waitForConnection

@staticmethod
def static_WheelDataServiceClient_createSimpleClient(address):
    return libDriveProgramsService.WheelDataServiceClient_createSimpleClient(address)
WheelDataServiceClient.createClient = static_WheelDataServiceClient_createSimpleClient

def WheelDataServiceClient_waitForConnection(self):
    return libDriveProgramsService.WheelDataServiceClient_waitForConnection(self)
WheelDataServiceClient.waitForConnection = WheelDataServiceClient_waitForConnection

@staticmethod
def static_DriveProgramControlServiceClient_createSimpleClient(address):
    return libDriveProgramsService.DriveProgramControlServiceClient_createSimpleClient(address)
DriveProgramControlServiceClient.createClient = static_DriveProgramControlServiceClient_createSimpleClient

def DriveProgramControlServiceClient_waitForConnection(self):
    return libDriveProgramsService.DriveProgramControlServiceClient_waitForConnection(self)
DriveProgramControlServiceClient.waitForConnection = DriveProgramControlServiceClient_waitForConnection

@staticmethod
def static_IndividualDriveProgramServiceClient_createSimpleClient(address):
    return libDriveProgramsService.IndividualDriveProgramServiceClient_createSimpleClient(address)
IndividualDriveProgramServiceClient.createClient = static_IndividualDriveProgramServiceClient_createSimpleClient

def IndividualDriveProgramServiceClient_waitForConnection(self):
    return libDriveProgramsService.IndividualDriveProgramServiceClient_waitForConnection(self)
IndividualDriveProgramServiceClient.waitForConnection = IndividualDriveProgramServiceClient_waitForConnection

@staticmethod
def static_CarDataServiceClient_createSimpleClient(address):
    return libDriveProgramsService.CarDataServiceClient_createSimpleClient(address)
CarDataServiceClient.createClient = static_CarDataServiceClient_createSimpleClient

def CarDataServiceClient_waitForConnection(self):
    return libDriveProgramsService.CarDataServiceClient_waitForConnection(self)
CarDataServiceClient.waitForConnection = CarDataServiceClient_waitForConnection

@staticmethod
def static_GeneralDriveProgramServiceClient_createSimpleClient(address):
    return libDriveProgramsService.GeneralDriveProgramServiceClient_createSimpleClient(address)
GeneralDriveProgramServiceClient.createClient = static_GeneralDriveProgramServiceClient_createSimpleClient

def GeneralDriveProgramServiceClient_waitForConnection(self):
    return libDriveProgramsService.GeneralDriveProgramServiceClient_waitForConnection(self)
GeneralDriveProgramServiceClient.waitForConnection = GeneralDriveProgramServiceClient_waitForConnection
%}
