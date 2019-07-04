%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libUiPersistenceService
else:
    import libUiPersistenceService") UiPersistenceService

%feature("director") vehicle::uiPersistence::HMIPersistenceServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatIdentifier.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiPersistenceService/inc/InvalidKeyException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiPersistenceService/inc/InvalidTypeException.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/UiPersistenceService/inc/HMIPersistenceService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/UiPersistenceService/inc/HMIPersistenceService.h"
%}

%inline %{
vehicle::uiPersistence::HMIPersistenceServiceClient*
HMIPersistenceServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vehicle::uiPersistence::HMIPersistenceServiceClient > client = vehicle::uiPersistence::HMIPersistenceServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< vehicle::uiPersistence::HMIPersistenceServiceClient > shared_ptr_eraser(nullptr, 
        [](vehicle::uiPersistence::HMIPersistenceServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void HMIPersistenceServiceClient_waitForConnection(vehicle::uiPersistence::HMIPersistenceServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_HMIPersistenceServiceClient_createSimpleClient(address):
    return libUiPersistenceService.HMIPersistenceServiceClient_createSimpleClient(address)
HMIPersistenceServiceClient.createClient = static_HMIPersistenceServiceClient_createSimpleClient

def HMIPersistenceServiceClient_waitForConnection(self):
    return libUiPersistenceService.HMIPersistenceServiceClient_waitForConnection(self)
HMIPersistenceServiceClient.waitForConnection = HMIPersistenceServiceClient_waitForConnection
%}
