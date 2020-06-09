--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
with Qt.QString; use Qt.QString;
package Qt.QTranslator is

function QTranslator_create(parent: QObjectH := null) return QTranslatorH;
pragma Import(C,QTranslator_create,"QTranslator_create");

procedure QTranslator_destroy(handle: not null  QTranslatorH);   
pragma Import(C,QTranslator_destroy,"QTranslator_destroy");

function  QTranslator_translate(handle: not null  QTranslatorH; context: zstring; sourceText: zstring; comment: zstring := null_ZStr;n: Integer := -1) return QStringH;
pragma Import(C,QTranslator_translate,"QTranslator_translate");

function QTranslator_isEmpty(handle: not null  QTranslatorH) return  Boolean;   
pragma Import(C,QTranslator_isEmpty,"QTranslator_isEmpty");

function QTranslator_load(handle: not null  QTranslatorH; filename: QStringH; directory: QStringH := QString_create; search_delimiters: QStringH := QString_create; suffix: QStringH := QString_create) return Boolean; 
pragma Import(C,QTranslator_load,"QTranslator_load");

function QTranslator_load2(handle: not null  QTranslatorH; data: QByteH; len: Integer) return  Boolean;
pragma Import(C,QTranslator_load2,"QTranslator_load2");

function QTranslator_load3(handle: not null  QTranslatorH;locale:QLocaleH; filename: QStringH; directory: QStringH := QString_create; search_delimiters: QStringH := QString_create; suffix: QStringH := QString_create) return Boolean; 
pragma Import(C,QTranslator_load3,"QTranslator_load3");

---------------------------------------------------------------------
function QTranslator_load(handle: not null  QTranslatorH; data: QByteH; len: Integer) return  Boolean;
function QTranslator_load(handle: not null  QTranslatorH;locale:QLocaleH; filename: QStringH; directory: QStringH := QString_create; search_delimiters: QStringH := QString_create; suffix: QStringH := QString_create) return Boolean; 

end Qt.QTranslator;
