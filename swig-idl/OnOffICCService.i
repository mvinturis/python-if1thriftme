%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libOnOffICCService
else:
    import libOnOffICCService") OnOffICCService

%feature("director") vcpu::onOffICC::OnOffAppControlClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/OnOffICCService/inc/ShutdownTimer.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/OnOffICCService/inc/Brightness.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/OnOffICCService/inc/OnOff.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/OnOffICCService/inc/HMIActivateCamByRearGear.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/OnOffICCService/inc/HMILastUserMode.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/OnOffICCService/inc/OnOffAppControl.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/OnOffICCService/inc/OnOffAppControl.h"
%}

%inline %{
vcpu::onOffICC::OnOffAppControlClient*
OnOffAppControlClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< vcpu::onOffICC::OnOffAppControlClient > client = vcpu::onOffICC::OnOffAppControlClient::createClient(broker, address);

    ::thrift::shared_ptr< vcpu::onOffICC::OnOffAppControlClient > shared_ptr_eraser(nullptr, 
        [](vcpu::onOffICC::OnOffAppControlClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void OnOffAppControlClient_waitForConnection(vcpu::onOffICC::OnOffAppControlClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_OnOffAppControlClient_createSimpleClient(address):
    return libOnOffICCService.OnOffAppControlClient_createSimpleClient(address)
OnOffAppControlClient.createClient = static_OnOffAppControlClient_createSimpleClient

def OnOffAppControlClient_waitForConnection(self):
    return libOnOffICCService.OnOffAppControlClient_waitForConnection(self)
OnOffAppControlClient.waitForConnection = OnOffAppControlClient_waitForConnection
%}
