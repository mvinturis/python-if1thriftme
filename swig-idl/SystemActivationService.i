%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libSystemActivationService
else:
    import libSystemActivationService") SystemActivationService

%feature("director") platform::systemActivation::SystemActivationInformationServiceClient;
%feature("director") platform::systemActivation::SystemActivationServiceClient;

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
%include "../swig-patch/SystemActivationService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/DateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemActivationService/inc/Subsystem.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemActivationService/inc/SubscriptionStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/TimeAndDate.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/DayOfWeek.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/Validity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemSettingsService/inc/Time.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemActivationService/inc/SystemActivationInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SystemActivationService/inc/SystemActivationService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemActivationService/inc/SystemActivationInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SystemActivationService/inc/SystemActivationService.h"
%}

%inline %{
platform::systemActivation::SystemActivationInformationServiceClient*
SystemActivationInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::systemActivation::SystemActivationInformationServiceClient > client = platform::systemActivation::SystemActivationInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::systemActivation::SystemActivationInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::systemActivation::SystemActivationInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SystemActivationInformationServiceClient_waitForConnection(platform::systemActivation::SystemActivationInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::systemActivation::SystemActivationServiceClient*
SystemActivationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::systemActivation::SystemActivationServiceClient > client = platform::systemActivation::SystemActivationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::systemActivation::SystemActivationServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::systemActivation::SystemActivationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SystemActivationServiceClient_waitForConnection(platform::systemActivation::SystemActivationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_SystemActivationInformationServiceClient_createSimpleClient(address):
    return libSystemActivationService.SystemActivationInformationServiceClient_createSimpleClient(address)
SystemActivationInformationServiceClient.createClient = static_SystemActivationInformationServiceClient_createSimpleClient

def SystemActivationInformationServiceClient_waitForConnection(self):
    return libSystemActivationService.SystemActivationInformationServiceClient_waitForConnection(self)
SystemActivationInformationServiceClient.waitForConnection = SystemActivationInformationServiceClient_waitForConnection

@staticmethod
def static_SystemActivationServiceClient_createSimpleClient(address):
    return libSystemActivationService.SystemActivationServiceClient_createSimpleClient(address)
SystemActivationServiceClient.createClient = static_SystemActivationServiceClient_createSimpleClient

def SystemActivationServiceClient_waitForConnection(self):
    return libSystemActivationService.SystemActivationServiceClient_waitForConnection(self)
SystemActivationServiceClient.waitForConnection = SystemActivationServiceClient_waitForConnection
%}
