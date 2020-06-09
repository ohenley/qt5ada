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

package Qt.QChar is

 CHAR_NoCategory                   : constant := 0;
 CHAR_Mark_NonSpacing              : constant := 1;
 CHAR_Mark_SpacingCombining        : constant := 2;
 CHAR_Mark_Enclosing               : constant := 3;
 CHAR_Number_DecimalDigit          : constant := 4;
 CHAR_Number_Letter                : constant := 5;
 CHAR_Number_Other                 : constant := 6;
 CHAR_Separator_Space              : constant := 7;
 CHAR_Separator_Line               : constant := 8;
 CHAR_Separator_Paragraph          : constant := 9;
 CHAR_Other_Control                : constant := 10;
 CHAR_Other_Format                 : constant := 11;
 CHAR_Other_Surrogate              : constant := 12;
 CHAR_Other_PrivateUse             : constant := 13;
 CHAR_Other_NotAssigned            : constant := 14;
 CHAR_Letter_Uppercase             : constant := 15;
 CHAR_Letter_Lowercase             : constant := 16;
 CHAR_Letter_Titlecase             : constant := 17;
 CHAR_Letter_Modifier              : constant := 18;
 CHAR_Letter_Other                 : constant := 19;
 CHAR_Punctuation_Connector        : constant := 20;
 CHAR_Punctuation_Dash             : constant := 21;
 CHAR_Punctuation_Dask             : constant := 21;
 CHAR_Punctuation_Open             : constant := 22;
 CHAR_Punctuation_Close            : constant := 23;
 CHAR_Punctuation_InitialQuote     : constant := 24;
 CHAR_Punctuation_FinalQuote       : constant := 25;
 CHAR_Punctuation_Other            : constant := 26;
 CHAR_Symbol_Math                  : constant := 27;
 CHAR_Symbol_Currency              : constant := 28;
 CHAR_Symbol_Modifier              : constant := 29;
 CHAR_Symbol_Other                 : constant := 30;
 CHAR_DirL                         : constant := 0;
 CHAR_DirR                         : constant := 1;
 CHAR_DirEN                        : constant := 2;
 CHAR_DirES                        : constant := 3;
 CHAR_DirET                        : constant := 4;
 CHAR_DirAN                        : constant := 5;
 CHAR_DirCS                        : constant := 6;
 CHAR_DirB                         : constant := 7;
 CHAR_DirS                         : constant := 8;
 CHAR_DirWS                        : constant := 9;
 CHAR_DirON                        : constant := 10;
 CHAR_DirLRE                       : constant := 11;
 CHAR_DirLRO                       : constant := 12;
 CHAR_DirAL                        : constant := 13;
 CHAR_DirRLE                       : constant := 14;
 CHAR_DirRLO                       : constant := 15;
 CHAR_DirPDF                       : constant := 16;
 CHAR_DirNSM                       : constant := 17;
 CHAR_DirBN                        : constant := 18;
 CHAR_Single                       : constant := 0;
 CHAR_Canonical                    : constant := 1;
 CHAR_Font                         : constant := 2;
 CHAR_NoBreak                      : constant := 3;
 CHAR_Initial                      : constant := 4;
 CHAR_Medial                       : constant := 5;
 CHAR_Final                        : constant := 6;
 CHAR_Isolated                     : constant := 7;
 CHAR_Circle                       : constant := 8;
 CHAR_Super                        : constant := 9;
 CHAR_Sub                          : constant := 10;
 CHAR_Vertical                     : constant := 11;
 CHAR_Wide                         : constant := 12;
 CHAR_Narrow                       : constant := 13;
 CHAR_Small                        : constant := 14;
 CHAR_Square                       : constant := 15;
 CHAR_Compat                       : constant := 16;
 CHAR_Fraction                     : constant := 17;
 CHAR_OtherJoining                 : constant := 0;
 CHAR_Dual                         : constant := 1;
 CHAR_Right                        : constant := 2;
 CHAR_Center                       : constant := 3;
 CHAR_Combining_BelowLeftAttached  : constant := 200;
 CHAR_Combining_BelowAttached      : constant := 202;
 CHAR_Combining_BelowRightAttached : constant := 204;
 CHAR_Combining_LeftAttached       : constant := 208;
 CHAR_Combining_RightAttached      : constant := 210;
 CHAR_Combining_AboveLeftAttached  : constant := 212;
 CHAR_Combining_AboveAttached      : constant := 214;
 CHAR_Combining_AboveRightAttached : constant := 216;
 CHAR_Combining_BelowLeft          : constant := 218;
 CHAR_Combining_Below              : constant := 220;
 CHAR_Combining_BelowRight         : constant := 222;
 CHAR_Combining_Left               : constant := 224;
 CHAR_Combining_Right              : constant := 226;
 CHAR_Combining_AboveLeft          : constant := 228;
 CHAR_Combining_Above              : constant := 230;
 CHAR_Combining_AboveRight         : constant := 232;
 CHAR_Combining_DoubleBelow        : constant := 233;
 CHAR_Combining_DoubleAbove        : constant := 234;
 CHAR_Combining_IotaSubscript      : constant := 240;

 Unicode_Unassigned                : constant := 0; 
 Unicode_1_1                       : constant := 1;
 Unicode_2_0                       : constant := 2;
 Unicode_2_1_2                     : constant := 3;
 Unicode_3_0                       : constant := 4;
 Unicode_3_1                       : constant := 5;
 Unicode_3_2                       : constant := 6;
 Unicode_4_0                       : constant := 7;
 Unicode_4_1                       : constant := 8;
 Unicode_5_0                       : constant := 9;
 Unicode_5_1                       : constant := 10;
 Unicode_5_2                       : constant := 11;
 Unicode_6_0                       : constant := 12;
 Unicode_6_1                       : constant := 13;

