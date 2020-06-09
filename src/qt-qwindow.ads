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

package Qt.QWindow is

 type screenProc is access procedure(screen:QScreenH);
 pragma Convention(C,screenProc);

 type intProc    is access procedure(x:integer);
 pragma Convention(C,intProc);
 
 type boolProc   is access procedure(isVisible: boolean);
 pragma Convention(C,boolProc);
 
 type modalProc  is access procedure(modal:QtWindowModality);
 pragma Convention(C,modalProc);
 
 type orientProc is access procedure(orientation:QtScreenOrientation);
 pragma Convention(C,orientProc);
 
 type focusProc  is access procedure(object:QObjectH);
 pragma Convention(C,focusProc);

 type AncestorMode is (ExcludeTransients,IncludeTransients);
 pragma Convention(C,AncestorMode); 

 function  QWindow_create(parent:QWindowH := null) return QWindowH ;
 pragma Import(C,QWindow_create, "QWindow_create");
 
 function  QWindow_create2(parent:QScreenH) return QWindowH ;
 pragma Import(C,QWindow_create2, "QWindow_create2");
 
 procedure QWindow_destroy(handle: not null QWindowH);
 pragma Import(C,QWindow_destroy, "QWindow_destroy");
 
 procedure QWindow_setSurfaceType(handle: not null QWindowH; surfaceType: integer);
 pragma Import(C,QWindow_setSurfaceType, "QWindow_setSurfaceType");
 
 function  QWindow_surfaceType(handle: not null QWindowH) return integer;
 pragma Import(C,QWindow_surfaceType, "QWindow_surfaceType");
 
 function  QWindow_isVisible(handle: not null QWindowH) return boolean;
 pragma Import(C,QWindow_isVisible, "QWindow_isVisible");
 
 function  QWindow_winId(handle: not null QWindowH) return integer;
 pragma Import(C,QWindow_winId, "QWindow_winId");
 
 function  QWindow_parent(handle: not null QWindowH) return QWindowH;
 pragma Import(C,QWindow_parent, "QWindow_parent");
 
 procedure QWindow_setParent(handle: not null QWindowH;parent: not null QWindowH);
 pragma Import(C,QWindow_setParent, "QWindow_setParent");
 
 function  QWindow_isTopLevel(handle: not null QWindowH) return boolean;
 pragma Import(C,QWindow_isTopLevel, "QWindow_isTopLevel");
 
 function  QWindow_isModal(handle: not null QWindowH) return boolean;
 pragma Import(C,QWindow_isModal, "QWindow_isModal");
 
 function  QWindow_modality(handle: not null QWindowH) return QtWindowModality;
 pragma Import(C,QWindow_modality, "QWindow_modality");
 
 procedure QWindow_setModality(handle: not null QWindowH; winModality:QtWindowModality);
 pragma Import(C,QWindow_setModality, "QWindow_setModality");
 
 procedure QWindow_setFormat(handle: not null QWindowH; format:QSurfaceFormatH);
 pragma Import(C,QWindow_setFormat, "QWindow_setFormat");
 
 function  QWindow_format(handle: not null QWindowH) return QSurfaceFormatH;
 pragma Import(C,QWindow_format, "QWindow_format");
 
 function  QWindow_requestedFormat(handle: not null QWindowH) return QSurfaceFormatH;
 pragma Import(C,QWindow_requestedFormat, "QWindow_requestedFormat");
 
 procedure QWindow_setFlags(handle: not null QWindowH;flags:QtWindowFlags);
 pragma Import(C,QWindow_setFlags, "QWindow_setFlags");
 
 function  QWindow_flags(handle: not null QWindowH) return QtWindowFlags;
 pragma Import(C,QWindow_flags, "QWindow_flags");
 
 function  QWindow_type(handle: not null QWindowH) return QtWindowType;
 pragma Import(C,QWindow_type, "QWindow_type");
 
 function  QWindow_title(handle: not null QWindowH) return QStringH;
 pragma Import(C,QWindow_title, "QWindow_title");
 
 procedure QWindow_setOpacity(handle: not null QWindowH;level:qreal);
 pragma Import(C,QWindow_setOpacity, "QWindow_setOpacity");
 
 procedure QWindow_requestActivate(handle: not null QWindowH);
 pragma Import(C,QWindow_requestActivate, "QWindow_requestActivate");
 
 function  QWindow_isActive(handle: not null QWindowH) return boolean;
 pragma Import(C,QWindow_isActive, "QWindow_isActive");
 
 procedure QWindow_reportContentOrientationChange(handle: not null QWindowH; orientation:QtScreenOrientation);
 pragma Import(C,QWindow_reportContentOrientationChange, "QWindow_reportContentOrientationChange");
 
 function  QWindow_contentOrientation(handle: not null QWindowH) return QtScreenOrientation;
 pragma Import(C,QWindow_contentOrientation, "QWindow_contentOrientation");
 
