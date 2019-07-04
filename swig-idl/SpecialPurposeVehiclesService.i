%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libSpecialPurposeVehiclesService
else:
    import libSpecialPurposeVehiclesService") SpecialPurposeVehiclesService

%feature("director") vehicle::specialPurposeVehicles::SPVControlServiceClient;
%feature("director") vehicle::specialPurposeVehicles::SettingsSPVServiceClient;
%feature("director") vehicle::specialPurposeVehicles::GeneralSPVServiceClient;

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
%include "../../../../SourceSpace/IF1ThriftMeFull/SpecialPurposeVehiclesService/inc/SPVStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SpecialPurposeVehiclesService/inc/FunctionKey.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SpecialPurposeVehiclesConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/NotAvailableAvailable.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/SPVIconType.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SpecialPurposeVehiclesService/inc/SPVControlService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SpecialPurposeVehiclesService/inc/SettingsSPVService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SpecialPurposeVehiclesService/inc/GeneralSPVService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/SpecialPurposeVehiclesService/inc/SPVControlService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SpecialPurposeVehiclesService/inc/SettingsSPVService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SpecialPurposeVehiclesService/inc/GeneralSPVService.h"
%}

%inline %{
vehicle::specialPurposeVehicles::SPVControlServiceClient*
SPVControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::specialPurposeVehicles::SPVControlServiceClient > client = vehicle::specialPurposeVehicles::SPVControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::specialPurposeVehicles::SPVControlServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::specialPurposeVehicles::SPVControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SPVControlServiceClient_waitForConnection(vehicle::specialPurposeVehicles::SPVControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::specialPurposeVehicles::SettingsSPVServiceClient*
SettingsSPVServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::specialPurposeVehicles::SettingsSPVServiceClient > client = vehicle::specialPurposeVehicles::SettingsSPVServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::specialPurposeVehicles::SettingsSPVServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::specialPurposeVehicles::SettingsSPVServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SettingsSPVServiceClient_waitForConnection(vehicle::specialPurposeVehicles::SettingsSPVServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::specialPurposeVehicles::GeneralSPVServiceClient*
GeneralSPVServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::specialPurposeVehicles::GeneralSPVServiceClient > client = vehicle::specialPurposeVehicles::GeneralSPVServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::specialPurposeVehicles::GeneralSPVServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::specialPurposeVehicles::GeneralSPVServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralSPVServiceClient_waitForConnection(vehicle::specialPurposeVehicles::GeneralSPVServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_SPVControlServiceClient_createSimpleClient(address):
    return libSpecialPurposeVehiclesService.SPVControlServiceClient_createSimpleClient(address)
SPVControlServiceClient.createClient = static_SPVControlServiceClient_createSimpleClient

def SPVControlServiceClient_waitForConnection(self):
    return libSpecialPurposeVehiclesService.SPVControlServiceClient_waitForConnection(self)
SPVControlServiceClient.waitForConnection = SPVControlServiceClient_waitForConnection

@staticmethod
def static_SettingsSPVServiceClient_createSimpleClient(address):
    return libSpecialPurposeVehiclesService.SettingsSPVServiceClient_createSimpleClient(address)
SettingsSPVServiceClient.createClient = static_SettingsSPVServiceClient_createSimpleClient

def SettingsSPVServiceClient_waitForConnection(self):
    return libSpecialPurposeVehiclesService.SettingsSPVServiceClient_waitForConnection(self)
SettingsSPVServiceClient.waitForConnection = SettingsSPVServiceClient_waitForConnection

@staticmethod
def static_GeneralSPVServiceClient_createSimpleClient(address):
    return libSpecialPurposeVehiclesService.GeneralSPVServiceClient_createSimpleClient(address)
GeneralSPVServiceClient.createClient = static_GeneralSPVServiceClient_createSimpleClient

def GeneralSPVServiceClient_waitForConnection(self):
    return libSpecialPurposeVehiclesService.GeneralSPVServiceClient_waitForConnection(self)
GeneralSPVServiceClient.waitForConnection = GeneralSPVServiceClient_waitForConnection
%}
