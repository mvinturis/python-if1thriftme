%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libSnapFileUploadDownloadService
else:
    import libSnapFileUploadDownloadService") SnapFileUploadDownloadService

%feature("director") platform::snapFileUploadDownload::SNAPFileUploadServiceClient;
%feature("director") platform::snapFileUploadDownload::SNAPFileDownloadServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/InvalidRequestHandleException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/SeatIdentifier.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/FileNotFoundException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/InvalidFileUploadRequestException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/UnknownServiceNameException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/UnsupportedServiceVersionException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/FileUploadStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/FileDownloadIncompleteException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/NoRedirectURIAvailableException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/InvalidFileDownloadRequestException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/FileDownloadStatus.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/SNAPFileUploadService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/SNAPFileDownloadService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/SNAPFileUploadService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/SnapFileUploadDownloadService/inc/SNAPFileDownloadService.h"
%}

%inline %{
platform::snapFileUploadDownload::SNAPFileUploadServiceClient*
SNAPFileUploadServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::snapFileUploadDownload::SNAPFileUploadServiceClient > client = platform::snapFileUploadDownload::SNAPFileUploadServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::snapFileUploadDownload::SNAPFileUploadServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::snapFileUploadDownload::SNAPFileUploadServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SNAPFileUploadServiceClient_waitForConnection(platform::snapFileUploadDownload::SNAPFileUploadServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

platform::snapFileUploadDownload::SNAPFileDownloadServiceClient*
SNAPFileDownloadServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< platform::snapFileUploadDownload::SNAPFileDownloadServiceClient > client = platform::snapFileUploadDownload::SNAPFileDownloadServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< platform::snapFileUploadDownload::SNAPFileDownloadServiceClient > shared_ptr_eraser(nullptr, 
        [](platform::snapFileUploadDownload::SNAPFileDownloadServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SNAPFileDownloadServiceClient_waitForConnection(platform::snapFileUploadDownload::SNAPFileDownloadServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_SNAPFileUploadServiceClient_createSimpleClient(address):
    return libSnapFileUploadDownloadService.SNAPFileUploadServiceClient_createSimpleClient(address)
SNAPFileUploadServiceClient.createClient = static_SNAPFileUploadServiceClient_createSimpleClient

def SNAPFileUploadServiceClient_waitForConnection(self):
    return libSnapFileUploadDownloadService.SNAPFileUploadServiceClient_waitForConnection(self)
SNAPFileUploadServiceClient.waitForConnection = SNAPFileUploadServiceClient_waitForConnection

@staticmethod
def static_SNAPFileDownloadServiceClient_createSimpleClient(address):
    return libSnapFileUploadDownloadService.SNAPFileDownloadServiceClient_createSimpleClient(address)
SNAPFileDownloadServiceClient.createClient = static_SNAPFileDownloadServiceClient_createSimpleClient

def SNAPFileDownloadServiceClient_waitForConnection(self):
    return libSnapFileUploadDownloadService.SNAPFileDownloadServiceClient_waitForConnection(self)
SNAPFileDownloadServiceClient.waitForConnection = SNAPFileDownloadServiceClient_waitForConnection
%}
