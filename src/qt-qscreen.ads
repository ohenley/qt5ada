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

package Qt.QScreen is

 function  QScreen_depth(handle: not null QScreenH) return integer;
 pragma Import(C,QScreen_depth, "QScreen_depth");
 
 function  QScreen_handle(handle: not null QScreenH) return QScreenH;
 pragma Import(C,QScreen_handle, "QScreen_handle");
 
 function  QScreen_name(handle: not null QScreenH) return QStringH;
 pragma Import(C,QScreen_name, "QScreen_name");
 
 function  QScreen_size(handle: not null QScreenH) return QSizeH;
 pragma Import(C,QScreen_size, "QScreen_size");
 
 function  QScreen_geometry(handle: not null QScreenH) return QRectH;
 pragma Import(C,QScreen_geometry, "QScreen_geometry");
 
 function  QScreen_physicalSize(handle: not null QScreenH) return QSizeFH;
 pragma Import(C,QScreen_physicalSize, "QScreen_physicalSize");
 
 function  QScreen_physicalDotsPerInchX(handle: not null QScreenH) return qreal;
 pragma Import(C,QScreen_physicalDotsPerInchX, "QScreen_physicalDotsPerInchX");
 
 function  QScreen_physicalDotsPerInchY(handle: not null QScreenH) return qreal;
 pragma Import(C,QScreen_physicalDotsPerInchY, "QScreen_physicalDotsPerInchY");
 
 function  QScreen_physicalDotsPerInch(handle: not null QScreenH) return qreal;
 pragma Import(C,QScreen_physicalDotsPerInch, "QScreen_physicalDotsPerInch");
 
 function  QScreen_logicalDotsPerInchX(handle: not null QScreenH) return qreal;
 pragma Import(C,QScreen_logicalDotsPerInchX, "QScreen_logicalDotsPerInchX");
 
 function  QScreen_logicalDotsPerInchY(handle: not null QScreenH) return qreal;
 pragma Import(C,QScreen_logicalDotsPerInchY, "QScreen_logicalDotsPerInchY");
 
 function  QScreen_logicalDotsPerInch(handle: not null QScreenH) return qreal;
 pragma Import(C,QScreen_logicalDotsPerInch, "QScreen_logicalDotsPerInch");
 
 function  QScreen_devicePixelRatio(handle: not null QScreenH) return qreal;
 pragma Import(C,QScreen_devicePixelRatio, "QScreen_devicePixelRatio");
 
 function  QScreen_availableSize(handle: not null QScreenH) return QSizeH;
 pragma Import(C,QScreen_availableSize, "QScreen_availableSize");
 
 function  QScreen_availableGeometry(handle: not null QScreenH) return QRectH;
 pragma Import(C,QScreen_availableGeometry, "QScreen_availableGeometry");
 
 function  QScreen_virtualSiblings(handle: not null QScreenH) return QObjectListH;
 pragma Import(C,QScreen_virtualSiblings, "QScreen_virtualSiblings");
 
 function  QScreen_virtualSize(handle: not null QScreenH) return QSizeH;
 pragma Import(C,QScreen_virtualSize, "QScreen_virtualSize");
 
 function  QScreen_virtualGeometry(handle: not null QScreenH) return QRectH;
 pragma Import(C,QScreen_virtualGeometry, "QScreen_virtualGeometry");
 
 function  QScreen_availableVirtualSize(handle: not null QScreenH) return QSizeH;
 pragma Import(C,QScreen_availableVirtualSize, "QScreen_availableVirtualSize");
 
 function  QScreen_availableVirtualGeometry(handle: not null QScreenH) return QRectH;
 pragma Import(C,QScreen_availableVirtualGeometry, "QScreen_availableVirtualGeometry");
 
 function  QScreen_primaryOrientation(handle: not null QScreenH) return QtScreenOrientation;
 pragma Import(C,QScreen_primaryOrientation, "QScreen_primaryOrientation");
 
 function  QScreen_orientation(handle: not null QScreenH) return QtScreenOrientation;
 pragma Import(C,QScreen_orientation, "QScreen_orientation");
 
 function  QScreen_orientationUpdateMask(handle: not null QScreenH) return quint;
 pragma Import(C,QScreen_orientationUpdateMask, "QScreen_orientationUpdateMask");
 
 procedure QScreen_setOrientationUpdateMask(handle: not null QScreenH;mask:quint);
 pragma Import(C,QScreen_setOrientationUpdateMask, "QScreen_setOrientationUpdateMask");
 
 function  QScreen_angleBetween(handle: not null QScreenH;a,b:QtScreenOrientation) return integer;
 pragma Import(C,QScreen_angleBetween, "QScreen_angleBetween");
 
 function  QScreen_transformBetween(handle: not null QScreenH;a,b:QtScreenOrientation;target: QRectH) return QTransformH;
 pragma Import(C,QScreen_transformBetween, "QScreen_transformBetween");
 
 function  QScreen_mapBetween(handle: not null QScreenH;a,b:QtScreenOrientation;rect: QRectH) return QRectH;
 pragma Import(C,QScreen_mapBetween, "QScreen_mapBetween");
 
 function  QScreen_isPortrait(handle: not null QScreenH; orientation:QtScreenOrientation) return boolean;
 pragma Import(C,QScreen_isPortrait, "QScreen_isPortrait");
 
 function  QScreen_isLandscape(handle: not null QScreenH;orientation:QtScreenOrientation) return boolean;
 pragma Import(C,QScreen_isLandscape, "QScreen_isLandscape");
 
 function  QScreen_grabWindow(handle: not null QScreenH; window:quint := 0; x: integer := 0; y: integer := 0; w: integer := -1; h: integer := -1) return QPixmapH;
 pragma Import(C,QScreen_grabWindow, "QScreen_grabWindow");
 
 function  QScreen_refreshRate(handle: not null QScreenH) return qreal;
 pragma Import(C,QScreen_refreshRate, "QScreen_refreshRate");

 type rectProc is access procedure(rect:QRectH);
 pragma convention(C,rectProc);

 type sizeFProc is access procedure(size:QSizeH);
 pragma convention(C,sizeFProc);

 type qrealProc is access procedure(val:qreal);
 pragma convention(C,qrealProc);

 type intProc is access procedure(val:integer);
 pragma convention(C,intProc);

 procedure QScreen_signal_slot_geometryChanged(handle: not null QScreenH;hook: rectProc);
 pragma Import(C,QScreen_signal_slot_geometryChanged, "QScreen_signal_slot_geometryChanged");
 
 procedure QScreen_signal_slot_physicalSizeChanged(handle: not null QScreenH;hook: sizeFProc);
 pragma Import(C,QScreen_signal_slot_physicalSizeChanged, "QScreen_signal_slot_physicalSizeChanged");
 
 procedure QScreen_signal_slot_physicalDotsPerInchChanged(handle: not null QScreenH;hook: qrealProc);
 pragma Import(C,QScreen_signal_slot_physicalDotsPerInchChanged, "QScreen_signal_slot_physicalDotsPerInchChanged");
 
 procedure QScreen_signal_slot_logicalDotsPerInchChanged(handle: not null QScreenH;hook: qrealProc);
 pragma Import(C,QScreen_signal_slot_logicalDotsPerInchChanged, "QScreen_signal_slot_logicalDotsPerInchChanged");
 
 procedure QScreen_signal_slot_virtualGeometryChanged(handle: not null QScreenH;hook: rectProc);
 pragma Import(C,QScreen_signal_slot_virtualGeometryChanged, "QScreen_signal_slot_virtualGeometryChanged");
 
 procedure QScreen_signal_slot_primaryOrientationChanged(handle: not null QScreenH;hook: intProc);
 pragma Import(C,QScreen_signal_slot_primaryOrientationChanged, "QScreen_signal_slot_primaryOrientationChanged");
 
 procedure QScreen_signal_slot_orientationChanged(handle: not null QScreenH;hook: intProc);
 pragma Import(C,QScreen_signal_slot_orientationChanged, "QScreen_signal_slot_orientationChanged");
 
 procedure QScreen_signal_slot_refreshRateChanged(handle: not null QScreenH;hook: qrealProc);
 pragma Import(C,QScreen_signal_slot_refreshRateChanged, "QScreen_signal_slot_refreshRateChanged");
 
 
end;
