--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2014                 บ
-- บ Copyright (C) 2012,2013,2014                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QNetworkAccessManager   is


 type QNetworkAccessManagerOperation is (UnknownOperation,HeadOperation,GetOperation,PutOperation,PostOperation,DeleteOperation,CustomOperation);
 pragma Convention(C,QNetworkAccessManagerOperation);
 
 type NetworkAccessibility is (UnknownAccessibility,NotAccessible,Accessible);
 pragma Convention(C,NetworkAccessibility);
        
  for  NetworkAccessibility use (
        UnknownAccessibility => -1,
        NotAccessible => 0,
        Accessible => 1);       

 function  QNetworkAccessManager_create(parent:QObjectH) return QNetworkAccessManagerH;
 pragma Import(C,QNetworkAccessManager_create , "QNetworkAccessManager_create");

 procedure QNetworkAccessManager_destroy(handle: not null  QNetworkAccessManagerH);
 pragma Import(C,QNetworkAccessManager_destroy , "QNetworkAccessManager_destroy");

 function  QNetworkAccessManager_proxy(handle: not null  QNetworkAccessManagerH) return QNetworkProxyH;
 pragma Import(C,QNetworkAccessManager_proxy , "QNetworkAccessManager_proxy");

 procedure QNetworkAccessManager_setProxy(handle: not null  QNetworkAccessManagerH; proxy: QNetworkProxyH);
 pragma Import(C,QNetworkAccessManager_setProxy , "QNetworkAccessManager_setProxy");

 function  QNetworkAccessManager_proxyFactory(handle: not null  QNetworkAccessManagerH) return QNetworkProxyFactoryH;
 pragma Import(C,QNetworkAccessManager_proxyFactory , "QNetworkAccessManager_proxyFactory");

 procedure QNetworkAccessManager_setProxyFactory(handle: not null  QNetworkAccessManagerH; factory: QNetworkProxyFactoryH);
 pragma Import(C,QNetworkAccessManager_setProxyFactory , "QNetworkAccessManager_setProxyFactory");

 function  QNetworkAccessManager_cache(handle: not null  QNetworkAccessManagerH) return QAbstractNetworkCacheH;
 pragma Import(C,QNetworkAccessManager_cache , "QNetworkAccessManager_cache");

 procedure QNetworkAccessManager_setCache(handle: not null  QNetworkAccessManagerH; cache: QAbstractNetworkCacheH);
 pragma Import(C,QNetworkAccessManager_setCache , "QNetworkAccessManager_setCache");

 function  QNetworkAccessManager_cookieJar(handle: not null  QNetworkAccessManagerH) return QNetworkCookieJarH;
 pragma Import(C,QNetworkAccessManager_cookieJar , "QNetworkAccessManager_cookieJar");

 procedure QNetworkAccessManager_setCookieJar(handle: not null  QNetworkAccessManagerH; cookieJar: QNetworkCookieJarH);
 pragma Import(C,QNetworkAccessManager_setCookieJar , "QNetworkAccessManager_setCookieJar");

 function  QNetworkAccessManager_head(handle: not null  QNetworkAccessManagerH; request: QNetworkrequestH) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_head , "QNetworkAccessManager_head");

 function  QNetworkAccessManager_get(handle: not null  QNetworkAccessManagerH; request: QNetworkRequestH) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_get , "QNetworkAccessManager_get");

 function  QNetworkAccessManager_post(handle: not null  QNetworkAccessManagerH; request: QNetworkrequestH; data: QIODeviceH) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_post , "QNetworkAccessManager_post");

 function  QNetworkAccessManager_post2(handle: not null  QNetworkAccessManagerH; request: QNetworkrequestH; data: QByteArrayH) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_post2 , "QNetworkAccessManager_post2");

 function  QNetworkAccessManager_put(handle: not null  QNetworkAccessManagerH; request: QNetworkrequestH; data: QIODeviceH) return QNetworkReplyH;
 pragma Import(C, QNetworkAccessManager_put , "QNetworkAccessManager_put");

 function  QNetworkAccessManager_put2(handle: not null  QNetworkAccessManagerH; request: QNetworkrequestH; data: QByteArrayH) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_put2 , "QNetworkAccessManager_put2");

 type  QNetworkAccessManager_proxyAuthenticationRequiredEvent is access procedure(netWork:QNetworkProxyH;authenticator: QAuthenticatorH);
 pragma Convention(C, QNetworkAccessManager_proxyAuthenticationRequiredEvent);

 type  QNetworkAccessManager_authenticationRequiredEvent is access procedure(reply:QNetworkReplyH;authenticator: QAuthenticatorH);
 pragma Convention(C,QNetworkAccessManager_authenticationRequiredEvent);

 type  QNetworkAccessManager_finishedEvent is access procedure(reply:QNetworkReplyH);
 pragma Convention(C,QNetworkAccessManager_finishedEvent);
 
 procedure QNetworkAccessManager_signal_slot_proxyAuthenticationRequired(handle: not null QNetworkAccessManagerH; hook:QNetworkAccessManager_proxyAuthenticationRequiredEvent);
 pragma Import(C,QNetworkAccessManager_signal_slot_proxyAuthenticationRequired, "QNetworkAccessManager_signal_slot_proxyAuthenticationRequired");
 
 procedure QNetworkAccessManager_signal_slot_authenticationRequired(handle: not null QNetworkAccessManagerH; hook:QNetworkAccessManager_authenticationRequiredEvent);
 pragma Import(C,QNetworkAccessManager_signal_slot_authenticationRequired, "QNetworkAccessManager_signal_slot_authenticationRequired");
 
 procedure QNetworkAccessManager_signal_slot_finished(handle: not null QNetworkAccessManagerH; hook:QNetworkAccessManager_finishedEvent);
 pragma Import(C,QNetworkAccessManager_signal_slot_finished, "QNetworkAccessManager_signal_slot_finished");
 
 procedure QNetworkAccessManager_signal_slot_encrypted(handle: not null QNetworkAccessManagerH; hook:QNetworkAccessManager_finishedEvent);
 pragma Import(C,QNetworkAccessManager_signal_slot_encrypted, "QNetworkAccessManager_signal_slot_encrypted");
 
 type voidEvent is access procedure;
 pragma Convention(C,voidEvent);
 
 type intEvent is access procedure(accessible:NetworkAccessibility);
 pragma Convention(C,intEvent);

 procedure QNetworkAccessManager_signal_slot_networkSessionConnected(handle:not null QNetworkAccessManagerH; hook:voidEvent);
 pragma Import(C,QNetworkAccessManager_signal_slot_networkSessionConnected, "QNetworkAccessManager_signal_slot_networkSessionConnected");
 
 procedure QNetworkAccessManager_signal_slot_networkAccessibleChanged(handle:not null QNetworkAccessManagerH; hook:intEvent);
 pragma Import(C,QNetworkAccessManager_signal_slot_networkAccessibleChanged, "QNetworkAccessManager_signal_slot_networkAccessibleChanged");
 
 type replysslErrorsEvent is access procedure(reply:QNetworkReplyH;sslErrors:  QObjectListH);
 pragma Convention(C,replysslErrorsEvent);
 
 procedure QNetworkAccessManager_signal_slot_sslErrors(handle: not null QNetworkAccessManagerH; hook:replysslErrorsEvent);
 pragma Import(C,QNetworkAccessManager_signal_slot_sslErrors, "QNetworkAccessManager_signal_slot_sslErrors");

