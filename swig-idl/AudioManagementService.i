%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libAudioManagementService
else:
    import libAudioManagementService") AudioManagementService

%feature("director") entertainment::audioManagement::EntertainmentSharingServiceClient;
%feature("director") entertainment::audioManagement::GeneralAudioManagementServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/EntertainmentSharingTarget.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/EntertainmentSharingTargetType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/EntertainmentSharingConentType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/CabinSoundSourceDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/CabinSpeaker.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/EntertainmentSource.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/EntertainmentSourceType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/RSEStreamingPort.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatIdentifier.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/EntertainmentSourceChangeStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/ConnectionType.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/EntertainmentSharingService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/GeneralAudioManagementService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/EntertainmentSharingService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AudioManagementService/inc/GeneralAudioManagementService.h"
%}

%inline %{
entertainment::audioManagement::EntertainmentSharingServiceClient*
EntertainmentSharingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioManagement::EntertainmentSharingServiceClient > client = entertainment::audioManagement::EntertainmentSharingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioManagement::EntertainmentSharingServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioManagement::EntertainmentSharingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EntertainmentSharingServiceClient_waitForConnection(entertainment::audioManagement::EntertainmentSharingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

entertainment::audioManagement::GeneralAudioManagementServiceClient*
GeneralAudioManagementServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< entertainment::audioManagement::GeneralAudioManagementServiceClient > client = entertainment::audioManagement::GeneralAudioManagementServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< entertainment::audioManagement::GeneralAudioManagementServiceClient > shared_ptr_eraser(nullptr, 
        [](entertainment::audioManagement::GeneralAudioManagementServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralAudioManagementServiceClient_waitForConnection(entertainment::audioManagement::GeneralAudioManagementServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_EntertainmentSharingServiceClient_createSimpleClient(address):
    return libAudioManagementService.EntertainmentSharingServiceClient_createSimpleClient(address)
EntertainmentSharingServiceClient.createClient = static_EntertainmentSharingServiceClient_createSimpleClient

def EntertainmentSharingServiceClient_waitForConnection(self):
    return libAudioManagementService.EntertainmentSharingServiceClient_waitForConnection(self)
EntertainmentSharingServiceClient.waitForConnection = EntertainmentSharingServiceClient_waitForConnection

@staticmethod
def static_GeneralAudioManagementServiceClient_createSimpleClient(address):
    return libAudioManagementService.GeneralAudioManagementServiceClient_createSimpleClient(address)
GeneralAudioManagementServiceClient.createClient = static_GeneralAudioManagementServiceClient_createSimpleClient

def GeneralAudioManagementServiceClient_waitForConnection(self):
    return libAudioManagementService.GeneralAudioManagementServiceClient_waitForConnection(self)
GeneralAudioManagementServiceClient.waitForConnection = GeneralAudioManagementServiceClient_waitForConnection
%}
