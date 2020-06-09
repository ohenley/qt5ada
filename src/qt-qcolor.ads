--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015                 บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QColor               is

type QColorSpec is (QColorInvalid, QColorRgb, QColorHsv, QColorCmyk );

function QColor_create return  QColorH;    
pragma Import(C,QColor_create,"QColor_create");

procedure QColor_destroy(handle: not null  QColorH);   
pragma Import(C,QColor_destroy,"QColor_destroy");

function QColor_create2(color: QtGlobalColor) return  QColorH;
pragma Import(C,QColor_create2,"QColor_create2");

function QColor_create3(r: Integer; g: Integer; b: Integer; a: Integer := 255) return QColorH;
pragma Import(C,QColor_create3,"QColor_create3");

function QColor_create4(rgb: QRgbH) return  QColorH;
pragma Import(C,QColor_create4,"QColor_create4");

function QColor_create5(name: QStringH) return  QColorH;
pragma Import(C,QColor_create5,"QColor_create5");

function QColor_create6(name: zstring) return  QColorH;
pragma Import(C,QColor_create6,"QColor_create6");

function QColor_create7(color: QColorH) return  QColorH;
pragma Import(C,QColor_create7,"QColor_create7");

function QColor_create8(spec: QColorSpec) return  QColorH;
pragma Import(C,QColor_create8,"QColor_create8");

function QColor_create9(value:QVariantH) return  QColorH;
pragma Import(C,QColor_create9,"QColor_create9");

function QColor_isValid(handle: not null  QColorH) return  Boolean;   
pragma Import(C,QColor_isValid,"QColor_isValid");

function  QColor_name(handle: not null  QColorH) return QStringH;
pragma Import(C,QColor_name,"QColor_name");

procedure QColor_setNamedColor(handle: not null  QColorH; name: QStringH);   
pragma Import(C,QColor_setNamedColor,"QColor_setNamedColor");

function  QColor_colorNames return  QStringListH;
pragma Import(C,QColor_colorNames,"QColor_colorNames");

function QColor_spec(handle: not null  QColorH) return  QColorSpec;   
pragma Import(C,QColor_spec,"QColor_spec");

function QColor_alpha(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_alpha,"QColor_alpha");

procedure QColor_setAlpha(handle: not null  QColorH; alpha: Integer);   
pragma Import(C,QColor_setAlpha,"QColor_setAlpha");

function QColor_alphaF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_alphaF,"QColor_alphaF");

procedure QColor_setAlphaF(handle: not null  QColorH; alpha: Double);   
pragma Import(C,QColor_setAlphaF,"QColor_setAlphaF");

function QColor_red(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_red,"QColor_red");

function QColor_green(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_green,"QColor_green");

function QColor_blue(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_blue,"QColor_blue");

procedure QColor_setRed(handle: not null  QColorH; red: Integer);   
pragma Import(C,QColor_setRed,"QColor_setRed");

procedure QColor_setGreen(handle: not null  QColorH; green: Integer);   
pragma Import(C,QColor_setGreen,"QColor_setGreen");

procedure QColor_setBlue(handle: not null  QColorH; blue: Integer);   
pragma Import(C,QColor_setBlue,"QColor_setBlue");

function QColor_redF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_redF,"QColor_redF");

function QColor_greenF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_greenF,"QColor_greenF");

function QColor_blueF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_blueF,"QColor_blueF");

procedure QColor_setRedF(handle: not null  QColorH; red: Double);   
pragma Import(C,QColor_setRedF,"QColor_setRedF");

procedure QColor_setGreenF(handle: not null  QColorH; green: Double);   
pragma Import(C,QColor_setGreenF,"QColor_setGreenF");

procedure QColor_setBlueF(handle: not null  QColorH; blue: Double);   
pragma Import(C,QColor_setBlueF,"QColor_setBlueF");

