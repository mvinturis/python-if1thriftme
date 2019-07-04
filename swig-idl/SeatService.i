%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libSeatService
else:
    import libSeatService") SeatService

%feature("director") vehicle::seat::PulseModeServiceClient;
%feature("director") vehicle::seat::SeatPadsServiceClient;
%feature("director") vehicle::seat::SeatClimateServiceClient;
%feature("director") vehicle::seat::DynamicSeatServiceClient;
%feature("director") vehicle::seat::MotionSeatingServiceClient;
%feature("director") vehicle::seat::LumbarPadServiceClient;
%feature("director") vehicle::seat::SeatAdjustmentServiceClient;
%feature("director") vehicle::seat::GeneralSeatSettingsServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/PulseModeIntensity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/PulseModeProgram.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatPadArea.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatClimateIntensity.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/StatusValue.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/DynamicSeatStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/MotionSeatingAdjustmentVariants.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/MotionSeatingChangePeriodCategories.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/AdaptMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/AxisDirection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatIdentifier.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/AxisFunction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/InvalidAxisFunctionException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotInitialized.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/AutomaticSeatRunningState.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/HeadrestPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/ElectricalSeatConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/MemorySlot.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/InvalidAxisDirectionException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/AutomaticSeatPositioningCancelRequest.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/HeadrestPositionRequest.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/PulseModeService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatPadsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatClimateService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/DynamicSeatService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/MotionSeatingService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/LumbarPadService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatAdjustmentService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/GeneralSeatSettingsService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/PulseModeService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatPadsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatClimateService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/DynamicSeatService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/MotionSeatingService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/LumbarPadService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/SeatAdjustmentService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SeatService/inc/GeneralSeatSettingsService.h"
%}

