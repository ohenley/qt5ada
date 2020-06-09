-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2020                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.  

package body Qt.QRegularExpression is
 
 function  QRegularExpression_create(pattern:QStringH;options : PatternOptions :=  NoPatternOption) return QRegularExpressionH is
 begin
   return  QRegularExpression_create2(pattern,options);
 end;

 function  QRegularExpression_create(re:QRegularExpressionH) return QRegularExpressionH is
 begin
   return  QRegularExpression_create3(re);
 end;

 function  QRegularExpression_match(handle:not null QRegularExpressionH;subjectRef:QStringRefH;offset :integer :=  0;mType :MatchType :=  NormalMatch;mOptions :MatchOptions :=  NoMatchOption) return QRegularExpressionMatchH is
 begin
   return  QRegularExpression_match2(handle,subjectRef,offset,mType,mOptions);
 end;

 function  QRegularExpression_globalMatch(handle:not null QRegularExpressionH;subjectRef:QStringRefH;offset : integer :=  0;mType :MatchType :=  NormalMatch;mOptions :MatchOptions :=  NoMatchOption) return QRegularExpressionMatchIteratorH is
 begin
   return  QRegularExpression_globalMatch2(handle,subjectRef,offset,mType,mOptions);
 end;

 function  QRegularExpressionMatch_create(match:QRegularExpressionMatchH) return QRegularExpressionMatchH is
 begin
   return  QRegularExpressionMatch_create2(match);
 end;

 function  QRegularExpressionMatch_captured(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringH is
 begin
   return  QRegularExpressionMatch_captured2(handle,name);
 end;

 function  QRegularExpressionMatch_capturedRef(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringRefH is
 begin
   return  QRegularExpressionMatch_capturedRef2(handle,name);
 end;

 function  QRegularExpressionMatch_capturedView(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringViewH is
 begin
   return  QRegularExpressionMatch_capturedView2(handle,name);
 end;

 function  QRegularExpressionMatch_capturedStart(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer is
 begin
   return  QRegularExpressionMatch_capturedStart2(handle,name);
 end;

 function  QRegularExpressionMatch_capturedLength(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer is
 begin
   return  QRegularExpressionMatch_capturedLength2(handle,name);
 end;

 function  QRegularExpressionMatch_capturedEnd(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer is
 begin
   return  QRegularExpressionMatch_capturedEnd2(handle,name);
 end;

 function  QRegularExpressionMatchIterator_create(iterator:QRegularExpressionMatchIteratorH) return QRegularExpressionMatchIteratorH is
 begin
  return  QRegularExpressionMatchIterator_create2(iterator);
 end;
 
end;
