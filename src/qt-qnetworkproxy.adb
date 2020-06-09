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

package body Qt.QNetworkProxy    is


 function  QNetworkProxyQuery_create(requestUrl: QUrlH; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH is
 begin
   return QNetworkProxyQuery_create2(requestUrl,queryType);
 end;

 function  QNetworkProxyQuery_create( hostname: QStringH; port: integer;protocolTag: QStringH ; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH is
 begin
   return  QNetworkProxyQuery_create3(hostname, port,protocolTag, queryType);
 end;

 function  QNetworkProxyQuery_create(bindPort: Q_UINT16 ; protocolTag: QStringH; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH is
 begin
   return  QNetworkProxyQuery_create4(bindPort,protocolTag, queryType);
 end;

 function  QNetworkProxyQuery_create(handle: not null  QNetworkProxyQueryH) return QNetworkProxyQueryH is
 begin
   return  QNetworkProxyQuery_create5(handle);
 end;

 function  QNetworkProxy_create(proxyType: Q_UINT16; hostName: QStringH; port: Q_UINT16; user: QStringH; password: QStringH) return QNetworkProxyH is
 begin
   return  QNetworkProxy_create2(proxyType, hostName, port, user, password);
 end;

 function  QNetworkProxy_create(handle: not null  QNetworkProxyH) return QNetworkProxyH is
 begin
   return  QNetworkProxy_create3(handle);
 end;

end Qt.QNetworkProxy;
