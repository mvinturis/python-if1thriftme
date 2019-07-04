%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libPlayerService
else:
    import libPlayerService") PlayerService

%feature("director") entertainment::player::GeneralPlayerServiceClient;
%feature("director") entertainment::player::MediaListServiceClient;
%feature("director") entertainment::player::DriveControlServiceClient;
%feature("director") entertainment::player::CurrentPlaylistControlServiceClient;
%feature("director") entertainment::player::VideoControlServiceClient;
%feature("director") entertainment::player::ActiveComfortControlServiceClient;
%feature("director") entertainment::player::MediaBrowsingAndSearchServiceClient;
%feature("director") entertainment::player::MetaDataScanServiceClient;

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
%include "../swig-patch/PlayerService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/SystemPlayMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/DriveType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/SDSSearchEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/BrowsingCategory.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MediaObjectType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MediaObject.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/SortStrategy.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/SortCriteria.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/SortOrder.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/AvailableRange.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/Drive.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/DriveStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/DriveFailureStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/Medium.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MediumStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/ScanStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MediumType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/EjectStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/PlaylistType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/PlaylistSeed.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/Playmode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/RepeatMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MoodGrid.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MoodGridEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/PlaybackStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/SupportedFeature.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/VideoDisplayMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/Direction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/ListCreationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/VideoLanguage.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/VideoLanguageType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/VideoColorKeyCommand.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/VideoNavigationKeyCommand.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/ActiveComfortProgramInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/ActiveComfortMediaType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/BrowsingListMediumType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/FileFilter.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/SearchMatches.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/ActiveScanProgress.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/ProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/FileFolderScanProgress.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/GeneralPlayerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MediaListService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/DriveControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/CurrentPlaylistControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/VideoControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/ActiveComfortControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MediaBrowsingAndSearchService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MetaDataScanService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/GeneralPlayerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MediaListService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/DriveControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/CurrentPlaylistControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/VideoControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/ActiveComfortControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MediaBrowsingAndSearchService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/PlayerService/inc/MetaDataScanService.h"
%}

