%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libDisplayManagementDIService
else:
    import libDisplayManagementDIService") DisplayManagementDIService

%feature("director") cluster::displayManagementDI::HUDManagementServiceClient;
%feature("director") cluster::displayManagementDI::DisplayManagementServiceClient;
%feature("director") cluster::displayManagementDI::PiPReceiverServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/HUDContentStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/HUDLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/HUDWarpingConfig.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/ViewReq.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/ViewAck.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/PiPReceiverStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/PiPChannel.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/HUDManagementService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/DisplayManagementService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/PiPReceiverService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/HUDManagementService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/DisplayManagementService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/DisplayManagementDIService/inc/PiPReceiverService.h"
%}

%inline %{
cluster::displayManagementDI::HUDManagementServiceClient*
HUDManagementServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::displayManagementDI::HUDManagementServiceClient > client = cluster::displayManagementDI::HUDManagementServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::displayManagementDI::HUDManagementServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::displayManagementDI::HUDManagementServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void HUDManagementServiceClient_waitForConnection(cluster::displayManagementDI::HUDManagementServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::displayManagementDI::DisplayManagementServiceClient*
DisplayManagementServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::displayManagementDI::DisplayManagementServiceClient > client = cluster::displayManagementDI::DisplayManagementServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::displayManagementDI::DisplayManagementServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::displayManagementDI::DisplayManagementServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DisplayManagementServiceClient_waitForConnection(cluster::displayManagementDI::DisplayManagementServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::displayManagementDI::PiPReceiverServiceClient*
PiPReceiverServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::displayManagementDI::PiPReceiverServiceClient > client = cluster::displayManagementDI::PiPReceiverServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::displayManagementDI::PiPReceiverServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::displayManagementDI::PiPReceiverServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void PiPReceiverServiceClient_waitForConnection(cluster::displayManagementDI::PiPReceiverServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_HUDManagementServiceClient_createSimpleClient(address):
    return libDisplayManagementDIService.HUDManagementServiceClient_createSimpleClient(address)
HUDManagementServiceClient.createClient = static_HUDManagementServiceClient_createSimpleClient

def HUDManagementServiceClient_waitForConnection(self):
    return libDisplayManagementDIService.HUDManagementServiceClient_waitForConnection(self)
HUDManagementServiceClient.waitForConnection = HUDManagementServiceClient_waitForConnection

@staticmethod
def static_DisplayManagementServiceClient_createSimpleClient(address):
    return libDisplayManagementDIService.DisplayManagementServiceClient_createSimpleClient(address)
DisplayManagementServiceClient.createClient = static_DisplayManagementServiceClient_createSimpleClient

def DisplayManagementServiceClient_waitForConnection(self):
    return libDisplayManagementDIService.DisplayManagementServiceClient_waitForConnection(self)
DisplayManagementServiceClient.waitForConnection = DisplayManagementServiceClient_waitForConnection

@staticmethod
def static_PiPReceiverServiceClient_createSimpleClient(address):
    return libDisplayManagementDIService.PiPReceiverServiceClient_createSimpleClient(address)
PiPReceiverServiceClient.createClient = static_PiPReceiverServiceClient_createSimpleClient

def PiPReceiverServiceClient_waitForConnection(self):
    return libDisplayManagementDIService.PiPReceiverServiceClient_waitForConnection(self)
PiPReceiverServiceClient.waitForConnection = PiPReceiverServiceClient_waitForConnection
%}
