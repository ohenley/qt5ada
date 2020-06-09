--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2016                      บ
-- บ Copyright (C) 2015,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package  Qt.QWebEngineProfile is

 type HttpCacheType is (MemoryHttpCache,DiskHttpCache, NoCache);
 pragma convention(C,HttpCacheType);
    
 type PersistentCookiesPolicy is (NoPersistentCookies,AllowPersistentCookies,ForcePersistentCookies);
 pragma convention(C,PersistentCookiesPolicy);

 function  QWebEngineProfile_create(parent:QObjectH := null) return QWebProfileH;
 pragma Import(C,QWebEngineProfile_create, "QWebEngineProfile_create");
 
 function  QWebEngineProfile_create2(name:QStringH ;parent:QObjectH := null) return QWebProfileH;
 pragma Import(C,QWebEngineProfile_create2, "QWebEngineProfile_create2");
 
 procedure QWebEngineProfile_destroy(handle:not null QWebProfileH);
 pragma Import(C,QWebEngineProfile_destroy, "QWebEngineProfile_destroy");
 
 function  QWebEngineProfile_storageName(handle:not null QWebProfileH) return QStringH;
 pragma Import(C,QWebEngineProfile_storageName, "QWebEngineProfile_storageName");
 
 function  QWebEngineProfile_isOffTheRecord(handle:not null QWebProfileH) return boolean;
 pragma Import(C,QWebEngineProfile_isOffTheRecord, "QWebEngineProfile_isOffTheRecord");
 
 function  QWebEngineProfile_persistentStoragePath(handle:not null QWebProfileH) return QStringH;
 pragma Import(C,QWebEngineProfile_persistentStoragePath, "QWebEngineProfile_persistentStoragePath");
 
 procedure QWebEngineProfile_setPersistentStoragePath(handle:not null QWebProfileH;path:QStringH);
 pragma Import(C,QWebEngineProfile_setPersistentStoragePath, "QWebEngineProfile_setPersistentStoragePath");
 
 function  QWebEngineProfile_cachePath(handle:not null QWebProfileH) return QStringH;
 pragma Import(C,QWebEngineProfile_cachePath, "QWebEngineProfile_cachePath");
 
 procedure QWebEngineProfile_setCachePath(handle:not null QWebProfileH;path:QStringH);
 pragma Import(C,QWebEngineProfile_setCachePath, "QWebEngineProfile_setCachePath");
 
 function  QWebEngineProfile_httpUserAgent(handle:not null QWebProfileH) return QStringH;
 pragma Import(C,QWebEngineProfile_httpUserAgent, "QWebEngineProfile_httpUserAgent");
 
 procedure QWebEngineProfile_setHttpUserAgent(handle:not null QWebProfileH;userAgent:QStringH);
 pragma Import(C,QWebEngineProfile_setHttpUserAgent, "QWebEngineProfile_setHttpUserAgent");
 
 function  QWebEngineProfile_httpCacheType(handle:not null QWebProfileH) return HttpCacheType;
 pragma Import(C,QWebEngineProfile_httpCacheType, "QWebEngineProfile_httpCacheType");
 
 procedure QWebEngineProfile_setHttpCacheType(handle:not null QWebProfileH;cacheType:HttpCacheType);
 pragma Import(C,QWebEngineProfile_setHttpCacheType, "QWebEngineProfile_setHttpCacheType");
 
 procedure QWebEngineProfile_setHttpAcceptLanguage(handle:not null QWebProfileH;httpAcceptLanguage:QStringH);
 pragma Import(C,QWebEngineProfile_setHttpAcceptLanguage, "QWebEngineProfile_setHttpAcceptLanguage");
 
 function  QWebEngineProfile_httpAcceptLanguage(handle:not null QWebProfileH) return QStringH;
 pragma Import(C,QWebEngineProfile_httpAcceptLanguage, "QWebEngineProfile_httpAcceptLanguage");
 
 function  QWebEngineProfile_persistentCookiesPolicy(handle:not null QWebProfileH) return PersistentCookiesPolicy;
 pragma Import(C,QWebEngineProfile_persistentCookiesPolicy, "QWebEngineProfile_persistentCookiesPolicy");
 
 procedure QWebEngineProfile_setPersistentCookiesPolicy(handle:not null QWebProfileH;cookiesPolicy:PersistentCookiesPolicy);
 pragma Import(C,QWebEngineProfile_setPersistentCookiesPolicy, "QWebEngineProfile_setPersistentCookiesPolicy");
 
 function  QWebEngineProfile_httpCacheMaximumSize(handle:not null QWebProfileH) return integer;
 pragma Import(C,QWebEngineProfile_httpCacheMaximumSize, "QWebEngineProfile_httpCacheMaximumSize");
 
 procedure QWebEngineProfile_setHttpCacheMaximumSize(handle:not null QWebProfileH;maxSize:integer);
 pragma Import(C,QWebEngineProfile_setHttpCacheMaximumSize, "QWebEngineProfile_setHttpCacheMaximumSize");
 
 function  QWebEngineProfile_cookieStore(handle:not null QWebProfileH) return QWebCookieStoreH;
 pragma Import(C,QWebEngineProfile_cookieStore, "QWebEngineProfile_cookieStore");
 
 procedure QWebEngineProfile_setRequestInterceptor(handle:not null QWebProfileH;integererceptor:QWebUrlRequestInterceptorH);
 pragma Import(C,QWebEngineProfile_setRequestInterceptor, "QWebEngineProfile_setRequestInterceptor");
 
 procedure QWebEngineProfile_clearAllVisitedLinks(handle:not null QWebProfileH);
 pragma Import(C,QWebEngineProfile_clearAllVisitedLinks, "QWebEngineProfile_clearAllVisitedLinks");
 
 procedure QWebEngineProfile_clearVisitedLinks(handle:not null QWebProfileH;urls:QObjectListH);
 pragma Import(C,QWebEngineProfile_clearVisitedLinks, "QWebEngineProfile_clearVisitedLinks");
 
 function  QWebEngineProfile_visitedLinksContainsUrl(handle:not null QWebProfileH;url:QUrlH) return boolean;
 pragma Import(C,QWebEngineProfile_visitedLinksContainsUrl, "QWebEngineProfile_visitedLinksContainsUrl");
 
 function  QWebEngineProfile_settings(handle:not null QWebProfileH) return QWebSettingsH;
 pragma Import(C,QWebEngineProfile_settings, "QWebEngineProfile_settings");
 
 function  QWebEngineProfile_scripts(handle:not null QWebProfileH) return QWebScriptCollectionH;
 pragma Import(C,QWebEngineProfile_scripts, "QWebEngineProfile_scripts");
 
 function  QWebEngineProfile_urlSchemeHandler(handle:not null QWebProfileH;schemeHandler:zstring) return QWebUrlSchemeHandlerH;
 pragma Import(C,QWebEngineProfile_urlSchemeHandler, "QWebEngineProfile_urlSchemeHandler");
 
 procedure QWebEngineProfile_installUrlSchemeHandler(handle:not null QWebProfileH;scheme:zstring;urlSchemeHandler: QWebUrlSchemeHandlerH);
 pragma Import(C,QWebEngineProfile_installUrlSchemeHandler, "QWebEngineProfile_installUrlSchemeHandler");
 
 procedure QWebEngineProfile_removeUrlScheme(handle:not null QWebProfileH;scheme: zstring);
 pragma Import(C,QWebEngineProfile_removeUrlScheme, "QWebEngineProfile_removeUrlScheme");
 
 procedure QWebEngineProfile_removeUrlSchemeHandler(handle:not null QWebProfileH;schemeHandler:QWebUrlSchemeHandlerH);
 pragma Import(C,QWebEngineProfile_removeUrlSchemeHandler, "QWebEngineProfile_removeUrlSchemeHandler");
 
 procedure QWebEngineProfile_removeAllUrlSchemeHandlers(handle:not null QWebProfileH);
 pragma Import(C,QWebEngineProfile_removeAllUrlSchemeHandlers, "QWebEngineProfile_removeAllUrlSchemeHandlers");
 
 procedure QWebEngineProfile_clearHttpCache(handle:not null QWebProfileH);
 pragma Import(C,QWebEngineProfile_clearHttpCache, "QWebEngineProfile_clearHttpCache");
 
 procedure QWebEngineProfile_setSpellCheckLanguages(handle:not null QWebProfileH;language:QStringListH);
 pragma Import(C,QWebEngineProfile_setSpellCheckLanguages, "QWebEngineProfile_setSpellCheckLanguages");
 
 function  QWebEngineProfile_spellCheckLanguages(handle:not null QWebProfileH) return QStringListH;
 pragma Import(C,QWebEngineProfile_spellCheckLanguages, "QWebEngineProfile_spellCheckLanguages");
 
 procedure QWebEngineProfile_setSpellCheckEnabled(handle:not null QWebProfileH;enabled:boolean);
 pragma Import(C,QWebEngineProfile_setSpellCheckEnabled, "QWebEngineProfile_setSpellCheckEnabled");
 
 function  QWebEngineProfile_isSpellCheckEnabled(handle:not null QWebProfileH) return boolean;
 pragma Import(C,QWebEngineProfile_isSpellCheckEnabled, "QWebEngineProfile_isSpellCheckEnabled");
 
 function  QWebEngineProfile_defaultProfile return QWebProfileH;
 pragma Import(C,QWebEngineProfile_defaultProfile, "QWebEngineProfile_defaultProfile");
 

 type QWebEngineDownloadItemCallbackH is access procedure(download:QWebDownloadItemH);
 pragma convention(C,QWebEngineDownloadItemCallbackH);

 procedure QWebEngineProfile_signal_slot_downloadRequested(handle:not null QWebProfileH;callback:QWebEngineDownloadItemCallbackH);
 pragma Import(C,QWebEngineProfile_signal_slot_downloadRequested, "QWebEngineProfile_signal_slot_downloadRequested");
 
 function  QWebEngineProfile_create(name:QStringH ;parent:QObjectH := null) return QWebProfileH;

end;