%inline %{
entertainment::player::GeneralPlayerServiceClient*
GeneralPlayerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::player::GeneralPlayerServiceClient > client = entertainment::player::GeneralPlayerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::player::GeneralPlayerServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::player::GeneralPlayerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralPlayerServiceClient_waitForConnection(entertainment::player::GeneralPlayerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::player::MediaListServiceClient*
MediaListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::player::MediaListServiceClient > client = entertainment::player::MediaListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::player::MediaListServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::player::MediaListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MediaListServiceClient_waitForConnection(entertainment::player::MediaListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::player::DriveControlServiceClient*
DriveControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::player::DriveControlServiceClient > client = entertainment::player::DriveControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::player::DriveControlServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::player::DriveControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DriveControlServiceClient_waitForConnection(entertainment::player::DriveControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::player::CurrentPlaylistControlServiceClient*
CurrentPlaylistControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::player::CurrentPlaylistControlServiceClient > client = entertainment::player::CurrentPlaylistControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::player::CurrentPlaylistControlServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::player::CurrentPlaylistControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void CurrentPlaylistControlServiceClient_waitForConnection(entertainment::player::CurrentPlaylistControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::player::VideoControlServiceClient*
VideoControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::player::VideoControlServiceClient > client = entertainment::player::VideoControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::player::VideoControlServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::player::VideoControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VideoControlServiceClient_waitForConnection(entertainment::player::VideoControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::player::ActiveComfortControlServiceClient*
ActiveComfortControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::player::ActiveComfortControlServiceClient > client = entertainment::player::ActiveComfortControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::player::ActiveComfortControlServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::player::ActiveComfortControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ActiveComfortControlServiceClient_waitForConnection(entertainment::player::ActiveComfortControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::player::MediaBrowsingAndSearchServiceClient*
MediaBrowsingAndSearchServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::player::MediaBrowsingAndSearchServiceClient > client = entertainment::player::MediaBrowsingAndSearchServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::player::MediaBrowsingAndSearchServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::player::MediaBrowsingAndSearchServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MediaBrowsingAndSearchServiceClient_waitForConnection(entertainment::player::MediaBrowsingAndSearchServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::player::MetaDataScanServiceClient*
MetaDataScanServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::player::MetaDataScanServiceClient > client = entertainment::player::MetaDataScanServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::player::MetaDataScanServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::player::MetaDataScanServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MetaDataScanServiceClient_waitForConnection(entertainment::player::MetaDataScanServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_GeneralPlayerServiceClient_createSimpleClient(address):
    return libPlayerService.GeneralPlayerServiceClient_createSimpleClient(address)
GeneralPlayerServiceClient.createClient = static_GeneralPlayerServiceClient_createSimpleClient

def GeneralPlayerServiceClient_waitForConnection(self):
    return libPlayerService.GeneralPlayerServiceClient_waitForConnection(self)
GeneralPlayerServiceClient.waitForConnection = GeneralPlayerServiceClient_waitForConnection

@staticmethod
def static_MediaListServiceClient_createSimpleClient(address):
    return libPlayerService.MediaListServiceClient_createSimpleClient(address)
MediaListServiceClient.createClient = static_MediaListServiceClient_createSimpleClient

def MediaListServiceClient_waitForConnection(self):
    return libPlayerService.MediaListServiceClient_waitForConnection(self)
MediaListServiceClient.waitForConnection = MediaListServiceClient_waitForConnection

@staticmethod
def static_DriveControlServiceClient_createSimpleClient(address):
    return libPlayerService.DriveControlServiceClient_createSimpleClient(address)
DriveControlServiceClient.createClient = static_DriveControlServiceClient_createSimpleClient

def DriveControlServiceClient_waitForConnection(self):
    return libPlayerService.DriveControlServiceClient_waitForConnection(self)
DriveControlServiceClient.waitForConnection = DriveControlServiceClient_waitForConnection

@staticmethod
def static_CurrentPlaylistControlServiceClient_createSimpleClient(address):
    return libPlayerService.CurrentPlaylistControlServiceClient_createSimpleClient(address)
CurrentPlaylistControlServiceClient.createClient = static_CurrentPlaylistControlServiceClient_createSimpleClient

def CurrentPlaylistControlServiceClient_waitForConnection(self):
    return libPlayerService.CurrentPlaylistControlServiceClient_waitForConnection(self)
CurrentPlaylistControlServiceClient.waitForConnection = CurrentPlaylistControlServiceClient_waitForConnection

@staticmethod
def static_VideoControlServiceClient_createSimpleClient(address):
    return libPlayerService.VideoControlServiceClient_createSimpleClient(address)
VideoControlServiceClient.createClient = static_VideoControlServiceClient_createSimpleClient

def VideoControlServiceClient_waitForConnection(self):
    return libPlayerService.VideoControlServiceClient_waitForConnection(self)
VideoControlServiceClient.waitForConnection = VideoControlServiceClient_waitForConnection

@staticmethod
def static_ActiveComfortControlServiceClient_createSimpleClient(address):
    return libPlayerService.ActiveComfortControlServiceClient_createSimpleClient(address)
ActiveComfortControlServiceClient.createClient = static_ActiveComfortControlServiceClient_createSimpleClient

def ActiveComfortControlServiceClient_waitForConnection(self):
    return libPlayerService.ActiveComfortControlServiceClient_waitForConnection(self)
ActiveComfortControlServiceClient.waitForConnection = ActiveComfortControlServiceClient_waitForConnection

@staticmethod
def static_MediaBrowsingAndSearchServiceClient_createSimpleClient(address):
    return libPlayerService.MediaBrowsingAndSearchServiceClient_createSimpleClient(address)
MediaBrowsingAndSearchServiceClient.createClient = static_MediaBrowsingAndSearchServiceClient_createSimpleClient

def MediaBrowsingAndSearchServiceClient_waitForConnection(self):
    return libPlayerService.MediaBrowsingAndSearchServiceClient_waitForConnection(self)
MediaBrowsingAndSearchServiceClient.waitForConnection = MediaBrowsingAndSearchServiceClient_waitForConnection

@staticmethod
def static_MetaDataScanServiceClient_createSimpleClient(address):
    return libPlayerService.MetaDataScanServiceClient_createSimpleClient(address)
MetaDataScanServiceClient.createClient = static_MetaDataScanServiceClient_createSimpleClient

def MetaDataScanServiceClient_waitForConnection(self):
    return libPlayerService.MetaDataScanServiceClient_waitForConnection(self)
MetaDataScanServiceClient.waitForConnection = MetaDataScanServiceClient_waitForConnection
%}
