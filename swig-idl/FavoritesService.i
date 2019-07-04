%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libFavoritesService
else:
    import libFavoritesService") FavoritesService

%feature("director") driverAssistance::favorites::FavoritesControlServiceClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/Favorite.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/FavoriteParameterInformationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/FavoriteApplicationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/InvalidFavoriteIDException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/NoAssignmentPossibleException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/NoDeletionPossibleException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/FavoriteCommand.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/NoInsertionPossibleException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/NoRenamingPossibleException.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/FavoritesControlService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/FavoritesService/inc/FavoritesControlService.h"
%}

%inline %{
driverAssistance::favorites::FavoritesControlServiceClient*
FavoritesControlServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< driverAssistance::favorites::FavoritesControlServiceClient > client = driverAssistance::favorites::FavoritesControlServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< driverAssistance::favorites::FavoritesControlServiceClient > shared_ptr_eraser(nullptr, 
        [](driverAssistance::favorites::FavoritesControlServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void FavoritesControlServiceClient_waitForConnection(driverAssistance::favorites::FavoritesControlServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_FavoritesControlServiceClient_createSimpleClient(address):
    return libFavoritesService.FavoritesControlServiceClient_createSimpleClient(address)
FavoritesControlServiceClient.createClient = static_FavoritesControlServiceClient_createSimpleClient

def FavoritesControlServiceClient_waitForConnection(self):
    return libFavoritesService.FavoritesControlServiceClient_waitForConnection(self)
FavoritesControlServiceClient.waitForConnection = FavoritesControlServiceClient_waitForConnection
%}
