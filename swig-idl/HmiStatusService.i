%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libHmiStatusService
else:
    import libHmiStatusService") HmiStatusService

%feature("director") cluster::hmiStatus::HMIStatusServiceClient;
%feature("director") cluster::hmiStatus::DigitalLightServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/StWhlGestureAreaStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/BoolData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/DataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/ICUIStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/ICUIOperationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/ICUIContext.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/ICUIInformationDensity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/ICUIWIMDisplayStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/ICUIClassicSubinteraction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/ICUIOverlayStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/ICUIFocus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/LargeHUDFullscreenStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/SafeModeData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/DigitalLightFeatureData.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/HMIStatusService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/DigitalLightService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/HMIStatusService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/HmiStatusService/inc/DigitalLightService.h"
%}

%inline %{
cluster::hmiStatus::HMIStatusServiceClient*
HMIStatusServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::hmiStatus::HMIStatusServiceClient > client = cluster::hmiStatus::HMIStatusServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::hmiStatus::HMIStatusServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::hmiStatus::HMIStatusServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void HMIStatusServiceClient_waitForConnection(cluster::hmiStatus::HMIStatusServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::hmiStatus::DigitalLightServiceClient*
DigitalLightServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::hmiStatus::DigitalLightServiceClient > client = cluster::hmiStatus::DigitalLightServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::hmiStatus::DigitalLightServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::hmiStatus::DigitalLightServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DigitalLightServiceClient_waitForConnection(cluster::hmiStatus::DigitalLightServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_HMIStatusServiceClient_createSimpleClient(address):
    return libHmiStatusService.HMIStatusServiceClient_createSimpleClient(address)
HMIStatusServiceClient.createClient = static_HMIStatusServiceClient_createSimpleClient

def HMIStatusServiceClient_waitForConnection(self):
    return libHmiStatusService.HMIStatusServiceClient_waitForConnection(self)
HMIStatusServiceClient.waitForConnection = HMIStatusServiceClient_waitForConnection

@staticmethod
def static_DigitalLightServiceClient_createSimpleClient(address):
    return libHmiStatusService.DigitalLightServiceClient_createSimpleClient(address)
DigitalLightServiceClient.createClient = static_DigitalLightServiceClient_createSimpleClient

def DigitalLightServiceClient_waitForConnection(self):
    return libHmiStatusService.DigitalLightServiceClient_waitForConnection(self)
DigitalLightServiceClient.waitForConnection = DigitalLightServiceClient_waitForConnection
%}