procedure QColor_getRgb(handle: not null  QColorH; r: PInteger; g: PInteger; b: PInteger; a: PInteger := null);   
pragma Import(C,QColor_getRgb,"QColor_getRgb");

procedure QColor_setRgb(handle: not null  QColorH; r: Integer; g: Integer; b: Integer; a: Integer := 255);    
pragma Import(C,QColor_setRgb,"QColor_setRgb");

procedure QColor_getRgbF(handle: not null  QColorH; r: PDouble; g: PDouble; b: PDouble; a: PDouble := null);   
pragma Import(C,QColor_getRgbF,"QColor_getRgbF");

procedure QColor_setRgbF(handle: not null  QColorH; r: Double; g: Double; b: Double; a: Double := 1.0);   
pragma Import(C,QColor_setRgbF,"QColor_setRgbF");

function QColor_rgba(handle: not null  QColorH) return  QRgbH;
pragma Import(C,QColor_rgba,"QColor_rgba");

procedure QColor_setRgba(handle: not null  QColorH; rgba: QRgbH);
pragma Import(C,QColor_setRgba,"QColor_setRgba");

function QColor_rgb(handle: not null  QColorH) return  QRgbH;
pragma Import(C,QColor_rgb,"QColor_rgb");

procedure QColor_setRgb2(handle: not null  QColorH; rgb: QRgbH);
pragma Import(C,QColor_setRgb2,"QColor_setRgb2");

function QColor_hue(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_hue,"QColor_hue");

function QColor_saturation(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_saturation,"QColor_saturation");

function QColor_value(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_value,"QColor_value");

function QColor_hueF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_hueF,"QColor_hueF");

function QColor_saturationF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_saturationF,"QColor_saturationF");

function QColor_valueF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_valueF,"QColor_valueF");

procedure QColor_getHsv(handle: not null  QColorH; h: PInteger; s: PInteger; v: PInteger; a: PInteger := null);   
pragma Import(C,QColor_getHsv,"QColor_getHsv");

procedure QColor_setHsv(handle: not null  QColorH; h: Integer; s: Integer; v: Integer; a: Integer := 255);   
pragma Import(C,QColor_setHsv,"QColor_setHsv");

procedure QColor_getHsvF(handle: not null  QColorH; h: PDouble; s: PDouble; v: PDouble; a: PDouble := null);   
pragma Import(C,QColor_getHsvF,"QColor_getHsvF");

procedure QColor_setHsvF(handle: not null  QColorH; h: Double; s: Double; v: Double; a: Double := 1.0);   
pragma Import(C,QColor_setHsvF,"QColor_setHsvF");

function QColor_cyan(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_cyan,"QColor_cyan");

function QColor_magenta(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_magenta,"QColor_magenta");

function QColor_yellow(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_yellow,"QColor_yellow");

function QColor_black(handle: not null  QColorH) return  Integer;   
pragma Import(C,QColor_black,"QColor_black");

function QColor_cyanF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_cyanF,"QColor_cyanF");

function QColor_magentaF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_magentaF,"QColor_magentaF");

function QColor_yellowF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_yellowF,"QColor_yellowF");

function QColor_blackF(handle: not null  QColorH) return  Double;   
pragma Import(C,QColor_blackF,"QColor_blackF");

procedure QColor_getCmyk(handle: not null  QColorH; c: PInteger; m: PInteger; y: PInteger; k: PInteger; a: PInteger := null);   
pragma Import(C,QColor_getCmyk,"QColor_getCmyk");

procedure QColor_setCmyk(handle: not null  QColorH; c: Integer; m: Integer; y: Integer; k: Integer; a: Integer := 255);   
pragma Import(C,QColor_setCmyk,"QColor_setCmyk");

procedure QColor_getCmykF(handle: not null  QColorH; c: PDouble; m: PDouble; y: PDouble; k: PDouble; a: PDouble := null);   
pragma Import(C,QColor_getCmykF,"QColor_getCmykF");

