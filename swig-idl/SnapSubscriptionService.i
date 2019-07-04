%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libSnapSubscriptionService
else:
    import libSnapSubscriptionService") SnapSubscriptionService

%feature("director") platform::snapSubscription::SNAPSubscriptionServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/InvalidRequestHandleException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/SubscriptionData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/InvalidStateException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/InvalidSubscriptionRequestException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/UnknownServiceNameException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/TooManySubscriptionRequestsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/SubscriptionStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/SNAPSubscriptionService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/SnapSubscriptionService/inc/SNAPSubscriptionService.h"
%}

%inline %{
platform::snapSubscription::SNAPSubscriptionServiceClient*
SNAPSubscriptionServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::snapSubscription::SNAPSubscriptionServiceClient > client = platform::snapSubscription::SNAPSubscriptionServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::snapSubscription::SNAPSubscriptionServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::snapSubscription::SNAPSubscriptionServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SNAPSubscriptionServiceClient_waitForConnection(platform::snapSubscription::SNAPSubscriptionServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_SNAPSubscriptionServiceClient_createSimpleClient(address):
    return libSnapSubscriptionService.SNAPSubscriptionServiceClient_createSimpleClient(address)
SNAPSubscriptionServiceClient.createClient = static_SNAPSubscriptionServiceClient_createSimpleClient

def SNAPSubscriptionServiceClient_waitForConnection(self):
    return libSnapSubscriptionService.SNAPSubscriptionServiceClient_waitForConnection(self)
SNAPSubscriptionServiceClient.waitForConnection = SNAPSubscriptionServiceClient_waitForConnection
%}
