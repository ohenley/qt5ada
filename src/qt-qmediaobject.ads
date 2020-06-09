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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QMediaObject         is

 type boolProc is access procedure(ok:boolean := false);
 pragma Convention(C,boolProc);

 type intProc is access procedure(i:integer);
 pragma Convention(C,intProc);

 type voidProc is access procedure;
 pragma Convention(C,voidProc);

 type StringVariantProc is access procedure(key: not null QStringH; value: not null QVariantH);
 pragma Convention(C,StringVariantProc);

 procedure QMediaObject_destroy(handle: not null QMediaObjectH);
 pragma Import(C,QMediaObject_destroy, "QMediaObject_destroy");
 
 function  QMediaObject_metaData(handle: not null QMediaObjectH;key:QStringH) return  QVariantH;
 pragma Import(C,QMediaObject_metaData, "QMediaObject_metaData");
 
 function  QMediaObject_isAvailable(handle: not null QMediaObjectH) return  boolean;
 pragma Import(C,QMediaObject_isAvailable, "QMediaObject_isAvailable");
 
 function  QMediaObject_availability(handle: not null QMediaObjectH) return  integer;
 pragma Import(C,QMediaObject_availability, "QMediaObject_availability");
 
 function  QMediaObject_service(handle: not null QMediaObjectH) return  QMediaServiceH;
 pragma Import(C,QMediaObject_service, "QMediaObject_service");
 
 function  QMediaObject_notifyInterval(handle: not null QMediaObjectH) return  integer;
 pragma Import(C,QMediaObject_notifyInterval, "QMediaObject_notifyInterval");
 
 procedure QMediaObject_setNotifyInterval(handle: not null QMediaObjectH;milliSeconds:integer);
 pragma Import(C,QMediaObject_setNotifyInterval, "QMediaObject_setNotifyInterval");
 
 function  QMediaObject_bind(handle: not null QMediaObjectH;object:QObjectH) return  boolean;
 pragma Import(C,QMediaObject_bind, "QMediaObject_bind");
 
 procedure QMediaObject_unbind(handle: not null QMediaObjectH;object:QObjectH);
 pragma Import(C,QMediaObject_unbind, "QMediaObject_unbind");
 
 function  QMediaObject_isMetaDataAvailable(handle: not null QMediaObjectH) return  boolean;
 pragma Import(C,QMediaObject_isMetaDataAvailable, "QMediaObject_isMetaDataAvailable");
 
 function  QMediaObject_availableMetaData(handle: not null QMediaObjectH) return  QStringListH;
 pragma Import(C,QMediaObject_availableMetaData, "QMediaObject_availableMetaData");
 
 procedure QMediaObject_signal_slot_metaDataAvailableChanged(handle: not null QMediaObjectH; hook:boolProc);
 pragma Import(C,QMediaObject_signal_slot_metaDataAvailableChanged, "QMediaObject_signal_slot_metaDataAvailableChanged");
 
 procedure QMediaObject_signal_slot_availabilityChanged(handle: not null QMediaObjectH; hook:boolProc);
 pragma Import(C,QMediaObject_signal_slot_availabilityChanged, "QMediaObject_signal_slot_availabilityChanged");
 
 procedure QMediaObject_signal_slot_notifyIntervalChanged(handle: not null QMediaObjectH; hook:intProc);
 pragma Import(C,QMediaObject_signal_slot_notifyIntervalChanged, "QMediaObject_signal_slot_notifyIntervalChanged");
 
 procedure QMediaObject_signal_slot_metaDataChanged2(handle: not null QMediaObjectH; hook:voidProc);
 pragma Import(C,QMediaObject_signal_slot_metaDataChanged2, "QMediaObject_signal_slot_metaDataChanged2");
 
 procedure QMediaObject_signal_slot_metaDataChanged(handle: not null QMediaObjectH; hook:StringVariantProc);
 pragma Import(C,QMediaObject_signal_slot_metaDataChanged, "QMediaObject_signal_slot_metaDataChanged");

 procedure QMediaObject_signal_slot_availabilityChanged2(handle: not null QMediaObjectH; hook: IntProc);
 pragma Import(C,QMediaObject_signal_slot_availabilityChanged2, "QMediaObject_signal_slot_availabilityChanged2");
 
 -----------------------------------------------------------------------------------------------------------
 procedure QMediaObject_signal_slot_metaDataChanged(handle: not null QMediaObjectH; hook:voidProc);
 procedure QMediaObject_signal_slot_availabilityChanged(handle: not null QMediaObjectH; hook: IntProc);

end Qt.QMediaObject;