%inline %{
vehicle::seat::PulseModeServiceClient*
PulseModeServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::seat::PulseModeServiceClient > client = vehicle::seat::PulseModeServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::seat::PulseModeServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::seat::PulseModeServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void PulseModeServiceClient_waitForConnection(vehicle::seat::PulseModeServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::seat::SeatPadsServiceClient*
SeatPadsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::seat::SeatPadsServiceClient > client = vehicle::seat::SeatPadsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::seat::SeatPadsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::seat::SeatPadsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SeatPadsServiceClient_waitForConnection(vehicle::seat::SeatPadsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::seat::SeatClimateServiceClient*
SeatClimateServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::seat::SeatClimateServiceClient > client = vehicle::seat::SeatClimateServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::seat::SeatClimateServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::seat::SeatClimateServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SeatClimateServiceClient_waitForConnection(vehicle::seat::SeatClimateServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::seat::DynamicSeatServiceClient*
DynamicSeatServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::seat::DynamicSeatServiceClient > client = vehicle::seat::DynamicSeatServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::seat::DynamicSeatServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::seat::DynamicSeatServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void DynamicSeatServiceClient_waitForConnection(vehicle::seat::DynamicSeatServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::seat::MotionSeatingServiceClient*
MotionSeatingServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::seat::MotionSeatingServiceClient > client = vehicle::seat::MotionSeatingServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::seat::MotionSeatingServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::seat::MotionSeatingServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void MotionSeatingServiceClient_waitForConnection(vehicle::seat::MotionSeatingServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::seat::LumbarPadServiceClient*
LumbarPadServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::seat::LumbarPadServiceClient > client = vehicle::seat::LumbarPadServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::seat::LumbarPadServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::seat::LumbarPadServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void LumbarPadServiceClient_waitForConnection(vehicle::seat::LumbarPadServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::seat::SeatAdjustmentServiceClient*
SeatAdjustmentServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::seat::SeatAdjustmentServiceClient > client = vehicle::seat::SeatAdjustmentServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::seat::SeatAdjustmentServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::seat::SeatAdjustmentServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SeatAdjustmentServiceClient_waitForConnection(vehicle::seat::SeatAdjustmentServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

vehicle::seat::GeneralSeatSettingsServiceClient*
GeneralSeatSettingsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::seat::GeneralSeatSettingsServiceClient > client = vehicle::seat::GeneralSeatSettingsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::seat::GeneralSeatSettingsServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::seat::GeneralSeatSettingsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralSeatSettingsServiceClient_waitForConnection(vehicle::seat::GeneralSeatSettingsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_PulseModeServiceClient_createSimpleClient(address):
    return libSeatService.PulseModeServiceClient_createSimpleClient(address)
PulseModeServiceClient.createClient = static_PulseModeServiceClient_createSimpleClient

def PulseModeServiceClient_waitForConnection(self):
    return libSeatService.PulseModeServiceClient_waitForConnection(self)
PulseModeServiceClient.waitForConnection = PulseModeServiceClient_waitForConnection

@staticmethod
def static_SeatPadsServiceClient_createSimpleClient(address):
    return libSeatService.SeatPadsServiceClient_createSimpleClient(address)
SeatPadsServiceClient.createClient = static_SeatPadsServiceClient_createSimpleClient

def SeatPadsServiceClient_waitForConnection(self):
    return libSeatService.SeatPadsServiceClient_waitForConnection(self)
SeatPadsServiceClient.waitForConnection = SeatPadsServiceClient_waitForConnection

@staticmethod
def static_SeatClimateServiceClient_createSimpleClient(address):
    return libSeatService.SeatClimateServiceClient_createSimpleClient(address)
SeatClimateServiceClient.createClient = static_SeatClimateServiceClient_createSimpleClient

def SeatClimateServiceClient_waitForConnection(self):
    return libSeatService.SeatClimateServiceClient_waitForConnection(self)
SeatClimateServiceClient.waitForConnection = SeatClimateServiceClient_waitForConnection

@staticmethod
def static_DynamicSeatServiceClient_createSimpleClient(address):
    return libSeatService.DynamicSeatServiceClient_createSimpleClient(address)
DynamicSeatServiceClient.createClient = static_DynamicSeatServiceClient_createSimpleClient

def DynamicSeatServiceClient_waitForConnection(self):
    return libSeatService.DynamicSeatServiceClient_waitForConnection(self)
DynamicSeatServiceClient.waitForConnection = DynamicSeatServiceClient_waitForConnection

@staticmethod
def static_MotionSeatingServiceClient_createSimpleClient(address):
    return libSeatService.MotionSeatingServiceClient_createSimpleClient(address)
MotionSeatingServiceClient.createClient = static_MotionSeatingServiceClient_createSimpleClient

def MotionSeatingServiceClient_waitForConnection(self):
    return libSeatService.MotionSeatingServiceClient_waitForConnection(self)
MotionSeatingServiceClient.waitForConnection = MotionSeatingServiceClient_waitForConnection

@staticmethod
def static_LumbarPadServiceClient_createSimpleClient(address):
    return libSeatService.LumbarPadServiceClient_createSimpleClient(address)
LumbarPadServiceClient.createClient = static_LumbarPadServiceClient_createSimpleClient

def LumbarPadServiceClient_waitForConnection(self):
    return libSeatService.LumbarPadServiceClient_waitForConnection(self)
LumbarPadServiceClient.waitForConnection = LumbarPadServiceClient_waitForConnection

@staticmethod
def static_SeatAdjustmentServiceClient_createSimpleClient(address):
    return libSeatService.SeatAdjustmentServiceClient_createSimpleClient(address)
SeatAdjustmentServiceClient.createClient = static_SeatAdjustmentServiceClient_createSimpleClient

def SeatAdjustmentServiceClient_waitForConnection(self):
    return libSeatService.SeatAdjustmentServiceClient_waitForConnection(self)
SeatAdjustmentServiceClient.waitForConnection = SeatAdjustmentServiceClient_waitForConnection

@staticmethod
def static_GeneralSeatSettingsServiceClient_createSimpleClient(address):
    return libSeatService.GeneralSeatSettingsServiceClient_createSimpleClient(address)
GeneralSeatSettingsServiceClient.createClient = static_GeneralSeatSettingsServiceClient_createSimpleClient

def GeneralSeatSettingsServiceClient_waitForConnection(self):
    return libSeatService.GeneralSeatSettingsServiceClient_waitForConnection(self)
GeneralSeatSettingsServiceClient.waitForConnection = GeneralSeatSettingsServiceClient_waitForConnection
%}
