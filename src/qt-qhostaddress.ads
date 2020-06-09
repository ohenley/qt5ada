--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015,2018                 บ
-- บ Copyright (C) 2012,2015,2018                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QHostAddress  is

 type QHostAddressSpecialAddress is ( NullAddress , Broadcast,  LocalHost,  LocalHostIPv6,  Any , AnyIPv6,AnyIPv4);

 function  QHostAddress_create return QHostAddressH;
 pragma Import(C,QHostAddress_create,"QHostAddress_create");

 function  QHostAddress_create2( address: QStringH) return QHostAddressH;
 pragma Import(C,QHostAddress_create2 ,"QHostAddress_create2");

 function  QHostAddress_create3( ip4Addr: quint) return QHostAddressH;
 pragma Import(C,QHostAddress_create3 ,"QHostAddress_create3");

 function  QHostAddress_create7(parent: QHostAddressH) return QHostAddressH;
 pragma Import(C,QHostAddress_create7 ,"QHostAddress_create7");

 function QHostAddress_create8( address: QHostAddressSpecialAddress) return QHostAddressH;
 pragma Import(C,QHostAddress_create8 ,"QHostAddress_create8");

 function  QHostAddress_scopeId(handle: not null  QHostAddressH) return QStringH;
 pragma Import(C,QHostAddress_scopeId,"QHostAddress_scopeId");

 function  QHostAddress_toString(handle: not null  QHostAddressH) return QStringH;
 pragma Import(C,QHostAddress_toString,"QHostAddress_toString");

 function  QHostAddress_setAddress(handle: not null  QHostAddressH;address: QStringH) return boolean;
 pragma Import(C,QHostAddress_setAddress,"QHostAddress_setAddress");

 function  QHostAddress_isInSubnet(handle: not null  QHostAddressH ;subnet: QHostAddressH ; netmask: integer) return  boolean;
 pragma Import(C,QHostAddress_isInSubnet,"QHostAddress_isInSubnet");

 function  QHostAddress_isNull(handle: not null  QHostAddressH) return  boolean;
 pragma Import(C,QHostAddress_isNull,"QHostAddress_isNull");

 function  QHostAddress_isMulticast(handle: not null  QHostAddressH) return  boolean;
 pragma Import(C,QHostAddress_isMulticast,"QHostAddress_isMulticast");

 function  QHostAddress_toIPv4Address(handle: not null  QHostAddressH) return quint;
 pragma Import(C,QHostAddress_toIPv4Address,"QHostAddress_toIPv4Address");

 procedure QHostAddress_destroy(handle: not null  QHostAddressH);
 pragma Import(C,QHostAddress_destroy,"QHostAddress_destroy");

 procedure QHostAddress_setAddress2(handle: not null  QHostAddressH; ip4Addr: quint);
 pragma Import(C,QHostAddress_setAddress2,"QHostAddress_setAddress2");

 procedure QHostAddress_clear(handle: not null  QHostAddressH);
 pragma Import(C,QHostAddress_clear,"QHostAddress_clear");

 procedure QHostAddress_setScopeId(handle: not null  QHostAddressH; id: QStringH);
 pragma Import(C,QHostAddress_setScopeId,"QHostAddress_setScopeId");

 function  QHostAddress_localhost return QHostAddressH;
 pragma Import(C,QHostAddress_localhost ,"QHostAddress_localhost");
 -------------------------------------------------------------------------------------
 function  QHostAddress_create( address: QStringH) return QHostAddressH;
 function  QHostAddress_create( ip4Addr: quint) return QHostAddressH;
 function  QHostAddress_create(parent: QHostAddressH) return QHostAddressH;
 function QHostAddress_create( address: QHostAddressSpecialAddress) return QHostAddressH;
 procedure QHostAddress_setAddress(handle: not null  QHostAddressH; ip4Addr: quint);

 function  QHostAddress_isLoopback(handle:not null QHostAddressH) return boolean;
 pragma Import(C,QHostAddress_isLoopback, "QHostAddress_isLoopback");
 
 function  QHostAddress_isGlobal(handle:not null QHostAddressH) return boolean;
 pragma Import(C,QHostAddress_isGlobal, "QHostAddress_isGlobal");
 
 function  QHostAddress_isLinkLocal(handle:not null QHostAddressH) return boolean;
 pragma Import(C,QHostAddress_isLinkLocal, "QHostAddress_isLinkLocal");
 
 function  QHostAddress_isSiteLocal(handle:not null QHostAddressH) return boolean;
 pragma Import(C,QHostAddress_isSiteLocal, "QHostAddress_isSiteLocal");
 
 function  QHostAddress_isUniqueLocalUnicast(handle:not null QHostAddressH) return boolean;
 pragma Import(C,QHostAddress_isUniqueLocalUnicast, "QHostAddress_isUniqueLocalUnicast");
 
 function  QHostAddress_isBroadcast(handle:not null QHostAddressH) return boolean;
 pragma Import(C,QHostAddress_isBroadcast, "QHostAddress_isBroadcast");

end Qt.QHostAddress;
