%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libRepairServicesService
else:
    import libRepairServicesService") RepairServicesService

%feature("director") cluster::repairServices::GeneralRepairServiceClient;
%feature("director") cluster::repairServices::BrakeLiningServiceClient;
%feature("director") cluster::repairServices::WorkshopDataServiceClient;
%feature("director") cluster::repairServices::RollerTestServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/SuspensionModeData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/SuspensionMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/DataValidityStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/HUDTestImageRequest.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/ParticulateFilterRegenStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/BLSMScreenMenue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/BLSMKeyEvent.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/BatteryData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int16Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int8Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/VehicleIdData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/SteeringWheelPositionVariant.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/EngineStyle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/Int32Data.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/StringData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/DeviceIdData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/SoftwareVersionInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/SoftwarePartNumberInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonDIService/inc/TriState.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/GeneralRepairService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/BrakeLiningService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/WorkshopDataService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/RollerTestService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/GeneralRepairService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/BrakeLiningService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/WorkshopDataService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/RepairServicesService/inc/RollerTestService.h"
%}

%inline %{
cluster::repairServices::GeneralRepairServiceClient*
GeneralRepairServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::repairServices::GeneralRepairServiceClient > client = cluster::repairServices::GeneralRepairServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::repairServices::GeneralRepairServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::repairServices::GeneralRepairServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralRepairServiceClient_waitForConnection(cluster::repairServices::GeneralRepairServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::repairServices::BrakeLiningServiceClient*
BrakeLiningServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::repairServices::BrakeLiningServiceClient > client = cluster::repairServices::BrakeLiningServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::repairServices::BrakeLiningServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::repairServices::BrakeLiningServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void BrakeLiningServiceClient_waitForConnection(cluster::repairServices::BrakeLiningServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::repairServices::WorkshopDataServiceClient*
WorkshopDataServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::repairServices::WorkshopDataServiceClient > client = cluster::repairServices::WorkshopDataServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::repairServices::WorkshopDataServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::repairServices::WorkshopDataServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void WorkshopDataServiceClient_waitForConnection(cluster::repairServices::WorkshopDataServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

cluster::repairServices::RollerTestServiceClient*
RollerTestServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::repairServices::RollerTestServiceClient > client = cluster::repairServices::RollerTestServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::repairServices::RollerTestServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::repairServices::RollerTestServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void RollerTestServiceClient_waitForConnection(cluster::repairServices::RollerTestServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_GeneralRepairServiceClient_createSimpleClient(address):
    return libRepairServicesService.GeneralRepairServiceClient_createSimpleClient(address)
GeneralRepairServiceClient.createClient = static_GeneralRepairServiceClient_createSimpleClient

def GeneralRepairServiceClient_waitForConnection(self):
    return libRepairServicesService.GeneralRepairServiceClient_waitForConnection(self)
GeneralRepairServiceClient.waitForConnection = GeneralRepairServiceClient_waitForConnection

@staticmethod
def static_BrakeLiningServiceClient_createSimpleClient(address):
    return libRepairServicesService.BrakeLiningServiceClient_createSimpleClient(address)
BrakeLiningServiceClient.createClient = static_BrakeLiningServiceClient_createSimpleClient

def BrakeLiningServiceClient_waitForConnection(self):
    return libRepairServicesService.BrakeLiningServiceClient_waitForConnection(self)
BrakeLiningServiceClient.waitForConnection = BrakeLiningServiceClient_waitForConnection

@staticmethod
def static_WorkshopDataServiceClient_createSimpleClient(address):
    return libRepairServicesService.WorkshopDataServiceClient_createSimpleClient(address)
WorkshopDataServiceClient.createClient = static_WorkshopDataServiceClient_createSimpleClient

def WorkshopDataServiceClient_waitForConnection(self):
    return libRepairServicesService.WorkshopDataServiceClient_waitForConnection(self)
WorkshopDataServiceClient.waitForConnection = WorkshopDataServiceClient_waitForConnection

@staticmethod
def static_RollerTestServiceClient_createSimpleClient(address):
    return libRepairServicesService.RollerTestServiceClient_createSimpleClient(address)
RollerTestServiceClient.createClient = static_RollerTestServiceClient_createSimpleClient

def RollerTestServiceClient_waitForConnection(self):
    return libRepairServicesService.RollerTestServiceClient_waitForConnection(self)
RollerTestServiceClient.waitForConnection = RollerTestServiceClient_waitForConnection
%}
