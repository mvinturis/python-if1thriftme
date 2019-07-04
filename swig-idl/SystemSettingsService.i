%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libSystemSettingsService
else:
    import libSystemSettingsService") SystemSettingsService

%feature("director") vehicle::systemSettings::GeneralTimeAndDateServiceClient;
%feature("director") vehicle::systemSettings::TimeAndDateServiceClient;
%feature("director") vehicle::systemSettings::SystemSettingsServiceClient;
%feature("director") vehicle::systemSettings::GeneralSystemSettingsServiceClient;
%feature("director") vehicle::systemSettings::GeneralLunarDateServiceClient;
%feature("director") vehicle::systemSettings::EnergyFlowServiceClient;
%feature("director") vehicle::systemSettings::GeneralEnergyFlowServiceClient;
%feature("director") vehicle::systemSettings::LunarDateServiceClient;

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
%include "../swig-patch/SystemSettingsService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TimeAndDateConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DateFormat.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TimeFormat.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/Country.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeZone.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DstPolicy.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/InvalidCountryIDException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/CountryAndTimeZone.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DayOfWeek.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/Validity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DateFormat.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DateFormatType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/Separator.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DaylightSavingTimeMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DstRule.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DstDate.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeAndDate.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/Time.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/MonthDisplayStyle.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeOffset.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeOffsetPrefixType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeFormat.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeSettingMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/InvalidTimeZoneIDException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeZoneChangeIndication.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeZoneMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/UITimeDateSetMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/UITimeDateTestMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/InvalidDateException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/InvalidTimeException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeAndDateTopics.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeDateChangeReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/UITheme.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/UIStyleType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/UIStyleMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DisplayBrightnessZone.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/ProcessStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SystemPINConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/LunarDateConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DisabledEnabled.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/AccessibleDisplayElementsConsumption.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/AccessibleDisplayElementsEnergyFlow.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/AccessibleSupplementaryInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DriveType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/AdBlueUsageStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/FuelType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/ConsumptionIndicator.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/FuelConsumptionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/CNGDisplayType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/ConsumptionPercentages.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/ConsumptionUnitType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DrivingDirection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/FuelRangeInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/HPPRDisplayType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/InvalidConsumptionRangeException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/InvalidConsumptionResolutionException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/ConsumptionUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/InvalidRecuperationRangeException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/InvalidRecuperationResolutionException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/SBSVBSType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/EnergyFlowConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/EnergyFlowConsumptionUnit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ConsumptionScaleMax.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/EnergyFlowGallonType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/DrivenWheels.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/EnergyFlowDriveType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/ConsumptionFactor.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/TimeRangeScheme.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/LunarDateInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/LunarDateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/LunarDate.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/GeneralTimeAndDateService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeAndDateService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/SystemSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/GeneralSystemSettingsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/GeneralLunarDateService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/EnergyFlowService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/GeneralEnergyFlowService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/LunarDateService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/GeneralTimeAndDateService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeAndDateService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/SystemSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/GeneralSystemSettingsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/GeneralLunarDateService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/EnergyFlowService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/GeneralEnergyFlowService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/LunarDateService.h"
%}

