%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libPersonalizationDIService
else:
    import libPersonalizationDIService") PersonalizationDIService

%feature("director") cluster::personalizationDI::UserProfileServiceDIClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/PersonalizationDIService/inc/UserProfile.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/PersonalizationDIService/inc/UserProfileServiceDI.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/PersonalizationDIService/inc/UserProfileServiceDI.h"
%}

%inline %{
cluster::personalizationDI::UserProfileServiceDIClient*
UserProfileServiceDIClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::personalizationDI::UserProfileServiceDIClient > client = cluster::personalizationDI::UserProfileServiceDIClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::personalizationDI::UserProfileServiceDIClient > shared_ptr_eraser(nullptr, 
        [](cluster::personalizationDI::UserProfileServiceDIClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void UserProfileServiceDIClient_waitForConnection(cluster::personalizationDI::UserProfileServiceDIClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_UserProfileServiceDIClient_createSimpleClient(address):
    return libPersonalizationDIService.UserProfileServiceDIClient_createSimpleClient(address)
UserProfileServiceDIClient.createClient = static_UserProfileServiceDIClient_createSimpleClient

def UserProfileServiceDIClient_waitForConnection(self):
    return libPersonalizationDIService.UserProfileServiceDIClient_waitForConnection(self)
UserProfileServiceDIClient.waitForConnection = UserProfileServiceDIClient_waitForConnection
%}
