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
--   License, or (at your option) any later version.                      

package Qt.QCoreEvent is

 function  QEvent_create(qEventType:integer) return QEventH;
 pragma Import(C,QEvent_create, "QEvent_create");
 
 procedure QEvent_destroy(handle: not null QEventH);
 pragma Import(C,QEvent_destroy, "QEvent_destroy");
 
 function  QEvent_type(handle: not null QEventH) return Integer;
 pragma Import(C,QEvent_type, "QEvent_type");
 
 function  QEvent_spontaneous(handle: not null QEventH) return boolean;
 pragma Import(C,QEvent_spontaneous, "QEvent_spontaneous");
 
 procedure QEvent_setAccepted(handle: not null QEventH; accepted:boolean);
 pragma Import(C,QEvent_setAccepted, "QEvent_setAccepted");
 
 function  QEvent_isAccepted(handle: not null QEventH) return boolean;
 pragma Import(C,QEvent_isAccepted, "QEvent_isAccepted");
 
 procedure QEvent_accept(handle: not null QEventH);
 pragma Import(C,QEvent_accept, "QEvent_accept");
 
 procedure QEvent_ignore(handle: not null QEventH);
 pragma Import(C,QEvent_ignore, "QEvent_ignore");
 
 function  QTimerEvent_create(timerId:integer) return QTimerEventH;
 pragma Import(C,QTimerEvent_create, "QTimerEvent_create");
 
 procedure QTimerEvent_destroy(handle: not null QTimerEventH);
 pragma Import(C,QTimerEvent_destroy, "QTimerEvent_destroy");
 
 function  QTimerEvent_timerId(handle: not null QTimerEventH) return int;
 pragma Import(C,QTimerEvent_timerId, "QTimerEvent_timerId");
 
 function  QChildEvent_create(qEventType:integer;child: QObjectH) return QChildEventH;
 pragma Import(C,QChildEvent_create, "QChildEvent_create");
 
 procedure QChildEvent_destroy(handle: not null QChildEventH);
 pragma Import(C,QChildEvent_destroy, "QChildEvent_destroy");
 
 function  QChildEvent_child(handle: not null QChildEventH) return QObjectH;
 pragma Import(C,QChildEvent_child, "QChildEvent_child");
 
 function  QChildEvent_added(handle: not null QChildEventH) return boolean;
 pragma Import(C,QChildEvent_added, "QChildEvent_added");
 
 function  QChildEvent_polished(handle: not null QChildEventH) return boolean;
 pragma Import(C,QChildEvent_polished, "QChildEvent_polished");
 
 function  QChildEvent_removed(handle: not null QChildEventH) return boolean;
 pragma Import(C,QChildEvent_removed, "QChildEvent_removed");
 
 function  QDynamicPropertyChangeEvent_create(name: QByteArrayH) return QDynamicPropertyChangeEventH;
 pragma Import(C,QDynamicPropertyChangeEvent_create, "QDynamicPropertyChangeEvent_create");
 
 procedure QDynamicPropertyChangeEvent_destroy(handle: not null QDynamicPropertyChangeEventH);
 pragma Import(C,QDynamicPropertyChangeEvent_destroy, "QDynamicPropertyChangeEvent_destroy");
 
 function  QDynamicPropertyChangeEvent_propertyName(handle: not null QDynamicPropertyChangeEventH) return QByteArrayH;
 pragma Import(C,QDynamicPropertyChangeEvent_propertyName, "QDynamicPropertyChangeEvent_propertyName");
 
end Qt.QCoreEvent;
