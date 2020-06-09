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

package Qt.QRegularExpression is

 type PatternOptions is new quint;
 NoPatternOption                : constant PatternOptions  := 16#0000#;
 CaseInsensitiveOption          : constant PatternOptions  := 16#0001#;
 DotMatchesEverythingOption     : constant PatternOptions  := 16#0002#;
 MultilineOption                : constant PatternOptions  := 16#0004#;
 ExtendedPatternSyntaxOption    : constant PatternOptions  := 16#0008#;
 InvertedGreedinessOption       : constant PatternOptions  := 16#0010#;
 DontCaptureOption              : constant PatternOptions  := 16#0020#;
 UseUnicodePropertiesOption     : constant PatternOptions  := 16#0040#;
      
 type MatchType is (NormalMatch,PartialPreferCompleteMatch,PartialPreferFirstMatch,NoMatch);   
 pragma convention(C,MatchType);
  
 type MatchOptions is new quint; 
 NoMatchOption                    : MatchOptions := 0;
 AnchoredMatchOption              : MatchOptions := 1;
 DontCheckSubjectStringMatchOption: MatchOptions := 2;

 type QRegularExpressionMatchH         is new QObjectH;
 type QRegularExpressionMatchIteratorH is new QObjectH;

 function  QRegularExpression_qHash(key:QRegularExpressionH;seed : quint :=  0) return quint;
 pragma Import(C,QRegularExpression_qHash, "QRegularExpression_qHash");
 
 function  QRegularExpression_create return QRegularExpressionH;
 pragma Import(C,QRegularExpression_create, "QRegularExpression_create");
 
 function  QRegularExpression_create2(pattern:QStringH;options : PatternOptions :=  NoPatternOption) return QRegularExpressionH;
 pragma Import(C,QRegularExpression_create2, "QRegularExpression_create2");
 
 function  QRegularExpression_create3(re:QRegularExpressionH) return QRegularExpressionH;
 pragma Import(C,QRegularExpression_create3, "QRegularExpression_create3");
 
 procedure QRegularExpression_destroy(handle:not null QRegularExpressionH);
 pragma Import(C,QRegularExpression_destroy, "QRegularExpression_destroy");
 
 function  QRegularExpression_patternOptions(handle:not null QRegularExpressionH) return PatternOptions;
 pragma Import(C,QRegularExpression_patternOptions, "QRegularExpression_patternOptions");
 
 procedure QRegularExpression_setPatternOptions(handle:not null QRegularExpressionH;options:PatternOptions);
 pragma Import(C,QRegularExpression_setPatternOptions, "QRegularExpression_setPatternOptions");
 
 procedure QRegularExpression_swap(handle:not null QRegularExpressionH;other:QRegularExpressionH);
 pragma Import(C,QRegularExpression_swap, "QRegularExpression_swap");
 
 function  QRegularExpression_pattern(handle:not null QRegularExpressionH) return QStringH;
 pragma Import(C,QRegularExpression_pattern, "QRegularExpression_pattern");
 
 procedure QRegularExpression_setPattern(handle:not null QRegularExpressionH;pattern:QStringH);
 pragma Import(C,QRegularExpression_setPattern, "QRegularExpression_setPattern");
 
 function  QRegularExpression_isValid(handle:not null QRegularExpressionH) return boolean;
 pragma Import(C,QRegularExpression_isValid, "QRegularExpression_isValid");
 
 function  QRegularExpression_patternErrorOffset(handle:not null QRegularExpressionH) return integer;
 pragma Import(C,QRegularExpression_patternErrorOffset, "QRegularExpression_patternErrorOffset");
 
 function  QRegularExpression_errorString(handle:not null QRegularExpressionH) return QStringH;
 pragma Import(C,QRegularExpression_errorString, "QRegularExpression_errorString");
 
 function  QRegularExpression_captureCount(handle:not null QRegularExpressionH) return integer;
 pragma Import(C,QRegularExpression_captureCount, "QRegularExpression_captureCount");
 
 function  QRegularExpression_namedCaptureGroups(handle:not null QRegularExpressionH) return QStringListH;
 pragma Import(C,QRegularExpression_namedCaptureGroups, "QRegularExpression_namedCaptureGroups");
 
 function  QRegularExpression_match(handle:not null QRegularExpressionH;subject:QStringH;offset :integer :=  0;mType :MatchType :=  NormalMatch;mOptions :MatchOptions :=  NoMatchOption) return QRegularExpressionMatchH;
 pragma Import(C,QRegularExpression_match, "QRegularExpression_match");
 
 function  QRegularExpression_match2(handle:not null QRegularExpressionH;subjectRef:QStringRefH;offset :integer :=  0;mType :MatchType :=  NormalMatch;mOptions :MatchOptions :=  NoMatchOption) return QRegularExpressionMatchH;
 pragma Import(C,QRegularExpression_match2, "QRegularExpression_match2");
 
 function  QRegularExpression_globalMatch(handle:not null QRegularExpressionH;subject:QStringH;offset : integer :=  0;mType :MatchType :=  NormalMatch;mOptions :MatchOptions :=  NoMatchOption) return QRegularExpressionMatchIteratorH;
 pragma Import(C,QRegularExpression_globalMatch, "QRegularExpression_globalMatch");
 
 function  QRegularExpression_globalMatch2(handle:not null QRegularExpressionH;subjectRef:QStringRefH;offset : integer :=  0;mType :MatchType :=  NormalMatch;mOptions :MatchOptions :=  NoMatchOption) return QRegularExpressionMatchIteratorH;
 pragma Import(C,QRegularExpression_globalMatch2, "QRegularExpression_globalMatch2");
 
 procedure QRegularExpression_optimize(handle:not null QRegularExpressionH);
 pragma Import(C,QRegularExpression_optimize, "QRegularExpression_optimize");
 
 function  QRegularExpression_eq(handle:not null QRegularExpressionH;re:QRegularExpressionH) return boolean;
 pragma Import(C,QRegularExpression_eq, "QRegularExpression_eq");
 
 function  QRegularExpression_ne(handle:not null QRegularExpressionH;re:QRegularExpressionH) return boolean;
 pragma Import(C,QRegularExpression_ne, "QRegularExpression_ne");
 
 function  QRegularExpression_escape(str:QStringViewH) return QStringH;
 pragma Import(C,QRegularExpression_escape, "QRegularExpression_escape");
 
 function  QRegularExpression_wildcardToRegularExpression(str:QStringViewH) return QStringH;
 pragma Import(C,QRegularExpression_wildcardToRegularExpression, "QRegularExpression_wildcardToRegularExpression");
 
 function  QRegularExpression_anchoredPattern(str:QStringViewH) return QStringH;
 pragma Import(C,QRegularExpression_anchoredPattern, "QRegularExpression_anchoredPattern");
 
 function  QRegularExpressionMatch_create return QRegularExpressionMatchH;
 pragma Import(C,QRegularExpressionMatch_create, "QRegularExpressionMatch_create");
 
 function  QRegularExpressionMatch_create2(match:QRegularExpressionMatchH) return QRegularExpressionMatchH;
 pragma Import(C,QRegularExpressionMatch_create2, "QRegularExpressionMatch_create2");
 
 procedure QRegularExpressionMatch_destroy(handle:not null QRegularExpressionMatchH);
 pragma Import(C,QRegularExpressionMatch_destroy, "QRegularExpressionMatch_destroy");
 
 procedure QRegularExpressionMatch_swap(handle:not null QRegularExpressionMatchH;other:QRegularExpressionMatchH);
 pragma Import(C,QRegularExpressionMatch_swap, "QRegularExpressionMatch_swap");
 
 function  QRegularExpressionMatch_regularExpression(handle:not null QRegularExpressionMatchH) return QRegularExpressionH;
 pragma Import(C,QRegularExpressionMatch_regularExpression, "QRegularExpressionMatch_regularExpression");
 
 function  QRegularExpressionMatch_matchType(handle:not null QRegularExpressionMatchH) return MatchType;
 pragma Import(C,QRegularExpressionMatch_matchType, "QRegularExpressionMatch_matchType");
 
 function  QRegularExpressionMatch_matchOptions(handle:not null QRegularExpressionMatchH) return MatchOptions;
 pragma Import(C,QRegularExpressionMatch_matchOptions, "QRegularExpressionMatch_matchOptions");
 
 function  QRegularExpressionMatch_hasMatch(handle:not null QRegularExpressionMatchH) return boolean;
 pragma Import(C,QRegularExpressionMatch_hasMatch, "QRegularExpressionMatch_hasMatch");
 
 function  QRegularExpressionMatch_hasPartialMatch(handle:not null QRegularExpressionMatchH) return boolean;
 pragma Import(C,QRegularExpressionMatch_hasPartialMatch, "QRegularExpressionMatch_hasPartialMatch");
 
 function  QRegularExpressionMatch_isValid(handle:not null QRegularExpressionMatchH) return boolean;
 pragma Import(C,QRegularExpressionMatch_isValid, "QRegularExpressionMatch_isValid");
 
 function  QRegularExpressionMatch_lastCapturedIndex(handle:not null QRegularExpressionMatchH) return integer;
 pragma Import(C,QRegularExpressionMatch_lastCapturedIndex, "QRegularExpressionMatch_lastCapturedIndex");
 
 function  QRegularExpressionMatch_captured(handle:not null QRegularExpressionMatchH;nth :integer :=  0) return QStringH;
 pragma Import(C,QRegularExpressionMatch_captured, "QRegularExpressionMatch_captured");
 
 function  QRegularExpressionMatch_capturedRef(handle:not null QRegularExpressionMatchH;nth :integer :=  0) return QStringRefH;
 pragma Import(C,QRegularExpressionMatch_capturedRef, "QRegularExpressionMatch_capturedRef");
 
 function  QRegularExpressionMatch_capturedView(handle:not null QRegularExpressionMatchH;nth :integer :=  0) return QStringViewH;
 pragma Import(C,QRegularExpressionMatch_capturedView, "QRegularExpressionMatch_capturedView");
 
 function  QRegularExpressionMatch_captured2(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringH;
 pragma Import(C,QRegularExpressionMatch_captured2, "QRegularExpressionMatch_captured2");
 
 function  QRegularExpressionMatch_capturedRef2(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringRefH;
 pragma Import(C,QRegularExpressionMatch_capturedRef2, "QRegularExpressionMatch_capturedRef2");
 
 function  QRegularExpressionMatch_capturedView2(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringViewH;
 pragma Import(C,QRegularExpressionMatch_capturedView2, "QRegularExpressionMatch_capturedView2");
 
 function  QRegularExpressionMatch_capturedTexts(handle:not null QRegularExpressionMatchH) return QStringListH;
 pragma Import(C,QRegularExpressionMatch_capturedTexts, "QRegularExpressionMatch_capturedTexts");
 
 function  QRegularExpressionMatch_capturedStart(handle:not null QRegularExpressionMatchH;nth :integer :=  0) return integer;
 pragma Import(C,QRegularExpressionMatch_capturedStart, "QRegularExpressionMatch_capturedStart");
 
 function  QRegularExpressionMatch_capturedLength(handle:not null QRegularExpressionMatchH;nth :integer :=  0) return integer;
 pragma Import(C,QRegularExpressionMatch_capturedLength, "QRegularExpressionMatch_capturedLength");
 
 function  QRegularExpressionMatch_capturedEnd(handle:not null QRegularExpressionMatchH;nth :integer :=  0) return integer;
 pragma Import(C,QRegularExpressionMatch_capturedEnd, "QRegularExpressionMatch_capturedEnd");
 
 function  QRegularExpressionMatch_capturedStart2(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer;
 pragma Import(C,QRegularExpressionMatch_capturedStart2, "QRegularExpressionMatch_capturedStart2");
 
 function  QRegularExpressionMatch_capturedLength2(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer;
 pragma Import(C,QRegularExpressionMatch_capturedLength2, "QRegularExpressionMatch_capturedLength2");
 
 function  QRegularExpressionMatch_capturedEnd2(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer;
 pragma Import(C,QRegularExpressionMatch_capturedEnd2, "QRegularExpressionMatch_capturedEnd2");
 
 function  QRegularExpressionMatchIterator_create return QRegularExpressionMatchIteratorH;
 pragma Import(C,QRegularExpressionMatchIterator_create, "QRegularExpressionMatchIterator_create");
 
 function  QRegularExpressionMatchIterator_create2(iterator:QRegularExpressionMatchIteratorH) return QRegularExpressionMatchIteratorH;
 pragma Import(C,QRegularExpressionMatchIterator_create2, "QRegularExpressionMatchIterator_create2");
 
 procedure QRegularExpressionMatchIterator_destroy(handle:not null QRegularExpressionMatchIteratorH);
 pragma Import(C,QRegularExpressionMatchIterator_destroy, "QRegularExpressionMatchIterator_destroy");
 
 procedure QRegularExpressionMatchIterator_swap(handle:not null QRegularExpressionMatchIteratorH;other:QRegularExpressionMatchIteratorH);
 pragma Import(C,QRegularExpressionMatchIterator_swap, "QRegularExpressionMatchIterator_swap");
 
 function  QRegularExpressionMatchIterator_isValid(handle:not null QRegularExpressionMatchIteratorH) return boolean;
 pragma Import(C,QRegularExpressionMatchIterator_isValid, "QRegularExpressionMatchIterator_isValid");
 
 function  QRegularExpressionMatchIterator_hasNext(handle:not null QRegularExpressionMatchIteratorH) return boolean;
 pragma Import(C,QRegularExpressionMatchIterator_hasNext, "QRegularExpressionMatchIterator_hasNext");
 
 function  QRegularExpressionMatchIterator_next(handle:not null QRegularExpressionMatchIteratorH) return QRegularExpressionMatchH;
 pragma Import(C,QRegularExpressionMatchIterator_next, "QRegularExpressionMatchIterator_next");
 
 function  QRegularExpressionMatchIterator_peekNext(handle:not null QRegularExpressionMatchIteratorH) return QRegularExpressionMatchH;
 pragma Import(C,QRegularExpressionMatchIterator_peekNext, "QRegularExpressionMatchIterator_peekNext");
 
 function  QRegularExpressionMatchIterator_regularExpression(handle:not null QRegularExpressionMatchIteratorH) return QRegularExpressionH;
 pragma Import(C,QRegularExpressionMatchIterator_regularExpression, "QRegularExpressionMatchIterator_regularExpression");
 
 function  QRegularExpressionMatchIterator_matchType(handle:not null QRegularExpressionMatchIteratorH) return MatchType;
 pragma Import(C,QRegularExpressionMatchIterator_matchType, "QRegularExpressionMatchIterator_matchType");
 
 function  QRegularExpressionMatchIterator_matchOptions(handle:not null QRegularExpressionMatchIteratorH) return MatchOptions;
 pragma Import(C,QRegularExpressionMatchIterator_matchOptions, "QRegularExpressionMatchIterator_matchOptions");
 
----------------------------------------------------------------------
 function  QRegularExpression_create(pattern:QStringH;options : PatternOptions :=  NoPatternOption) return QRegularExpressionH;
 function  QRegularExpression_create(re:QRegularExpressionH) return QRegularExpressionH;
 function  QRegularExpression_match(handle:not null QRegularExpressionH;subjectRef:QStringRefH;offset :integer :=  0;mType :MatchType :=  NormalMatch;mOptions :MatchOptions :=  NoMatchOption) return QRegularExpressionMatchH;
 function  QRegularExpression_globalMatch(handle:not null QRegularExpressionH;subjectRef:QStringRefH;offset : integer :=  0;mType :MatchType :=  NormalMatch;mOptions :MatchOptions :=  NoMatchOption) return QRegularExpressionMatchIteratorH;
 function  QRegularExpressionMatch_create(match:QRegularExpressionMatchH) return QRegularExpressionMatchH;
 function  QRegularExpressionMatch_captured(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringH;
 function  QRegularExpressionMatch_capturedRef(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringRefH;
 function  QRegularExpressionMatch_capturedView(handle:not null QRegularExpressionMatchH;name:QStringViewH) return QStringViewH;
 function  QRegularExpressionMatch_capturedStart(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer;
 function  QRegularExpressionMatch_capturedLength(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer;
 function  QRegularExpressionMatch_capturedEnd(handle:not null QRegularExpressionMatchH;name:QStringViewH) return integer;
 function  QRegularExpressionMatchIterator_create(iterator:QRegularExpressionMatchIteratorH) return QRegularExpressionMatchIteratorH;

end;
