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

package Qt.QLCD                 is

type QLCDNumberMode is (QLCDNumberHex, QLCDNumberDec, QLCDNumberOct, QLCDNumberBin );
pragma Convention(C, QLCDNumberMode);

type QLCDNumberSegmentStyle is (QLCDNumberOutline, QLCDNumberFilled, QLCDNumberFlat );
pragma Convention(C, QLCDNumberSegmentStyle);

function QLCDNumber_create(parent: QWidgetH := null) return QLCDNumberH;    
pragma Import(C,QLCDNumber_create,"QLCDNumber_create");

procedure QLCDNumber_destroy(handle: not null  QLCDNumberH);   
pragma Import(C,QLCDNumber_destroy,"QLCDNumber_destroy");

function QLCDNumber_create2(numDigits: LongWord; parent: QWidgetH := null) return QLCDNumberH;
pragma Import(C,QLCDNumber_create2,"QLCDNumber_create2");

function QLCDNumber_smallDecimalPoint(handle: not null  QLCDNumberH) return  Boolean;   
pragma Import(C,QLCDNumber_smallDecimalPoint,"QLCDNumber_smallDecimalPoint");

--function QLCDNumber_numDigits(handle: not null  QLCDNumberH) return  Integer;   
--pragma Import(C,QLCDNumber_numDigits,"QLCDNumber_numDigits");
--procedure QLCDNumber_setNumDigits(handle: not null  QLCDNumberH; nDigits: Integer);   
--pragma Import(C,QLCDNumber_setNumDigits,"QLCDNumber_setNumDigits");

function QLCDNumber_checkOverflow(handle: not null  QLCDNumberH; num: Double) return  Boolean;    
pragma Import(C,QLCDNumber_checkOverflow,"QLCDNumber_checkOverflow");

function QLCDNumber_checkOverflow2(handle: not null  QLCDNumberH; num: Integer) return  Boolean;
pragma Import(C,QLCDNumber_checkOverflow2,"QLCDNumber_checkOverflow2");

function QLCDNumber_mode(handle: not null  QLCDNumberH) return  QLCDNumberMode;   
pragma Import(C,QLCDNumber_mode,"QLCDNumber_mode");

procedure QLCDNumber_setMode(handle: not null  QLCDNumberH; p1: QLCDNumberMode);   
pragma Import(C,QLCDNumber_setMode,"QLCDNumber_setMode");

function QLCDNumber_segmentStyle(handle: not null  QLCDNumberH) return  QLCDNumberSegmentStyle;   
pragma Import(C,QLCDNumber_segmentStyle,"QLCDNumber_segmentStyle");

procedure QLCDNumber_setSegmentStyle(handle: not null  QLCDNumberH; p1: QLCDNumberSegmentStyle);   
pragma Import(C,QLCDNumber_setSegmentStyle,"QLCDNumber_setSegmentStyle");

function QLCDNumber_value(handle: not null  QLCDNumberH) return  Double;   
pragma Import(C,QLCDNumber_value,"QLCDNumber_value");

function QLCDNumber_intValue(handle: not null  QLCDNumberH) return  Integer;   
pragma Import(C,QLCDNumber_intValue,"QLCDNumber_intValue");

function  QLCDNumber_sizeHint(handle: not null  QLCDNumberH) return QSizeH;
pragma Import(C,QLCDNumber_sizeHint,"QLCDNumber_sizeHint");

procedure QLCDNumber_display(handle: not null  QLCDNumberH; str: QStringH);    
pragma Import(C,QLCDNumber_display,"QLCDNumber_display");

procedure QLCDNumber_display2(handle: not null  QLCDNumberH; num: Integer);
pragma Import(C,QLCDNumber_display2,"QLCDNumber_display2");

procedure QLCDNumber_display3(handle: not null  QLCDNumberH; num: Double);
pragma Import(C,QLCDNumber_display3,"QLCDNumber_display3");

procedure QLCDNumber_setHexMode(handle: not null  QLCDNumberH);   
pragma Import(C,QLCDNumber_setHexMode,"QLCDNumber_setHexMode");

procedure QLCDNumber_setDecMode(handle: not null  QLCDNumberH);   
pragma Import(C,QLCDNumber_setDecMode,"QLCDNumber_setDecMode");

procedure QLCDNumber_setOctMode(handle: not null  QLCDNumberH);   
pragma Import(C,QLCDNumber_setOctMode,"QLCDNumber_setOctMode");

procedure QLCDNumber_setBinMode(handle: not null  QLCDNumberH);   
pragma Import(C,QLCDNumber_setBinMode,"QLCDNumber_setBinMode");

procedure QLCDNumber_setSmallDecimalPoint(handle: not null  QLCDNumberH; p1: Boolean);   
pragma Import(C,QLCDNumber_setSmallDecimalPoint,"QLCDNumber_setSmallDecimalPoint");

type   QLCDNumber_overflowEvent is access procedure ;
pragma Convention(C, QLCDNumber_overflowEvent);
 
 procedure QLCDNumber_signal_slot_overflow(handle: not null QLCDNumberH; hook:QLCDNumber_overflowEvent);
 pragma Import(C,QLCDNumber_signal_slot_overflow, "QLCDNumber_signal_slot_overflow");
 
----------------------------------------------------------------
function QLCDNumber_create(numDigits: LongWord; parent: QWidgetH := null) return QLCDNumberH;
function QLCDNumber_checkOverflow(handle: not null  QLCDNumberH; num: Integer) return  Boolean;
procedure QLCDNumber_display(handle: not null  QLCDNumberH; num: Integer);
procedure QLCDNumber_display(handle: not null  QLCDNumberH; num: Double);

end Qt.QLCD;
