--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QNetworkCookie  is

 type RawForm is (NameAndValueOnly, Ful);

 function  QNetworkCookie_create(name: QByteArrayH; value: QByteArrayH) return QNetworkCookieH;
 pragma Import(C, QNetworkCookie_create ,"QNetworkCookie_create");

 procedure QNetworkCookie_destroy(handle: not null QNetworkCookieH);
 pragma Import(C, QNetworkCookie_destroy  ,"QNetworkCookie_destroy");

 function  QNetworkCookie_create2(cookie: QNetworkCookieH) return QNetworkCookieH;
 pragma Import(C, QNetworkCookie_create2  ,"QNetworkCookie_create2");

 function  QNetworkCookie_isSecure(handle: not null QNetworkCookieH) return boolean;
 pragma Import(C, QNetworkCookie_isSecure  ,"QNetworkCookie_isSecure");

 procedure QNetworkCookie_setSecure(handle: not null QNetworkCookieH;enable: boolean );
 pragma Import(C, QNetworkCookie_setSecure  ,"QNetworkCookie_setSecure");

 function  QNetworkCookie_isHttpOnly(handle: not null QNetworkCookieH) return boolean;
 pragma Import(C, QNetworkCookie_isHttpOnly ,"QNetworkCookie_isHttpOnly");

 procedure QNetworkCookie_setHttpOnly(handle: not null QNetworkCookieH; enable: boolean);
 pragma Import(C, QNetworkCookie_setHttpOnly  ,"QNetworkCookie_setHttpOnly");

 function  QNetworkCookie_isSessionCookie(handle: not null QNetworkCookieH) return boolean;
 pragma Import(C, QNetworkCookie_isSessionCookie ,"QNetworkCookie_isSessionCookie");

 function  QNetworkCookie_expirationDate(handle: not null QNetworkCookieH) return QDateTimeH;
 pragma Import(C, QNetworkCookie_expirationDate  ,"QNetworkCookie_expirationDate");

 procedure QNetworkCookie_setExpirationDate(handle: not null QNetworkCookieH; date: QDateTimeH);
 pragma Import(C,QNetworkCookie_setExpirationDate  ,"QNetworkCookie_setExpirationDate");

 function  QNetworkCookie_domain(handle: not null QNetworkCookieH) return QStringH;
 pragma Import(C, QNetworkCookie_domain  ,"QNetworkCookie_domain");

 procedure QNetworkCookie_setDomain(handle: not null QNetworkCookieH; domain: QStringH);
 pragma Import(C, QNetworkCookie_setDomain ,"QNetworkCookie_setDomain");

 function  QNetworkCookie_path(handle: not null QNetworkCookieH) return QStringH;
 pragma Import(C, QNetworkCookie_path ,"QNetworkCookie_path");

 procedure QNetworkCookie_setPath(handle: not null QNetworkCookieH; path: QStringH);
 pragma Import(C, QNetworkCookie_setPath  ,"QNetworkCookie_setPath");

 function  QNetworkCookie_name(handle: not null QNetworkCookieH) return QByteArrayH;
 pragma Import(C, QNetworkCookie_name  ,"QNetworkCookie_name");

 procedure QNetworkCookie_setName(handle: not null QNetworkCookieH; cookieName: QByteArrayH);
 pragma Import(C, QNetworkCookie_setName  ,"QNetworkCookie_setName");

 function  QNetworkCookie_value(handle: not null QNetworkCookieH) return QByteArrayH;
 pragma Import(C, QNetworkCookie_value  ,"QNetworkCookie_value");

 procedure QNetworkCookie_setValue(handle: not null QNetworkCookieH; value: QByteArrayH);
 pragma Import(C, QNetworkCookie_setValue  ,"QNetworkCookie_setValue");

 function  QNetworkCookie_toRawForm(handle: not null QNetworkCookieH; form: RawForm) return QByteArrayH;
 pragma Import(C, QNetworkCookie_toRawForm  ,"QNetworkCookie_toRawForm");

---------------------------------------------------------------------------------------------------------------
 function  QNetworkCookie_create(cookie: QNetworkCookieH) return QNetworkCookieH;
----------------------------------------------------------------------------------------------------------
 function  QNetworkCookieJar_create(parent:QObjectH := null) return QNetworkCookieJarH;
 pragma Import(C,QNetworkCookieJar_create, "QNetworkCookieJar_create");
 
 procedure QNetworkCookieJar_destroy(handle: not null  QNetworkCookieJarH);
 pragma Import(C,QNetworkCookieJar_destroy ,"QNetworkCookieJar_destroy");

 function  QNetworkCookieJar_setCookiesFromUrl(handle: not null QNetworkCookieJarH; cookieList:QListH;url:QUrlH) return boolean;
 pragma Import(C,QNetworkCookieJar_setCookiesFromUrl, "QNetworkCookieJar_setCookiesFromUrl");
 
 function  QNetworkCookieJar_cookiesForUrl(handle: not null QNetworkCookieJarH;url:QUrlH) return QListH;
 pragma Import(C,QNetworkCookieJar_cookiesForUrl, "QNetworkCookieJar_cookiesForUrl");
 
 function  QNetworkCookieJar_insertCookie(handle: not null QNetworkCookieJarH;cookie:QNetworkCookieH) return boolean;
 pragma Import(C,QNetworkCookieJar_insertCookie, "QNetworkCookieJar_insertCookie");
 
 function  QNetworkCookieJar_updateCookie(handle: not null QNetworkCookieJarH;cookie:QNetworkCookieH) return boolean;
 pragma Import(C,QNetworkCookieJar_updateCookie, "QNetworkCookieJar_updateCookie");
 
 function  QNetworkCookieJar_deleteCookie(handle: not null QNetworkCookieJarH;cookie:QNetworkCookieH) return boolean;
 pragma Import(C,QNetworkCookieJar_deleteCookie, "QNetworkCookieJar_deleteCookie");
 
end Qt.QNetworkCookie;
