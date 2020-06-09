-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QWebBrowserCookieJar is

 type AcceptPolicy is (AcceptAlways,AcceptNever,AcceptOnlyFromSitesNavigatedTo);
 pragma convention(C,AcceptPolicy);   

 type KeepPolicy is (KeepUntilExpire,KeepUntilExit,KeepUntilTimeLimit); 
 pragma convention(C,KeepPolicy);

 function  QWebBrowserCookieJar_create(parent:QObjectH := null) return QObjectH;
 pragma Import(C,QWebBrowserCookieJar_create, "QWebBrowserCookieJar_create");
 
 procedure QWebBrowserCookieJar_delete(handle:not null QObjectH);
 pragma Import(C,QWebBrowserCookieJar_delete, "QWebBrowserCookieJar_delete");
 
 procedure QWebBrowserCookieJar_clear(handle:not null QObjectH);
 pragma Import(C,QWebBrowserCookieJar_clear, "QWebBrowserCookieJar_clear");
 
 procedure QWebBrowserCookieJar_loadSettings(handle:not null QObjectH);
 pragma Import(C,QWebBrowserCookieJar_loadSettings, "QWebBrowserCookieJar_loadSettings");
 
 function  QWebBrowserCookieJar_cookiesForUrl(handle:not null QObjectH;url:QUrlH) return QObjectListH;
 pragma Import(C,QWebBrowserCookieJar_cookiesForUrl, "QWebBrowserCookieJar_cookiesForUrl");
 
 function  QWebBrowserCookieJar_setCookiesFromUrl(handle:not null QObjectH;cookieList:QObjectListH;url: QUrlH) return boolean;
 pragma Import(C,QWebBrowserCookieJar_setCookiesFromUrl, "QWebBrowserCookieJar_setCookiesFromUrl");
 
 function  QWebBrowserCookieJar_acceptPolicy(handle:not null QObjectH) return AcceptPolicy;
 pragma Import(C,QWebBrowserCookieJar_acceptPolicy, "QWebBrowserCookieJar_acceptPolicy");
 
 procedure QWebBrowserCookieJar_setAcceptPolicy(handle:not null QObjectH; policy:AcceptPolicy);
 pragma Import(C,QWebBrowserCookieJar_setAcceptPolicy, "QWebBrowserCookieJar_setAcceptPolicy");
 
 function  QWebBrowserCookieJar_keepPolicy(handle:not null QObjectH) return KeepPolicy;
 pragma Import(C,QWebBrowserCookieJar_keepPolicy, "QWebBrowserCookieJar_keepPolicy");
 
 procedure QWebBrowserCookieJar_setKeepPolicy(handle:not null QObjectH;policy:KeepPolicy);
 pragma Import(C,QWebBrowserCookieJar_setKeepPolicy, "QWebBrowserCookieJar_setKeepPolicy");
 
 function  QWebBrowserCookieJar_blockedCookies(handle:not null QObjectH) return QStringListH;
 pragma Import(C,QWebBrowserCookieJar_blockedCookies, "QWebBrowserCookieJar_blockedCookies");
 
 function  QWebBrowserCookieJar_allowedCookies(handle:not null QObjectH) return QStringListH;
 pragma Import(C,QWebBrowserCookieJar_allowedCookies, "QWebBrowserCookieJar_allowedCookies");
 
 function  QWebBrowserCookieJar_allowForSessionCookies(handle:not null QObjectH) return QStringListH;
 pragma Import(C,QWebBrowserCookieJar_allowForSessionCookies, "QWebBrowserCookieJar_allowForSessionCookies");
 
 procedure QWebBrowserCookieJar_setBlockedCookies(handle:not null QObjectH;list:QStringListH);
 pragma Import(C,QWebBrowserCookieJar_setBlockedCookies, "QWebBrowserCookieJar_setBlockedCookies");
 
 procedure QWebBrowserCookieJar_setAllowedCookies(handle:not null QObjectH;list:QStringListH);
 pragma Import(C,QWebBrowserCookieJar_setAllowedCookies, "QWebBrowserCookieJar_setAllowedCookies");
 
 procedure QWebBrowserCookieJar_setAllowForSessionCookies(handle:not null QObjectH;list:QStringListH);
 pragma Import(C,QWebBrowserCookieJar_setAllowForSessionCookies, "QWebBrowserCookieJar_setAllowForSessionCookies");
 
 procedure QWebBrowserCookieJar_signal_slot_cookiesChanged(handle:not null QObjectH;hook: voidCallbackH);
 pragma Import(C,QWebBrowserCookieJar_signal_slot_cookiesChanged, "QWebBrowserCookieJar_signal_slot_cookiesChanged");
 
end;
