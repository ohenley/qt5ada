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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QCharRef is

function  QCharRef_unicode(ref:QCharRefH) return unsigned_short;
pragma Import(C,QCharRef_unicode, "QCharRef_unicode");

function  QCharRef_isNull(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isNull, "QCharRef_isNull");

function  QCharRef_isPrint(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isPrint, "QCharRef_isPrint");

function  QCharRef_isPunct(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isPunct, "QCharRef_isPunct");

function  QCharRef_isSpace(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isSpace, "QCharRef_isSpace");

function  QCharRef_isMark(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isMark, "QCharRef_isMark");

function  QCharRef_isLetter(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isLetter, "QCharRef_isLetter");

function  QCharRef_isNumber(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isNumber, "QCharRef_isNumber");

function  QCharRef_isLetterOrNumber(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isLetterOrNumber, "QCharRef_isLetterOrNumber");

function  QCharRef_isDigit(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isDigit, "QCharRef_isDigit");

function  QCharRef_isUpper(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isUpper, "QCharRef_isUpper");

function  QCharRef_isLower(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isLower, "QCharRef_isLower");

function  QCharRef_isTitleCase(ref:QCharRefH) return boolean;
pragma Import(C,QCharRef_isTitleCase, "QCharRef_isTitleCase");

function  QCharRef_digitValue(ref:QCharRefH) return integer;
pragma Import(C,QCharRef_digitValue, "QCharRef_digitValue");

function  QCharRef_toLower(ref:QCharRefH) return QCharH;
pragma Import(C,QCharRef_toLower, "QCharRef_toLower");

function  QCharRef_toUpper(ref:QCharRefH) return QCharH;
pragma Import(C,QCharRef_toUpper, "QCharRef_toUpper");

function  QCharRef_toTitleCase(ref:QCharRefH) return QCharH;
pragma Import(C,QCharRef_toTitleCase, "QCharRef_toTitleCase");

function  QCharRef_category(ref:QCharRefH) return integer;
pragma Import(C,QCharRef_category, "QCharRef_category");

function  QCharRef_direction(ref:QCharRefH) return integer;
pragma Import(C,QCharRef_direction, "QCharRef_direction");

function  QCharRef_joining(ref:QCharRefH) return integer;
pragma Import(C,QCharRef_joining, "QCharRef_joining");

function  QCharRef_mirroredChar(ref:QCharRefH) return QCharH;
pragma Import(C,QCharRef_mirroredChar, "QCharRef_mirroredChar");

function  QCharRef_decomposition(ref:QCharRefH) return QStringH;
pragma Import(C,QCharRef_decomposition, "QCharRef_decomposition");

function  QCharRef_decompositionTag(ref:QCharRefH) return integer;
pragma Import(C,QCharRef_decompositionTag, "QCharRef_decompositionTag");

function  QCharRef_combiningClass(ref:QCharRefH) return unsigned_char;
pragma Import(C,QCharRef_combiningClass, "QCharRef_combiningClass");

function  QCharRef_cell(ref:QCharRefH) return unsigned_char;
pragma Import(C,QCharRef_cell, "QCharRef_cell");

function  QCharRef_row(ref:QCharRefH) return unsigned_char;
pragma Import(C,QCharRef_row, "QCharRef_row");

end Qt.QCharRef;
