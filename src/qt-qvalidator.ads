--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2016                      บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QValidator           is

type QValidatorState is (QValidatorInvalid, QValidatorIntermediate, QValidatorAcceptable );

type QDoubleValidatorNotation is (QDoubleValidatorStandardNotation, QDoubleValidatorScientificNotation );

procedure QValidator_setLocale(handle: not null  QValidatorH; locale: QLocaleH);   
pragma Import(C,QValidator_setLocale,"QValidator_setLocale");

function  QValidator_locale(handle: not null  QValidatorH) return QLocaleH;
pragma Import(C,QValidator_locale,"QValidator_locale");

function QValidator_validate(handle: not null  QValidatorH; p1: QStringH; p2: PInteger) return  QValidatorState;   
pragma Import(C,QValidator_validate,"QValidator_validate");

procedure QValidator_fixup(handle: not null  QValidatorH; p1: QStringH);   
pragma Import(C,QValidator_fixup,"QValidator_fixup");

function QIntValidator_create(parent: QObjectH) return  QIntValidatorH;    
pragma Import(C,QIntValidator_create,"QIntValidator_create");

procedure QIntValidator_destroy(handle: not null  QIntValidatorH);   
pragma Import(C,QIntValidator_destroy,"QIntValidator_destroy");

function QIntValidator_create2(bottom: Integer; top: Integer; parent: QObjectH) return  QIntValidatorH;
pragma Import(C,QIntValidator_create2,"QIntValidator_create2");

function QIntValidator_validate(handle: not null  QIntValidatorH; p1: QStringH; p2: PInteger) return  QValidatorState;   
pragma Import(C,QIntValidator_validate,"QIntValidator_validate");

procedure QIntValidator_setBottom(handle: not null  QIntValidatorH; p1: Integer);   
pragma Import(C,QIntValidator_setBottom,"QIntValidator_setBottom");

procedure QIntValidator_setTop(handle: not null  QIntValidatorH; p1: Integer);   
pragma Import(C,QIntValidator_setTop,"QIntValidator_setTop");

procedure QIntValidator_setRange(handle: not null  QIntValidatorH; bottom: Integer; top: Integer);   
pragma Import(C,QIntValidator_setRange,"QIntValidator_setRange");

function QIntValidator_bottom(handle: not null  QIntValidatorH) return  Integer;   
pragma Import(C,QIntValidator_bottom,"QIntValidator_bottom");

function QIntValidator_top(handle: not null  QIntValidatorH) return  Integer;   
pragma Import(C,QIntValidator_top,"QIntValidator_top");

function QDoubleValidator_create(parent: QObjectH) return  QDoubleValidatorH;    
pragma Import(C,QDoubleValidator_create,"QDoubleValidator_create");

procedure QDoubleValidator_destroy(handle: not null  QDoubleValidatorH);   
pragma Import(C,QDoubleValidator_destroy,"QDoubleValidator_destroy");

function QDoubleValidator_create2(bottom: Double; top: Double; decimals: Integer; parent: QObjectH) return  QDoubleValidatorH;
pragma Import(C,QDoubleValidator_create2,"QDoubleValidator_create2");

function QDoubleValidator_validate(handle: not null  QDoubleValidatorH; p1: QStringH; p2: PInteger) return  QValidatorState;   
pragma Import(C,QDoubleValidator_validate,"QDoubleValidator_validate");

procedure QDoubleValidator_setRange(handle: not null  QDoubleValidatorH; bottom: Double; top: Double; decimals: Integer := 0);   
pragma Import(C,QDoubleValidator_setRange,"QDoubleValidator_setRange");

procedure QDoubleValidator_setBottom(handle: not null  QDoubleValidatorH; p1: Double);   
pragma Import(C,QDoubleValidator_setBottom,"QDoubleValidator_setBottom");

procedure QDoubleValidator_setTop(handle: not null  QDoubleValidatorH; p1: Double);   
pragma Import(C,QDoubleValidator_setTop,"QDoubleValidator_setTop");

procedure QDoubleValidator_setDecimals(handle: not null  QDoubleValidatorH; p1: Integer);   
pragma Import(C,QDoubleValidator_setDecimals,"QDoubleValidator_setDecimals");

procedure QDoubleValidator_setNotation(handle: not null  QDoubleValidatorH; p1: QDoubleValidatorNotation);   
pragma Import(C,QDoubleValidator_setNotation,"QDoubleValidator_setNotation");

function QDoubleValidator_bottom(handle: not null  QDoubleValidatorH) return  Double;   
pragma Import(C,QDoubleValidator_bottom,"QDoubleValidator_bottom");

function QDoubleValidator_top(handle: not null  QDoubleValidatorH) return  Double;   
pragma Import(C,QDoubleValidator_top,"QDoubleValidator_top");

function QDoubleValidator_decimals(handle: not null  QDoubleValidatorH) return  Integer;   
pragma Import(C,QDoubleValidator_decimals,"QDoubleValidator_decimals");

function QDoubleValidator_notation(handle: not null  QDoubleValidatorH) return  QDoubleValidatorNotation;   
pragma Import(C,QDoubleValidator_notation,"QDoubleValidator_notation");

function QRegExpValidator_create(parent: QObjectH := null) return  QRegExpValidatorH;    
pragma Import(C,QRegExpValidator_create,"QRegExpValidator_create");

procedure QRegExpValidator_destroy(handle: not null  QRegExpValidatorH);   
pragma Import(C,QRegExpValidator_destroy,"QRegExpValidator_destroy");

function QRegExpValidator_create2(rx: QRegExpH; parent: QObjectH := null) return  QRegExpValidatorH;
pragma Import(C,QRegExpValidator_create2,"QRegExpValidator_create2");

function QRegExpValidator_validate(handle: not null  QRegExpValidatorH; input: QStringH; pos: PInteger) return  QValidatorState;   
pragma Import(C,QRegExpValidator_validate,"QRegExpValidator_validate");

procedure QRegExpValidator_setRegExp(handle: not null  QRegExpValidatorH; rx: QRegExpH);   
pragma Import(C,QRegExpValidator_setRegExp,"QRegExpValidator_setRegExp");

function QRegExpValidator_regExp(handle: not null  QRegExpValidatorH) return  QRegExpH;   
pragma Import(C,QRegExpValidator_regExp,"QRegExpValidator_regExp");

-----------------------------------------------------------------------
function QIntValidator_create(bottom: Integer; top: Integer; parent: QObjectH) return  QIntValidatorH;
function QDoubleValidator_create(bottom: Double; top: Double; decimals: Integer; parent: QObjectH) return  QDoubleValidatorH;
function QRegExpValidator_create(rx: QRegExpH; parent: QObjectH) return  QRegExpValidatorH;

end Qt.QValidator;
