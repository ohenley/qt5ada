--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QColorDialog         is

ShowAlphaChannel    : quint := 1;
NoButtons           : quint := 2;
DontUseNativeDialog : quint := 4; 

function  QColorDialog_create(parent:QWidgetH) return QColorDialogH;
pragma Import(C, QColorDialog_create ,"QColorDialog_create");

procedure QColorDialog_destroy(handle: not null  QColorDialogH);
pragma Import(C, QColorDialog_destroy ,"QColorDialog_destroy");

function  QColorDialog_create2(init: QColorH; parent:QWidgetH) return QColorDialogH;
pragma Import(C, QColorDialog_create2 , "QColorDialog_create2");

procedure QColorDialog_setCurrentColor(handle: not null  QColorDialogH; color: QColorH);
pragma Import(C, QColorDialog_setCurrentColor ,"QColorDialog_setCurrentColor");

function  QColorDialog_currentColor(handle: not null  QColorDialogH) return QColorH;
pragma Import(C, QColorDialog_currentColor  ,"QColorDialog_currentColor");

function  QColorDialog_selectedColor(handle: not null  QColorDialogH) return QColorH;
pragma Import(C, QColorDialog_selectedColor ,"QColorDialog_selectedColor");

function  QColorDialog_getColor(init: QColorH; parent:QWidgetH; title: QStringH;options: quint) return QColorH;
pragma Import(C,QColorDialog_getColor,"QColorDialog_getColor");

function  QColorDialog_getColor2(init: QColorH; parent: QWidgetH := null) return QColorH;
pragma Import(C,QColorDialog_getColor2,"QColorDialog_getColor2");

function QColorDialog_customCount return  Integer;   
pragma Import(C,QColorDialog_customCount,"QColorDialog_customCount");

function QColorDialog_customColor(p1: Integer) return  QColorH;   
pragma Import(C,QColorDialog_customColor,"QColorDialog_customColor");

procedure QColorDialog_setCustomColor(indx : Integer; rgb: QRgbH);
pragma Import(C,QColorDialog_setCustomColor,"QColorDialog_setCustomColor");

procedure QColorDialog_setStandardColor(indx: Integer; rgb: QRgbH);
pragma Import(C,QColorDialog_setStandardColor,"QColorDialog_setStandardColor");

procedure QColorDialog_setOptions(handle: not null  QColorDialogH; options: quint);
pragma Import(C,QColorDialog_setOptions ,"QColorDialog_setOptions");

function  QColorDialog_options(handle: not null  QColorDialogH) return quint;
pragma Import(C,QColorDialog_options ,"QColorDialog_options");

procedure QColorDialog_setOption(handle: not null  QColorDialogH ; option : quint; on:boolean);
pragma Import(C,QColorDialog_setOption ,"QColorDialog_setOption");

function  QColorDialog_testOption(handle: not null  QColorDialogH; option : quint) return boolean;
pragma Import(C,QColorDialog_testOption ,"QColorDialog_testOption");

procedure QColorDialog_open(handle: not null  QColorDialogH; receiver:QObjectH; member:charp);
pragma  Import(C,QColorDialog_open ,"QColorDialog_open");

procedure QColorDialog_setVisible(handle: not null  QColorDialogH; visible:boolean);
pragma  Import(C,QColorDialog_setVisible ,"QColorDialog_setVisible");

function QColorDialog_getRgba(rgb: QRgbH := 4294967295; ok: PBoolean := null; parent: QWidgetH := null) return QRgbH;
pragma Import(C,QColorDialog_getRgba,"QColorDialog_getRgba");

----------------------------------------------------------------------------------------------------------------
function  QColorDialog_create(init: QColorH; parent:QWidgetH) return QColorDialogH;
function  QColorDialog_getColor(init: QColorH; parent: QWidgetH := null) return QColorH;

end Qt.QColorDialog;
