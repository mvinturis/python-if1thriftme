%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libEngineeringModeService
else:
    import libEngineeringModeService") EngineeringModeService

%feature("director") platform::engineeringMode::TraceServiceClient;
%feature("director") platform::engineeringMode::DealerModeServiceClient;
%feature("director") platform::engineeringMode::engineeringInformationExchangeClient;
%feature("director") platform::engineeringMode::DynamicEngineeringModeServiceClient;
%feature("director") platform::engineeringMode::HardwareInformationServiceClient;
%feature("director") platform::engineeringMode::PerformanceMeasurementServiceClient;
%feature("director") platform::engineeringMode::EMCModeServiceClient;
%feature("director") platform::engineeringMode::GeneralEngineeringModeServiceClient;
%feature("director") platform::engineeringMode::MiscEngineeringModeServiceClient;
%feature("director") platform::engineeringMode::SNAPInformationServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/FailureStorageType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/ExternalStorageDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/DLTLogLevel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/DebugPortStatusValue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/StatusValue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/ProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/EventLogInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/LoggingProgress.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/LoggingResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/MenuNameTaken.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/Result.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/KeyConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/KeyType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/KeyOption.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/InfoPair.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/KeyConfigListElement.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/ConnectionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/FanOperationMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DeviceManagerService/inc/MemoryInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/FanVoltageAdjustmentMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/FunctionCheckType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/InterfaceCheckType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/OpticalDriveInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/TemperatureSensorInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/PerformanceMeasurementApplication.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/HMIStartUpMeasurementCode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/EMCTestPatterns.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/KeypadLightBrightness.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/USBPort.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/DOMStartMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/SwitchOperationMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/SWModuleVersion.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/ApplicationNotRespondedException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/OperationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/SNAPCacheElement.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/TraceService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/DealerModeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/engineeringInformationExchange.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/DynamicEngineeringModeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/HardwareInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/PerformanceMeasurementService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/EMCModeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/GeneralEngineeringModeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/MiscEngineeringModeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/SNAPInformationService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/TraceService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/DealerModeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/engineeringInformationExchange.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/DynamicEngineeringModeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/HardwareInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/PerformanceMeasurementService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/EMCModeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/GeneralEngineeringModeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/MiscEngineeringModeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/EngineeringModeService/inc/SNAPInformationService.h"
%}

