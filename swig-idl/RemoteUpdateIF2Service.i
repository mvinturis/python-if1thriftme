%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libRemoteUpdateIF2Service
else:
    import libRemoteUpdateIF2Service") RemoteUpdateIF2Service

%feature("director") vehicle::remoteUpdateIF2::InstallerClientServiceClient;
%feature("director") vehicle::remoteUpdateIF2::InstallerManagerServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/UpdateResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/InstallerDescription.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/LogicalBlock.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/VariantCodingSegment.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/FileInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/FileType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/UpdateStatusInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/UpdateState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/ChunkTransferState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/DownloadPath.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/InstallerClientService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/InstallerManagerService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/InstallerClientService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RemoteUpdateIF2Service/inc/InstallerManagerService.h"
%}

%inline %{
vehicle::remoteUpdateIF2::InstallerClientServiceClient*
InstallerClientServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::remoteUpdateIF2::InstallerClientServiceClient > client = vehicle::remoteUpdateIF2::InstallerClientServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::remoteUpdateIF2::InstallerClientServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::remoteUpdateIF2::InstallerClientServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void InstallerClientServiceClient_waitForConnection(vehicle::remoteUpdateIF2::InstallerClientServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::remoteUpdateIF2::InstallerManagerServiceClient*
InstallerManagerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::remoteUpdateIF2::InstallerManagerServiceClient > client = vehicle::remoteUpdateIF2::InstallerManagerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::remoteUpdateIF2::InstallerManagerServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::remoteUpdateIF2::InstallerManagerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void InstallerManagerServiceClient_waitForConnection(vehicle::remoteUpdateIF2::InstallerManagerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_InstallerClientServiceClient_createSimpleClient(address):
    return libRemoteUpdateIF2Service.InstallerClientServiceClient_createSimpleClient(address)
InstallerClientServiceClient.createClient = static_InstallerClientServiceClient_createSimpleClient

def InstallerClientServiceClient_waitForConnection(self):
    return libRemoteUpdateIF2Service.InstallerClientServiceClient_waitForConnection(self)
InstallerClientServiceClient.waitForConnection = InstallerClientServiceClient_waitForConnection

@staticmethod
def static_InstallerManagerServiceClient_createSimpleClient(address):
    return libRemoteUpdateIF2Service.InstallerManagerServiceClient_createSimpleClient(address)
InstallerManagerServiceClient.createClient = static_InstallerManagerServiceClient_createSimpleClient

def InstallerManagerServiceClient_waitForConnection(self):
    return libRemoteUpdateIF2Service.InstallerManagerServiceClient_waitForConnection(self)
InstallerManagerServiceClient.waitForConnection = InstallerManagerServiceClient_waitForConnection
%}
