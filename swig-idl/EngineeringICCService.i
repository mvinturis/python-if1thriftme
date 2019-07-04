%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libEngineeringICCService
else:
    import libEngineeringICCService") EngineeringICCService

%feature("director") vcpu::engineeringICC::InternalAmpInformationClient;
%feature("director") vcpu::engineeringICC::VCPUMiscInformationClient;
%feature("director") vcpu::engineeringICC::FanServiceClient;
%feature("director") vcpu::engineeringICC::DTCClient;
%feature("director") vcpu::engineeringICC::SystemVoltageInformationClient;
%feature("director") vcpu::engineeringICC::MOSTVoltageInformationClient;
%feature("director") vcpu::engineeringICC::TemperatureInformationServiceClient;

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
%include "../swig-patch/EngineeringICCService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/FanOperationMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/FanVoltageAdjustmentMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/TemperatureSensorInformation.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/InternalAmpInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/VCPUMiscInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/FanService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/DTC.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/SystemVoltageInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/MOSTVoltageInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/TemperatureInformationService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/InternalAmpInformation.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/VCPUMiscInformation.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/FanService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/DTC.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/SystemVoltageInformation.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/MOSTVoltageInformation.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringICCService/inc/TemperatureInformationService.h"
%}

%inline %{
vcpu::engineeringICC::InternalAmpInformationClient*
InternalAmpInformationClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::engineeringICC::InternalAmpInformationClient > client = vcpu::engineeringICC::InternalAmpInformationClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::engineeringICC::InternalAmpInformationClient > shared_ptr_eraser(nullptr, 
        [](vcpu::engineeringICC::InternalAmpInformationClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void InternalAmpInformationClient_waitForConnection(vcpu::engineeringICC::InternalAmpInformationClient *self)
{
    self->getTransport()->waitForConnection();
}

vcpu::engineeringICC::VCPUMiscInformationClient*
VCPUMiscInformationClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::engineeringICC::VCPUMiscInformationClient > client = vcpu::engineeringICC::VCPUMiscInformationClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::engineeringICC::VCPUMiscInformationClient > shared_ptr_eraser(nullptr, 
        [](vcpu::engineeringICC::VCPUMiscInformationClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VCPUMiscInformationClient_waitForConnection(vcpu::engineeringICC::VCPUMiscInformationClient *self)
{
    self->getTransport()->waitForConnection();
}

vcpu::engineeringICC::FanServiceClient*
FanServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::engineeringICC::FanServiceClient > client = vcpu::engineeringICC::FanServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::engineeringICC::FanServiceClient > shared_ptr_eraser(nullptr, 
        [](vcpu::engineeringICC::FanServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void FanServiceClient_waitForConnection(vcpu::engineeringICC::FanServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vcpu::engineeringICC::DTCClient*
DTCClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::engineeringICC::DTCClient > client = vcpu::engineeringICC::DTCClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::engineeringICC::DTCClient > shared_ptr_eraser(nullptr, 
        [](vcpu::engineeringICC::DTCClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DTCClient_waitForConnection(vcpu::engineeringICC::DTCClient *self)
{
    self->getTransport()->waitForConnection();
}

vcpu::engineeringICC::SystemVoltageInformationClient*
SystemVoltageInformationClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::engineeringICC::SystemVoltageInformationClient > client = vcpu::engineeringICC::SystemVoltageInformationClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::engineeringICC::SystemVoltageInformationClient > shared_ptr_eraser(nullptr, 
        [](vcpu::engineeringICC::SystemVoltageInformationClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SystemVoltageInformationClient_waitForConnection(vcpu::engineeringICC::SystemVoltageInformationClient *self)
{
    self->getTransport()->waitForConnection();
}

vcpu::engineeringICC::MOSTVoltageInformationClient*
MOSTVoltageInformationClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::engineeringICC::MOSTVoltageInformationClient > client = vcpu::engineeringICC::MOSTVoltageInformationClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::engineeringICC::MOSTVoltageInformationClient > shared_ptr_eraser(nullptr, 
        [](vcpu::engineeringICC::MOSTVoltageInformationClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MOSTVoltageInformationClient_waitForConnection(vcpu::engineeringICC::MOSTVoltageInformationClient *self)
{
    self->getTransport()->waitForConnection();
}

vcpu::engineeringICC::TemperatureInformationServiceClient*
TemperatureInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::engineeringICC::TemperatureInformationServiceClient > client = vcpu::engineeringICC::TemperatureInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::engineeringICC::TemperatureInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](vcpu::engineeringICC::TemperatureInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TemperatureInformationServiceClient_waitForConnection(vcpu::engineeringICC::TemperatureInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_InternalAmpInformationClient_createSimpleClient(address):
    return libEngineeringICCService.InternalAmpInformationClient_createSimpleClient(address)
InternalAmpInformationClient.createClient = static_InternalAmpInformationClient_createSimpleClient

def InternalAmpInformationClient_waitForConnection(self):
    return libEngineeringICCService.InternalAmpInformationClient_waitForConnection(self)
InternalAmpInformationClient.waitForConnection = InternalAmpInformationClient_waitForConnection

@staticmethod
def static_VCPUMiscInformationClient_createSimpleClient(address):
    return libEngineeringICCService.VCPUMiscInformationClient_createSimpleClient(address)
VCPUMiscInformationClient.createClient = static_VCPUMiscInformationClient_createSimpleClient

def VCPUMiscInformationClient_waitForConnection(self):
    return libEngineeringICCService.VCPUMiscInformationClient_waitForConnection(self)
VCPUMiscInformationClient.waitForConnection = VCPUMiscInformationClient_waitForConnection

@staticmethod
def static_FanServiceClient_createSimpleClient(address):
    return libEngineeringICCService.FanServiceClient_createSimpleClient(address)
FanServiceClient.createClient = static_FanServiceClient_createSimpleClient

def FanServiceClient_waitForConnection(self):
    return libEngineeringICCService.FanServiceClient_waitForConnection(self)
FanServiceClient.waitForConnection = FanServiceClient_waitForConnection

@staticmethod
def static_DTCClient_createSimpleClient(address):
    return libEngineeringICCService.DTCClient_createSimpleClient(address)
DTCClient.createClient = static_DTCClient_createSimpleClient

def DTCClient_waitForConnection(self):
    return libEngineeringICCService.DTCClient_waitForConnection(self)
DTCClient.waitForConnection = DTCClient_waitForConnection

@staticmethod
def static_SystemVoltageInformationClient_createSimpleClient(address):
    return libEngineeringICCService.SystemVoltageInformationClient_createSimpleClient(address)
SystemVoltageInformationClient.createClient = static_SystemVoltageInformationClient_createSimpleClient

def SystemVoltageInformationClient_waitForConnection(self):
    return libEngineeringICCService.SystemVoltageInformationClient_waitForConnection(self)
SystemVoltageInformationClient.waitForConnection = SystemVoltageInformationClient_waitForConnection

@staticmethod
def static_MOSTVoltageInformationClient_createSimpleClient(address):
    return libEngineeringICCService.MOSTVoltageInformationClient_createSimpleClient(address)
MOSTVoltageInformationClient.createClient = static_MOSTVoltageInformationClient_createSimpleClient

def MOSTVoltageInformationClient_waitForConnection(self):
    return libEngineeringICCService.MOSTVoltageInformationClient_waitForConnection(self)
MOSTVoltageInformationClient.waitForConnection = MOSTVoltageInformationClient_waitForConnection

@staticmethod
def static_TemperatureInformationServiceClient_createSimpleClient(address):
    return libEngineeringICCService.TemperatureInformationServiceClient_createSimpleClient(address)
TemperatureInformationServiceClient.createClient = static_TemperatureInformationServiceClient_createSimpleClient

def TemperatureInformationServiceClient_waitForConnection(self):
    return libEngineeringICCService.TemperatureInformationServiceClient_waitForConnection(self)
TemperatureInformationServiceClient.waitForConnection = TemperatureInformationServiceClient_waitForConnection
%}