function  QChar_create return QCharH;
pragma Import(C,QChar_create, "QChar_create");

function  QChar1_create(c:char) return QCharH;
pragma Import(C,QChar1_create, "QChar1_create");

function  QChar2_create(c:unsigned_char) return QCharH;
pragma Import(C,QChar2_create, "QChar2_create");

function  QChar3_create(c,r:unsigned_char) return QCharH;
pragma Import(C,QChar3_create, "QChar3_create");

function  QChar4_create(c:QCharH) return QCharH;
pragma Import(C,QChar4_create, "QChar4_create");

function  QChar5_create(rc:unsigned_short) return QCharH;
pragma Import(C,QChar5_create, "QChar5_create");

function  QChar6_create(rc:short_integer) return QCharH;
pragma Import(C,QChar6_create, "QChar6_create");

function  QChar7_create(rc:quint) return QCharH;
pragma Import(C,QChar7_create, "QChar7_create");

function  QChar8_create(rc:integer) return QCharH;
pragma Import(C,QChar8_create, "QChar8_create");

function  QChar_digitValue(char:QCharH) return integer;
pragma Import(C,QChar_digitValue, "QChar_digitValue");

function  QChar_lower(char:QCharH) return QCharH;
pragma Import(C,QChar_lower, "QChar_lower");

function  QChar_upper(char:QCharH) return QCharH;
pragma Import(C,QChar_upper, "QChar_upper");

function  QChar_category(char:QCharH) return integer;
pragma Import(C,QChar_category, "QChar_category");

function  QChar_direction(char:QCharH) return integer;
pragma Import(C,QChar_direction, "QChar_direction");

function  QChar_joining(char:QCharH) return integer;
pragma Import(C,QChar_joining, "QChar_joining");

function  QChar_mirrored(char:QCharH) return integer;
pragma Import(C,QChar_mirrored, "QChar_mirrored");

function  QChar_mirroredChar(char:QCharH) return QCharH;
pragma Import(C,QChar_mirroredChar, "QChar_mirroredChar");

function  QChar_decomposition(char:QCharH) return QStringH;
pragma Import(C,QChar_decomposition, "QChar_decomposition");

function  QChar_decompositionTag(char:QCharH) return integer;
pragma Import(C,QChar_decompositionTag, "QChar_decompositionTag");

function  QChar_combiningClass(char:QCharH) return unsigned_char;
pragma Import(C,QChar_combiningClass, "QChar_combiningClass");

function  QChar_latin1(char:QCharH) return character;
pragma Import(C,QChar_latin1, "QChar_latin1");

function  QChar_unicode(char:QCharH) return unsigned_short;
pragma Import(C,QChar_unicode, "QChar_unicode");

function  QChar_isNull(char:QCharH) return integer;
pragma Import(C,QChar_isNull, "QChar_isNull");

function  QChar_isPrint(char:QCharH) return integer;
pragma Import(C,QChar_isPrint, "QChar_isPrint");

function  QChar_isPunct(char:QCharH) return integer;
pragma Import(C,QChar_isPunct, "QChar_isPunct");

function  QChar_isSpace(char:QCharH) return integer;
pragma Import(C,QChar_isSpace, "QChar_isSpace");

function  QChar_isMark(char:QCharH) return integer;
pragma Import(C,QChar_isMark, "QChar_isMark");

function  QChar_isLetter(char:QCharH) return integer;
pragma Import(C,QChar_isLetter, "QChar_isLetter");

function  QChar_isNumber(char:QCharH) return integer;
pragma Import(C,QChar_isNumber, "QChar_isNumber");

function  QChar_isLetterOrNumber(char:QCharH) return integer;
pragma Import(C,QChar_isLetterOrNumber, "QChar_isLetterOrNumber");

function  QChar_isDigit(char:QCharH) return integer;
pragma Import(C,QChar_isDigit, "QChar_isDigit");

function  QChar_isSymbol(char:QCharH) return integer;
pragma Import(C,QChar_isSymbol, "QChar_isSymbol");

function  QChar_cell(char:QCharH) return unsigned_char;
pragma Import(C,QChar_cell, "QChar_cell");

function  QChar_row(char:QCharH) return unsigned_char;
pragma Import(C,QChar_row, "QChar_row");

procedure QChar_setCell(char:QCharH;cell:unsigned_char);
pragma Import(C,QChar_setCell, "QChar_setCell");

procedure QChar_setRow(char:QCharH;row:unsigned_char);
pragma Import(C,QChar_setRow, "QChar_setRow");

function  QChar_create(c:char) return QCharH;
function  QChar_create(c:unsigned_char) return QCharH;
function  QChar_create(c,r:unsigned_char) return QCharH;
function  QChar_create(c:QCharH) return QCharH;
function  QChar_create(rc:unsigned_short) return QCharH;
function  QChar_create(rc:short_integer) return QCharH;
function  QChar_create(rc:quint) return QCharH;
function  QChar_create(rc:integer) return QCharH;
function  QChar_latin(char:QCharH) return character;

end Qt.QChar;
