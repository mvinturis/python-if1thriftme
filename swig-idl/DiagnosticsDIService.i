%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libDiagnosticsDIService
else:
    import libDiagnosticsDIService") DiagnosticsDIService

%feature("director") cluster::diagnosticsDI::GeneralDiagnosticsDIServiceClient;
%feature("director") cluster::diagnosticsDI::MeasurementPointServiceClient;
%feature("director") cluster::diagnosticsDI::FunctionTestServiceClient;
%feature("director") cluster::diagnosticsDI::FeatureConfigurationServiceClient;
%feature("director") cluster::diagnosticsDI::HMIControlServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/ProductionModeStringsType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/DataContainer.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/DataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/DataContainerID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/WriteDataContainerException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/GlobalConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HUDType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/ClusterVariantType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/DriverDisplayType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/GeneralSettingsConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/DistanceUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TempUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/PressureUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/LanguageType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/VehicleLineType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/BodyStyleType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TorqueUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/ShortDistanceUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/RevMeterUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/IndicatorsConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TransmissionConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TransmissionVariantType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/AcousticOutputConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/LoudnessParameters.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/LoudnessLevelAFType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/ParkmanSoundCfg.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/RollerTestConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HybridConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HybridVariant.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HybridPTReadyVersion.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/EngineMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/AvlPowerAvailability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/SOCArrowPositionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/AdBlueConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/SeatbeltsAndDoorsConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/SeatLayoutType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/DoorLayoutType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/AssystConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/OilVolumeUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/BSMConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TripComputerConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/FuelVolumeUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TSAConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TSAVariant.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TSAWarningStyle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TSAAlertDispVariant.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TriState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HUDConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HUDWarpConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HUDWhitePointConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/FuelLevelConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/TankCapPositionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/OffroadConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/OffroadSuspType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/GazeControlConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/SuperSportConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/PowerUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/AssistanceVisualizationConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/DTRVariantType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/SpeedControlConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/SCSAvailability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/MeasurementPointDataRecord.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/MeasurementPointTimestampMapping.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/OutsideTempABC.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/RearSeatbeltsHILData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/RearBeltTimerState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/FeatureID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HMIControlStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HUDTestImageData.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/GeneralDiagnosticsDIService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/MeasurementPointService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/FunctionTestService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/FeatureConfigurationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HMIControlService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/GeneralDiagnosticsDIService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/MeasurementPointService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/FunctionTestService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/FeatureConfigurationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsDIService/inc/HMIControlService.h"
%}

%inline %{
cluster::diagnosticsDI::GeneralDiagnosticsDIServiceClient*
GeneralDiagnosticsDIServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::diagnosticsDI::GeneralDiagnosticsDIServiceClient > client = cluster::diagnosticsDI::GeneralDiagnosticsDIServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::diagnosticsDI::GeneralDiagnosticsDIServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::diagnosticsDI::GeneralDiagnosticsDIServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralDiagnosticsDIServiceClient_waitForConnection(cluster::diagnosticsDI::GeneralDiagnosticsDIServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::diagnosticsDI::MeasurementPointServiceClient*
MeasurementPointServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::diagnosticsDI::MeasurementPointServiceClient > client = cluster::diagnosticsDI::MeasurementPointServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::diagnosticsDI::MeasurementPointServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::diagnosticsDI::MeasurementPointServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MeasurementPointServiceClient_waitForConnection(cluster::diagnosticsDI::MeasurementPointServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::diagnosticsDI::FunctionTestServiceClient*
FunctionTestServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::diagnosticsDI::FunctionTestServiceClient > client = cluster::diagnosticsDI::FunctionTestServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::diagnosticsDI::FunctionTestServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::diagnosticsDI::FunctionTestServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void FunctionTestServiceClient_waitForConnection(cluster::diagnosticsDI::FunctionTestServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::diagnosticsDI::FeatureConfigurationServiceClient*
FeatureConfigurationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::diagnosticsDI::FeatureConfigurationServiceClient > client = cluster::diagnosticsDI::FeatureConfigurationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::diagnosticsDI::FeatureConfigurationServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::diagnosticsDI::FeatureConfigurationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void FeatureConfigurationServiceClient_waitForConnection(cluster::diagnosticsDI::FeatureConfigurationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::diagnosticsDI::HMIControlServiceClient*
HMIControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::diagnosticsDI::HMIControlServiceClient > client = cluster::diagnosticsDI::HMIControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::diagnosticsDI::HMIControlServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::diagnosticsDI::HMIControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void HMIControlServiceClient_waitForConnection(cluster::diagnosticsDI::HMIControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_GeneralDiagnosticsDIServiceClient_createSimpleClient(address):
    return libDiagnosticsDIService.GeneralDiagnosticsDIServiceClient_createSimpleClient(address)
GeneralDiagnosticsDIServiceClient.createClient = static_GeneralDiagnosticsDIServiceClient_createSimpleClient

def GeneralDiagnosticsDIServiceClient_waitForConnection(self):
    return libDiagnosticsDIService.GeneralDiagnosticsDIServiceClient_waitForConnection(self)
GeneralDiagnosticsDIServiceClient.waitForConnection = GeneralDiagnosticsDIServiceClient_waitForConnection

@staticmethod
def static_MeasurementPointServiceClient_createSimpleClient(address):
    return libDiagnosticsDIService.MeasurementPointServiceClient_createSimpleClient(address)
MeasurementPointServiceClient.createClient = static_MeasurementPointServiceClient_createSimpleClient

def MeasurementPointServiceClient_waitForConnection(self):
    return libDiagnosticsDIService.MeasurementPointServiceClient_waitForConnection(self)
MeasurementPointServiceClient.waitForConnection = MeasurementPointServiceClient_waitForConnection

@staticmethod
def static_FunctionTestServiceClient_createSimpleClient(address):
    return libDiagnosticsDIService.FunctionTestServiceClient_createSimpleClient(address)
FunctionTestServiceClient.createClient = static_FunctionTestServiceClient_createSimpleClient

def FunctionTestServiceClient_waitForConnection(self):
    return libDiagnosticsDIService.FunctionTestServiceClient_waitForConnection(self)
FunctionTestServiceClient.waitForConnection = FunctionTestServiceClient_waitForConnection

@staticmethod
def static_FeatureConfigurationServiceClient_createSimpleClient(address):
    return libDiagnosticsDIService.FeatureConfigurationServiceClient_createSimpleClient(address)
FeatureConfigurationServiceClient.createClient = static_FeatureConfigurationServiceClient_createSimpleClient

def FeatureConfigurationServiceClient_waitForConnection(self):
    return libDiagnosticsDIService.FeatureConfigurationServiceClient_waitForConnection(self)
FeatureConfigurationServiceClient.waitForConnection = FeatureConfigurationServiceClient_waitForConnection

@staticmethod
def static_HMIControlServiceClient_createSimpleClient(address):
    return libDiagnosticsDIService.HMIControlServiceClient_createSimpleClient(address)
HMIControlServiceClient.createClient = static_HMIControlServiceClient_createSimpleClient

def HMIControlServiceClient_waitForConnection(self):
    return libDiagnosticsDIService.HMIControlServiceClient_waitForConnection(self)
HMIControlServiceClient.waitForConnection = HMIControlServiceClient_waitForConnection
%}
