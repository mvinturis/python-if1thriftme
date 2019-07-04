%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libTunerService
else:
    import libTunerService") TunerService

%feature("director") entertainment::tuner::EmergencyMessageServiceClient;
%feature("director") entertainment::tuner::EPGListServiceClient;
%feature("director") entertainment::tuner::TunerSearchListServiceClient;
%feature("director") entertainment::tuner::TunerSettingsServiceClient;
%feature("director") entertainment::tuner::TuneServiceClient;
%feature("director") entertainment::tuner::EPGServiceClient;
%feature("director") entertainment::tuner::EntertainmentInformationServiceClient;
%feature("director") entertainment::tuner::SiriusServiceClient;
%feature("director") entertainment::tuner::TimeshiftServiceClient;
%feature("director") entertainment::tuner::TunerUIConfigClient;
%feature("director") entertainment::tuner::GeneralTunerServiceClient;
%feature("director") entertainment::tuner::TVDataServiceClient;
%feature("director") entertainment::tuner::StationListServiceClient;
%feature("director") entertainment::tuner::PresetListServiceClient;

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
%include "../swig-patch/TunerService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/BroadcastMessage.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/Timestamp.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ARType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ARScope.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ARStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ARCategory.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ARUrgency.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ARSeverity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ARCertainty.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ARLocationFormat.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EWSPriority.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EWSAreaFormat.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/Waveband.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EPGEvent.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/Station.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/FrequencyUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EncryptionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ServiceFollowingType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/BroadcastQuality.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/BroadcastType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ExtendedStationInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/HDSubchannel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TVBroadcastService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/AudioLanguage.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/LanguageAudioMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SubtitleAndSuperimposeLanguage.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TVRegion.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/CAInfos.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/DateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/CIVisibleStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/LanguageSetting.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SkipMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/IPServiceFollowingProvider.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SignalQuality.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/NewsNowStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/NewsNowPlaybackStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TuneTo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TuneToCommandType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/PresetType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusChannelUnavailable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusChannelUnsubscribed.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusChannelMature.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/ProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/IPStreamPlaybackStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ReminderType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ListCreationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/FMAntennaType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/BERResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/BERCategory.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/HDBlendingParameters.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/BlendingThresholdType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/DABBandType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SXCStatusInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SXCInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SXCEntitlementInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SXCEntitlementEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SXCServiceInformationEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SXCEMMLogEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SXCMessageMonitorEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ServiceMeasurementType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ServiceMeasurementPhase.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TPEGStationsInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/CtrlCommandType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusAlert.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/AlertType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/AlertContentType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusSportsType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusAlertException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusAlertFailureReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/InvalidTuneMixListID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusAlertTypeInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusSportsLeague.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusLeagueType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusSportsTeam.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusTrafficAndWeatherMarket.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusCategory.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusCategoryElement.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusCategoryElementExtendedInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusOnDemandScreenInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SkipCounterInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusArtistRadioScreenInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusXtraChScreenInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusMusicTalkScreenInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusCurrentScreenType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusParentalControlStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SportsFlashReportStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusSubscription.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusSubscriptionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TrafficAndWeatherNowReportStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TuneMixList.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusPxPScreenInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusAlertReplyAction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusAlertOperationResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerOperationResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/RemovedSiriusStation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusStationRemoveReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TimeshiftEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TimeshiftEvent.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TimeshiftEventType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TimeshiftPlaybackStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/StationDisplayNameStyle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/StationListType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SXMMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/FrequencyRange.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerApplicationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/ApplicationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TunerApplicationConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/FrequencyTable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotInstalledInstalled.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DeactivatedActivated.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AM_FMRangeType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TPEGProviderType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/WavebandChangeException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerApplicationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/DataService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/ColorCommand.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/InvalidDataServiceCommandException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/OperationCommand.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/StationListFilter.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/StationListFilterType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SortMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SortCriteria.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SortOrder.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/PresetListEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/PresetData.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EmergencyMessageService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EPGListService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerSearchListService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TuneService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EPGService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EntertainmentInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TimeshiftService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerUIConfig.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/GeneralTunerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TVDataService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/StationListService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/PresetListService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EmergencyMessageService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EPGListService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerSearchListService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TuneService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EPGService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/EntertainmentInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/SiriusService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TimeshiftService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TunerUIConfig.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/GeneralTunerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/TVDataService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/StationListService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/TunerService/inc/PresetListService.h"
%}