%inline %{
vehicle::systemSettings::GeneralTimeAndDateServiceClient*
GeneralTimeAndDateServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::systemSettings::GeneralTimeAndDateServiceClient > client = vehicle::systemSettings::GeneralTimeAndDateServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::systemSettings::GeneralTimeAndDateServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::systemSettings::GeneralTimeAndDateServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralTimeAndDateServiceClient_waitForConnection(vehicle::systemSettings::GeneralTimeAndDateServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::systemSettings::TimeAndDateServiceClient*
TimeAndDateServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::systemSettings::TimeAndDateServiceClient > client = vehicle::systemSettings::TimeAndDateServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::systemSettings::TimeAndDateServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::systemSettings::TimeAndDateServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void TimeAndDateServiceClient_waitForConnection(vehicle::systemSettings::TimeAndDateServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::systemSettings::SystemSettingsServiceClient*
SystemSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::systemSettings::SystemSettingsServiceClient > client = vehicle::systemSettings::SystemSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::systemSettings::SystemSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::systemSettings::SystemSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SystemSettingsServiceClient_waitForConnection(vehicle::systemSettings::SystemSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::systemSettings::GeneralSystemSettingsServiceClient*
GeneralSystemSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::systemSettings::GeneralSystemSettingsServiceClient > client = vehicle::systemSettings::GeneralSystemSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::systemSettings::GeneralSystemSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::systemSettings::GeneralSystemSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralSystemSettingsServiceClient_waitForConnection(vehicle::systemSettings::GeneralSystemSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::systemSettings::GeneralLunarDateServiceClient*
GeneralLunarDateServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::systemSettings::GeneralLunarDateServiceClient > client = vehicle::systemSettings::GeneralLunarDateServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::systemSettings::GeneralLunarDateServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::systemSettings::GeneralLunarDateServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralLunarDateServiceClient_waitForConnection(vehicle::systemSettings::GeneralLunarDateServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::systemSettings::EnergyFlowServiceClient*
EnergyFlowServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::systemSettings::EnergyFlowServiceClient > client = vehicle::systemSettings::EnergyFlowServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::systemSettings::EnergyFlowServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::systemSettings::EnergyFlowServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void EnergyFlowServiceClient_waitForConnection(vehicle::systemSettings::EnergyFlowServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::systemSettings::GeneralEnergyFlowServiceClient*
GeneralEnergyFlowServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::systemSettings::GeneralEnergyFlowServiceClient > client = vehicle::systemSettings::GeneralEnergyFlowServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::systemSettings::GeneralEnergyFlowServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::systemSettings::GeneralEnergyFlowServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralEnergyFlowServiceClient_waitForConnection(vehicle::systemSettings::GeneralEnergyFlowServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::systemSettings::LunarDateServiceClient*
LunarDateServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::systemSettings::LunarDateServiceClient > client = vehicle::systemSettings::LunarDateServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::systemSettings::LunarDateServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::systemSettings::LunarDateServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void LunarDateServiceClient_waitForConnection(vehicle::systemSettings::LunarDateServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_GeneralTimeAndDateServiceClient_createSimpleClient(address):
    return libSystemSettingsService.GeneralTimeAndDateServiceClient_createSimpleClient(address)
GeneralTimeAndDateServiceClient.createClient = static_GeneralTimeAndDateServiceClient_createSimpleClient

def GeneralTimeAndDateServiceClient_waitForConnection(self):
    return libSystemSettingsService.GeneralTimeAndDateServiceClient_waitForConnection(self)
GeneralTimeAndDateServiceClient.waitForConnection = GeneralTimeAndDateServiceClient_waitForConnection

@staticmethod
def static_TimeAndDateServiceClient_createSimpleClient(address):
    return libSystemSettingsService.TimeAndDateServiceClient_createSimpleClient(address)
TimeAndDateServiceClient.createClient = static_TimeAndDateServiceClient_createSimpleClient

def TimeAndDateServiceClient_waitForConnection(self):
    return libSystemSettingsService.TimeAndDateServiceClient_waitForConnection(self)
TimeAndDateServiceClient.waitForConnection = TimeAndDateServiceClient_waitForConnection

@staticmethod
def static_SystemSettingsServiceClient_createSimpleClient(address):
    return libSystemSettingsService.SystemSettingsServiceClient_createSimpleClient(address)
SystemSettingsServiceClient.createClient = static_SystemSettingsServiceClient_createSimpleClient

def SystemSettingsServiceClient_waitForConnection(self):
    return libSystemSettingsService.SystemSettingsServiceClient_waitForConnection(self)
SystemSettingsServiceClient.waitForConnection = SystemSettingsServiceClient_waitForConnection

@staticmethod
def static_GeneralSystemSettingsServiceClient_createSimpleClient(address):
    return libSystemSettingsService.GeneralSystemSettingsServiceClient_createSimpleClient(address)
GeneralSystemSettingsServiceClient.createClient = static_GeneralSystemSettingsServiceClient_createSimpleClient

def GeneralSystemSettingsServiceClient_waitForConnection(self):
    return libSystemSettingsService.GeneralSystemSettingsServiceClient_waitForConnection(self)
GeneralSystemSettingsServiceClient.waitForConnection = GeneralSystemSettingsServiceClient_waitForConnection

@staticmethod
def static_GeneralLunarDateServiceClient_createSimpleClient(address):
    return libSystemSettingsService.GeneralLunarDateServiceClient_createSimpleClient(address)
GeneralLunarDateServiceClient.createClient = static_GeneralLunarDateServiceClient_createSimpleClient

def GeneralLunarDateServiceClient_waitForConnection(self):
    return libSystemSettingsService.GeneralLunarDateServiceClient_waitForConnection(self)
GeneralLunarDateServiceClient.waitForConnection = GeneralLunarDateServiceClient_waitForConnection

@staticmethod
def static_EnergyFlowServiceClient_createSimpleClient(address):
    return libSystemSettingsService.EnergyFlowServiceClient_createSimpleClient(address)
EnergyFlowServiceClient.createClient = static_EnergyFlowServiceClient_createSimpleClient

def EnergyFlowServiceClient_waitForConnection(self):
    return libSystemSettingsService.EnergyFlowServiceClient_waitForConnection(self)
EnergyFlowServiceClient.waitForConnection = EnergyFlowServiceClient_waitForConnection

@staticmethod
def static_GeneralEnergyFlowServiceClient_createSimpleClient(address):
    return libSystemSettingsService.GeneralEnergyFlowServiceClient_createSimpleClient(address)
GeneralEnergyFlowServiceClient.createClient = static_GeneralEnergyFlowServiceClient_createSimpleClient

def GeneralEnergyFlowServiceClient_waitForConnection(self):
    return libSystemSettingsService.GeneralEnergyFlowServiceClient_waitForConnection(self)
GeneralEnergyFlowServiceClient.waitForConnection = GeneralEnergyFlowServiceClient_waitForConnection

@staticmethod
def static_LunarDateServiceClient_createSimpleClient(address):
    return libSystemSettingsService.LunarDateServiceClient_createSimpleClient(address)
LunarDateServiceClient.createClient = static_LunarDateServiceClient_createSimpleClient

def LunarDateServiceClient_waitForConnection(self):
    return libSystemSettingsService.LunarDateServiceClient_waitForConnection(self)
LunarDateServiceClient.waitForConnection = LunarDateServiceClient_waitForConnection
%}