%inline %{
platform::engineeringMode::TraceServiceClient*
TraceServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::TraceServiceClient > client = platform::engineeringMode::TraceServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::TraceServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::TraceServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TraceServiceClient_waitForConnection(platform::engineeringMode::TraceServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::DealerModeServiceClient*
DealerModeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::DealerModeServiceClient > client = platform::engineeringMode::DealerModeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::DealerModeServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::DealerModeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DealerModeServiceClient_waitForConnection(platform::engineeringMode::DealerModeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::engineeringInformationExchangeClient*
engineeringInformationExchangeClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::engineeringInformationExchangeClient > client = platform::engineeringMode::engineeringInformationExchangeClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::engineeringInformationExchangeClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::engineeringInformationExchangeClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void engineeringInformationExchangeClient_waitForConnection(platform::engineeringMode::engineeringInformationExchangeClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::DynamicEngineeringModeServiceClient*
DynamicEngineeringModeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::DynamicEngineeringModeServiceClient > client = platform::engineeringMode::DynamicEngineeringModeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::DynamicEngineeringModeServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::DynamicEngineeringModeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DynamicEngineeringModeServiceClient_waitForConnection(platform::engineeringMode::DynamicEngineeringModeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::HardwareInformationServiceClient*
HardwareInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::HardwareInformationServiceClient > client = platform::engineeringMode::HardwareInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::HardwareInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::HardwareInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void HardwareInformationServiceClient_waitForConnection(platform::engineeringMode::HardwareInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::PerformanceMeasurementServiceClient*
PerformanceMeasurementServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::PerformanceMeasurementServiceClient > client = platform::engineeringMode::PerformanceMeasurementServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::PerformanceMeasurementServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::PerformanceMeasurementServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void PerformanceMeasurementServiceClient_waitForConnection(platform::engineeringMode::PerformanceMeasurementServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::EMCModeServiceClient*
EMCModeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::EMCModeServiceClient > client = platform::engineeringMode::EMCModeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::EMCModeServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::EMCModeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EMCModeServiceClient_waitForConnection(platform::engineeringMode::EMCModeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::GeneralEngineeringModeServiceClient*
GeneralEngineeringModeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::GeneralEngineeringModeServiceClient > client = platform::engineeringMode::GeneralEngineeringModeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::GeneralEngineeringModeServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::GeneralEngineeringModeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralEngineeringModeServiceClient_waitForConnection(platform::engineeringMode::GeneralEngineeringModeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::MiscEngineeringModeServiceClient*
MiscEngineeringModeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::MiscEngineeringModeServiceClient > client = platform::engineeringMode::MiscEngineeringModeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::MiscEngineeringModeServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::MiscEngineeringModeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MiscEngineeringModeServiceClient_waitForConnection(platform::engineeringMode::MiscEngineeringModeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::engineeringMode::SNAPInformationServiceClient*
SNAPInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::engineeringMode::SNAPInformationServiceClient > client = platform::engineeringMode::SNAPInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::engineeringMode::SNAPInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::engineeringMode::SNAPInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SNAPInformationServiceClient_waitForConnection(platform::engineeringMode::SNAPInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_TraceServiceClient_createSimpleClient(address):
    return libEngineeringModeService.TraceServiceClient_createSimpleClient(address)
TraceServiceClient.createClient = static_TraceServiceClient_createSimpleClient

def TraceServiceClient_waitForConnection(self):
    return libEngineeringModeService.TraceServiceClient_waitForConnection(self)
TraceServiceClient.waitForConnection = TraceServiceClient_waitForConnection

@staticmethod
def static_DealerModeServiceClient_createSimpleClient(address):
    return libEngineeringModeService.DealerModeServiceClient_createSimpleClient(address)
DealerModeServiceClient.createClient = static_DealerModeServiceClient_createSimpleClient

def DealerModeServiceClient_waitForConnection(self):
    return libEngineeringModeService.DealerModeServiceClient_waitForConnection(self)
DealerModeServiceClient.waitForConnection = DealerModeServiceClient_waitForConnection

@staticmethod
def static_engineeringInformationExchangeClient_createSimpleClient(address):
    return libEngineeringModeService.engineeringInformationExchangeClient_createSimpleClient(address)
engineeringInformationExchangeClient.createClient = static_engineeringInformationExchangeClient_createSimpleClient

def engineeringInformationExchangeClient_waitForConnection(self):
    return libEngineeringModeService.engineeringInformationExchangeClient_waitForConnection(self)
engineeringInformationExchangeClient.waitForConnection = engineeringInformationExchangeClient_waitForConnection

@staticmethod
def static_DynamicEngineeringModeServiceClient_createSimpleClient(address):
    return libEngineeringModeService.DynamicEngineeringModeServiceClient_createSimpleClient(address)
DynamicEngineeringModeServiceClient.createClient = static_DynamicEngineeringModeServiceClient_createSimpleClient

def DynamicEngineeringModeServiceClient_waitForConnection(self):
    return libEngineeringModeService.DynamicEngineeringModeServiceClient_waitForConnection(self)
DynamicEngineeringModeServiceClient.waitForConnection = DynamicEngineeringModeServiceClient_waitForConnection

@staticmethod
def static_HardwareInformationServiceClient_createSimpleClient(address):
    return libEngineeringModeService.HardwareInformationServiceClient_createSimpleClient(address)
HardwareInformationServiceClient.createClient = static_HardwareInformationServiceClient_createSimpleClient

def HardwareInformationServiceClient_waitForConnection(self):
    return libEngineeringModeService.HardwareInformationServiceClient_waitForConnection(self)
HardwareInformationServiceClient.waitForConnection = HardwareInformationServiceClient_waitForConnection

@staticmethod
def static_PerformanceMeasurementServiceClient_createSimpleClient(address):
    return libEngineeringModeService.PerformanceMeasurementServiceClient_createSimpleClient(address)
PerformanceMeasurementServiceClient.createClient = static_PerformanceMeasurementServiceClient_createSimpleClient

def PerformanceMeasurementServiceClient_waitForConnection(self):
    return libEngineeringModeService.PerformanceMeasurementServiceClient_waitForConnection(self)
PerformanceMeasurementServiceClient.waitForConnection = PerformanceMeasurementServiceClient_waitForConnection

@staticmethod
def static_EMCModeServiceClient_createSimpleClient(address):
    return libEngineeringModeService.EMCModeServiceClient_createSimpleClient(address)
EMCModeServiceClient.createClient = static_EMCModeServiceClient_createSimpleClient

def EMCModeServiceClient_waitForConnection(self):
    return libEngineeringModeService.EMCModeServiceClient_waitForConnection(self)
EMCModeServiceClient.waitForConnection = EMCModeServiceClient_waitForConnection

@staticmethod
def static_GeneralEngineeringModeServiceClient_createSimpleClient(address):
    return libEngineeringModeService.GeneralEngineeringModeServiceClient_createSimpleClient(address)
GeneralEngineeringModeServiceClient.createClient = static_GeneralEngineeringModeServiceClient_createSimpleClient

def GeneralEngineeringModeServiceClient_waitForConnection(self):
    return libEngineeringModeService.GeneralEngineeringModeServiceClient_waitForConnection(self)
GeneralEngineeringModeServiceClient.waitForConnection = GeneralEngineeringModeServiceClient_waitForConnection

@staticmethod
def static_MiscEngineeringModeServiceClient_createSimpleClient(address):
    return libEngineeringModeService.MiscEngineeringModeServiceClient_createSimpleClient(address)
MiscEngineeringModeServiceClient.createClient = static_MiscEngineeringModeServiceClient_createSimpleClient

def MiscEngineeringModeServiceClient_waitForConnection(self):
    return libEngineeringModeService.MiscEngineeringModeServiceClient_waitForConnection(self)
MiscEngineeringModeServiceClient.waitForConnection = MiscEngineeringModeServiceClient_waitForConnection

@staticmethod
def static_SNAPInformationServiceClient_createSimpleClient(address):
    return libEngineeringModeService.SNAPInformationServiceClient_createSimpleClient(address)
SNAPInformationServiceClient.createClient = static_SNAPInformationServiceClient_createSimpleClient

def SNAPInformationServiceClient_waitForConnection(self):
    return libEngineeringModeService.SNAPInformationServiceClient_waitForConnection(self)
SNAPInformationServiceClient.waitForConnection = SNAPInformationServiceClient_waitForConnection
%}