%inline %{
entertainment::tuner::EmergencyMessageServiceClient*
EmergencyMessageServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::EmergencyMessageServiceClient > client = entertainment::tuner::EmergencyMessageServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::EmergencyMessageServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::EmergencyMessageServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EmergencyMessageServiceClient_waitForConnection(entertainment::tuner::EmergencyMessageServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::EPGListServiceClient*
EPGListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::EPGListServiceClient > client = entertainment::tuner::EPGListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::EPGListServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::EPGListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EPGListServiceClient_waitForConnection(entertainment::tuner::EPGListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::TunerSearchListServiceClient*
TunerSearchListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::TunerSearchListServiceClient > client = entertainment::tuner::TunerSearchListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::TunerSearchListServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::TunerSearchListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TunerSearchListServiceClient_waitForConnection(entertainment::tuner::TunerSearchListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::TunerSettingsServiceClient*
TunerSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::TunerSettingsServiceClient > client = entertainment::tuner::TunerSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::TunerSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::TunerSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TunerSettingsServiceClient_waitForConnection(entertainment::tuner::TunerSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::TuneServiceClient*
TuneServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::TuneServiceClient > client = entertainment::tuner::TuneServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::TuneServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::TuneServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TuneServiceClient_waitForConnection(entertainment::tuner::TuneServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::EPGServiceClient*
EPGServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::EPGServiceClient > client = entertainment::tuner::EPGServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::EPGServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::EPGServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EPGServiceClient_waitForConnection(entertainment::tuner::EPGServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::EntertainmentInformationServiceClient*
EntertainmentInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::EntertainmentInformationServiceClient > client = entertainment::tuner::EntertainmentInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::EntertainmentInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::EntertainmentInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EntertainmentInformationServiceClient_waitForConnection(entertainment::tuner::EntertainmentInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::SiriusServiceClient*
SiriusServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::SiriusServiceClient > client = entertainment::tuner::SiriusServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::SiriusServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::SiriusServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SiriusServiceClient_waitForConnection(entertainment::tuner::SiriusServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::TimeshiftServiceClient*
TimeshiftServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::TimeshiftServiceClient > client = entertainment::tuner::TimeshiftServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::TimeshiftServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::TimeshiftServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TimeshiftServiceClient_waitForConnection(entertainment::tuner::TimeshiftServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::TunerUIConfigClient*
TunerUIConfigClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::TunerUIConfigClient > client = entertainment::tuner::TunerUIConfigClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::TunerUIConfigClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::TunerUIConfigClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TunerUIConfigClient_waitForConnection(entertainment::tuner::TunerUIConfigClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::GeneralTunerServiceClient*
GeneralTunerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::GeneralTunerServiceClient > client = entertainment::tuner::GeneralTunerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::GeneralTunerServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::GeneralTunerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralTunerServiceClient_waitForConnection(entertainment::tuner::GeneralTunerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::TVDataServiceClient*
TVDataServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::TVDataServiceClient > client = entertainment::tuner::TVDataServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::TVDataServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::TVDataServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TVDataServiceClient_waitForConnection(entertainment::tuner::TVDataServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::StationListServiceClient*
StationListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::StationListServiceClient > client = entertainment::tuner::StationListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::StationListServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::StationListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void StationListServiceClient_waitForConnection(entertainment::tuner::StationListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::tuner::PresetListServiceClient*
PresetListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::tuner::PresetListServiceClient > client = entertainment::tuner::PresetListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::tuner::PresetListServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::tuner::PresetListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void PresetListServiceClient_waitForConnection(entertainment::tuner::PresetListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_EmergencyMessageServiceClient_createSimpleClient(address):
    return libTunerService.EmergencyMessageServiceClient_createSimpleClient(address)
EmergencyMessageServiceClient.createClient = static_EmergencyMessageServiceClient_createSimpleClient

def EmergencyMessageServiceClient_waitForConnection(self):
    return libTunerService.EmergencyMessageServiceClient_waitForConnection(self)
EmergencyMessageServiceClient.waitForConnection = EmergencyMessageServiceClient_waitForConnection

@staticmethod
def static_EPGListServiceClient_createSimpleClient(address):
    return libTunerService.EPGListServiceClient_createSimpleClient(address)
EPGListServiceClient.createClient = static_EPGListServiceClient_createSimpleClient

def EPGListServiceClient_waitForConnection(self):
    return libTunerService.EPGListServiceClient_waitForConnection(self)
EPGListServiceClient.waitForConnection = EPGListServiceClient_waitForConnection

@staticmethod
def static_TunerSearchListServiceClient_createSimpleClient(address):
    return libTunerService.TunerSearchListServiceClient_createSimpleClient(address)
TunerSearchListServiceClient.createClient = static_TunerSearchListServiceClient_createSimpleClient

def TunerSearchListServiceClient_waitForConnection(self):
    return libTunerService.TunerSearchListServiceClient_waitForConnection(self)
TunerSearchListServiceClient.waitForConnection = TunerSearchListServiceClient_waitForConnection

@staticmethod
def static_TunerSettingsServiceClient_createSimpleClient(address):
    return libTunerService.TunerSettingsServiceClient_createSimpleClient(address)
TunerSettingsServiceClient.createClient = static_TunerSettingsServiceClient_createSimpleClient

def TunerSettingsServiceClient_waitForConnection(self):
    return libTunerService.TunerSettingsServiceClient_waitForConnection(self)
TunerSettingsServiceClient.waitForConnection = TunerSettingsServiceClient_waitForConnection

@staticmethod
def static_TuneServiceClient_createSimpleClient(address):
    return libTunerService.TuneServiceClient_createSimpleClient(address)
TuneServiceClient.createClient = static_TuneServiceClient_createSimpleClient

def TuneServiceClient_waitForConnection(self):
    return libTunerService.TuneServiceClient_waitForConnection(self)
TuneServiceClient.waitForConnection = TuneServiceClient_waitForConnection

@staticmethod
def static_EPGServiceClient_createSimpleClient(address):
    return libTunerService.EPGServiceClient_createSimpleClient(address)
EPGServiceClient.createClient = static_EPGServiceClient_createSimpleClient

def EPGServiceClient_waitForConnection(self):
    return libTunerService.EPGServiceClient_waitForConnection(self)
EPGServiceClient.waitForConnection = EPGServiceClient_waitForConnection

@staticmethod
def static_EntertainmentInformationServiceClient_createSimpleClient(address):
    return libTunerService.EntertainmentInformationServiceClient_createSimpleClient(address)
EntertainmentInformationServiceClient.createClient = static_EntertainmentInformationServiceClient_createSimpleClient

def EntertainmentInformationServiceClient_waitForConnection(self):
    return libTunerService.EntertainmentInformationServiceClient_waitForConnection(self)
EntertainmentInformationServiceClient.waitForConnection = EntertainmentInformationServiceClient_waitForConnection

@staticmethod
def static_SiriusServiceClient_createSimpleClient(address):
    return libTunerService.SiriusServiceClient_createSimpleClient(address)
SiriusServiceClient.createClient = static_SiriusServiceClient_createSimpleClient

def SiriusServiceClient_waitForConnection(self):
    return libTunerService.SiriusServiceClient_waitForConnection(self)
SiriusServiceClient.waitForConnection = SiriusServiceClient_waitForConnection

@staticmethod
def static_TimeshiftServiceClient_createSimpleClient(address):
    return libTunerService.TimeshiftServiceClient_createSimpleClient(address)
TimeshiftServiceClient.createClient = static_TimeshiftServiceClient_createSimpleClient

def TimeshiftServiceClient_waitForConnection(self):
    return libTunerService.TimeshiftServiceClient_waitForConnection(self)
TimeshiftServiceClient.waitForConnection = TimeshiftServiceClient_waitForConnection

@staticmethod
def static_TunerUIConfigClient_createSimpleClient(address):
    return libTunerService.TunerUIConfigClient_createSimpleClient(address)
TunerUIConfigClient.createClient = static_TunerUIConfigClient_createSimpleClient

def TunerUIConfigClient_waitForConnection(self):
    return libTunerService.TunerUIConfigClient_waitForConnection(self)
TunerUIConfigClient.waitForConnection = TunerUIConfigClient_waitForConnection

@staticmethod
def static_GeneralTunerServiceClient_createSimpleClient(address):
    return libTunerService.GeneralTunerServiceClient_createSimpleClient(address)
GeneralTunerServiceClient.createClient = static_GeneralTunerServiceClient_createSimpleClient

def GeneralTunerServiceClient_waitForConnection(self):
    return libTunerService.GeneralTunerServiceClient_waitForConnection(self)
GeneralTunerServiceClient.waitForConnection = GeneralTunerServiceClient_waitForConnection

@staticmethod
def static_TVDataServiceClient_createSimpleClient(address):
    return libTunerService.TVDataServiceClient_createSimpleClient(address)
TVDataServiceClient.createClient = static_TVDataServiceClient_createSimpleClient

def TVDataServiceClient_waitForConnection(self):
    return libTunerService.TVDataServiceClient_waitForConnection(self)
TVDataServiceClient.waitForConnection = TVDataServiceClient_waitForConnection

@staticmethod
def static_StationListServiceClient_createSimpleClient(address):
    return libTunerService.StationListServiceClient_createSimpleClient(address)
StationListServiceClient.createClient = static_StationListServiceClient_createSimpleClient

def StationListServiceClient_waitForConnection(self):
    return libTunerService.StationListServiceClient_waitForConnection(self)
StationListServiceClient.waitForConnection = StationListServiceClient_waitForConnection

@staticmethod
def static_PresetListServiceClient_createSimpleClient(address):
    return libTunerService.PresetListServiceClient_createSimpleClient(address)
PresetListServiceClient.createClient = static_PresetListServiceClient_createSimpleClient

def PresetListServiceClient_waitForConnection(self):
    return libTunerService.PresetListServiceClient_waitForConnection(self)
PresetListServiceClient.waitForConnection = PresetListServiceClient_waitForConnection
%}
