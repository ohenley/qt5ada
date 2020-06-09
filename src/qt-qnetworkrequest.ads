--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QNetworkRequest      is

type  QNetworkRequestKnownHeaders is (ContentTypeHeader,ContentLengthHeader,LocationHeader,
        LastModifiedHeader,CookieHeader,SetCookieHeade);
pragma Convention(C,QNetworkRequestKnownHeaders);

type  QNetworkRequestAttribute is (
        HttpStatusCodeAttribute,
        HttpReasonPhraseAttribute,
        RedirectionTargetAttribute,
        ConnectionEncryptedAttribute,
        CacheLoadControlAttribute,
        CacheSaveControlAttribute,
        SourceIsFromCacheAttribute, 
        User, --  = 1000
        UserMax  -- = 3276
    );
pragma Convention(C,QNetworkRequestAttribute);
for   QNetworkRequestAttribute use  (
        HttpStatusCodeAttribute     => 0,
        HttpReasonPhraseAttribute   => 1,
        RedirectionTargetAttribute  => 2,
        ConnectionEncryptedAttribute=> 3,
        CacheLoadControlAttribute   => 4,
        CacheSaveControlAttribute   => 5,
        SourceIsFromCacheAttribute  => 6,
        User                        => 1000,
        UserMax                     => 3276
    );

type  QNetworkRequestCacheLoadControl is (AlwaysNetwork,PreferNetwork,PreferCache,AlwaysCach);
pragma Convention(C,QNetworkRequestCacheLoadControl);

 function  QNetworkRequest_create(url: QUrlH) return QNetworkRequestH;
 pragma Import(C,QNetworkRequest_create , "QNetworkRequest_create");

 procedure QNetworkRequest_destroy(handle: not null  QNetworkRequestH);
 pragma Import(C,QNetworkRequest_destroy , "QNetworkRequest_destroy");

 function  QNetworkRequest_create2(handle: not null  QNetworkRequestH) return QNetworkRequestH;
 pragma Import(C,QNetworkRequest_create2 , "QNetworkRequest_create2");

 function  QNetworkRequest_url(handle: not null  QNetworkRequestH) return QUrlH;
 pragma Import(C, QNetworkRequest_url , "QNetworkRequest_url");

 procedure QNetworkRequest_setUrl(handle: not null  QNetworkRequestH; url: QUrlH);
 pragma Import(C, QNetworkRequest_setUrl , "QNetworkRequest_setUrl");

 function  QNetworkRequest_header(handle: not null  QNetworkRequestH; header: QNetworkRequestKnownHeaders) return QVariantH;
 pragma Import(C, QNetworkRequest_header , "QNetworkRequest_header");

 procedure QNetworkRequest_setHeader(handle: not null  QNetworkRequestH; header: QNetworkRequestKnownHeaders; value: QVariantH);
 pragma Import(C, QNetworkRequest_setHeader , "QNetworkRequest_setHeader");

 function  QNetworkRequest_hasRawHeader(handle: not null  QNetworkRequestH; headerName: QByteArrayH) return boolean;
 pragma Import(C,QNetworkRequest_hasRawHeader , "QNetworkRequest_hasRawHeader");

 function  QNetworkRequest_rawHeader(handle: not null  QNetworkRequestH; headerName: QByteArrayH) return QByteArrayH;
 pragma Import(C,QNetworkRequest_rawHeader , "QNetworkRequest_rawHeader");

 procedure QNetworkRequest_setRawHeader(handle: not null  QNetworkRequestH; headerName: QByteArrayH; value: QByteArrayH);
 pragma Import(C, QNetworkRequest_setRawHeader , "QNetworkRequest_setRawHeader");

 function  QNetworkRequest_attribute(handle: not null  QNetworkRequestH; code: QNetworkRequestAttribute; defaultValue: QVariantH) return QVariantH;
 pragma Import(C, QNetworkRequest_attribute , "QNetworkRequest_attribute");

 procedure QNetworkRequest_setAttribute(handle: not null  QNetworkRequestH;code: QNetworkRequestAttribute; value: QVariantH);
 pragma Import(C,QNetworkRequest_setAttribute , "QNetworkRequest_setAttribute");

 function  QNetworkRequest_maximumRedirectsAllowed(handle:not null QNetworkRequestH) return integer;
 pragma Import(C,QNetworkRequest_maximumRedirectsAllowed, "QNetworkRequest_maximumRedirectsAllowed");
 
 procedure QNetworkRequest_setMaximumRedirectsAllowed(handle:not null QNetworkRequestH; maximumRedirectsAllowed:integer);
 pragma Import(C,QNetworkRequest_setMaximumRedirectsAllowed, "QNetworkRequest_setMaximumRedirectsAllowed");
 
-- QSslConfigurationH  QNetworkRequest_sslConfiguration(handle: not null  QNetworkRequestH) return 
-- procedure QNetworkRequest_setSslConfiguration(handle: not null  QNetworkRequestH; QSslConfigurationH configuration) return 

 function  QNetworkRequest_create(handle: not null  QNetworkRequestH) return QNetworkRequestH;

end Qt.QNetworkRequest;
