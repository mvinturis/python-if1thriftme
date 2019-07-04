%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libDriveAssistService
else:
    import libDriveAssistService") DriveAssistService

%feature("director") cluster::driveAssist::LDPServiceClient;
%feature("director") cluster::driveAssist::SpeedControlServiceClient;
%feature("director") cluster::driveAssist::SRAServiceClient;
%feature("director") cluster::driveAssist::AttentionAssistServiceClient;
%feature("director") cluster::driveAssist::TrafficLightAssistServiceClient;
%feature("director") cluster::driveAssist::AssistanceVisualizationServiceClient;
%feature("director") cluster::driveAssist::BSMServiceClient;
%feature("director") cluster::driveAssist::DSRServiceClient;
%feature("director") cluster::driveAssist::EcoServiceClient;
%feature("director") cluster::driveAssist::ParkmanServiceClient;
%feature("director") cluster::driveAssist::TrafficSignAssistServiceClient;

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
%include "../swig-patch/DriveAssistService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LDPStatusLR.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LDPStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LDPWarningPos.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SCMasterStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LimCCStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/PLimStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/CMSStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DTRStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DTRQStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ALCStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SysALCStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/HADStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/HADFadeInDenialReasons.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/WDBDenialReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int32Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/DataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SCSpeedUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SCSpeedUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SCSpeedData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SCSpeedValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/CMSWarningStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DTRCurveEvent.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DTRTimeGapLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DTRRetriggerTimeGapReq.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ToggleDistanceButtonState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SpeedRingData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SpeedRingMinStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SpeedRingMaxStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SRAWarning.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SRAWarningLR.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/AttentionAssistAvailability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/AttentionAssistStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/AttentionAssistMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ATTIconStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DrivingTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int8Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/AASDisplayStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TrafficLightData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TLALight.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TLADirection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TLADistance.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TLASpeed.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TLARemainingTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TLATimeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ARTimeStamps.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LaneDetectionOperationMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EgoLaneData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LaneChangeCounter.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LaneMarker.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LaneDetectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/NeighbourLanesData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/NeighbourLaneAvailability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/RoadData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/RoadBoundsDetectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/CrosswalkDetectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/OtherVehicle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ObjectID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ObjClassType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/CutInProbType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ObjMovingType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/CutOutProbType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/PositionID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LeadingVehicleID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LaneChangeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TunnelStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ReservedUIStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ReservedUIValues.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ADASCurrentAttributes.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ADASCyclicCounter.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ADASPosnPathIdx.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ADASBridgeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ADASDevidedRoadStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ADASFormOfWay.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ADASNumLanesDrvDir.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/BSMStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/BSMWarning.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/BSMIndicator.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/BSMWarningPos.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DSRStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DSRSetSpeedData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DSRSpeedUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoScoreRatings.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoScoreTrends.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoScoreTrend.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoMovingObjectData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TriState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoAssistStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoAssistData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoAssistEvent.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoAssistAdvice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EASDistUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DrivingAgentData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DASpeedStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DAMarkerStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ParkGuidanceIndicatorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/PTSData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/PTSSegmentStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/PTSSegmentAvailability.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TSASignStyle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TSASignInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TSASign.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TSASignSupplement.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TSAWarningState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TSASpeedLimitData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TSASpeedLimitUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TSASpeedLimitStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/StopSignAlertDispStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TSAAlertDispStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LDPService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SpeedControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SRAService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/AttentionAssistService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TrafficLightAssistService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/AssistanceVisualizationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/BSMService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DSRService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ParkmanService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TrafficSignAssistService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/LDPService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SpeedControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/SRAService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/AttentionAssistService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TrafficLightAssistService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/AssistanceVisualizationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/BSMService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/DSRService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/EcoService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/ParkmanService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DriveAssistService/inc/TrafficSignAssistService.h"
%}

