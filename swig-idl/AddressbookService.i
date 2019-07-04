%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libAddressbookService
else:
    import libAddressbookService") AddressbookService

%feature("director") communication::addressbook::FavouritesServiceClient;
%feature("director") communication::addressbook::ContactsManagerServiceClient;
%feature("director") communication::addressbook::ImportContactsServiceClient;
%feature("director") communication::addressbook::ContactsListServiceClient;
%feature("director") communication::addressbook::ContactsInformationServiceClient;
%feature("director") communication::addressbook::ManualFavouritesServiceClient;
%feature("director") communication::addressbook::ContactsSearchServiceClient;
%feature("director") communication::addressbook::GeneralContactsServiceClient;
%feature("director") communication::addressbook::SearchListServiceClient;

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
%include "../swig-patch/AddressbookService-patch.i"

%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactEntryType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/PersonalName.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/CompanyName.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/PostalAddress.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/EnvironmentType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/PhoneNumber.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/PriorityType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/DeviceType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/PhoneLabel.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/GeographicPosition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/EmailAndInternetAddress.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/UniformCallerIdentifier.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OperationNotSupported.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/InvalidValueException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/DownloadStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/InvalidContactIDException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ViewType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/AddressbookSection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/MemoryInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/MemoryStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/NamePresentationMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactChangeReason.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/Status.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/StorageDevice.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ImportMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/ExceptionsService/inc/OutOfBoundsException.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/DetailedMemoryInformation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/DetailedAddressbookSection.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/SearchType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/AddressbookApplicationStatus.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/AddressBookConfiguration.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/InitialNamePresentationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/InitialPhonebookDownloadMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/VCharSets.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/DiagnosticsService/inc/OffOn.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/FavouritesService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactsManagerService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ImportContactsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactsListService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactsInformationService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ManualFavouritesService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactsSearchService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/GeneralContactsService.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/SearchListService.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/FavouritesService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactsManagerService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ImportContactsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactsListService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactsInformationService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ManualFavouritesService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/ContactsSearchService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/GeneralContactsService.h"
#include "../../../../SourceSpace/IF1ThriftMeFull/AddressbookService/inc/SearchListService.h"
%}

