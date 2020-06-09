-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QGeoServiceProvider  is

 type QGeoServiceProviderError is (NoError, NotSupportedError, UnknownParameterError, MissingRequiredParameterError, ConnectionError);
 pragma convention(C,QGeoServiceProviderError);

 subtype RoutingFeature is integer;
        NoRoutingFeatures          : constant RoutingFeature := 0;
        OnlineRoutingFeature       : constant RoutingFeature := 1;
        OfflineRoutingFeature      : constant RoutingFeature := 2;
        LocalizedRoutingFeature    : constant RoutingFeature := 4;
        RouteUpdatesFeature        : constant RoutingFeature := 8;
        AlternativeRoutesFeature   : constant RoutingFeature := 16;
        ExcludeAreasRoutingFeature : constant RoutingFeature := 32;
        AnyRoutingFeatures         : constant RoutingFeature := 63;
   

subtype GeocodingFeature is integer;
        NoGeocodingFeatures       : constant GeocodingFeature := 0;
        OnlineGeocodingFeature    : constant GeocodingFeature := 1;
        OfflineGeocodingFeature   : constant GeocodingFeature := 2;
        ReverseGeocodingFeature   : constant GeocodingFeature := 4;
        LocalizedGeocodingFeature : constant GeocodingFeature := 8;
        AnyGeocodingFeatures      : constant GeocodingFeature := 15;
   

subtype MappingFeature is integer;
        NoMappingFeatures       : constant MappingFeature := 0;
        OnlineMappingFeature    : constant MappingFeature := 1;
        OfflineMappingFeature   : constant MappingFeature := 2;
        LocalizedMappingFeature : constant MappingFeature := 4;
        AnyMappingFeatures      : constant MappingFeature := 7;
 

 subtype PlacesFeature is integer;
        NoPlacesFeatures            : constant PlacesFeature := 0;
        OnlinePlacesFeature         : constant PlacesFeature := 1;
        OfflinePlacesFeature        : constant PlacesFeature := 2;
        SavePlaceFeature            : constant PlacesFeature := 4;
        RemovePlaceFeature          : constant PlacesFeature := 8;
        SaveCategoryFeature         : constant PlacesFeature := 16;
        RemoveCategoryFeature       : constant PlacesFeature := 32;
        PlaceRecommendationsFeature : constant PlacesFeature := 64;
        SearchSuggestionsFeature    : constant PlacesFeature := 128;
        LocalizedPlacesFeature      : constant PlacesFeature := 256;
        NotificationsFeature        : constant PlacesFeature := 512;
        PlaceMatchingFeature        : constant PlacesFeature := 1024;
        AnyPlacesFeatures           : constant PlacesFeature := 2047;

 function  QGeoServiceProvider_create(providerName:QStringH) return QGeoServiceProviderH;
 pragma Import(C,QGeoServiceProvider_create, "QGeoServiceProvider_create");
 
 procedure QGeoServiceProvider_delete(handle:not null QGeoServiceProviderH);
 pragma Import(C,QGeoServiceProvider_delete, "QGeoServiceProvider_delete");
 
 function  QGeoServiceProvider_routingFeatures(handle:not null QGeoServiceProviderH) return integer;
 pragma Import(C,QGeoServiceProvider_routingFeatures, "QGeoServiceProvider_routingFeatures");
 
 function  QGeoServiceProvider_geocodingFeatures(handle:not null QGeoServiceProviderH) return integer;
 pragma Import(C,QGeoServiceProvider_geocodingFeatures, "QGeoServiceProvider_geocodingFeatures");
 
 function  QGeoServiceProvider_mappingFeatures(handle:not null QGeoServiceProviderH) return integer;
 pragma Import(C,QGeoServiceProvider_mappingFeatures, "QGeoServiceProvider_mappingFeatures");
 
 function  QGeoServiceProvider_placesFeatures(handle:not null QGeoServiceProviderH) return integer;
 pragma Import(C,QGeoServiceProvider_placesFeatures, "QGeoServiceProvider_placesFeatures");
 
 function  QGeoServiceProvider_geocodingManager(handle:not null QGeoServiceProviderH) return QGeoCodingManagerH;
 pragma Import(C,QGeoServiceProvider_geocodingManager, "QGeoServiceProvider_geocodingManager");
 
 function  QGeoServiceProvider_mappingManager(handle:not null QGeoServiceProviderH) return QGeoMappingManagerH;
 pragma Import(C,QGeoServiceProvider_mappingManager, "QGeoServiceProvider_mappingManager");
 
 function  QGeoServiceProvider_routingManager(handle:not null QGeoServiceProviderH) return QGeoRoutingManagerH;
 pragma Import(C,QGeoServiceProvider_routingManager, "QGeoServiceProvider_routingManager");
 
 function  QGeoServiceProvider_placeManager(handle:not null QGeoServiceProviderH) return QPlaceManagerH;
 pragma Import(C,QGeoServiceProvider_placeManager, "QGeoServiceProvider_placeManager");
 
 function  QGeoServiceProvider_error(handle:not null QGeoServiceProviderH)  return QGeoServiceProviderError;
 pragma Import(C,QGeoServiceProvider_error, "QGeoServiceProvider_error");
 
 function  QGeoServiceProvider_errorString(handle:not null QGeoServiceProviderH) return QStringH;
 pragma Import(C,QGeoServiceProvider_errorString, "QGeoServiceProvider_errorString");
 
 procedure QGeoServiceProvider_setParameters(handle:not null QGeoServiceProviderH;parameters:QVariantMapH);
 pragma Import(C,QGeoServiceProvider_setParameters, "QGeoServiceProvider_setParameters");
 
 procedure QGeoServiceProvider_setLocale(handle:not null QGeoServiceProviderH;locale:QLocaleH);
 pragma Import(C,QGeoServiceProvider_setLocale, "QGeoServiceProvider_setLocale");
 
 procedure QGeoServiceProvider_setAllowExperimental(handle:not null QGeoServiceProviderH;allow:boolean);
 pragma Import(C,QGeoServiceProvider_setAllowExperimental, "QGeoServiceProvider_setAllowExperimental");
 
 function  QGeoServiceProvider_availableServiceProviders return QStringListH;
 pragma Import(C,QGeoServiceProvider_availableServiceProviders, "QGeoServiceProvider_availableServiceProviders");

end;
