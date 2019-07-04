%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libVehicleFunctionsService
else:
    import libVehicleFunctionsService") VehicleFunctionsService

%feature("director") vehicle::vehicleFunctions::PHDImageForDigitalHeadlightServiceClient;
%feature("director") vehicle::vehicleFunctions::ZEVFunctionsServiceClient;
%feature("director") vehicle::vehicleFunctions::InstrumentClusterSettingsServiceClient;
%feature("director") vehicle::vehicleFunctions::CarSettingsServiceClient;
%feature("director") vehicle::vehicleFunctions::GeneralVehicleFunctionsSettingsServiceClient;
%feature("director") vehicle::vehicleFunctions::EVSettingsServiceClient;
%feature("director") vehicle::vehicleFunctions::WirelessPowerTransferServiceClient;
%feature("director") vehicle::vehicleFunctions::PanelHeatingServiceClient;
%feature("director") vehicle::vehicleFunctions::ComfortFunctionsServiceClient;
%feature("director") vehicle::vehicleFunctions::OpeningAndLockingServiceClient;
%feature("director") vehicle::vehicleFunctions::CarWashModeServiceClient;
%feature("director") vehicle::vehicleFunctions::AssistantSettingsServiceClient;
%feature("director") vehicle::vehicleFunctions::IlluminationServiceClient;

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
%include "../swig-patch/VehicleFunctionsService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/PHDImageState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/Int8ValueData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotInitialized.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/FeatureNotApplicable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/StatusValue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AddSpeedoMenuStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/BatteryHibernationErrorState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DistanceUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/FuelSwitchStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/InspectionServiceInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TouchAcousticFeedback.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TemperatureDisplayType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SpeedUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/InstrumentClusterViewMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WinterSpeedLimiterStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/OdometerData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/RearSpoilerErrorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/RearSpoilerStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/KeyRequestStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AmbientLightConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AmbientLightType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ALTimeToFade.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ALFadingTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VehicleFunctionsConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotAvailableAvailable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotInstalledInstalled.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/EasyEntryExitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TowawayIntSensorType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/RoofStyle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ILSTrafficStyle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/BlindSpotDataType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/LDPType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TSAType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TireSpeedLimitVariantType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ESPCRocking.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ESPCLowLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DeactivatedActivated.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SmartChargeVal.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/LaneChangeAssistantType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/PanelHeating.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SundBlindStyleType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/LocBasedChargDistHome.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/LocBasedChargDistWork.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ChargingProgVersion.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SimpleDepartureTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/DayOfWeek.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ChargingProfile.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ChargingProgram.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/MaxChargingCurrentValue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DepartureTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WeekProfile.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DayProfile.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WeekProfileValidity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/EngineMaintenanceModeDialogResponse.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/UnexpectedErrorException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/EngineMaintenanceModeReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ChargingProgramSettings.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/Availability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WeekTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/Time.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/FeatureAvailabilty.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WeekProfileLockState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WeekProfileLockRequest.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LocationBasedChargingNotificationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/EngineMaintenanceModeDialogRequest.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/Int16ValueData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarPadModuleStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/GPMDisplayMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WirelessPowerTransferStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarPadModuleStatusReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/GPMAuthorizationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/GPMProcessResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/GPMConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/GroundPadModule.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SeatPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/EasyEntryPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/RequestStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/MagicSkyControlStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LockStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarWashModeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarWashModeSubsystemStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarWashModeSubsystem.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AttentionAssistLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DTRCurveMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SpeedLimitAdaptationAvailability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SettingsStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ESPMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LDPSituativeInterventionMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LDPWarningStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LaneChangeAssistValue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LaneDepartureProtectionMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TrafficSignInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TrafficSignExtendedInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TrafficSignSpeedWarningType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/MicroSleepDetectionState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ParktronicSystemStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/RoadSegmentOrientedOprStrategy.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TSASettingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SSARequestStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SSAStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TrafficJamPilotStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DisplaySelector.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ESPCLowLevelRequest.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ESPCLowLevelStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ESPCRockingStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TSASystemState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CMSWarningModes.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SafetyReleaseAssistantMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DistronicAutoStartMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TLAVideoNotificationState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TLATrafficLightChangeNotificationState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TLATrafficLightCounterNotificationState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/TLATrafficLightChangeType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SuspensionLevelAdjustmentErrorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/HitchControlStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/IECOStartStopAssistantStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DTRTrafficLightBraking.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DTRControlMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DTQCouplingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DTQControlMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LDPOneSideLaneRestriction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SteeringComfortTakeOverReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/SteeringTakeOverReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ManualGearAvailabilityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/RoadClearanceStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DSRAvailability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AttentionAssistSystemState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/RoadSegmentOrientedOprStrategyAvailable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/HitchControlBySoftkeyRequest.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/HitchControlByVoiceRequest.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AmbientLightEffect.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AmbientLightScenario.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AmbientLightZone.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AmbientLightColor.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AmbientLightColorProgram.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AmbientLightConfig.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/IlluminationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AFLPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AFLObject.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LightingDelayTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AFLActiveProgram.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AFLGlobalConfig.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ILSTouristMdStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ILSTouristMdTrafficStyle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/FunctionclusterStates.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/FunctionClusterType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/InteriorLightType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LightShowModes.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/LightShowType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AFLProgramConfig.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/StatusAndErrorValue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WelcomeIlluminationStates.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/DecentModeID.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/PHDImageForDigitalHeadlightService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ZEVFunctionsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/InstrumentClusterSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/GeneralVehicleFunctionsSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/EVSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WirelessPowerTransferService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/PanelHeatingService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ComfortFunctionsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/OpeningAndLockingService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarWashModeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AssistantSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/IlluminationService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/PHDImageForDigitalHeadlightService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ZEVFunctionsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/InstrumentClusterSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/GeneralVehicleFunctionsSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/EVSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/WirelessPowerTransferService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/PanelHeatingService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/ComfortFunctionsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/OpeningAndLockingService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/CarWashModeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/AssistantSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleFunctionsService/inc/IlluminationService.h"
%}