%inline %{
communication::addressbook::FavouritesServiceClient*
FavouritesServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::FavouritesServiceClient > client = communication::addressbook::FavouritesServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::FavouritesServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::FavouritesServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void FavouritesServiceClient_waitForConnection(communication::addressbook::FavouritesServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::addressbook::ContactsManagerServiceClient*
ContactsManagerServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::ContactsManagerServiceClient > client = communication::addressbook::ContactsManagerServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::ContactsManagerServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::ContactsManagerServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ContactsManagerServiceClient_waitForConnection(communication::addressbook::ContactsManagerServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::addressbook::ImportContactsServiceClient*
ImportContactsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::ImportContactsServiceClient > client = communication::addressbook::ImportContactsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::ImportContactsServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::ImportContactsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ImportContactsServiceClient_waitForConnection(communication::addressbook::ImportContactsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::addressbook::ContactsListServiceClient*
ContactsListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::ContactsListServiceClient > client = communication::addressbook::ContactsListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::ContactsListServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::ContactsListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ContactsListServiceClient_waitForConnection(communication::addressbook::ContactsListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::addressbook::ContactsInformationServiceClient*
ContactsInformationServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::ContactsInformationServiceClient > client = communication::addressbook::ContactsInformationServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::ContactsInformationServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::ContactsInformationServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ContactsInformationServiceClient_waitForConnection(communication::addressbook::ContactsInformationServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::addressbook::ManualFavouritesServiceClient*
ManualFavouritesServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::ManualFavouritesServiceClient > client = communication::addressbook::ManualFavouritesServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::ManualFavouritesServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::ManualFavouritesServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ManualFavouritesServiceClient_waitForConnection(communication::addressbook::ManualFavouritesServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::addressbook::ContactsSearchServiceClient*
ContactsSearchServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::ContactsSearchServiceClient > client = communication::addressbook::ContactsSearchServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::ContactsSearchServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::ContactsSearchServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void ContactsSearchServiceClient_waitForConnection(communication::addressbook::ContactsSearchServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::addressbook::GeneralContactsServiceClient*
GeneralContactsServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::GeneralContactsServiceClient > client = communication::addressbook::GeneralContactsServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::GeneralContactsServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::GeneralContactsServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void GeneralContactsServiceClient_waitForConnection(communication::addressbook::GeneralContactsServiceClient *self)
{
    self->getTransport()->waitForConnection();
}

communication::addressbook::SearchListServiceClient*
SearchListServiceClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< communication::addressbook::SearchListServiceClient > client = communication::addressbook::SearchListServiceClient::createClient(broker, address);

    ::thrift::shared_ptr< communication::addressbook::SearchListServiceClient > shared_ptr_eraser(nullptr, 
        [](communication::addressbook::SearchListServiceClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void SearchListServiceClient_waitForConnection(communication::addressbook::SearchListServiceClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_FavouritesServiceClient_createSimpleClient(address):
    return libAddressbookService.FavouritesServiceClient_createSimpleClient(address)
FavouritesServiceClient.createClient = static_FavouritesServiceClient_createSimpleClient

def FavouritesServiceClient_waitForConnection(self):
    return libAddressbookService.FavouritesServiceClient_waitForConnection(self)
FavouritesServiceClient.waitForConnection = FavouritesServiceClient_waitForConnection

@staticmethod
def static_ContactsManagerServiceClient_createSimpleClient(address):
    return libAddressbookService.ContactsManagerServiceClient_createSimpleClient(address)
ContactsManagerServiceClient.createClient = static_ContactsManagerServiceClient_createSimpleClient

def ContactsManagerServiceClient_waitForConnection(self):
    return libAddressbookService.ContactsManagerServiceClient_waitForConnection(self)
ContactsManagerServiceClient.waitForConnection = ContactsManagerServiceClient_waitForConnection

@staticmethod
def static_ImportContactsServiceClient_createSimpleClient(address):
    return libAddressbookService.ImportContactsServiceClient_createSimpleClient(address)
ImportContactsServiceClient.createClient = static_ImportContactsServiceClient_createSimpleClient

def ImportContactsServiceClient_waitForConnection(self):
    return libAddressbookService.ImportContactsServiceClient_waitForConnection(self)
ImportContactsServiceClient.waitForConnection = ImportContactsServiceClient_waitForConnection

@staticmethod
def static_ContactsListServiceClient_createSimpleClient(address):
    return libAddressbookService.ContactsListServiceClient_createSimpleClient(address)
ContactsListServiceClient.createClient = static_ContactsListServiceClient_createSimpleClient

def ContactsListServiceClient_waitForConnection(self):
    return libAddressbookService.ContactsListServiceClient_waitForConnection(self)
ContactsListServiceClient.waitForConnection = ContactsListServiceClient_waitForConnection

@staticmethod
def static_ContactsInformationServiceClient_createSimpleClient(address):
    return libAddressbookService.ContactsInformationServiceClient_createSimpleClient(address)
ContactsInformationServiceClient.createClient = static_ContactsInformationServiceClient_createSimpleClient

def ContactsInformationServiceClient_waitForConnection(self):
    return libAddressbookService.ContactsInformationServiceClient_waitForConnection(self)
ContactsInformationServiceClient.waitForConnection = ContactsInformationServiceClient_waitForConnection

@staticmethod
def static_ManualFavouritesServiceClient_createSimpleClient(address):
    return libAddressbookService.ManualFavouritesServiceClient_createSimpleClient(address)
ManualFavouritesServiceClient.createClient = static_ManualFavouritesServiceClient_createSimpleClient

def ManualFavouritesServiceClient_waitForConnection(self):
    return libAddressbookService.ManualFavouritesServiceClient_waitForConnection(self)
ManualFavouritesServiceClient.waitForConnection = ManualFavouritesServiceClient_waitForConnection

@staticmethod
def static_ContactsSearchServiceClient_createSimpleClient(address):
    return libAddressbookService.ContactsSearchServiceClient_createSimpleClient(address)
ContactsSearchServiceClient.createClient = static_ContactsSearchServiceClient_createSimpleClient

def ContactsSearchServiceClient_waitForConnection(self):
    return libAddressbookService.ContactsSearchServiceClient_waitForConnection(self)
ContactsSearchServiceClient.waitForConnection = ContactsSearchServiceClient_waitForConnection

@staticmethod
def static_GeneralContactsServiceClient_createSimpleClient(address):
    return libAddressbookService.GeneralContactsServiceClient_createSimpleClient(address)
GeneralContactsServiceClient.createClient = static_GeneralContactsServiceClient_createSimpleClient

def GeneralContactsServiceClient_waitForConnection(self):
    return libAddressbookService.GeneralContactsServiceClient_waitForConnection(self)
GeneralContactsServiceClient.waitForConnection = GeneralContactsServiceClient_waitForConnection

@staticmethod
def static_SearchListServiceClient_createSimpleClient(address):
    return libAddressbookService.SearchListServiceClient_createSimpleClient(address)
SearchListServiceClient.createClient = static_SearchListServiceClient_createSimpleClient

def SearchListServiceClient_waitForConnection(self):
    return libAddressbookService.SearchListServiceClient_waitForConnection(self)
SearchListServiceClient.waitForConnection = SearchListServiceClient_waitForConnection
%}
