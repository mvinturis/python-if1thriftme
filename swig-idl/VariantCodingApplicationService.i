%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libVariantCodingApplicationService
else:
    import libVariantCodingApplicationService") VariantCodingApplicationService

%feature("director") platform::variantCodingApplication::VariantCodingApplicationServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/ActiveComfortParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/AmbientLightParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/AssistanceAtBreakdownOrAccidentParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/AudioHandlingParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/AugmentedRealityParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/CompanionAppParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/DriveProgramsParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/FeedbackManagerDelayParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/GestureRecognitionConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/ImpedanceReferenceTableConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/IntelligentSpellerParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/InteriorAssistantParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/RemoteUIParametersConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/TMCParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/TPEGServicesParameterKoreaConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/TactileTouchscreenParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/TunerParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/UserDataParameterConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/WirelessSubsystemParameterConfiguration.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/VariantCodingApplicationService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/VariantCodingApplicationService/inc/VariantCodingApplicationService.h"
%}

%inline %{
platform::variantCodingApplication::VariantCodingApplicationServiceClient*
VariantCodingApplicationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::variantCodingApplication::VariantCodingApplicationServiceClient > client = platform::variantCodingApplication::VariantCodingApplicationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::variantCodingApplication::VariantCodingApplicationServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::variantCodingApplication::VariantCodingApplicationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void VariantCodingApplicationServiceClient_waitForConnection(platform::variantCodingApplication::VariantCodingApplicationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_VariantCodingApplicationServiceClient_createSimpleClient(address):
    return libVariantCodingApplicationService.VariantCodingApplicationServiceClient_createSimpleClient(address)
VariantCodingApplicationServiceClient.createClient = static_VariantCodingApplicationServiceClient_createSimpleClient

def VariantCodingApplicationServiceClient_waitForConnection(self):
    return libVariantCodingApplicationService.VariantCodingApplicationServiceClient_waitForConnection(self)
VariantCodingApplicationServiceClient.waitForConnection = VariantCodingApplicationServiceClient_waitForConnection
%}
