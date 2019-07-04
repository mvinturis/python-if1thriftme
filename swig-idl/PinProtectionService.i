%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libPinProtectionService
else:
    import libPinProtectionService") PinProtectionService

%feature("director") platform::pinProtection::GeneralPinProtectionServiceClient;

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
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PinProtectionService/inc/PinType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PinProtectionService/inc/PinLockStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PinProtectionService/inc/PinProtectedFunction.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PinProtectionService/inc/PinStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PinProtectionService/inc/PinInputResult.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PinProtectionService/inc/PinInputReason.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PinProtectionService/inc/GeneralPinProtectionService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/PinProtectionService/inc/GeneralPinProtectionService.h"
%}

%inline %{
platform::pinProtection::GeneralPinProtectionServiceClient*
GeneralPinProtectionServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::pinProtection::GeneralPinProtectionServiceClient > client = platform::pinProtection::GeneralPinProtectionServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::pinProtection::GeneralPinProtectionServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::pinProtection::GeneralPinProtectionServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralPinProtectionServiceClient_waitForConnection(platform::pinProtection::GeneralPinProtectionServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_GeneralPinProtectionServiceClient_createSimpleClient(address):
    return libPinProtectionService.GeneralPinProtectionServiceClient_createSimpleClient(address)
GeneralPinProtectionServiceClient.createClient = static_GeneralPinProtectionServiceClient_createSimpleClient

def GeneralPinProtectionServiceClient_waitForConnection(self):
    return libPinProtectionService.GeneralPinProtectionServiceClient_waitForConnection(self)
GeneralPinProtectionServiceClient.waitForConnection = GeneralPinProtectionServiceClient_waitForConnection
%}
