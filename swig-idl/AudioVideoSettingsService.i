%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libAudioVideoSettingsService
else:
    import libAudioVideoSettingsService") AudioVideoSettingsService

%feature("director") entertainment::audioVideoSettings::AudioProcessingInformationServiceClient;
%feature("director") entertainment::audioVideoSettings::VideoSettingsServiceClient;
%feature("director") entertainment::audioVideoSettings::VideoIODeviceInformationServiceClient;
%feature("director") entertainment::audioVideoSettings::AudioRemoteVolumeServiceClient;
%feature("director") entertainment::audioVideoSettings::GeneralAudioVideoSettingsServiceClient;
%feature("director") entertainment::audioVideoSettings::VideoSettingsInformationServiceClient;
%feature("director") entertainment::audioVideoSettings::EqualiserInformationServiceClient;
%feature("director") entertainment::audioVideoSettings::SoundSettingsServiceClient;
%feature("director") entertainment::audioVideoSettings::VolumeInformationServiceClient;
%feature("director") entertainment::audioVideoSettings::ESSInformationServiceClient;
%feature("director") entertainment::audioVideoSettings::VideoTestInformationServiceClient;
%feature("director") entertainment::audioVideoSettings::ExternalAudioSourceServiceClient;

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
%include "../swig-patch/AudioVideoSettingsService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/HFPParameter.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/AspectRatio.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiManagerService/inc/VideoSource.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/EyeOpening.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/SyncPolarity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VolumeActionState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VolumeGroup.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AudioHandlingConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SoundLogoType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/AudioVideoRoutingDestination.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VideoHandlingConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SCNDisplayResolutionV3.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SCNPiPResolutionV3.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SCNAssistSystemResV2.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SCNCoDriverDisplayResolutionV2.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotInstalledInstalled.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ParkPilotVariantType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/ExternalStorageDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/EqualizerSettings.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/SoundPreset.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/SoundZone.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/EqualizerSetting.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/NormalizeSourceInputLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VolumeLockArea.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DriveProgramsService/inc/DriveProgramName.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/DisplayPatternRequestResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/DisplayPattern.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/SinkDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/sourceState.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/AudioProcessingInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VideoSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VideoIODeviceInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/AudioRemoteVolumeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/GeneralAudioVideoSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VideoSettingsInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/EqualiserInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/SoundSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VolumeInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/ESSInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VideoTestInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/ExternalAudioSourceService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/AudioProcessingInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VideoSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VideoIODeviceInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/AudioRemoteVolumeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/GeneralAudioVideoSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VideoSettingsInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/EqualiserInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/SoundSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VolumeInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/ESSInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/VideoTestInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioVideoSettingsService/inc/ExternalAudioSourceService.h"
%}