%inline %{
vehicle::vehicleFunctions::PHDImageForDigitalHeadlightServiceClient*
PHDImageForDigitalHeadlightServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::PHDImageForDigitalHeadlightServiceClient > client = vehicle::vehicleFunctions::PHDImageForDigitalHeadlightServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::PHDImageForDigitalHeadlightServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::PHDImageForDigitalHeadlightServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void PHDImageForDigitalHeadlightServiceClient_waitForConnection(vehicle::vehicleFunctions::PHDImageForDigitalHeadlightServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::ZEVFunctionsServiceClient*
ZEVFunctionsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::ZEVFunctionsServiceClient > client = vehicle::vehicleFunctions::ZEVFunctionsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::ZEVFunctionsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::ZEVFunctionsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ZEVFunctionsServiceClient_waitForConnection(vehicle::vehicleFunctions::ZEVFunctionsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::InstrumentClusterSettingsServiceClient*
InstrumentClusterSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::InstrumentClusterSettingsServiceClient > client = vehicle::vehicleFunctions::InstrumentClusterSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::InstrumentClusterSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::InstrumentClusterSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void InstrumentClusterSettingsServiceClient_waitForConnection(vehicle::vehicleFunctions::InstrumentClusterSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::CarSettingsServiceClient*
CarSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::CarSettingsServiceClient > client = vehicle::vehicleFunctions::CarSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::CarSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::CarSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void CarSettingsServiceClient_waitForConnection(vehicle::vehicleFunctions::CarSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::GeneralVehicleFunctionsSettingsServiceClient*
GeneralVehicleFunctionsSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::GeneralVehicleFunctionsSettingsServiceClient > client = vehicle::vehicleFunctions::GeneralVehicleFunctionsSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::GeneralVehicleFunctionsSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::GeneralVehicleFunctionsSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralVehicleFunctionsSettingsServiceClient_waitForConnection(vehicle::vehicleFunctions::GeneralVehicleFunctionsSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::EVSettingsServiceClient*
EVSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::EVSettingsServiceClient > client = vehicle::vehicleFunctions::EVSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::EVSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::EVSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EVSettingsServiceClient_waitForConnection(vehicle::vehicleFunctions::EVSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::WirelessPowerTransferServiceClient*
WirelessPowerTransferServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::WirelessPowerTransferServiceClient > client = vehicle::vehicleFunctions::WirelessPowerTransferServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::WirelessPowerTransferServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::WirelessPowerTransferServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WirelessPowerTransferServiceClient_waitForConnection(vehicle::vehicleFunctions::WirelessPowerTransferServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::PanelHeatingServiceClient*
PanelHeatingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::PanelHeatingServiceClient > client = vehicle::vehicleFunctions::PanelHeatingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::PanelHeatingServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::PanelHeatingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void PanelHeatingServiceClient_waitForConnection(vehicle::vehicleFunctions::PanelHeatingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::ComfortFunctionsServiceClient*
ComfortFunctionsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::ComfortFunctionsServiceClient > client = vehicle::vehicleFunctions::ComfortFunctionsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::ComfortFunctionsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::ComfortFunctionsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ComfortFunctionsServiceClient_waitForConnection(vehicle::vehicleFunctions::ComfortFunctionsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::OpeningAndLockingServiceClient*
OpeningAndLockingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::OpeningAndLockingServiceClient > client = vehicle::vehicleFunctions::OpeningAndLockingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::OpeningAndLockingServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::OpeningAndLockingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void OpeningAndLockingServiceClient_waitForConnection(vehicle::vehicleFunctions::OpeningAndLockingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::CarWashModeServiceClient*
CarWashModeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::CarWashModeServiceClient > client = vehicle::vehicleFunctions::CarWashModeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::CarWashModeServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::CarWashModeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void CarWashModeServiceClient_waitForConnection(vehicle::vehicleFunctions::CarWashModeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::AssistantSettingsServiceClient*
AssistantSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::AssistantSettingsServiceClient > client = vehicle::vehicleFunctions::AssistantSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::AssistantSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::AssistantSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AssistantSettingsServiceClient_waitForConnection(vehicle::vehicleFunctions::AssistantSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::vehicleFunctions::IlluminationServiceClient*
IlluminationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::vehicleFunctions::IlluminationServiceClient > client = vehicle::vehicleFunctions::IlluminationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::vehicleFunctions::IlluminationServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::vehicleFunctions::IlluminationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void IlluminationServiceClient_waitForConnection(vehicle::vehicleFunctions::IlluminationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_PHDImageForDigitalHeadlightServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.PHDImageForDigitalHeadlightServiceClient_createSimpleClient(address)
PHDImageForDigitalHeadlightServiceClient.createClient = static_PHDImageForDigitalHeadlightServiceClient_createSimpleClient

def PHDImageForDigitalHeadlightServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.PHDImageForDigitalHeadlightServiceClient_waitForConnection(self)
PHDImageForDigitalHeadlightServiceClient.waitForConnection = PHDImageForDigitalHeadlightServiceClient_waitForConnection

@staticmethod
def static_ZEVFunctionsServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.ZEVFunctionsServiceClient_createSimpleClient(address)
ZEVFunctionsServiceClient.createClient = static_ZEVFunctionsServiceClient_createSimpleClient

def ZEVFunctionsServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.ZEVFunctionsServiceClient_waitForConnection(self)
ZEVFunctionsServiceClient.waitForConnection = ZEVFunctionsServiceClient_waitForConnection

@staticmethod
def static_InstrumentClusterSettingsServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.InstrumentClusterSettingsServiceClient_createSimpleClient(address)
InstrumentClusterSettingsServiceClient.createClient = static_InstrumentClusterSettingsServiceClient_createSimpleClient

def InstrumentClusterSettingsServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.InstrumentClusterSettingsServiceClient_waitForConnection(self)
InstrumentClusterSettingsServiceClient.waitForConnection = InstrumentClusterSettingsServiceClient_waitForConnection

@staticmethod
def static_CarSettingsServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.CarSettingsServiceClient_createSimpleClient(address)
CarSettingsServiceClient.createClient = static_CarSettingsServiceClient_createSimpleClient

def CarSettingsServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.CarSettingsServiceClient_waitForConnection(self)
CarSettingsServiceClient.waitForConnection = CarSettingsServiceClient_waitForConnection

@staticmethod
def static_GeneralVehicleFunctionsSettingsServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.GeneralVehicleFunctionsSettingsServiceClient_createSimpleClient(address)
GeneralVehicleFunctionsSettingsServiceClient.createClient = static_GeneralVehicleFunctionsSettingsServiceClient_createSimpleClient

def GeneralVehicleFunctionsSettingsServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.GeneralVehicleFunctionsSettingsServiceClient_waitForConnection(self)
GeneralVehicleFunctionsSettingsServiceClient.waitForConnection = GeneralVehicleFunctionsSettingsServiceClient_waitForConnection

@staticmethod
def static_EVSettingsServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.EVSettingsServiceClient_createSimpleClient(address)
EVSettingsServiceClient.createClient = static_EVSettingsServiceClient_createSimpleClient

def EVSettingsServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.EVSettingsServiceClient_waitForConnection(self)
EVSettingsServiceClient.waitForConnection = EVSettingsServiceClient_waitForConnection

@staticmethod
def static_WirelessPowerTransferServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.WirelessPowerTransferServiceClient_createSimpleClient(address)
WirelessPowerTransferServiceClient.createClient = static_WirelessPowerTransferServiceClient_createSimpleClient

def WirelessPowerTransferServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.WirelessPowerTransferServiceClient_waitForConnection(self)
WirelessPowerTransferServiceClient.waitForConnection = WirelessPowerTransferServiceClient_waitForConnection

@staticmethod
def static_PanelHeatingServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.PanelHeatingServiceClient_createSimpleClient(address)
PanelHeatingServiceClient.createClient = static_PanelHeatingServiceClient_createSimpleClient

def PanelHeatingServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.PanelHeatingServiceClient_waitForConnection(self)
PanelHeatingServiceClient.waitForConnection = PanelHeatingServiceClient_waitForConnection

@staticmethod
def static_ComfortFunctionsServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.ComfortFunctionsServiceClient_createSimpleClient(address)
ComfortFunctionsServiceClient.createClient = static_ComfortFunctionsServiceClient_createSimpleClient

def ComfortFunctionsServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.ComfortFunctionsServiceClient_waitForConnection(self)
ComfortFunctionsServiceClient.waitForConnection = ComfortFunctionsServiceClient_waitForConnection

@staticmethod
def static_OpeningAndLockingServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.OpeningAndLockingServiceClient_createSimpleClient(address)
OpeningAndLockingServiceClient.createClient = static_OpeningAndLockingServiceClient_createSimpleClient

def OpeningAndLockingServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.OpeningAndLockingServiceClient_waitForConnection(self)
OpeningAndLockingServiceClient.waitForConnection = OpeningAndLockingServiceClient_waitForConnection

@staticmethod
def static_CarWashModeServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.CarWashModeServiceClient_createSimpleClient(address)
CarWashModeServiceClient.createClient = static_CarWashModeServiceClient_createSimpleClient

def CarWashModeServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.CarWashModeServiceClient_waitForConnection(self)
CarWashModeServiceClient.waitForConnection = CarWashModeServiceClient_waitForConnection

@staticmethod
def static_AssistantSettingsServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.AssistantSettingsServiceClient_createSimpleClient(address)
AssistantSettingsServiceClient.createClient = static_AssistantSettingsServiceClient_createSimpleClient

def AssistantSettingsServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.AssistantSettingsServiceClient_waitForConnection(self)
AssistantSettingsServiceClient.waitForConnection = AssistantSettingsServiceClient_waitForConnection

@staticmethod
def static_IlluminationServiceClient_createSimpleClient(address):
    return libVehicleFunctionsService.IlluminationServiceClient_createSimpleClient(address)
IlluminationServiceClient.createClient = static_IlluminationServiceClient_createSimpleClient

def IlluminationServiceClient_waitForConnection(self):
    return libVehicleFunctionsService.IlluminationServiceClient_waitForConnection(self)
IlluminationServiceClient.waitForConnection = IlluminationServiceClient_waitForConnection
%}