-------------------------------------------------------------------------------------------------------------------
 function  QNetworkAccessManager_supportedSchemes(handle:not null QNetworkAccessManagerH) return QStringListH;
 pragma Import(C,QNetworkAccessManager_supportedSchemes, "QNetworkAccessManager_supportedSchemes");
 
 procedure QNetworkAccessManager_clearAccessCache(handle:not null QNetworkAccessManagerH);
 pragma Import(C,QNetworkAccessManager_clearAccessCache, "QNetworkAccessManager_clearAccessCache");
 
 function  QNetworkAccessManager_post3(handle:not null QNetworkAccessManagerH;request:QNetworkRequestH;multiPart:QHttpMultiPartH) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_post3, "QNetworkAccessManager_post3");
 
 function  QNetworkAccessManager_put3(handle:not null QNetworkAccessManagerH;request:QNetworkRequestH; multiPart:QHttpMultiPartH) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_put3, "QNetworkAccessManager_put3");
 
 function  QNetworkAccessManager_deleteResource(handle:not null QNetworkAccessManagerH;request:QNetworkRequestH) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_deleteResource, "QNetworkAccessManager_deleteResource");
 
 function  QNetworkAccessManager_sendCustomRequest(handle:not null QNetworkAccessManagerH;request:QNetworkRequestH; verb:QByteArrayH; data:QIODeviceH := null) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_sendCustomRequest, "QNetworkAccessManager_sendCustomRequest");
 
 procedure QNetworkAccessManager_setConfiguration(handle:not null QNetworkAccessManagerH;config:QNetworkConfigurationH);
 pragma Import(C,QNetworkAccessManager_setConfiguration, "QNetworkAccessManager_setConfiguration");
 
 function  QNetworkAccessManager_configuration(handle:not null QNetworkAccessManagerH) return QNetworkConfigurationH;
 pragma Import(C,QNetworkAccessManager_configuration, "QNetworkAccessManager_configuration");
 
 function  QNetworkAccessManager_activeConfiguration(handle:not null QNetworkAccessManagerH) return QNetworkConfigurationH;
 pragma Import(C,QNetworkAccessManager_activeConfiguration, "QNetworkAccessManager_activeConfiguration");
 
 procedure QNetworkAccessManager_setNetworkAccessible(handle:not null QNetworkAccessManagerH; accessible:NetworkAccessibility);
 pragma Import(C,QNetworkAccessManager_setNetworkAccessible, "QNetworkAccessManager_setNetworkAccessible");
 
 function  QNetworkAccessManager_networkAccessible(handle:not null QNetworkAccessManagerH) return NetworkAccessibility;
 pragma Import(C,QNetworkAccessManager_networkAccessible, "QNetworkAccessManager_networkAccessible");
 