%inline %{
cluster::driveAssist::LDPServiceClient*
LDPServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::LDPServiceClient > client = cluster::driveAssist::LDPServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::LDPServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::LDPServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void LDPServiceClient_waitForConnection(cluster::driveAssist::LDPServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::SpeedControlServiceClient*
SpeedControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::SpeedControlServiceClient > client = cluster::driveAssist::SpeedControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::SpeedControlServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::SpeedControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SpeedControlServiceClient_waitForConnection(cluster::driveAssist::SpeedControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::SRAServiceClient*
SRAServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::SRAServiceClient > client = cluster::driveAssist::SRAServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::SRAServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::SRAServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SRAServiceClient_waitForConnection(cluster::driveAssist::SRAServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::AttentionAssistServiceClient*
AttentionAssistServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::AttentionAssistServiceClient > client = cluster::driveAssist::AttentionAssistServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::AttentionAssistServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::AttentionAssistServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AttentionAssistServiceClient_waitForConnection(cluster::driveAssist::AttentionAssistServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::TrafficLightAssistServiceClient*
TrafficLightAssistServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::TrafficLightAssistServiceClient > client = cluster::driveAssist::TrafficLightAssistServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::TrafficLightAssistServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::TrafficLightAssistServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TrafficLightAssistServiceClient_waitForConnection(cluster::driveAssist::TrafficLightAssistServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::AssistanceVisualizationServiceClient*
AssistanceVisualizationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::AssistanceVisualizationServiceClient > client = cluster::driveAssist::AssistanceVisualizationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::AssistanceVisualizationServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::AssistanceVisualizationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AssistanceVisualizationServiceClient_waitForConnection(cluster::driveAssist::AssistanceVisualizationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::BSMServiceClient*
BSMServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::BSMServiceClient > client = cluster::driveAssist::BSMServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::BSMServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::BSMServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void BSMServiceClient_waitForConnection(cluster::driveAssist::BSMServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::DSRServiceClient*
DSRServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::DSRServiceClient > client = cluster::driveAssist::DSRServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::DSRServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::DSRServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DSRServiceClient_waitForConnection(cluster::driveAssist::DSRServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::EcoServiceClient*
EcoServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::EcoServiceClient > client = cluster::driveAssist::EcoServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::EcoServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::EcoServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EcoServiceClient_waitForConnection(cluster::driveAssist::EcoServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::ParkmanServiceClient*
ParkmanServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::ParkmanServiceClient > client = cluster::driveAssist::ParkmanServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::ParkmanServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::ParkmanServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ParkmanServiceClient_waitForConnection(cluster::driveAssist::ParkmanServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::driveAssist::TrafficSignAssistServiceClient*
TrafficSignAssistServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::driveAssist::TrafficSignAssistServiceClient > client = cluster::driveAssist::TrafficSignAssistServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::driveAssist::TrafficSignAssistServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::driveAssist::TrafficSignAssistServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TrafficSignAssistServiceClient_waitForConnection(cluster::driveAssist::TrafficSignAssistServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_LDPServiceClient_createSimpleClient(address):
    return libDriveAssistService.LDPServiceClient_createSimpleClient(address)
LDPServiceClient.createClient = static_LDPServiceClient_createSimpleClient

def LDPServiceClient_waitForConnection(self):
    return libDriveAssistService.LDPServiceClient_waitForConnection(self)
LDPServiceClient.waitForConnection = LDPServiceClient_waitForConnection

@staticmethod
def static_SpeedControlServiceClient_createSimpleClient(address):
    return libDriveAssistService.SpeedControlServiceClient_createSimpleClient(address)
SpeedControlServiceClient.createClient = static_SpeedControlServiceClient_createSimpleClient

def SpeedControlServiceClient_waitForConnection(self):
    return libDriveAssistService.SpeedControlServiceClient_waitForConnection(self)
SpeedControlServiceClient.waitForConnection = SpeedControlServiceClient_waitForConnection

@staticmethod
def static_SRAServiceClient_createSimpleClient(address):
    return libDriveAssistService.SRAServiceClient_createSimpleClient(address)
SRAServiceClient.createClient = static_SRAServiceClient_createSimpleClient

def SRAServiceClient_waitForConnection(self):
    return libDriveAssistService.SRAServiceClient_waitForConnection(self)
SRAServiceClient.waitForConnection = SRAServiceClient_waitForConnection

@staticmethod
def static_AttentionAssistServiceClient_createSimpleClient(address):
    return libDriveAssistService.AttentionAssistServiceClient_createSimpleClient(address)
AttentionAssistServiceClient.createClient = static_AttentionAssistServiceClient_createSimpleClient

def AttentionAssistServiceClient_waitForConnection(self):
    return libDriveAssistService.AttentionAssistServiceClient_waitForConnection(self)
AttentionAssistServiceClient.waitForConnection = AttentionAssistServiceClient_waitForConnection

@staticmethod
def static_TrafficLightAssistServiceClient_createSimpleClient(address):
    return libDriveAssistService.TrafficLightAssistServiceClient_createSimpleClient(address)
TrafficLightAssistServiceClient.createClient = static_TrafficLightAssistServiceClient_createSimpleClient

def TrafficLightAssistServiceClient_waitForConnection(self):
    return libDriveAssistService.TrafficLightAssistServiceClient_waitForConnection(self)
TrafficLightAssistServiceClient.waitForConnection = TrafficLightAssistServiceClient_waitForConnection

@staticmethod
def static_AssistanceVisualizationServiceClient_createSimpleClient(address):
    return libDriveAssistService.AssistanceVisualizationServiceClient_createSimpleClient(address)
AssistanceVisualizationServiceClient.createClient = static_AssistanceVisualizationServiceClient_createSimpleClient

def AssistanceVisualizationServiceClient_waitForConnection(self):
    return libDriveAssistService.AssistanceVisualizationServiceClient_waitForConnection(self)
AssistanceVisualizationServiceClient.waitForConnection = AssistanceVisualizationServiceClient_waitForConnection

@staticmethod
def static_BSMServiceClient_createSimpleClient(address):
    return libDriveAssistService.BSMServiceClient_createSimpleClient(address)
BSMServiceClient.createClient = static_BSMServiceClient_createSimpleClient

def BSMServiceClient_waitForConnection(self):
    return libDriveAssistService.BSMServiceClient_waitForConnection(self)
BSMServiceClient.waitForConnection = BSMServiceClient_waitForConnection

@staticmethod
def static_DSRServiceClient_createSimpleClient(address):
    return libDriveAssistService.DSRServiceClient_createSimpleClient(address)
DSRServiceClient.createClient = static_DSRServiceClient_createSimpleClient

def DSRServiceClient_waitForConnection(self):
    return libDriveAssistService.DSRServiceClient_waitForConnection(self)
DSRServiceClient.waitForConnection = DSRServiceClient_waitForConnection

@staticmethod
def static_EcoServiceClient_createSimpleClient(address):
    return libDriveAssistService.EcoServiceClient_createSimpleClient(address)
EcoServiceClient.createClient = static_EcoServiceClient_createSimpleClient

def EcoServiceClient_waitForConnection(self):
    return libDriveAssistService.EcoServiceClient_waitForConnection(self)
EcoServiceClient.waitForConnection = EcoServiceClient_waitForConnection

@staticmethod
def static_ParkmanServiceClient_createSimpleClient(address):
    return libDriveAssistService.ParkmanServiceClient_createSimpleClient(address)
ParkmanServiceClient.createClient = static_ParkmanServiceClient_createSimpleClient

def ParkmanServiceClient_waitForConnection(self):
    return libDriveAssistService.ParkmanServiceClient_waitForConnection(self)
ParkmanServiceClient.waitForConnection = ParkmanServiceClient_waitForConnection

@staticmethod
def static_TrafficSignAssistServiceClient_createSimpleClient(address):
    return libDriveAssistService.TrafficSignAssistServiceClient_createSimpleClient(address)
TrafficSignAssistServiceClient.createClient = static_TrafficSignAssistServiceClient_createSimpleClient

def TrafficSignAssistServiceClient_waitForConnection(self):
    return libDriveAssistService.TrafficSignAssistServiceClient_waitForConnection(self)
TrafficSignAssistServiceClient.waitForConnection = TrafficSignAssistServiceClient_waitForConnection
%}