%inline %{
entertainment::audioVideoSettings::AudioProcessingInformationServiceClient*
AudioProcessingInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::AudioProcessingInformationServiceClient > client = entertainment::audioVideoSettings::AudioProcessingInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::AudioProcessingInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::AudioProcessingInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AudioProcessingInformationServiceClient_waitForConnection(entertainment::audioVideoSettings::AudioProcessingInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::VideoSettingsServiceClient*
VideoSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VideoSettingsServiceClient > client = entertainment::audioVideoSettings::VideoSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VideoSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::VideoSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VideoSettingsServiceClient_waitForConnection(entertainment::audioVideoSettings::VideoSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::VideoIODeviceInformationServiceClient*
VideoIODeviceInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VideoIODeviceInformationServiceClient > client = entertainment::audioVideoSettings::VideoIODeviceInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VideoIODeviceInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::VideoIODeviceInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VideoIODeviceInformationServiceClient_waitForConnection(entertainment::audioVideoSettings::VideoIODeviceInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::AudioRemoteVolumeServiceClient*
AudioRemoteVolumeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::AudioRemoteVolumeServiceClient > client = entertainment::audioVideoSettings::AudioRemoteVolumeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::AudioRemoteVolumeServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::AudioRemoteVolumeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AudioRemoteVolumeServiceClient_waitForConnection(entertainment::audioVideoSettings::AudioRemoteVolumeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::GeneralAudioVideoSettingsServiceClient*
GeneralAudioVideoSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::GeneralAudioVideoSettingsServiceClient > client = entertainment::audioVideoSettings::GeneralAudioVideoSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::GeneralAudioVideoSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::GeneralAudioVideoSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralAudioVideoSettingsServiceClient_waitForConnection(entertainment::audioVideoSettings::GeneralAudioVideoSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::VideoSettingsInformationServiceClient*
VideoSettingsInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VideoSettingsInformationServiceClient > client = entertainment::audioVideoSettings::VideoSettingsInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VideoSettingsInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::VideoSettingsInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VideoSettingsInformationServiceClient_waitForConnection(entertainment::audioVideoSettings::VideoSettingsInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::EqualiserInformationServiceClient*
EqualiserInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::EqualiserInformationServiceClient > client = entertainment::audioVideoSettings::EqualiserInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::EqualiserInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::EqualiserInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EqualiserInformationServiceClient_waitForConnection(entertainment::audioVideoSettings::EqualiserInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::SoundSettingsServiceClient*
SoundSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::SoundSettingsServiceClient > client = entertainment::audioVideoSettings::SoundSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::SoundSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::SoundSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SoundSettingsServiceClient_waitForConnection(entertainment::audioVideoSettings::SoundSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::VolumeInformationServiceClient*
VolumeInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VolumeInformationServiceClient > client = entertainment::audioVideoSettings::VolumeInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VolumeInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::VolumeInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VolumeInformationServiceClient_waitForConnection(entertainment::audioVideoSettings::VolumeInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::ESSInformationServiceClient*
ESSInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::ESSInformationServiceClient > client = entertainment::audioVideoSettings::ESSInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::ESSInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::ESSInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ESSInformationServiceClient_waitForConnection(entertainment::audioVideoSettings::ESSInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::VideoTestInformationServiceClient*
VideoTestInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VideoTestInformationServiceClient > client = entertainment::audioVideoSettings::VideoTestInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::VideoTestInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::VideoTestInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VideoTestInformationServiceClient_waitForConnection(entertainment::audioVideoSettings::VideoTestInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioVideoSettings::ExternalAudioSourceServiceClient*
ExternalAudioSourceServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioVideoSettings::ExternalAudioSourceServiceClient > client = entertainment::audioVideoSettings::ExternalAudioSourceServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioVideoSettings::ExternalAudioSourceServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioVideoSettings::ExternalAudioSourceServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ExternalAudioSourceServiceClient_waitForConnection(entertainment::audioVideoSettings::ExternalAudioSourceServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_AudioProcessingInformationServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.AudioProcessingInformationServiceClient_createSimpleClient(address)
AudioProcessingInformationServiceClient.createClient = static_AudioProcessingInformationServiceClient_createSimpleClient

def AudioProcessingInformationServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.AudioProcessingInformationServiceClient_waitForConnection(self)
AudioProcessingInformationServiceClient.waitForConnection = AudioProcessingInformationServiceClient_waitForConnection

@staticmethod
def static_VideoSettingsServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.VideoSettingsServiceClient_createSimpleClient(address)
VideoSettingsServiceClient.createClient = static_VideoSettingsServiceClient_createSimpleClient

def VideoSettingsServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.VideoSettingsServiceClient_waitForConnection(self)
VideoSettingsServiceClient.waitForConnection = VideoSettingsServiceClient_waitForConnection

@staticmethod
def static_VideoIODeviceInformationServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.VideoIODeviceInformationServiceClient_createSimpleClient(address)
VideoIODeviceInformationServiceClient.createClient = static_VideoIODeviceInformationServiceClient_createSimpleClient

def VideoIODeviceInformationServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.VideoIODeviceInformationServiceClient_waitForConnection(self)
VideoIODeviceInformationServiceClient.waitForConnection = VideoIODeviceInformationServiceClient_waitForConnection

@staticmethod
def static_AudioRemoteVolumeServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.AudioRemoteVolumeServiceClient_createSimpleClient(address)
AudioRemoteVolumeServiceClient.createClient = static_AudioRemoteVolumeServiceClient_createSimpleClient

def AudioRemoteVolumeServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.AudioRemoteVolumeServiceClient_waitForConnection(self)
AudioRemoteVolumeServiceClient.waitForConnection = AudioRemoteVolumeServiceClient_waitForConnection

@staticmethod
def static_GeneralAudioVideoSettingsServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.GeneralAudioVideoSettingsServiceClient_createSimpleClient(address)
GeneralAudioVideoSettingsServiceClient.createClient = static_GeneralAudioVideoSettingsServiceClient_createSimpleClient

def GeneralAudioVideoSettingsServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.GeneralAudioVideoSettingsServiceClient_waitForConnection(self)
GeneralAudioVideoSettingsServiceClient.waitForConnection = GeneralAudioVideoSettingsServiceClient_waitForConnection

@staticmethod
def static_VideoSettingsInformationServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.VideoSettingsInformationServiceClient_createSimpleClient(address)
VideoSettingsInformationServiceClient.createClient = static_VideoSettingsInformationServiceClient_createSimpleClient

def VideoSettingsInformationServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.VideoSettingsInformationServiceClient_waitForConnection(self)
VideoSettingsInformationServiceClient.waitForConnection = VideoSettingsInformationServiceClient_waitForConnection

@staticmethod
def static_EqualiserInformationServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.EqualiserInformationServiceClient_createSimpleClient(address)
EqualiserInformationServiceClient.createClient = static_EqualiserInformationServiceClient_createSimpleClient

def EqualiserInformationServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.EqualiserInformationServiceClient_waitForConnection(self)
EqualiserInformationServiceClient.waitForConnection = EqualiserInformationServiceClient_waitForConnection

@staticmethod
def static_SoundSettingsServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.SoundSettingsServiceClient_createSimpleClient(address)
SoundSettingsServiceClient.createClient = static_SoundSettingsServiceClient_createSimpleClient

def SoundSettingsServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.SoundSettingsServiceClient_waitForConnection(self)
SoundSettingsServiceClient.waitForConnection = SoundSettingsServiceClient_waitForConnection

@staticmethod
def static_VolumeInformationServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.VolumeInformationServiceClient_createSimpleClient(address)
VolumeInformationServiceClient.createClient = static_VolumeInformationServiceClient_createSimpleClient

def VolumeInformationServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.VolumeInformationServiceClient_waitForConnection(self)
VolumeInformationServiceClient.waitForConnection = VolumeInformationServiceClient_waitForConnection

@staticmethod
def static_ESSInformationServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.ESSInformationServiceClient_createSimpleClient(address)
ESSInformationServiceClient.createClient = static_ESSInformationServiceClient_createSimpleClient

def ESSInformationServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.ESSInformationServiceClient_waitForConnection(self)
ESSInformationServiceClient.waitForConnection = ESSInformationServiceClient_waitForConnection

@staticmethod
def static_VideoTestInformationServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.VideoTestInformationServiceClient_createSimpleClient(address)
VideoTestInformationServiceClient.createClient = static_VideoTestInformationServiceClient_createSimpleClient

def VideoTestInformationServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.VideoTestInformationServiceClient_waitForConnection(self)
VideoTestInformationServiceClient.waitForConnection = VideoTestInformationServiceClient_waitForConnection

@staticmethod
def static_ExternalAudioSourceServiceClient_createSimpleClient(address):
    return libAudioVideoSettingsService.ExternalAudioSourceServiceClient_createSimpleClient(address)
ExternalAudioSourceServiceClient.createClient = static_ExternalAudioSourceServiceClient_createSimpleClient

def ExternalAudioSourceServiceClient_waitForConnection(self):
    return libAudioVideoSettingsService.ExternalAudioSourceServiceClient_waitForConnection(self)
ExternalAudioSourceServiceClient.waitForConnection = ExternalAudioSourceServiceClient_waitForConnection
%}
