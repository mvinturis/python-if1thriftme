%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libMobileDeviceService
else:
    import libMobileDeviceService") MobileDeviceService

%feature("director") communication::mobileDevice::MobileDeviceListServiceClient;
%feature("director") communication::mobileDevice::MobileDevicePresenceServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDeviceType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDeviceUsageType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/BluetoothService/inc/TelephonyConnectionType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDevicePresence.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDeviceLocation.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDeviceListService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDevicePresenceService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDeviceListService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/MobileDeviceService/inc/MobileDevicePresenceService.h"
%}

%inline %{
communication::mobileDevice::MobileDeviceListServiceClient*
MobileDeviceListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::mobileDevice::MobileDeviceListServiceClient > client = communication::mobileDevice::MobileDeviceListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::mobileDevice::MobileDeviceListServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::mobileDevice::MobileDeviceListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MobileDeviceListServiceClient_waitForConnection(communication::mobileDevice::MobileDeviceListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::mobileDevice::MobileDevicePresenceServiceClient*
MobileDevicePresenceServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::mobileDevice::MobileDevicePresenceServiceClient > client = communication::mobileDevice::MobileDevicePresenceServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::mobileDevice::MobileDevicePresenceServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::mobileDevice::MobileDevicePresenceServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MobileDevicePresenceServiceClient_waitForConnection(communication::mobileDevice::MobileDevicePresenceServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_MobileDeviceListServiceClient_createSimpleClient(address):
    return libMobileDeviceService.MobileDeviceListServiceClient_createSimpleClient(address)
MobileDeviceListServiceClient.createClient = static_MobileDeviceListServiceClient_createSimpleClient

def MobileDeviceListServiceClient_waitForConnection(self):
    return libMobileDeviceService.MobileDeviceListServiceClient_waitForConnection(self)
MobileDeviceListServiceClient.waitForConnection = MobileDeviceListServiceClient_waitForConnection

@staticmethod
def static_MobileDevicePresenceServiceClient_createSimpleClient(address):
    return libMobileDeviceService.MobileDevicePresenceServiceClient_createSimpleClient(address)
MobileDevicePresenceServiceClient.createClient = static_MobileDevicePresenceServiceClient_createSimpleClient

def MobileDevicePresenceServiceClient_waitForConnection(self):
    return libMobileDeviceService.MobileDevicePresenceServiceClient_waitForConnection(self)
MobileDevicePresenceServiceClient.waitForConnection = MobileDevicePresenceServiceClient_waitForConnection
%}
