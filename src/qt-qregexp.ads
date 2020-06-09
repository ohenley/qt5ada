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

package Qt.QRegExp is

 type PatternSyntax is (RegExp,Wildcard,FixedString,RegExp2,WildcardUnix,W3CXmlSchema11);
 pragma Convention(C,PatternSyntax); 

 type CaretMode is (CaretAtZero, CaretAtOffset, CaretWontMatch); 
 pragma Convention(C,CaretMode);

 function  QRegExp_create return QRegExpH ;
 pragma Import(C,QRegExp_create, "QRegExp_create");
 
 function  QRegExp_create2( pattern:QStringH;cs: QtCaseSensitivity := QtCaseSensitive; syntax: PatternSyntax := RegExp) return QRegExpH;
 pragma Import(C,QRegExp_create2, "QRegExp_create2");
 
 function  QRegExp_create3(regExp:QRegExpH) return QRegExpH ;
 pragma Import(C,QRegExp_create3, "QRegExp_create3");
 
 procedure QRegExp_destroy(handle: not null QRegExpH);
 pragma Import(C,QRegExp_destroy, "QRegExp_destroy");
 
 procedure QRegExp_swap(handle: not null QRegExpH;otherRX:QRegExpH);
 pragma Import(C,QRegExp_swap, "QRegExp_swap");
 
 function  QRegExp_isEmpty(handle: not null QRegExpH) return boolean;
 pragma Import(C,QRegExp_isEmpty, "QRegExp_isEmpty");
 
 function  QRegExp_isValid(handle: not null QRegExpH) return boolean;
 pragma Import(C,QRegExp_isValid, "QRegExp_isValid");
 
 function  QRegExp_pattern(handle: not null QRegExpH) return QStringH;
 pragma Import(C,QRegExp_pattern, "QRegExp_pattern");
 
 procedure QRegExp_setPattern(handle: not null QRegExpH; pattern:QStringH);
 pragma Import(C,QRegExp_setPattern, "QRegExp_setPattern");
 
 function  QRegExp_caseSensitivity(handle: not null QRegExpH) return QtCaseSensitivity;
 pragma Import(C,QRegExp_caseSensitivity, "QRegExp_caseSensitivity");
 
 procedure QRegExp_setCaseSensitivity(handle: not null QRegExpH;cs:QtCaseSensitivity);
 pragma Import(C,QRegExp_setCaseSensitivity, "QRegExp_setCaseSensitivity");
 
 function  QRegExp_patternSyntax(handle: not null QRegExpH) return PatternSyntax;
 pragma Import(C,QRegExp_patternSyntax, "QRegExp_patternSyntax");
 
 procedure QRegExp_setPatternSyntax(handle: not null QRegExpH;syntax:PatternSyntax);
 pragma Import(C,QRegExp_setPatternSyntax, "QRegExp_setPatternSyntax");
 
 function  QRegExp_isMinimal(handle: not null QRegExpH) return boolean;
 pragma Import(C,QRegExp_isMinimal, "QRegExp_isMinimal");
 
 procedure QRegExp_setMinimal(handle: not null QRegExpH; minimal:boolean);
 pragma Import(C,QRegExp_setMinimal, "QRegExp_setMinimal");
 
 function  QRegExp_exactMatch(handle: not null QRegExpH;str: QStringH) return boolean;
 pragma Import(C,QRegExp_exactMatch, "QRegExp_exactMatch");
 
 function  QRegExp_indexIn(handle: not null QRegExpH; str:QStringH; offset: integer := 0; caret : CaretMode := CaretAtZero) return integer;
 pragma Import(C,QRegExp_indexIn, "QRegExp_indexIn");
 
 function  QRegExp_lastIndexIn(handle: not null QRegExpH; str:QStringH; offset: integer := -1; caret : CaretMode := CaretAtZero) return integer;
 pragma Import(C,QRegExp_lastIndexIn, "QRegExp_lastIndexIn");
 
 function  QRegExp_matchedLength(handle: not null QRegExpH) return integer;
 pragma Import(C,QRegExp_matchedLength, "QRegExp_matchedLength");
 
 function  QRegExp_escape(str:QStringH) return QStringH;
 pragma Import(C,QRegExp_escape, "QRegExp_escape");
-------------------------------------------------------------------------------------------------------------
 function  QRegExp_create( pattern:QStringH;cs: QtCaseSensitivity := QtCaseSensitive; syntax: PatternSyntax := RegExp) return QRegExpH;
 function  QRegExp_create(regExp:QRegExpH) return QRegExpH ;

end;  