procedure QColor_setCmykF(handle: not null  QColorH; c: Double; m: Double; y: Double; k: Double; a: Double := 1.0);   
pragma Import(C,QColor_setCmykF,"QColor_setCmykF");

function  QColor_toRgb(handle: not null  QColorH) return  QColorH;
pragma Import(C,QColor_toRgb,"QColor_toRgb");

function  QColor_toHsv(handle: not null  QColorH) return  QColorH;
pragma Import(C,QColor_toHsv,"QColor_toHsv");

function  QColor_toCmyk(handle: not null  QColorH) return  QColorH;
pragma Import(C,QColor_toCmyk,"QColor_toCmyk");

function  QColor_convertTo(handle: not null  QColorH; colorSpec: QColorSpec) return  QColorH;
pragma Import(C,QColor_convertTo,"QColor_convertTo");

function  QColor_fromRgb(rgb: QRgbH) return  QColorH;
pragma Import(C,QColor_fromRgb,"QColor_fromRgb");

function  QColor_fromRgba(rgba: QRgbH) return  QColorH;
pragma Import(C,QColor_fromRgba,"QColor_fromRgba");

function  QColor_fromRgb2( r: Integer; g: Integer; b: Integer; a: Integer := 255) return  QColorH;
pragma Import(C,QColor_fromRgb2,"QColor_fromRgb2");

function  QColor_fromRgbF(r: Double; g: Double; b: Double; a: Double := 1.0) return  QColorH;
pragma Import(C,QColor_fromRgbF,"QColor_fromRgbF");

function  QColor_fromHsv(h: Integer; s: Integer; v: Integer; a: Integer := 255) return  QColorH;
pragma Import(C,QColor_fromHsv,"QColor_fromHsv");

function  QColor_fromHsvF(h: Double; s: Double; v: Double; a: Double := 1.0) return  QColorH;
pragma Import(C,QColor_fromHsvF,"QColor_fromHsvF");

function  QColor_fromCmyk(c: Integer; m: Integer; y: Integer; k: Integer; a: Integer := 255) return  QColorH;
pragma Import(C,QColor_fromCmyk,"QColor_fromCmyk");

function  QColor_fromCmykF(c: Double; m: Double; y: Double; k: Double; a: Double := 1.0) return  QColorH;
pragma Import(C,QColor_fromCmykF,"QColor_fromCmykF");

function  QColor_light(handle: not null  QColorH; f: Integer := 150) return  QColorH;
pragma Import(C,QColor_light,"QColor_light");

function  QColor_lighter(handle: not null  QColorH; f: Integer := 150) return  QColorH;
pragma Import(C,QColor_lighter,"QColor_lighter");

function  QColor_dark(handle: not null  QColorH; f: Integer := 200) return  QColorH;
pragma Import(C,QColor_dark,"QColor_dark");

function  QColor_darker(handle: not null  QColorH; f: Integer := 200) return  QColorH;
pragma Import(C,QColor_darker,"QColor_darker");

 procedure QColor_setRgba64(color: QColorH;r,g,b:Unsigned_Short;a:Unsigned_Short := 65535);
 pragma Import(C,QColor_setRgba64, "QColor_setRgba64");
 
-------------------------------------------------------------------
function  QColor_create(color: QtGlobalColor) return  QColorH;
function  QColor_create(r: Integer; g: Integer; b: Integer; a: Integer := 255) return QColorH;
function  QColor_create(rgb: QRgbH) return  QColorH;
function  QColor_create(name: QStringH) return  QColorH;
function  QColor_create(name: zstring) return  QColorH;
function  QColor_create(color: QColorH) return  QColorH;
function  QColor_create(spec: QColorSpec) return  QColorH;
function QColor_create(value:QVariantH) return  QColorH;
procedure QColor_setRgb(handle: not null  QColorH; rgb: QRgbH);
function  QColor_fromRgb(r: Integer; g: Integer; b: Integer; a: Integer := 255) return  QColorH;

end Qt.QColor;
