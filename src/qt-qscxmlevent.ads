--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2016                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QScxmlEvent is

 type EventType is (PlatformEvent,InternalEvent,ExternalEvent); 
 pragma convention(C,EventType);

 function  QScxmlEvent_create return QEventH;
 pragma Import(C,QScxmlEvent_create, "QScxmlEvent_create");
 
 function  QScxmlEvent_create2(other:QEventH) return QEventH;
 pragma Import(C,QScxmlEvent_create2, "QScxmlEvent_create2");
 
 procedure QScxmlEvent_destroy(handle:not null QEventH);
 pragma Import(C,QScxmlEvent_destroy, "QScxmlEvent_destroy");
 
 function  QScxmlEvent_name(handle:not null QEventH) return QStringH;
 pragma Import(C,QScxmlEvent_name, "QScxmlEvent_name");
 
 procedure QScxmlEvent_setName(handle:not null QEventH;name:QStringH);
 pragma Import(C,QScxmlEvent_setName, "QScxmlEvent_setName");
 
 function  QScxmlEvent_eventType(handle:not null QEventH) return EventType;
 pragma Import(C,QScxmlEvent_eventType, "QScxmlEvent_eventType");
 
 procedure QScxmlEvent_setEventType(handle:not null QEventH;tp:EventType);
 pragma Import(C,QScxmlEvent_setEventType, "QScxmlEvent_setEventType");
 
 function  QScxmlEvent_scxmlType(handle:not null QEventH) return QStringH;
 pragma Import(C,QScxmlEvent_scxmlType, "QScxmlEvent_scxmlType");
 
 function  QScxmlEvent_sendId(handle:not null QEventH) return QStringH;
 pragma Import(C,QScxmlEvent_sendId, "QScxmlEvent_sendId");
 
 procedure QScxmlEvent_setSendId(handle:not null QEventH;sendId:QStringH);
 pragma Import(C,QScxmlEvent_setSendId, "QScxmlEvent_setSendId");
 
 function  QScxmlEvent_origin(handle:not null QEventH) return QStringH;
 pragma Import(C,QScxmlEvent_origin, "QScxmlEvent_origin");
 
 procedure QScxmlEvent_setOrigin(handle:not null QEventH;origin:QStringH);
 pragma Import(C,QScxmlEvent_setOrigin, "QScxmlEvent_setOrigin");
 
 function  QScxmlEvent_originType(handle:not null QEventH) return QStringH;
 pragma Import(C,QScxmlEvent_originType, "QScxmlEvent_originType");
 
 procedure QScxmlEvent_setOriginType(handle:not null QEventH;originType:QStringH);
 pragma Import(C,QScxmlEvent_setOriginType, "QScxmlEvent_setOriginType");
 
 function  QScxmlEvent_invokeId(handle:not null QEventH) return QStringH;
 pragma Import(C,QScxmlEvent_invokeId, "QScxmlEvent_invokeId");
 
 procedure QScxmlEvent_setInvokeId(handle:not null QEventH;invokeId:QStringH);
 pragma Import(C,QScxmlEvent_setInvokeId, "QScxmlEvent_setInvokeId");
 
 function  QScxmlEvent_delay(handle:not null QEventH) return integer;
 pragma Import(C,QScxmlEvent_delay, "QScxmlEvent_delay");
 
 procedure QScxmlEvent_setDelay(handle:not null QEventH;delayInMiliSecs:integer);
 pragma Import(C,QScxmlEvent_setDelay, "QScxmlEvent_setDelay");
 
 procedure QScxmlEvent_clear(handle:not null QEventH);
 pragma Import(C,QScxmlEvent_clear, "QScxmlEvent_clear");
 
 function  QScxmlEvent_data(handle:not null QEventH) return QVariantH;
 pragma Import(C,QScxmlEvent_data, "QScxmlEvent_data");
 
 procedure QScxmlEvent_setData(handle:not null QEventH;data:QVariantH);
 pragma Import(C,QScxmlEvent_setData, "QScxmlEvent_setData");
 
 function  QScxmlEvent_isErrorEvent(handle:not null QEventH) return boolean;
 pragma Import(C,QScxmlEvent_isErrorEvent, "QScxmlEvent_isErrorEvent");
 
 function  QScxmlEvent_errorMessage(handle:not null QEventH) return QStringH;
 pragma Import(C,QScxmlEvent_errorMessage, "QScxmlEvent_errorMessage");
 
 procedure QScxmlEvent_setErrorMessage(handle:not null QEventH;message:QStringH);
 pragma Import(C,QScxmlEvent_setErrorMessage, "QScxmlEvent_setErrorMessage");
 
 function  QScxmlEvent_create(other:QEventH) return QEventH;
end;
