%module(directors="1", moduleimport="# Import the low-level C/C++ module
if __package__ or '.' in __name__:
    from . import libLocationInformationService
else:
    import libLocationInformationService") LocationInformationService

%feature("director") navigation::LocationInformation::LocationInformationClient;

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

%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/DateType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonService/inc/Time.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/ContentType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/GeoCoordinate.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/DateTime.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/SectionAlignment.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/SectionInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/PopupInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/PredefinedStorageID.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/SupplementaryInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/ContentEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/Language.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/GeoEllipse.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/FuelTypeBitfield.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/IconType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/IconDetails.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/BuildingAttributeType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/BuildingAttribute.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/BuildingInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/CommonTypesService/inc/ExtraAttributesBitfield.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/ActivityLevelBitfield.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/DestinationType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/RouteSide.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/RoadSide.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/HighlightInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/PhonemeType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/PhonemeData.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/FTSToken.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/AddressGroupIndex.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/RefuelOrChargeDetails.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/StreetInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/AddressSearchService/inc/AddressContentEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MapDisplayContentService/inc/SegmentDefinition.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MapDisplayContentService/inc/ICEntryExit.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/MapDisplayContentService/inc/MapContentEntry.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/FixType.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/PositionInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/DawnDuskTimeRange.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/PositioningMode.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/CityDemography.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/TerrainElevation.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/SpecialMapContentBitfield.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/TimeZoneInfo.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/SubscribeTopics.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/SurroundingInfo.h"

%include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/platform/CompilerFeatures.h"
%include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/LocationInformation.h"

%{
#include "../../../../SourceSpace/IF1ThriftMeFull/LocationInformationService/inc/LocationInformation.h"
%}

%inline %{
navigation::LocationInformation::LocationInformationClient*
LocationInformationClient_createSimpleClient(std::string address) 
{
    ::thrift::TServiceBrokerConfigurationBuilder builder;
    ::thrift::shared_ptr< ::thrift::TServiceBroker > broker(new ::thrift::TServiceBroker(builder.build()));

    ::thrift::shared_ptr< navigation::LocationInformation::LocationInformationClient > client = navigation::LocationInformation::LocationInformationClient::createClient(broker, address);

    ::thrift::shared_ptr< navigation::LocationInformation::LocationInformationClient > shared_ptr_eraser(nullptr, 
        [](navigation::LocationInformation::LocationInformationClient *pi) { 
            // custom smart pointer deleter
            // do not delete object
            // since we will move the pointer to Python environment
        });

    shared_ptr_eraser = std::move(client);

    return shared_ptr_eraser.get();
}

void LocationInformationClient_waitForConnection(navigation::LocationInformation::LocationInformationClient *self)
{
    self->getTransport()->waitForConnection();
}
%}

%pythoncode %{
@staticmethod
def static_LocationInformationClient_createSimpleClient(address):
    return libLocationInformationService.LocationInformationClient_createSimpleClient(address)
LocationInformationClient.createClient = static_LocationInformationClient_createSimpleClient

def LocationInformationClient_waitForConnection(self):
    return libLocationInformationService.LocationInformationClient_waitForConnection(self)
LocationInformationClient.waitForConnection = LocationInformationClient_waitForConnection
%}
