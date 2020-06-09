--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QSerialPortInfo  is

 function  QSerialPortInfo_create return QSerialPortInfoH ;
 pragma Import(C,QSerialPortInfo_create, "QSerialPortInfo_create");
 
 function  QSerialPortInfo_create2(port:QSerialPortH) return QSerialPortInfoH ;
 pragma Import(C,QSerialPortInfo_create2, "QSerialPortInfo_create2");
 
 function  QSerialPortInfo_create3(name:QStringH) return QSerialPortInfoH ;
 pragma Import(C,QSerialPortInfo_create3, "QSerialPortInfo_create3");
 
 function  QSerialPortInfo_create4(serialPortInfo:QSerialPortInfoH) return QSerialPortInfoH ;
 pragma Import(C,QSerialPortInfo_create4, "QSerialPortInfo_create4");
 
 procedure QSerialPortInfo_destroy(handle: not null QSerialPortInfoH);
 pragma Import(C,QSerialPortInfo_destroy, "QSerialPortInfo_destroy");
 
 function  QSerialPortInfo_portName(handle: not null QSerialPortInfoH) return QStringH;
 pragma Import(C,QSerialPortInfo_portName, "QSerialPortInfo_portName");
 
 function  QSerialPortInfo_systemLocation(handle: not null QSerialPortInfoH) return QStringH;
 pragma Import(C,QSerialPortInfo_systemLocation, "QSerialPortInfo_systemLocation");
 
 function  QSerialPortInfo_description(handle: not null QSerialPortInfoH) return QStringH;
 pragma Import(C,QSerialPortInfo_description, "QSerialPortInfo_description");
 
 function  QSerialPortInfo_manufacturer(handle: not null QSerialPortInfoH) return QStringH;
 pragma Import(C,QSerialPortInfo_manufacturer, "QSerialPortInfo_manufacturer");
 
 function  QSerialPortInfo_vendorIdentifier(handle: not null QSerialPortInfoH) return quint16;
 pragma Import(C,QSerialPortInfo_vendorIdentifier, "QSerialPortInfo_vendorIdentifier");
 
 function  QSerialPortInfo_productIdentifier(handle: not null QSerialPortInfoH) return quint16;
 pragma Import(C,QSerialPortInfo_productIdentifier, "QSerialPortInfo_productIdentifier");
 
 function  QSerialPortInfo_hasVendorIdentifier(handle: not null QSerialPortInfoH) return boolean;
 pragma Import(C,QSerialPortInfo_hasVendorIdentifier, "QSerialPortInfo_hasVendorIdentifier");
 
 function  QSerialPortInfo_hasProductIdentifier(handle: not null QSerialPortInfoH) return boolean;
 pragma Import(C,QSerialPortInfo_hasProductIdentifier, "QSerialPortInfo_hasProductIdentifier");
 
 function  QSerialPortInfo_isNull(handle: not null QSerialPortInfoH) return boolean;
 pragma Import(C,QSerialPortInfo_isNull, "QSerialPortInfo_isNull");
 
 function  QSerialPortInfo_isBusy(handle: not null QSerialPortInfoH) return boolean;
 pragma Import(C,QSerialPortInfo_isBusy, "QSerialPortInfo_isBusy");
 
 function  QSerialPortInfo_isValid(handle: not null QSerialPortInfoH) return boolean;
 pragma Import(C,QSerialPortInfo_isValid, "QSerialPortInfo_isValid");
 
 function  QSerialPortInfo_standardBaudRates return QIntListH;
 pragma Import(C,QSerialPortInfo_standardBaudRates, "QSerialPortInfo_standardBaudRates");
 
 function  QSerialPortInfo_availablePorts return QObjectListH;
 pragma Import(C,QSerialPortInfo_availablePorts, "QSerialPortInfo_availablePorts");
 
 function  QSerialPortInfo_availablePortAt(index:integer) return QSerialPortInfoH ;
 pragma Import(C,QSerialPortInfo_availablePortAt, "QSerialPortInfo_availablePortAt");
 
 function  QSerialPortInfo_availablePortsCount return integer;
 pragma Import(C,QSerialPortInfo_availablePortsCount, "QSerialPortInfo_availablePortsCount");
 
end;