-- is not supported
-- procedure QNetworkAccessManager_connectToHostEncrypted(handle:not null QNetworkAccessManagerH;hostName:QStringH; port:Unsigned_Short := 443;  sslConfiguration:QSslConfigurationH := QSslConfiguration_defaultConfiguration);
-- pragma Import(C,QNetworkAccessManager_connectToHostEncrypted, "QNetworkAccessManager_connectToHostEncrypted");
 
 procedure QNetworkAccessManager_connectToHost(handle:not null QNetworkAccessManagerH;hostName:QStringH; port:Unsigned_Short := 80);
 pragma Import(C,QNetworkAccessManager_connectToHost, "QNetworkAccessManager_connectToHost");
 
 function  QNetworkAccessManager_createRequest(handle:not null QNetworkAccessManagerH;op:QNetworkAccessManagerOperation; request:QNetworkRequestH; outgoingData:QIODeviceH := null) return QNetworkReplyH;
 pragma Import(C,QNetworkAccessManager_createRequest, "QNetworkAccessManager_createRequest");
 
 function  QNetworkAccessManager_supportedSchemesImplementation(handle:not null QNetworkAccessManagerH) return QStringListH;
 pragma Import(C,QNetworkAccessManager_supportedSchemesImplementation, "QNetworkAccessManager_supportedSchemesImplementation");
 
-------------------------------------------------------------------------------------------------------------------
 function  QNetworkAccessManager_post(handle: not null  QNetworkAccessManagerH; request: QNetworkrequestH; data: QByteArrayH) return QNetworkReplyH;
 function  QNetworkAccessManager_put(handle: not null  QNetworkAccessManagerH; request: QNetworkrequestH; data: QByteArrayH) return QNetworkReplyH;
 function  QNetworkAccessManager_post(handle:not null QNetworkAccessManagerH;request:QNetworkRequestH;multiPart:QHttpMultiPartH) return QNetworkReplyH;
 function  QNetworkAccessManager_put(handle:not null QNetworkAccessManagerH;request:QNetworkRequestH; multiPart:QHttpMultiPartH) return QNetworkReplyH;

end Qt.QNetworkAccessManager;
