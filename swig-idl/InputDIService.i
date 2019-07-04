%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libInputDIService
else:
    import libInputDIService") InputDIService

%feature("director") cluster::inputDI::GazeControlServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/GCCalibrationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/GCROICalibStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/GCPattern.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/GCPatternStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/PatternDispStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/GazeData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/GazeStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/GazeControlService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/InputDIService/inc/GazeControlService.h"
%}

%inline %{
cluster::inputDI::GazeControlServiceClient*
GazeControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< cluster::inputDI::GazeControlServiceClient > client = cluster::inputDI::GazeControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< cluster::inputDI::GazeControlServiceClient > shared_ptr_eraser(nullptr, 
        [](cluster::inputDI::GazeControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GazeControlServiceClient_waitForConnection(cluster::inputDI::GazeControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_GazeControlServiceClient_createSimpleClient(address):
    return libInputDIService.GazeControlServiceClient_createSimpleClient(address)
GazeControlServiceClient.createClient = static_GazeControlServiceClient_createSimpleClient

def GazeControlServiceClient_waitForConnection(self):
    return libInputDIService.GazeControlServiceClient_waitForConnection(self)
GazeControlServiceClient.waitForConnection = GazeControlServiceClient_waitForConnection
%}
