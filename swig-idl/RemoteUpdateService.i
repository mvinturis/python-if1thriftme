%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libRemoteUpdateService
else:
    import libRemoteUpdateService") RemoteUpdateService

%feature("director") vehicle::remoteUpdate::MaintenanceInstallerServiceClient;
%feature("director") vehicle::remoteUpdate::UpdateManagerServiceClient;
%feature("director") vehicle::remoteUpdate::GeneralRTSUServiceClient;

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
%include "../swig-patch/RemoteUpdateService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/SystemState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/UpdateJob.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/DeliverySource.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/State.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/UpdateJob_OTA_Part.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/UpdateJob_MSD_Part.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/UpdateSearchStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/PreconditionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/FOTAPreconditions.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/FOTAStatusType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/RemoteTelematicsSoftwareUpdateConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/MaintenanceInstallerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/UpdateManagerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/GeneralRTSUService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/MaintenanceInstallerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/UpdateManagerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateService/inc/GeneralRTSUService.h"
%}

%inline %{
vehicle::remoteUpdate::MaintenanceInstallerServiceClient*
MaintenanceInstallerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::remoteUpdate::MaintenanceInstallerServiceClient > client = vehicle::remoteUpdate::MaintenanceInstallerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::remoteUpdate::MaintenanceInstallerServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::remoteUpdate::MaintenanceInstallerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MaintenanceInstallerServiceClient_waitForConnection(vehicle::remoteUpdate::MaintenanceInstallerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::remoteUpdate::UpdateManagerServiceClient*
UpdateManagerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::remoteUpdate::UpdateManagerServiceClient > client = vehicle::remoteUpdate::UpdateManagerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::remoteUpdate::UpdateManagerServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::remoteUpdate::UpdateManagerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UpdateManagerServiceClient_waitForConnection(vehicle::remoteUpdate::UpdateManagerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::remoteUpdate::GeneralRTSUServiceClient*
GeneralRTSUServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::remoteUpdate::GeneralRTSUServiceClient > client = vehicle::remoteUpdate::GeneralRTSUServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::remoteUpdate::GeneralRTSUServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::remoteUpdate::GeneralRTSUServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralRTSUServiceClient_waitForConnection(vehicle::remoteUpdate::GeneralRTSUServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_MaintenanceInstallerServiceClient_createSimpleClient(address):
    return libRemoteUpdateService.MaintenanceInstallerServiceClient_createSimpleClient(address)
MaintenanceInstallerServiceClient.createClient = static_MaintenanceInstallerServiceClient_createSimpleClient

def MaintenanceInstallerServiceClient_waitForConnection(self):
    return libRemoteUpdateService.MaintenanceInstallerServiceClient_waitForConnection(self)
MaintenanceInstallerServiceClient.waitForConnection = MaintenanceInstallerServiceClient_waitForConnection

@staticmethod
def static_UpdateManagerServiceClient_createSimpleClient(address):
    return libRemoteUpdateService.UpdateManagerServiceClient_createSimpleClient(address)
UpdateManagerServiceClient.createClient = static_UpdateManagerServiceClient_createSimpleClient

def UpdateManagerServiceClient_waitForConnection(self):
    return libRemoteUpdateService.UpdateManagerServiceClient_waitForConnection(self)
UpdateManagerServiceClient.waitForConnection = UpdateManagerServiceClient_waitForConnection

@staticmethod
def static_GeneralRTSUServiceClient_createSimpleClient(address):
    return libRemoteUpdateService.GeneralRTSUServiceClient_createSimpleClient(address)
GeneralRTSUServiceClient.createClient = static_GeneralRTSUServiceClient_createSimpleClient

def GeneralRTSUServiceClient_waitForConnection(self):
    return libRemoteUpdateService.GeneralRTSUServiceClient_waitForConnection(self)
GeneralRTSUServiceClient.waitForConnection = GeneralRTSUServiceClient_waitForConnection
%}
