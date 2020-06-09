--
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

with Qt.QVideoFrame;
with Qt.QUrl; use Qt.QUrl;
with builtin; use builtin;
package Qt.QQmlApplicationEngine is

 function  QQmlApplicationEngine_create(parent:QObjectH := null) return QQmlApplicationEngineH;
 pragma Import(C,QQmlApplicationEngine_create, "QQmlApplicationEngine_create");
 
 function  QQmlApplicationEngine_create2(url:QUrlH;parent:QObjectH := null) return QQmlApplicationEngineH;
 pragma Import(C,QQmlApplicationEngine_create2, "QQmlApplicationEngine_create2");
 
 function  QQmlApplicationEngine_create3(filePath:QStringH ;parent:QObjectH := null) return QQmlApplicationEngineH;
 pragma Import(C,QQmlApplicationEngine_create3, "QQmlApplicationEngine_create3");
 
 procedure QQmlApplicationEngine_destroy(handle:not null QQmlApplicationEngineH);
 pragma Import(C,QQmlApplicationEngine_destroy, "QQmlApplicationEngine_destroy");
 
 procedure QQmlApplicationEngine_load(handle:not null QQmlApplicationEngineH;url:QUrlH);
 pragma Import(C,QQmlApplicationEngine_load, "QQmlApplicationEngine_load");
 
 procedure QQmlApplicationEngine_load2(handle:not null QQmlApplicationEngineH;filePath:QStringH);
 pragma Import(C,QQmlApplicationEngine_load2, "QQmlApplicationEngine_load2");
 
 procedure QQmlApplicationEngine_loadData(handle:not null QQmlApplicationEngineH;data:zstring;url:QUrlH := QUrl_create);
 pragma Import(C,QQmlApplicationEngine_loadData, "QQmlApplicationEngine_loadData");
 
 type ObjectUrlCallbackH is access procedure(object:QObjectH; url: QUrlH);
 pragma convention(C,ObjectUrlCallbackH);
 
 procedure QQmlApplicationEngine_signal_slot_objectCreated(handle:not null QQmlApplicationEngineH; hook: ObjectUrlCallbackH);
 pragma Import(C,QQmlApplicationEngine_signal_slot_objectCreated, "QQmlApplicationEngine_signal_slot_objectCreated");
 
-------------------------------------------------------------------------
 function  QQmlApplicationEngine_create(url:QUrlH;parent:QObjectH := null) return QQmlApplicationEngineH;
 function  QQmlApplicationEngine_create(filePath:QStringH ;parent:QObjectH := null) return QQmlApplicationEngineH;
 procedure QQmlApplicationEngine_load(handle:not null QQmlApplicationEngineH;filePath:QStringH);

end;
