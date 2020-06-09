--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2018                           บ
-- บ Copyright (C) 2018                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QNetworkInterface   is

 type DnsEligibilityStatus is new  qint8 ;
 DnsEligibilityUnknown : constant qint8 := -1;
 DnsIneligible         : constant qint8 :=  0;
 DnsEligible           : constant qint8 :=  1;

 type InterfaceFlag is new integer;
 IsUp          : constant integer := 16#01#;
 IsRunning     : constant integer := 16#02#;
 CanBroadcast  : constant integer := 16#04#;
 IsLoopBack    : constant integer := 16#08#;
 IsPointToPoint: constant integer := 16#10#;
 CanMulticast  : constant integer := 16#20#; 

 type InterfaceType is new integer;
 Loopback  :constant InterfaceType := 1;
 Virtual   :constant InterfaceType := 2;
 Ethernet  :constant InterfaceType := 3;
 Slip      :constant InterfaceType := 4;
 CanBus    :constant InterfaceType := 5;
 Ppp       :constant InterfaceType := 6;
 Fddi      :constant InterfaceType := 7;
 Wifi      :constant InterfaceType := 8;
 Ieee80211 :constant InterfaceType := Wifi;   -- alias
 Phonet    :constant InterfaceType := 9;
 Ieee802154:constant InterfaceType := 10;
 SixLoWPAN :constant InterfaceType := 11; -- 6LoWPAN, but we can't start with a digit
 Ieee80216 :constant InterfaceType := 12;
 Ieee1394  :constant InterfaceType := 13;
 Unknown   :constant InterfaceType :=  0;

 function  QNetworkAddressEntry_create return QNetworkAddressEntryH ;
 pragma Import(C,QNetworkAddressEntry_create, "QNetworkAddressEntry_create");
 
 function  QNetworkAddressEntry_create2(otherEntry:QNetworkAddressEntryH) return QNetworkAddressEntryH;
 pragma Import(C,QNetworkAddressEntry_create2, "QNetworkAddressEntry_create2");
 
 procedure QNetworkAddressEntry_destroy(handle:not null QNetworkAddressEntryH);
 pragma Import(C,QNetworkAddressEntry_destroy, "QNetworkAddressEntry_destroy");
 
 procedure QNetworkAddressEntry_swap(handle:not null QNetworkAddressEntryH;other:QNetworkAddressEntryH);
 pragma Import(C,QNetworkAddressEntry_swap, "QNetworkAddressEntry_swap");
 
 function  QNetworkAddressEntry_dnsEligibility(handle:not null QNetworkAddressEntryH) return DnsEligibilityStatus;
 pragma Import(C,QNetworkAddressEntry_dnsEligibility, "QNetworkAddressEntry_dnsEligibility");
 
 procedure QNetworkAddressEntry_setDnsEligibility(handle:not null QNetworkAddressEntryH;status:DnsEligibilityStatus);
 pragma Import(C,QNetworkAddressEntry_setDnsEligibility, "QNetworkAddressEntry_setDnsEligibility");
 
 function  QNetworkAddressEntry_ip(handle:not null QNetworkAddressEntryH) return QHostAddressH;
 pragma Import(C,QNetworkAddressEntry_ip, "QNetworkAddressEntry_ip");
 
 procedure QNetworkAddressEntry_setIp(handle:not null QNetworkAddressEntryH;newIp:QHostAddressH);
 pragma Import(C,QNetworkAddressEntry_setIp, "QNetworkAddressEntry_setIp");
 
 function  QNetworkAddressEntry_netmask(handle:not null QNetworkAddressEntryH) return QHostAddressH;
 pragma Import(C,QNetworkAddressEntry_netmask, "QNetworkAddressEntry_netmask");
 
 procedure QNetworkAddressEntry_setNetmask(handle:not null QNetworkAddressEntryH;newNetmask:QHostAddressH);
 pragma Import(C,QNetworkAddressEntry_setNetmask, "QNetworkAddressEntry_setNetmask");
 
 function  QNetworkAddressEntry_prefixLength(handle:not null QNetworkAddressEntryH) return integer;
 pragma Import(C,QNetworkAddressEntry_prefixLength, "QNetworkAddressEntry_prefixLength");
 
 procedure QNetworkAddressEntry_setPrefixLength(handle:not null QNetworkAddressEntryH;length:integer);
 pragma Import(C,QNetworkAddressEntry_setPrefixLength, "QNetworkAddressEntry_setPrefixLength");
 
 function  QNetworkAddressEntry_broadcast(handle:not null QNetworkAddressEntryH) return QHostAddressH;
 pragma Import(C,QNetworkAddressEntry_broadcast, "QNetworkAddressEntry_broadcast");
 
 procedure QNetworkAddressEntry_setBroadcast(handle:not null QNetworkAddressEntryH;newBroadcast:QHostAddressH);
 pragma Import(C,QNetworkAddressEntry_setBroadcast, "QNetworkAddressEntry_setBroadcast");
 
 function  QNetworkAddressEntry_isLifetimeKnown(handle:not null QNetworkAddressEntryH) return boolean;
 pragma Import(C,QNetworkAddressEntry_isLifetimeKnown, "QNetworkAddressEntry_isLifetimeKnown");
 
 function  QNetworkAddressEntry_preferredLifetime(handle:not null QNetworkAddressEntryH) return QDeadlineTimerH;
 pragma Import(C,QNetworkAddressEntry_preferredLifetime, "QNetworkAddressEntry_preferredLifetime");
 
 function  QNetworkAddressEntry_validityLifetime(handle:not null QNetworkAddressEntryH) return QDeadlineTimerH;
 pragma Import(C,QNetworkAddressEntry_validityLifetime, "QNetworkAddressEntry_validityLifetime");
 
 procedure QNetworkAddressEntry_setAddressLifetime(handle:not null QNetworkAddressEntryH;preferred:QDeadlineTimerH;validity: QDeadlineTimerH);
 pragma Import(C,QNetworkAddressEntry_setAddressLifetime, "QNetworkAddressEntry_setAddressLifetime");
 
 procedure QNetworkAddressEntry_clearAddressLifetime(handle:not null QNetworkAddressEntryH);
 pragma Import(C,QNetworkAddressEntry_clearAddressLifetime, "QNetworkAddressEntry_clearAddressLifetime");
 
 function  QNetworkAddressEntry_isPermanent(handle:not null QNetworkAddressEntryH) return boolean;
 pragma Import(C,QNetworkAddressEntry_isPermanent, "QNetworkAddressEntry_isPermanent");
 
 function  QNetworkAddressEntry_isTemporary(handle:not null QNetworkAddressEntryH) return boolean;
 pragma Import(C,QNetworkAddressEntry_isTemporary, "QNetworkAddressEntry_isTemporary");
 
 function  QNetworkInterface_create return QNetworkInterfaceH;
 pragma Import(C,QNetworkInterface_create, "QNetworkInterface_create");
 
 function  QNetworkInterface_create2(otherInterface:QNetworkInterfaceH) return QNetworkInterfaceH;
 pragma Import(C,QNetworkInterface_create2, "QNetworkInterface_create2");
 
 procedure QNetworkInterface_destroy(handle:not null QNetworkInterfaceH);
 pragma Import(C,QNetworkInterface_destroy, "QNetworkInterface_destroy");
 
 procedure QNetworkInterface_swap(handle:not null QNetworkInterfaceH;other:QNetworkInterfaceH);
 pragma Import(C,QNetworkInterface_swap, "QNetworkInterface_swap");
 
 function  QNetworkInterface_isValid(handle:not null QNetworkInterfaceH) return boolean;
 pragma Import(C,QNetworkInterface_isValid, "QNetworkInterface_isValid");
 
 function  QNetworkInterface_index(handle:not null QNetworkInterfaceH) return integer;
 pragma Import(C,QNetworkInterface_index, "QNetworkInterface_index");
 
 function  QNetworkInterface_maximumTransmissionUnit(handle:not null QNetworkInterfaceH) return integer;
 pragma Import(C,QNetworkInterface_maximumTransmissionUnit, "QNetworkInterface_maximumTransmissionUnit");
 
 function  QNetworkInterface_name(handle:not null QNetworkInterfaceH) return QStringH;
 pragma Import(C,QNetworkInterface_name, "QNetworkInterface_name");
 
 function  QNetworkInterface_humanReadableName(handle:not null QNetworkInterfaceH) return QStringH;
 pragma Import(C,QNetworkInterface_humanReadableName, "QNetworkInterface_humanReadableName");
 
 function  QNetworkInterface_flags(handle:not null QNetworkInterfaceH) return InterfaceFlag;
 pragma Import(C,QNetworkInterface_flags, "QNetworkInterface_flags");
 
 function  QNetworkInterface_type(handle:not null QNetworkInterfaceH) return InterfaceType;
 pragma Import(C,QNetworkInterface_type, "QNetworkInterface_type");
 
 function  QNetworkInterface_hardwareAddress(handle:not null QNetworkInterfaceH) return QStringH;
 pragma Import(C,QNetworkInterface_hardwareAddress, "QNetworkInterface_hardwareAddress");
 
 function  QNetworkInterface_addressEntries(handle:not null QNetworkInterfaceH) return QObjectListH;
 pragma Import(C,QNetworkInterface_addressEntries, "QNetworkInterface_addressEntries");
 
 function  QNetworkInterface_integererfaceIndexFromName(name:QStringH) return integer;
 pragma Import(C,QNetworkInterface_integererfaceIndexFromName, "QNetworkInterface_integererfaceIndexFromName");
 
 function  QNetworkInterface_integererfaceFromName(name:QStringH) return QNetworkInterfaceH;
 pragma Import(C,QNetworkInterface_integererfaceFromName, "QNetworkInterface_integererfaceFromName");
 
 function  QNetworkInterface_integererfaceFromIndex(index:integer) return QNetworkInterfaceH;
 pragma Import(C,QNetworkInterface_integererfaceFromIndex, "QNetworkInterface_integererfaceFromIndex");
 
 function  QNetworkInterface_integererfaceNameFromIndex(index:integer) return QStringH;
 pragma Import(C,QNetworkInterface_integererfaceNameFromIndex, "QNetworkInterface_integererfaceNameFromIndex");
 
 function  QNetworkInterface_allInterfaces return QObjectListH;
 pragma Import(C,QNetworkInterface_allInterfaces, "QNetworkInterface_allInterfaces");
 
 function  QNetworkInterface_allAddresses return QObjectListH;
 pragma Import(C,QNetworkInterface_allAddresses, "QNetworkInterface_allAddresses");
 
-----------------------------------------------------------------

 function  QNetworkAddressEntry_create(otherEntry:QNetworkAddressEntryH) return QNetworkAddressEntryH;
 function  QNetworkInterface_create(otherInterface:QNetworkInterfaceH) return QNetworkInterfaceH;

end;
