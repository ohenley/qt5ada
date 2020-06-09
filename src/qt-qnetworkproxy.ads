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

package Qt.QNetworkProxy    is

type QNetworkProxyQueryType is (TcpSocket,UdpSocket,TcpServer,UrlReques);
pragma Convention(C,QNetworkProxyQueryType);
     
for  QNetworkProxyQueryType use (
        TcpSocket => 0,
        UdpSocket => 1,
        TcpServer => 100,
        UrlReques => 101 );

type QNetworkProxyCapability is (TunnelingCapability,ListeningCapability,UdpTunnelingCapability,CachingCapability,HostNameLookupCapability);
pragma Convention(C,QNetworkProxyCapability);

for  QNetworkProxyCapability use (
        TunnelingCapability    => 1,
        ListeningCapability    => 2,
        UdpTunnelingCapability => 4,
        CachingCapability      => 8,
        HostNameLookupCapability => 16#0010#);

 
 -- QNetworkProxyProxyType = 

 QNetworkProxyDefaultProxy    : constant    Q_UINT16     := 0;
 QNetworkProxySocks5Proxy     : constant    Q_UINT16     := 1;
 QNetworkProxyNoProxy         : constant    Q_UINT16     := 2;
 QNetworkProxyHttpProxy       : constant    Q_UINT16     := 3;
 QNetworkProxyHttpCachingProxy: constant    Q_UINT16     := 4;
 QNetworkProxyFtpCachingProxy : constant    Q_UINT16     := 5;


 function  QNetworkProxyQuery_create return QNetworkProxyQueryH;
 pragma Import(C,QNetworkProxyQuery_create , "QNetworkProxyQuery_create");

 procedure QNetworkProxyQuery_destroy(handle: not null  QNetworkProxyQueryH);
 pragma Import(C,QNetworkProxyQuery_destroy , "QNetworkProxyQuery_destroy");

 function  QNetworkProxyQuery_create2(requestUrl: QUrlH; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH;
 pragma Import(C,QNetworkProxyQuery_create2 , "QNetworkProxyQuery_create2");

 function  QNetworkProxyQuery_create3( hostname: QStringH; port: integer;protocolTag: QStringH ; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH;
 pragma Import(C, QNetworkProxyQuery_create3 , "QNetworkProxyQuery_create3");

 function  QNetworkProxyQuery_create4(bindPort: Q_UINT16 ; protocolTag: QStringH; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH;
 pragma Import(C,QNetworkProxyQuery_create4 , "QNetworkProxyQuery_create4");

 function  QNetworkProxyQuery_create5(handle: not null  QNetworkProxyQueryH) return QNetworkProxyQueryH;
 pragma Import(C, QNetworkProxyQuery_create5 , "QNetworkProxyQuery_create5");

 function  QNetworkProxyQuery_queryType(handle: not null  QNetworkProxyQueryH) return QNetworkProxyQueryType;
 pragma Import(C,QNetworkProxyQuery_queryType , "QNetworkProxyQuery_queryType");

 procedure QNetworkProxyQuery_setQueryType(handle: not null  QNetworkProxyQueryH; queryType: QNetworkProxyQueryType);
 pragma Import(C,QNetworkProxyQuery_setQueryType , "QNetworkProxyQuery_setQueryType");

 function  QNetworkProxyQuery_peerPort(handle: not null  QNetworkProxyQueryH) return integer;
 pragma Import(C,QNetworkProxyQuery_peerPort , "QNetworkProxyQuery_peerPort");

 procedure QNetworkProxyQuery_setPeerPort(handle: not null  QNetworkProxyQueryH; port: integer);
 pragma Import(C,QNetworkProxyQuery_setPeerPort , "QNetworkProxyQuery_setPeerPort");

 function  QNetworkProxyQuery_peerHostName(handle: not null  QNetworkProxyQueryH) return QStringH;
 pragma Import(C,QNetworkProxyQuery_peerHostName , "QNetworkProxyQuery_peerHostName");

 procedure QNetworkProxyQuery_setPeerHostName(handle: not null  QNetworkProxyQueryH; hostname: QStringH);
 pragma Import(C,QNetworkProxyQuery_setPeerHostName , "QNetworkProxyQuery_setPeerHostName");

 function  QNetworkProxyQuery_localPort(handle: not null  QNetworkProxyQueryH) return integer;
 pragma Import(C,QNetworkProxyQuery_localPort , "QNetworkProxyQuery_localPort");

 procedure QNetworkProxyQuery_setLocalPort(handle: not null  QNetworkProxyQueryH; port: integer);
 pragma Import(C,QNetworkProxyQuery_setLocalPort , "QNetworkProxyQuery_setLocalPort");

 function  QNetworkProxyQuery_protocolTag(handle: not null  QNetworkProxyQueryH) return QStringH;
 pragma Import(C,QNetworkProxyQuery_protocolTag , "QNetworkProxyQuery_protocolTag");

 procedure QNetworkProxyQuery_setProtocolTag(handle: not null  QNetworkProxyQueryH; protocolTag: QStringH);
 pragma Import(C,QNetworkProxyQuery_setProtocolTag  , "QNetworkProxyQuery_setProtocolTag");

 function  QNetworkProxyQuery_url(handle: not null  QNetworkProxyQueryH) return QUrlH;
 pragma Import(C,QNetworkProxyQuery_url , "QNetworkProxyQuery_url");

 procedure QNetworkProxyQuery_setUrl(handle: not null  QNetworkProxyQueryH; url: QUrlH);
 pragma Import(C,QNetworkProxyQuery_setUrl , "QNetworkProxyQuery_setUrl");

 function  QNetworkProxy_create return QNetworkProxyH;
 pragma Import(C,QNetworkProxy_create , "QNetworkProxy_create");

 procedure QNetworkProxy_destroy(handle: not null  QNetworkProxyH);
 pragma Import(C,QNetworkProxy_destroy , "QNetworkProxy_destroy");

 function  QNetworkProxy_create2(proxyType: Q_UINT16; hostName: QStringH; port: Q_UINT16; user: QStringH; password: QStringH) return QNetworkProxyH;
 pragma Import(C,QNetworkProxy_create2 , "QNetworkProxy_create2");

 function  QNetworkProxy_create3(handle: not null  QNetworkProxyH) return QNetworkProxyH;
 pragma Import(C,QNetworkProxy_create3 , "QNetworkProxy_create3");

 procedure QNetworkProxy_setType(handle: not null  QNetworkProxyH; proxyType: Q_UINT16);
 pragma Import(C,QNetworkProxy_setType , "QNetworkProxy_setType");

 function  QNetworkProxy_type(handle: not null  QNetworkProxyH) return Q_UINT16;
 pragma Import(C,QNetworkProxy_type , "QNetworkProxy_type");

 procedure QNetworkProxy_setCapabilities(handle: not null  QNetworkProxyH; capab: quint);
 pragma Import(C,QNetworkProxy_setCapabilities , "QNetworkProxy_setCapabilities");

 function  QNetworkProxy_capabilities(handle: not null  QNetworkProxyH) return quint;
 pragma Import(C,QNetworkProxy_capabilities , "QNetworkProxy_capabilities");

 function  QNetworkProxy_isCachingProxy(handle: not null  QNetworkProxyH) return boolean;
 pragma Import(C,QNetworkProxy_isCachingProxy , "QNetworkProxy_isCachingProxy");

 function  QNetworkProxy_isTransparentProxy(handle: not null  QNetworkProxyH) return boolean;
 pragma Import(C,QNetworkProxy_isTransparentProxy , "QNetworkProxy_isTransparentProxy");

 procedure QNetworkProxy_setUser(handle: not null  QNetworkProxyH; userName: QStringH);
 pragma Import(C,QNetworkProxy_setUser , "QNetworkProxy_setUser");

 function  QNetworkProxy_user(handle: not null  QNetworkProxyH) return QStringH;
 pragma Import(C,QNetworkProxy_user , "QNetworkProxy_user");

 procedure QNetworkProxy_setPassword(handle: not null  QNetworkProxyH; password: QStringH);
 pragma Import(C,QNetworkProxy_setPassword , "QNetworkProxy_setPassword");

 function  QNetworkProxy_password(handle: not null  QNetworkProxyH) return QStringH;
 pragma Import(C,QNetworkProxy_password , "QNetworkProxy_password");

 procedure QNetworkProxy_setHostName(handle: not null  QNetworkProxyH; hostName: QStringH);
 pragma Import(C,QNetworkProxy_setHostName , "QNetworkProxy_setHostName");

 function  QNetworkProxy_hostName(handle: not null  QNetworkProxyH) return QStringH;
 pragma Import(C,QNetworkProxy_hostName , "QNetworkProxy_hostName");

 procedure QNetworkProxy_setPort(handle: not null  QNetworkProxyH; port: Q_UINT16);
 pragma Import(C,QNetworkProxy_setPort , "QNetworkProxy_setPort");

 function  QNetworkProxy_port(handle: not null  QNetworkProxyH) return Q_UINT16;
 pragma Import(C,QNetworkProxy_port , "QNetworkProxy_port");

 procedure QNetworkProxy_setApplicationProxy( proxy: QNetworkProxyH);
 pragma Import(C,QNetworkProxy_setApplicationProxy  , "QNetworkProxy_setApplicationProxy");

 function   QNetworkProxy_applicationProxy return QNetworkProxyH;
 pragma Import(C,QNetworkProxy_applicationProxy , "QNetworkProxy_applicationProxy");

 procedure QNetworkProxyFactory_setApplicationProxyFactory( factory: QNetworkProxyFactoryH);
 pragma Import(C,QNetworkProxyFactory_setApplicationProxyFactory, "QNetworkProxyFactory_setApplicationProxyFactory");

 function  QNetworkProxyQuery_create(requestUrl: QUrlH; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH;
 function  QNetworkProxyQuery_create( hostname: QStringH; port: integer;protocolTag: QStringH ; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH;
 function  QNetworkProxyQuery_create(bindPort: Q_UINT16 ; protocolTag: QStringH; queryType: QNetworkProxyQueryType) return QNetworkProxyQueryH;
 function  QNetworkProxyQuery_create(handle: not null  QNetworkProxyQueryH) return QNetworkProxyQueryH;
 function  QNetworkProxy_create(proxyType: Q_UINT16; hostName: QStringH; port: Q_UINT16; user: QStringH; password: QStringH) return QNetworkProxyH;
 function  QNetworkProxy_create(handle: not null  QNetworkProxyH) return QNetworkProxyH;

end Qt.QNetworkProxy;
