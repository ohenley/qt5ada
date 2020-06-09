-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2015                      บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QQuickView  is

 type QQuickViewResizeMode is (SizeViewToRootObject, SizeRootObjectToView);
 pragma convention(C,QQuickViewResizeMode); 
 
 type QQuickViewStatus  is (isNull, Ready, Loading, Error); 
 pragma convention(C,QQuickViewStatus); 
  
 function  QQuickView_create(parent:QWindowH := null) return QQuickViewH;
 pragma Import(C,QQuickView_create, "QQuickView_create");
 
 function  QQuickView_create2(engine:QQmlEngineH;parent:QWindowH := null) return QQuickViewH;
 pragma Import(C,QQuickView_create2, "QQuickView_create2");
 
 function  QQuickView_create3(source:QUrlH;parent:QWindowH := null) return QQuickViewH;
 pragma Import(C,QQuickView_create3, "QQuickView_create3");
 
 procedure QQuickView_delete(handle:not null QQuickViewH);
 pragma Import(C,QQuickView_delete, "QQuickView_delete");
 
 function  QQuickView_engine(handle:not null QQuickViewH) return QQmlEngineH;
 pragma Import(C,QQuickView_engine, "QQuickView_engine");
 
 function  QQuickView_source(handle:not null QQuickViewH) return QUrlH;
 pragma Import(C,QQuickView_source, "QQuickView_source");
 
 function  QQuickView_rootContext(handle:not null QQuickViewH) return QQmlContextH;
 pragma Import(C,QQuickView_rootContext, "QQuickView_rootContext");
 
 function  QQuickView_rootObject(handle:not null QQuickViewH) return QQuickItemH;
 pragma Import(C,QQuickView_rootObject, "QQuickView_rootObject");
 
 function  QQuickView_resizeMode(handle:not null QQuickViewH) return QQuickViewResizeMode;
 pragma Import(C,QQuickView_resizeMode, "QQuickView_resizeMode");
 
 procedure QQuickView_setResizeMode(handle:not null QQuickViewH;rm:QQuickViewResizeMode);
 pragma Import(C,QQuickView_setResizeMode, "QQuickView_setResizeMode");
 
 function  QQuickView_status(handle:not null QQuickViewH) return QQuickViewStatus;
 pragma Import(C,QQuickView_status, "QQuickView_status");
 
 function  QQuickView_errors(handle:not null QQuickViewH) return QObjectListH;
 pragma Import(C,QQuickView_errors, "QQuickView_errors");
 
 function  QQuickView_sizeHint(handle:not null QQuickViewH) return QSizeH;
 pragma Import(C,QQuickView_sizeHint, "QQuickView_sizeHint");
 
 function  QQuickView_initialSize(handle:not null QQuickViewH) return QSizeH;
 pragma Import(C,QQuickView_initialSize, "QQuickView_initialSize");
 
 procedure QQuickView_setSource(handle:not null QQuickViewH; url:QUrlH);
 pragma Import(C,QQuickView_setSource, "QQuickView_setSource");
 
 procedure QQuickView_setContent(handle:not null QQuickViewH; url:QUrlH; component:QQmlComponentH; item:QObjectH);
 pragma Import(C,QQuickView_setContent, "QQuickView_setContent");
 
 procedure QQuickView_signal_slot_statusChanged(handle:not null QQuickViewH; hook: intCallbackH);
 pragma Import(C,QQuickView_signal_slot_statusChanged, "QQuickView_signal_slot_statusChanged");

 procedure QQuickView_setTitle(handle:not null QQuickViewH;string:QStringH);
 pragma Import(C,QQuickView_setTitle, "QQuickView_setTitle");
 
 procedure QQuickView_show(handle:not null QQuickViewH);
 pragma Import(C,QQuickView_show, "QQuickView_show");
 
 procedure QQuickView_setColor2(handle: not null  QQuickViewH; color: QColorH);    
 pragma Import(C,QQuickView_setColor2,"QQuickView_setColor2");

 procedure QQuickView_setColor(handle: not null  QQuickViewH; color: QtGlobalColor);
 pragma Import(C,QQuickView_setColor,"QQuickView_setColor");

 procedure QQuickView_setFormat(handle:not null QQuickViewH;format:QSurfaceFormatH);
 pragma Import(C,QQuickView_setFormat, "QQuickView_setFormat");
 
 procedure QQuickView_setSource2(handle:not null QQuickViewH; url: QStringH);
 pragma Import(C,QQuickView_setSource2, "QQuickView_setSource2");
 
 --------------------------------------------------------------------
 function  QQuickView_create(engine:QQmlEngineH;parent:QWindowH := null) return QQuickViewH;
 procedure QQuickView_setColor(handle: not null  QQuickViewH; color: QColorH);    
 procedure QQuickView_setSource(handle:not null QQuickViewH; url: QStringH);

end;
