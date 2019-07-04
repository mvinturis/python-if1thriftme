%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libSnapServiceCallService
else:
    import libSnapServiceCallService") SnapServiceCallService

%feature("director") platform::snapServiceCall::SNAPServiceCallServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/InvalidRequestHandleException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/NoServiceCallResponseException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/ResponseMetadata.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/FileNotFoundException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatIdentifier.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/InvalidServiceCallRequestException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/UnknownServiceNameException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/UnsupportedServiceVersionException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/UnknownMethodNameException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/TooManyServiceCallsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/InvalidSubscriptionException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/InvalidRequestTypeException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/UpstreamBufferFullException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/ServiceCallStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/SNAPServiceCallService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/SnapServiceCallService/inc/SNAPServiceCallService.h"
%}

%inline %{
platform::snapServiceCall::SNAPServiceCallServiceClient*
SNAPServiceCallServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::snapServiceCall::SNAPServiceCallServiceClient > client = platform::snapServiceCall::SNAPServiceCallServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::snapServiceCall::SNAPServiceCallServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::snapServiceCall::SNAPServiceCallServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SNAPServiceCallServiceClient_waitForConnection(platform::snapServiceCall::SNAPServiceCallServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_SNAPServiceCallServiceClient_createSimpleClient(address):
    return libSnapServiceCallService.SNAPServiceCallServiceClient_createSimpleClient(address)
SNAPServiceCallServiceClient.createClient = static_SNAPServiceCallServiceClient_createSimpleClient

def SNAPServiceCallServiceClient_waitForConnection(self):
    return libSnapServiceCallService.SNAPServiceCallServiceClient_waitForConnection(self)
SNAPServiceCallServiceClient.waitForConnection = SNAPServiceCallServiceClient_waitForConnection
%}