-- function  QWindow_requestOrientation(handle: not null QWindowH; orientation:QtScreenOrientation) return boolean;
-- pragma Import(C,QWindow_requestOrientation, "QWindow_requestOrientation");
 
-- function  QWindow_orientation(handle: not null QWindowH) return QtScreenOrientation;
-- pragma Import(C,QWindow_orientation, "QWindow_orientation");
 
 function  QWindow_windowState(handle: not null QWindowH) return QtWindowState;
 pragma Import(C,QWindow_windowState, "QWindow_windowState");
 
 procedure QWindow_setWindowState(handle: not null QWindowH;state:QtWindowState);
 pragma Import(C,QWindow_setWindowState, "QWindow_setWindowState");
 
 procedure QWindow_setTransientParent(handle: not null QWindowH;parent: not null QWindowH);
 pragma Import(C,QWindow_setTransientParent, "QWindow_setTransientParent");
 
 function  QWindow_transientParent(handle: not null QWindowH) return QWindowH;
 pragma Import(C,QWindow_transientParent, "QWindow_transientParent");
 
 function  QWindow_isAncestorOf(handle: not null QWindowH; child:QWindowH; mode:AncestorMode  := IncludeTransients) return boolean;
 pragma Import(C,QWindow_isAncestorOf, "QWindow_isAncestorOf");
 
 function  QWindow_isExposed(handle: not null QWindowH) return boolean;
 pragma Import(C,QWindow_isExposed, "QWindow_isExposed");
 
 function  QWindow_minimumSize(handle: not null QWindowH) return QSizeH;
 pragma Import(C,QWindow_minimumSize, "QWindow_minimumSize");
 
 function  QWindow_maximumSize(handle: not null QWindowH) return QSizeH;
 pragma Import(C,QWindow_maximumSize, "QWindow_maximumSize");
 
 function  QWindow_baseSize(handle: not null QWindowH) return QSizeH;
 pragma Import(C,QWindow_baseSize, "QWindow_baseSize");
 
 function  QWindow_sizeIncrement(handle: not null QWindowH) return QSizeH;
 pragma Import(C,QWindow_sizeIncrement, "QWindow_sizeIncrement");
 
 procedure QWindow_setMinimumSize(handle: not null QWindowH; size:QSizeH);
 pragma Import(C,QWindow_setMinimumSize, "QWindow_setMinimumSize");
 
 procedure QWindow_setMaximumSize(handle: not null QWindowH; size:QSizeH);
 pragma Import(C,QWindow_setMaximumSize, "QWindow_setMaximumSize");
 
 procedure QWindow_setBaseSize(handle: not null QWindowH; size:QSizeH);
 pragma Import(C,QWindow_setBaseSize, "QWindow_setBaseSize");
 
 procedure QWindow_setSizeIncrement(handle: not null QWindowH; size:QSizeH);
 pragma Import(C,QWindow_setSizeIncrement, "QWindow_setSizeIncrement");
 
 procedure QWindow_setGeometry(handle: not null QWindowH;posX,posY,w,h:integer);
 pragma Import(C,QWindow_setGeometry, "QWindow_setGeometry");
 
 procedure QWindow_setGeometry2(handle: not null QWindowH; rect:QRectH);
 pragma Import(C,QWindow_setGeometry2, "QWindow_setGeometry2");
 
 function  QWindow_geometry(handle: not null QWindowH) return QRectH;
 pragma Import(C,QWindow_geometry, "QWindow_geometry");
 
 function  QWindow_frameMargins(handle: not null QWindowH) return QMarginsH;
 pragma Import(C,QWindow_frameMargins, "QWindow_frameMargins");
 
 function  QWindow_frameGeometry(handle: not null QWindowH) return QRectH;
 pragma Import(C,QWindow_frameGeometry, "QWindow_frameGeometry");
 
 function  QWindow_framePosition(handle: not null QWindowH) return QPointH;
 pragma Import(C,QWindow_framePosition, "QWindow_framePosition");
 
 procedure QWindow_setFramePosition(handle: not null QWindowH; point:QPointH);
 pragma Import(C,QWindow_setFramePosition, "QWindow_setFramePosition");
 
 function  QWindow_width(handle: not null QWindowH) return integer;
 pragma Import(C,QWindow_width, "QWindow_width");
 
 function  QWindow_height(handle: not null QWindowH) return integer;
 pragma Import(C,QWindow_height, "QWindow_height");
 
 function  QWindow_x(handle: not null QWindowH) return integer;
 pragma Import(C,QWindow_x, "QWindow_x");
 
 function  QWindow_y(handle: not null QWindowH) return integer;
 pragma Import(C,QWindow_y, "QWindow_y");
 
 function  QWindow_size(handle: not null QWindowH) return QSizeH;
 pragma Import(C,QWindow_size, "QWindow_size");
 
 function  QWindow_position(handle: not null QWindowH) return QPointH;
 pragma Import(C,QWindow_position, "QWindow_position");
 
 procedure QWindow_setPosition(handle: not null QWindowH;posX,posY:integer);
 pragma Import(C,QWindow_setPosition, "QWindow_setPosition");
 
 procedure QWindow_setPosition2(handle: not null QWindowH; point:QPointH);
 pragma Import(C,QWindow_setPosition2, "QWindow_setPosition2");
 
 procedure QWindow_resize(handle: not null QWindowH; w,h:integer);
 pragma Import(C,QWindow_resize, "QWindow_resize");
 
 procedure QWindow_resize2(handle: not null QWindowH; newSize:QSizeH);
 pragma Import(C,QWindow_resize2, "QWindow_resize2");
 
 procedure QWindow_setIcon(handle: not null QWindowH; icon:QIconH);
 pragma Import(C,QWindow_setIcon, "QWindow_setIcon");
 
 function  QWindow_icon(handle: not null QWindowH) return QIconH;
 pragma Import(C,QWindow_icon, "QWindow_icon");
 
 function  QWindow_handle(handle: not null QWindowH) return QPlatformWindowH;
 pragma Import(C,QWindow_handle, "QWindow_handle");
 
 function  QWindow_setKeyboardGrabEnabled(handle: not null QWindowH;grab:boolean) return boolean;
 pragma Import(C,QWindow_setKeyboardGrabEnabled, "QWindow_setKeyboardGrabEnabled");
 
 function  QWindow_setMouseGrabEnabled(handle: not null QWindowH;grab:boolean) return boolean;
 pragma Import(C,QWindow_setMouseGrabEnabled, "QWindow_setMouseGrabEnabled");
 
 function  QWindow_screen(handle: not null QWindowH) return QScreenH;
 pragma Import(C,QWindow_screen, "QWindow_screen");
 
 procedure QWindow_setScreen(handle: not null QWindowH;screen:QScreenH);
 pragma Import(C,QWindow_setScreen, "QWindow_setScreen");
 
 function  QWindow_accessibleRoot(handle: not null QWindowH) return QAccessibleInterfaceH;
 pragma Import(C,QWindow_accessibleRoot, "QWindow_accessibleRoot");
 
 function  QWindow_focusObject(handle: not null QWindowH) return QObjectH;
 pragma Import(C,QWindow_focusObject, "QWindow_focusObject");
 
 function  QWindow_mapToGlobal(handle: not null QWindowH; pos:QPointH) return QPointH;
 pragma Import(C,QWindow_mapToGlobal, "QWindow_mapToGlobal");
 
 function  QWindow_mapFromGlobal(handle: not null QWindowH; pos:QPointH) return QPointH;
 pragma Import(C,QWindow_mapFromGlobal, "QWindow_mapFromGlobal");
 
 procedure QWindow_setFilePath(handle: not null QWindowH;filePath:QStringH);
 pragma Import(C,QWindow_setFilePath, "QWindow_setFilePath");
 
 function  QWindow_filePath(handle: not null QWindowH) return QStringH;
 pragma Import(C,QWindow_filePath, "QWindow_filePath");
 
 procedure QWindow_setVisible(handle: not null QWindowH;isVisible: boolean);
 pragma Import(C,QWindow_setVisible, "QWindow_setVisible");
 
 procedure QWindow_show(handle: not null QWindowH);
 pragma Import(C,QWindow_show, "QWindow_show");
 
 procedure QWindow_hide(handle: not null QWindowH);
 pragma Import(C,QWindow_hide, "QWindow_hide");
 
 procedure QWindow_showMinimized(handle: not null QWindowH);
 pragma Import(C,QWindow_showMinimized, "QWindow_showMinimized");
 
 procedure QWindow_showMaximized(handle: not null QWindowH);
 pragma Import(C,QWindow_showMaximized, "QWindow_showMaximized");
 
 procedure QWindow_showFullScreen(handle: not null QWindowH);
 pragma Import(C,QWindow_showFullScreen, "QWindow_showFullScreen");
 
 procedure QWindow_showNormal(handle: not null QWindowH);
 pragma Import(C,QWindow_showNormal, "QWindow_showNormal");
 
 function  QWindow_close(handle: not null QWindowH) return boolean;
 pragma Import(C,QWindow_close, "QWindow_close");
 
 procedure QWindow_raise(handle: not null QWindowH);
 pragma Import(C,QWindow_raise, "QWindow_raise");
 
 procedure QWindow_lower(handle: not null QWindowH);
 pragma Import(C,QWindow_lower, "QWindow_lower");
 
 procedure QWindow_setTitle(handle: not null QWindowH;title:QStringH);
 pragma Import(C,QWindow_setTitle, "QWindow_setTitle");
 
 procedure QWindow_setX(handle: not null QWindowH;x:integer);
 pragma Import(C,QWindow_setX, "QWindow_setX");
 
 procedure QWindow_setY(handle: not null QWindowH;y:integer);
 pragma Import(C,QWindow_setY, "QWindow_setY");
 
 procedure QWindow_setWidth(handle: not null QWindowH;width:integer);
 pragma Import(C,QWindow_setWidth, "QWindow_setWidth");
 
 procedure QWindow_setHeight(handle: not null QWindowH;height:integer);
 pragma Import(C,QWindow_setHeight, "QWindow_setHeight");
 
 procedure QWindow_setMinimumWidth(handle: not null QWindowH;width:integer);
 pragma Import(C,QWindow_setMinimumWidth, "QWindow_setMinimumWidth");
 
 procedure QWindow_setMinimumHeight(handle: not null QWindowH;height:integer);
 pragma Import(C,QWindow_setMinimumHeight, "QWindow_setMinimumHeight");
 
 procedure QWindow_setMaximumWidth(handle: not null QWindowH;width:integer);
 pragma Import(C,QWindow_setMaximumWidth, "QWindow_setMaximumWidth");
 
 procedure QWindow_setMaximumHeight(handle: not null QWindowH;height:integer);
 pragma Import(C,QWindow_setMaximumHeight, "QWindow_setMaximumHeight");
 
 procedure QWindow_signal_slot_screenChanged(handle: not null QWindowH; hook: screenProc);
 pragma Import(C,QWindow_signal_slot_screenChanged, "QWindow_signal_slot_screenChanged");
 
 procedure QWindow_signal_slot_windowModalityChanged(handle: not null QWindowH; hook:modalProc);
 pragma Import(C,QWindow_signal_slot_windowModalityChanged, "QWindow_signal_slot_windowModalityChanged");
 
 procedure QWindow_signal_slot_xChanged(handle: not null QWindowH; hook:intProc);
 pragma Import(C,QWindow_signal_slot_xChanged, "QWindow_signal_slot_xChanged");
 
 procedure QWindow_signal_slot_yChanged(handle: not null QWindowH; hook:intProc);            
 pragma Import(C,QWindow_signal_slot_yChanged, "QWindow_signal_slot_yChanged");
 
 procedure QWindow_signal_slot_widthChanged(handle: not null QWindowH; hook:intProc);            
 pragma Import(C,QWindow_signal_slot_widthChanged, "QWindow_signal_slot_widthChanged");
 
 procedure QWindow_signal_slot_heightChanged(handle: not null QWindowH; hook:intProc);            
 pragma Import(C,QWindow_signal_slot_heightChanged, "QWindow_signal_slot_heightChanged");
 
 procedure QWindow_signal_slot_visibleChanged(handle: not null QWindowH; hook: boolProc);
 pragma Import(C,QWindow_signal_slot_visibleChanged, "QWindow_signal_slot_visibleChanged");
 
 procedure QWindow_signal_slot_contentOrientationChanged(handle: not null QWindowH; hook: orientProc);
 pragma Import(C,QWindow_signal_slot_contentOrientationChanged, "QWindow_signal_slot_contentOrientationChanged");
 
 procedure QWindow_signal_slot_focusObjectChanged(handle: not null QWindowH; hook: focusProc);
 pragma Import(C,QWindow_signal_slot_focusObjectChanged, "QWindow_signal_slot_focusObjectChanged");
 
------------------------------------------------------------------------- 
 function  QWindow_create(parent:QScreenH) return QWindowH ;
 procedure QWindow_setGeometry(handle: not null QWindowH; rect:QRectH);
 procedure QWindow_resize(handle: not null QWindowH; newSize:QSizeH);
 procedure QWindow_setPosition(handle: not null QWindowH; point:QPointH);

end;
