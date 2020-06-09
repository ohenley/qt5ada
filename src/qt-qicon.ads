--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2018                      บ
-- บ Copyright (C) 2012,2018                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QIcon                is

type QIconMode is (QIconNormal, QIconDisabled, QIconActive, QIconSelected );
pragma Convention(C,QIconMode);

type QIconState is ( QIconOn, QIconOff );
pragma Convention(C,QIconState);

function QIcon_create return  QIconH;    
pragma Import(C,QIcon_create,"QIcon_create");

procedure QIcon_destroy(handle: not null  QIconH);   
pragma Import(C,QIcon_destroy,"QIcon_destroy");

function QIcon_create2(pixmap: QPixmapH) return  QIconH;
pragma Import(C,QIcon_create2,"QIcon_create2");

function QIcon_create3(other: QIconH) return  QIconH;
pragma Import(C,QIcon_create3,"QIcon_create3");

function QIcon_create4(fileName: QStringH) return  QIconH;
pragma Import(C,QIcon_create4,"QIcon_create4");

function QIcon_create5(engine: QIconEngineH) return  QIconH;
pragma Import(C,QIcon_create5,"QIcon_create5");

function  QIcon_pixmap(handle: not null  QIconH; size: QSizeH; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) return QPixmapH;
pragma Import(C,QIcon_pixmap,"QIcon_pixmap");

function  QIcon_pixmap2(handle: not null  QIconH; w: Integer; h: Integer; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) return QPixmapH;
pragma Import(C,QIcon_pixmap2,"QIcon_pixmap2");

function  QIcon_pixmap3(handle: not null  QIconH; extent: Integer; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) return QPixmapH;
pragma Import(C,QIcon_pixmap3,"QIcon_pixmap3");

function  QIcon_actualSize(handle: not null  QIconH; size: QSizeH; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) return QSizeH;
pragma Import(C,QIcon_actualSize,"QIcon_actualSize");

procedure QIcon_paint(handle: not null  QIconH; painter: QPainterH; rect: QRectH; alignment: QtAlignment := QtAlignCenter; mode: QIconMode := QIconNormal; state: QIconState := QIconOff);    
pragma Import(C,QIcon_paint,"QIcon_paint");

procedure QIcon_paint2(handle: not null  QIconH; painter: QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; alignment: QtAlignment := QtAlignCenter; mode: QIconMode := QIconNormal; state: QIconState := QIconOff);
pragma Import(C,QIcon_paint2,"QIcon_paint2");

function QIcon_isNull(handle: not null  QIconH) return  Boolean;   
pragma Import(C,QIcon_isNull,"QIcon_isNull");

function QIcon_isDetached(handle: not null  QIconH) return  Boolean;   
pragma Import(C,QIcon_isDetached,"QIcon_isDetached");

procedure QIcon_detach(handle: not null  QIconH);   
pragma Import(C,QIcon_detach,"QIcon_detach");

--function QIcon_serialNumber(handle: not null  QIconH) return  Integer;   
--pragma Import(C,QIcon_serialNumber,"QIcon_serialNumber");

function QIcon_cacheKey(handle: not null  QIconH) return  int64;   
pragma Import(C,QIcon_cacheKey,"QIcon_cacheKey");

procedure QIcon_addPixmap(handle: not null  QIconH; pixmap: QPixmapH; mode: QIconMode := QIconNormal; state: QIconState := QIconOff);   
pragma Import(C,QIcon_addPixmap,"QIcon_addPixmap");

procedure QIcon_addFile(handle: not null  QIconH; fileName: QStringH; size: QSizeH := null; mode: QIconMode := QIconNormal; state: QIconState := QIconOff);   
pragma Import(C,QIcon_addFile,"QIcon_addFile");

 function  QIcon_availableSizes(handle: not null QIconH;mode:QIconMode := QIconNormal;state: QIconState := QIconOff) return QObjectListH;
 pragma Import(C,QIcon_availableSizes, "QIcon_availableSizes");
 
 function  QIcon_fromTheme(name:QStringH;fallback: QIconH) return QIconH;
 pragma Import(C,QIcon_fromTheme, "QIcon_fromTheme");
 
 function  QIcon_fromTheme2(name:QStringH) return QIconH;
 pragma Import(C,QIcon_fromTheme2, "QIcon_fromTheme2");
 
 function  QIcon_hasThemeIcon(name: QStringH) return boolean;
 pragma Import(C,QIcon_hasThemeIcon, "QIcon_hasThemeIcon");
 
 function  QIcon_themeSearchPaths return QStringListH;
 pragma Import(C,QIcon_themeSearchPaths, "QIcon_themeSearchPaths");
 
 procedure QIcon_setThemeSearchPaths(searchpath: QStringListH);
 pragma Import(C,QIcon_setThemeSearchPaths, "QIcon_setThemeSearchPaths");
 
 function  QIcon_themeName return QStringH;
 pragma Import(C,QIcon_themeName, "QIcon_themeName");
 
 procedure QIcon_setThemeName(path:QStringH);
 pragma Import(C,QIcon_setThemeName, "QIcon_setThemeName");
 
 function  QIcon_isMask(handle:not null QIconH) return boolean;
 pragma Import(C,QIcon_isMask, "QIcon_isMask");
 
 procedure QIcon_setIsMask(handle:not null QIconH;isMask:boolean);
 pragma Import(C,QIcon_setIsMask, "QIcon_setIsMask");
 
-----------------------------------------------------------------------
function QIcon_create(pixmap: QPixmapH) return  QIconH;
function QIcon_create(other: QIconH) return  QIconH;
function QIcon_create(fileName: QStringH) return  QIconH;
function QIcon_create(engine: QIconEngineH) return  QIconH;
function  QIcon_pixmap(handle: not null  QIconH; w: Integer; h: Integer; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) return QPixmapH;
function  QIcon_pixmap(handle: not null  QIconH; extent: Integer; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) return QPixmapH;
procedure QIcon_paint(handle: not null  QIconH; painter: QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; alignment: QtAlignment := QtAlignCenter; mode: QIconMode := QIconNormal; state: QIconState := QIconOff);
function  QIcon_fromTheme(name:QStringH) return QIconH;

 function  QIcon_fallbackSearchPaths return QStringListH;
 pragma Import(C,QIcon_fallbackSearchPaths, "QIcon_fallbackSearchPaths");
 
 procedure QIcon_setFallbackSearchPaths(paths: QStringListH);
 pragma Import(C,QIcon_setFallbackSearchPaths, "QIcon_setFallbackSearchPaths");

end Qt.QIcon;
