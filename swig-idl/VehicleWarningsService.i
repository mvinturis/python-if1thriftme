%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libVehicleWarningsService
else:
    import libVehicleWarningsService") VehicleWarningsService

%feature("director") cluster::vehicleWarnings::AcousticOutputServiceClient;
%feature("director") cluster::vehicleWarnings::WarningsServiceClient;
%feature("director") cluster::vehicleWarnings::MultipleSystemsServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/SoundID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/VolumeCtlID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/PrioOverrideType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/RepetitionMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/PlaybackStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/AcousticFeedbackEventID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/ParkmanIntervalID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/WarningEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/OnConditionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/WarningException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/BoolData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/DataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/WarningEventID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/WarningDisplayStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/SoiledCamerasData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/MSSensorStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/SoiledRadarsData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/CameraBlockedType.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/AcousticOutputService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/WarningsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/MultipleSystemsService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/AcousticOutputService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/WarningsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/VehicleWarningsService/inc/MultipleSystemsService.h"
%}

%inline %{
cluster::vehicleWarnings::AcousticOutputServiceClient*
AcousticOutputServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleWarnings::AcousticOutputServiceClient > client = cluster::vehicleWarnings::AcousticOutputServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleWarnings::AcousticOutputServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleWarnings::AcousticOutputServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void AcousticOutputServiceClient_waitForConnection(cluster::vehicleWarnings::AcousticOutputServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::vehicleWarnings::WarningsServiceClient*
WarningsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleWarnings::WarningsServiceClient > client = cluster::vehicleWarnings::WarningsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleWarnings::WarningsServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleWarnings::WarningsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WarningsServiceClient_waitForConnection(cluster::vehicleWarnings::WarningsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::vehicleWarnings::MultipleSystemsServiceClient*
MultipleSystemsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::vehicleWarnings::MultipleSystemsServiceClient > client = cluster::vehicleWarnings::MultipleSystemsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::vehicleWarnings::MultipleSystemsServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::vehicleWarnings::MultipleSystemsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MultipleSystemsServiceClient_waitForConnection(cluster::vehicleWarnings::MultipleSystemsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_AcousticOutputServiceClient_createSimpleClient(address):
    return libVehicleWarningsService.AcousticOutputServiceClient_createSimpleClient(address)
AcousticOutputServiceClient.createClient = static_AcousticOutputServiceClient_createSimpleClient

def AcousticOutputServiceClient_waitForConnection(self):
    return libVehicleWarningsService.AcousticOutputServiceClient_waitForConnection(self)
AcousticOutputServiceClient.waitForConnection = AcousticOutputServiceClient_waitForConnection

@staticmethod
def static_WarningsServiceClient_createSimpleClient(address):
    return libVehicleWarningsService.WarningsServiceClient_createSimpleClient(address)
WarningsServiceClient.createClient = static_WarningsServiceClient_createSimpleClient

def WarningsServiceClient_waitForConnection(self):
    return libVehicleWarningsService.WarningsServiceClient_waitForConnection(self)
WarningsServiceClient.waitForConnection = WarningsServiceClient_waitForConnection

@staticmethod
def static_MultipleSystemsServiceClient_createSimpleClient(address):
    return libVehicleWarningsService.MultipleSystemsServiceClient_createSimpleClient(address)
MultipleSystemsServiceClient.createClient = static_MultipleSystemsServiceClient_createSimpleClient

def MultipleSystemsServiceClient_waitForConnection(self):
    return libVehicleWarningsService.MultipleSystemsServiceClient_waitForConnection(self)
MultipleSystemsServiceClient.waitForConnection = MultipleSystemsServiceClient_waitForConnection
%}
