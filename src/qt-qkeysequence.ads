--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QKeySequence is

type  QKeySequenceStandardKey is (
  UnknownKey,HelpContents,WhatsThis,Open,Close,Save,New_key,Delete,Cut,
  Copy,Paste,Undo,Redo,Back,Forward,Refresh,ZoomIn,ZoomOut,Print,
  AddTab,NextChild,PreviousChild,Find,FindNext,FindPrevious,Replace,SelectAll,
  Bold,Italic,Underline,MoveToNextChar,MoveToPreviousChar,MoveToNextWord,MoveToPreviousWord,
  MoveToNextLine,MoveToPreviousLine,MoveToNextPage,MoveToPreviousPage,MoveToStartOfLine,
  MoveToEndOfLine,MoveToStartOfBlock,MoveToEndOfBlock,MoveToStartOfDocument,MoveToEndOfDocument,
  SelectNextChar,SelectPreviousChar,SelectNextWord,SelectPreviousWord,SelectNextLine,SelectPreviousLine,
  SelectNextPage,SelectPreviousPage,SelectStartOfLine,SelectEndOfLine,SelectStartOfBlock,
  SelectEndOfBlock,SelectStartOfDocument,SelectEndOfDocument,DeleteStartOfWord,DeleteEndOfWord,
  DeleteEndOfLine,InsertParagraphSeparator,InsertLineSeparator,SaveAs,Preferences,Quit,
  FullScreen,Deselect,DeleteCompleteLine);
pragma Convention(C,QKeySequenceStandardKey);

type  QKeySequenceSequenceMatch is (NoMatch,PartialMatch,ExactMatch);
pragma Convention(C,QKeySequenceSequenceMatch);

type  QKeySequenceSequenceFormat is (NativeText,PortableText);
pragma Convention(C,QKeySequenceSequenceFormat);

function QKeySequence_create return  QKeySequenceH;    
pragma Import(C,QKeySequence_create,"QKeySequence_create");

procedure QKeySequence_destroy(handle: not null  QKeySequenceH);   
pragma Import(C,QKeySequence_destroy,"QKeySequence_destroy");

function QKeySequence_create2(key: QStringH;format:QKeySequenceSequenceFormat := NativeText) return  QKeySequenceH;
pragma Import(C,QKeySequence_create2,"QKeySequence_create2");

function QKeySequence_create3(k1: integer; k2: integer := 0; k3: integer := 0; k4: integer := 0) return QKeySequenceH;
pragma Import(C,QKeySequence_create3,"QKeySequence_create3");

function QKeySequence_create4(ks: QKeySequenceH) return  QKeySequenceH;
pragma Import(C,QKeySequence_create4,"QKeySequence_create4");

function QKeySequence_create5(key: QKeySequenceStandardKey) return  QKeySequenceH;
pragma Import(C,QKeySequence_create5,"QKeySequence_create5");

function QKeySequence_count(handle: not null  QKeySequenceH) return  LongWord;   
pragma Import(C,QKeySequence_count,"QKeySequence_count");

function QKeySequence_isEmpty(handle: not null  QKeySequenceH) return  Boolean;   
pragma Import(C,QKeySequence_isEmpty,"QKeySequence_isEmpty");

function QKeySequence_isDetached(handle: not null  QKeySequenceH) return   Boolean;
pragma Import(C,QKeySequence_isDetached,"QKeySequence_isDetached");

function  QKeySequence_toString(handle: not null  QKeySequenceH;format: QKeySequenceSequenceFormat := PortableText) return QStringH;
pragma Import(C,QKeySequence_toString,"QKeySequence_toString");

function  QKeySequence_fromString(str: QStringH; format: QKeySequenceSequenceFormat := PortableText) return QKeySequenceH;
pragma Import(C,QKeySequence_fromString,"QKeySequence_fromString");

function QKeySequence_matches(handle: not null  QKeySequenceH; seq: QKeySequenceH) return  QKeySequenceSequenceMatch;   
pragma Import(C,QKeySequence_matches,"QKeySequence_matches");

function  QKeySequence_mnemonic(text: QStringH) return QKeySequenceH;
pragma Import(C,QKeySequence_mnemonic,"QKeySequence_mnemonic");

 function  QKeySequence_create6(key:QStringH;format:QKeySequenceSequenceFormat) return QKeySequenceH;
 pragma Import(C,QKeySequence_create6, "QKeySequence_create6");
 
 function  QKeySequence_keyBindings(key: QKeySequenceStandardKey) return QObjectListH;
 pragma Import(C,QKeySequence_keyBindings, "QKeySequence_keyBindings");
-----------------------------------------------------------------------------------------------------------------------
function QKeySequence_create(key: QStringH) return  QKeySequenceH;
function QKeySequence_create(k1: integer; k2: integer := 0; k3: integer := 0; k4: integer := 0) return QKeySequenceH;
function QKeySequence_create(ks: QKeySequenceH) return  QKeySequenceH;
function QKeySequence_create(key: QKeySequenceStandardKey) return  QKeySequenceH;
function QKeySequence_create(key:QStringH;format:QKeySequenceSequenceFormat) return QKeySequenceH;

end Qt.QKeySequence;
