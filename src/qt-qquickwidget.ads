--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QQuickWidget  is

 type QQmlErrorListH is new QListH;

 type ResizeMode is (SizeViewToRootObject, SizeRootObjectToView);
 pragma convention(C,ResizeMode);

 type Status is (NullStatus, Ready, Loading, Error); 
 pragma convention(C,Status);


 function  QQuickWidget_create(parent:QWidgetH := null) return QQuickWidgetH;
 pragma Import(C,QQuickWidget_create, "QQuickWidget_create");
 
 function  QQuickWidget_create2( engine:QQmlEngineH; parent:QWidgetH) return QQuickWidgetH;
 pragma Import(C,QQuickWidget_create2, "QQuickWidget_create2");
 
 function  QQuickWidget_create3( source:QUrlH;parent:QWidgetH := null) return QQuickWidgetH;
 pragma Import(C,QQuickWidget_create3, "QQuickWidget_create3");
 
 procedure QQuickWidget_delete(handle:not null QQuickWidgetH);
 pragma Import(C,QQuickWidget_delete, "QQuickWidget_delete");
 
 function  QQuickWidget_engine(handle:not null QQuickWidgetH) return QQmlEngineH;
 pragma Import(C,QQuickWidget_engine, "QQuickWidget_engine");
 
 function  QQuickWidget_source(handle:not null QQuickWidgetH) return QUrlH;
 pragma Import(C,QQuickWidget_source, "QQuickWidget_source");
 
 function  QQuickWidget_rootContext(handle:not null QQuickWidgetH) return QQmlContextH;
 pragma Import(C,QQuickWidget_rootContext, "QQuickWidget_rootContext");
 
 function  QQuickWidget_rootObject(handle:not null QQuickWidgetH) return QQuickItemH;
 pragma Import(C,QQuickWidget_rootObject, "QQuickWidget_rootObject");
 
 function  QQuickWidget_resizeMode(handle:not null QQuickWidgetH) return ResizeMode;
 pragma Import(C,QQuickWidget_resizeMode, "QQuickWidget_resizeMode");
 
 procedure QQuickWidget_setResizeMode(handle:not null QQuickWidgetH;rm:ResizeMode);
 pragma Import(C,QQuickWidget_setResizeMode, "QQuickWidget_setResizeMode");
 
 function  QQuickWidget_status(handle:not null QQuickWidgetH) return Status;
 pragma Import(C,QQuickWidget_status, "QQuickWidget_status");
 
 function  QQuickWidget_errors(handle:not null QQuickWidgetH) return QQmlErrorListH;
 pragma Import(C,QQuickWidget_errors, "QQuickWidget_errors");
 
 function  QQuickWidget_sizeHint(handle:not null QQuickWidgetH) return QSizeH;
 pragma Import(C,QQuickWidget_sizeHint, "QQuickWidget_sizeHint");
 
 function  QQuickWidget_initialSize(handle:not null QQuickWidgetH) return QSizeH;
 pragma Import(C,QQuickWidget_initialSize, "QQuickWidget_initialSize");
 
 procedure QQuickWidget_setFormat(handle:not null QQuickWidgetH; format:QSurfaceFormatH);
 pragma Import(C,QQuickWidget_setFormat, "QQuickWidget_setFormat");
 
 function  QQuickWidget_format(handle:not null QQuickWidgetH) return QSurfaceFormatH;
 pragma Import(C,QQuickWidget_format, "QQuickWidget_format");
 
 procedure QQuickWidget_setSource(handle:not null QQuickWidgetH ;url:QUrlH);
 pragma Import(C,QQuickWidget_setSource, "QQuickWidget_setSource");
 
 procedure QQuickWidget_setContent(handle:not null QQuickWidgetH; url:QUrlH; component :QQmlComponentH; item :QObjectH);
 pragma Import(C,QQuickWidget_setContent, "QQuickWidget_setContent");
 
 function  QQuickWidget_errorsCount(list:QQmlErrorListH) return integer;
 pragma Import(C,QQuickWidget_errorsCount, "QQuickWidget_errorsCount");
 
 function  QQuickWidget_errorAt(list:QQmlErrorListH; index:integer := 0) return QQmlErrorH;
 pragma Import(C,QQuickWidget_errorAt, "QQuickWidget_errorAt");

 type intProc is access procedure(widgetStatus:Status);
 pragma convention(c,intProc);

 type intStringProc is access procedure(error: integer; message:QStringH);
 pragma convention(c,intStringProc);

 procedure QQuickWidget_signal_slot_statusChanged(handle:not null QQuickWidgetH; hook: intProc);
 pragma Import(C,QQuickWidget_signal_slot_statusChanged, "QQuickWidget_signal_slot_statusChanged");
 
 procedure QQuickWidget_signal_slot_sceneGraphError(handle:not null QQuickWidgetH;hook: intStringProc);
 pragma Import(C,QQuickWidget_signal_slot_sceneGraphError, "QQuickWidget_signal_slot_sceneGraphError");
 
------------------------------------------------------------------------
 function  QQuickWidget_create( engine:QQmlEngineH; parent:QWidgetH) return QQuickWidgetH;
 function  QQuickWidget_create( source:QUrlH;parent:QWidgetH := null) return QQuickWidgetH;

end;
