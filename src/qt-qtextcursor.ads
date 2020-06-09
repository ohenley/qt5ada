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

with Qt.QTextFormat; use Qt.QTextFormat;
with Qt.QString; use Qt.QString;

package Qt.QTextCursor          is

type QTextCursorMoveMode is ( QTextCursorMoveAnchor, QTextCursorKeepAnchor );
pragma Convention(C,QTextCursorMoveMode);

type  QTextCursorMoveOperation is (QTextCursorNoMove, QTextCursorStart, QTextCursorUp, QTextCursorStartOfLine, QTextCursorStartOfBlock, QTextCursorStartOfWord, QTextCursorPreviousBlock, QTextCursorPreviousCharacter, 
    QTextCursorPreviousWord, QTextCursorLeft, QTextCursorWordLeft, QTextCursorEnd, QTextCursorDown, QTextCursorEndOfLine, QTextCursorEndOfWord, QTextCursorEndOfBlock, QTextCursorNextBlock, 
    QTextCursorNextCharacter, QTextCursorNextWord, QTextCursorRight, QTextCursorWordRight );
pragma Convention(C,QTextCursorMoveOperation);

type QTextCursorSelectionType is (QTextCursorWordUnderCursor, QTextCursorLineUnderCursor, QTextCursorBlockUnderCursor, QTextCursorDocument );
pragma Convention(C,QTextCursorSelectionType);

function QTextCursor_create return  QTextCursorH;    
pragma Import(C,QTextCursor_create,"QTextCursor_create");

procedure QTextCursor_destroy(handle: not null  QTextCursorH);   
pragma Import(C,QTextCursor_destroy,"QTextCursor_destroy");

function QTextCursor_create2(document: QTextDocumentH) return  QTextCursorH;
pragma Import(C,QTextCursor_create2,"QTextCursor_create2");

function QTextCursor_create3(frame: QTextFrameH) return  QTextCursorH;
pragma Import(C,QTextCursor_create3,"QTextCursor_create3");

function QTextCursor_create4(block: QTextBlockH) return  QTextCursorH;
pragma Import(C,QTextCursor_create4,"QTextCursor_create4");

function QTextCursor_create6(cursor: QTextCursorH) return  QTextCursorH;
pragma Import(C,QTextCursor_create6,"QTextCursor_create6");

function QTextCursor_isNull(handle: not null  QTextCursorH) return  Boolean;   
pragma Import(C,QTextCursor_isNull,"QTextCursor_isNull");

procedure QTextCursor_setPosition(handle: not null  QTextCursorH; pos: Integer; mode: QTextCursorMoveMode := QTextCursorMoveAnchor);   
pragma Import(C,QTextCursor_setPosition,"QTextCursor_setPosition");

function QTextCursor_position(handle: not null  QTextCursorH) return  Integer;   
pragma Import(C,QTextCursor_position,"QTextCursor_position");

function QTextCursor_anchor(handle: not null  QTextCursorH) return  Integer;   
pragma Import(C,QTextCursor_anchor,"QTextCursor_anchor");

procedure QTextCursor_insertText(handle: not null  QTextCursorH; text: QStringH);    
pragma Import(C,QTextCursor_insertText,"QTextCursor_insertText");

procedure QTextCursor_insertText2(handle: not null  QTextCursorH; text: QStringH; format: QTextCharFormatH);
pragma Import(C,QTextCursor_insertText2,"QTextCursor_insertText2");

function QTextCursor_movePosition(handle: not null  QTextCursorH; op: QTextCursorMoveOperation; p2: QTextCursorMoveMode := QTextCursorMoveAnchor; n: Integer := 1) return Boolean;   
pragma Import(C,QTextCursor_movePosition,"QTextCursor_movePosition");

procedure QTextCursor_deleteChar(handle: not null  QTextCursorH);   
pragma Import(C,QTextCursor_deleteChar,"QTextCursor_deleteChar");

procedure QTextCursor_deletePreviousChar(handle: not null  QTextCursorH);   
pragma Import(C,QTextCursor_deletePreviousChar,"QTextCursor_deletePreviousChar");

procedure QTextCursor_select(handle: not null  QTextCursorH; selection: QTextCursorSelectionType);   
pragma Import(C,QTextCursor_select,"QTextCursor_select");

function QTextCursor_hasSelection(handle: not null  QTextCursorH) return  Boolean;   
pragma Import(C,QTextCursor_hasSelection,"QTextCursor_hasSelection");

function QTextCursor_hasComplexSelection(handle: not null  QTextCursorH) return  Boolean;   
pragma Import(C,QTextCursor_hasComplexSelection,"QTextCursor_hasComplexSelection");

procedure QTextCursor_removeSelectedText(handle: not null  QTextCursorH);   
pragma Import(C,QTextCursor_removeSelectedText,"QTextCursor_removeSelectedText");

procedure QTextCursor_clearSelection(handle: not null  QTextCursorH);   
pragma Import(C,QTextCursor_clearSelection,"QTextCursor_clearSelection");

function QTextCursor_selectionStart(handle: not null  QTextCursorH) return  Integer;   
pragma Import(C,QTextCursor_selectionStart,"QTextCursor_selectionStart");

function QTextCursor_selectionEnd(handle: not null  QTextCursorH) return  Integer;   
pragma Import(C,QTextCursor_selectionEnd,"QTextCursor_selectionEnd");

function  QTextCursor_selectedText(handle: not null  QTextCursorH) return QStringH;
pragma Import(C,QTextCursor_selectedText,"QTextCursor_selectedText");

function  QTextCursor_selection(handle: not null  QTextCursorH) return QTextDocumentFragmentH;
pragma Import(C,QTextCursor_selection,"QTextCursor_selection");

procedure QTextCursor_selectedTableCells(handle: not null  QTextCursorH; firstRow: PInteger; numRows: PInteger; firstColumn: PInteger; numColumns: PInteger);   
pragma Import(C,QTextCursor_selectedTableCells,"QTextCursor_selectedTableCells");

function  QTextCursor_block(handle: not null  QTextCursorH) return QTextBlockH;
pragma Import(C,QTextCursor_block,"QTextCursor_block");

function  QTextCursor_charFormat(handle: not null  QTextCursorH) return QTextCharFormatH;
pragma Import(C,QTextCursor_charFormat,"QTextCursor_charFormat");

procedure QTextCursor_setCharFormat(handle: not null  QTextCursorH; format: QTextCharFormatH);   
pragma Import(C,QTextCursor_setCharFormat,"QTextCursor_setCharFormat");

procedure QTextCursor_mergeCharFormat(handle: not null  QTextCursorH; modifier: QTextCharFormatH);   
pragma Import(C,QTextCursor_mergeCharFormat,"QTextCursor_mergeCharFormat");

function  QTextCursor_blockFormat(handle: not null  QTextCursorH) return QTextBlockFormatH;
pragma Import(C,QTextCursor_blockFormat,"QTextCursor_blockFormat");

procedure QTextCursor_setBlockFormat(handle: not null  QTextCursorH; format: QTextBlockFormatH);   
pragma Import(C,QTextCursor_setBlockFormat,"QTextCursor_setBlockFormat");

procedure QTextCursor_mergeBlockFormat(handle: not null  QTextCursorH; modifier: QTextBlockFormatH);   
pragma Import(C,QTextCursor_mergeBlockFormat,"QTextCursor_mergeBlockFormat");

function  QTextCursor_blockCharFormat(handle: not null  QTextCursorH) return QTextCharFormatH;
pragma Import(C,QTextCursor_blockCharFormat,"QTextCursor_blockCharFormat");

procedure QTextCursor_setBlockCharFormat(handle: not null  QTextCursorH; format: QTextCharFormatH);   
pragma Import(C,QTextCursor_setBlockCharFormat,"QTextCursor_setBlockCharFormat");

procedure QTextCursor_mergeBlockCharFormat(handle: not null  QTextCursorH; modifier: QTextCharFormatH);   
pragma Import(C,QTextCursor_mergeBlockCharFormat,"QTextCursor_mergeBlockCharFormat");

function QTextCursor_atBlockStart(handle: not null  QTextCursorH) return  Boolean;   
pragma Import(C,QTextCursor_atBlockStart,"QTextCursor_atBlockStart");

function QTextCursor_atBlockEnd(handle: not null  QTextCursorH) return  Boolean;   
pragma Import(C,QTextCursor_atBlockEnd,"QTextCursor_atBlockEnd");

function QTextCursor_atStart(handle: not null  QTextCursorH) return  Boolean;   
pragma Import(C,QTextCursor_atStart,"QTextCursor_atStart");

function QTextCursor_atEnd(handle: not null  QTextCursorH) return  Boolean;   
pragma Import(C,QTextCursor_atEnd,"QTextCursor_atEnd");

procedure QTextCursor_insertBlock(handle: not null  QTextCursorH);    
pragma Import(C,QTextCursor_insertBlock,"QTextCursor_insertBlock");

procedure QTextCursor_insertBlock2(handle: not null  QTextCursorH; format: QTextBlockFormatH);
pragma Import(C,QTextCursor_insertBlock2,"QTextCursor_insertBlock2");

procedure QTextCursor_insertBlock3(handle: not null  QTextCursorH; format: QTextBlockFormatH; charFormat: QTextCharFormatH);
pragma Import(C,QTextCursor_insertBlock3,"QTextCursor_insertBlock3");

function QTextCursor_currentList(handle: not null  QTextCursorH) return  QTextListH;   
pragma Import(C,QTextCursor_currentList,"QTextCursor_currentList");

function QTextCursor_insertTable(handle: not null  QTextCursorH; rows: Integer; cols: Integer; format: QTextTableFormatH) return  QTextTableH;    
pragma Import(C,QTextCursor_insertTable,"QTextCursor_insertTable");

function QTextCursor_insertTable2(handle: not null  QTextCursorH; rows: Integer; cols: Integer) return  QTextTableH;
pragma Import(C,QTextCursor_insertTable2,"QTextCursor_insertTable2");

function QTextCursor_currentTable(handle: not null  QTextCursorH) return  QTextTableH;   
pragma Import(C,QTextCursor_currentTable,"QTextCursor_currentTable");

function QTextCursor_insertFrame(handle: not null  QTextCursorH; format: QTextFrameFormatH) return  QTextFrameH;   
pragma Import(C,QTextCursor_insertFrame,"QTextCursor_insertFrame");

function QTextCursor_currentFrame(handle: not null  QTextCursorH) return  QTextFrameH;   
pragma Import(C,QTextCursor_currentFrame,"QTextCursor_currentFrame");

procedure QTextCursor_insertFragment(handle: not null  QTextCursorH; fragment: QTextDocumentFragmentH);   
pragma Import(C,QTextCursor_insertFragment,"QTextCursor_insertFragment");

procedure QTextCursor_insertHtml(handle: not null  QTextCursorH; html: QStringH);   
pragma Import(C,QTextCursor_insertHtml,"QTextCursor_insertHtml");

procedure QTextCursor_insertImage2(handle: not null  QTextCursorH; format: QTextImageFormatH);
pragma Import(C,QTextCursor_insertImage2,"QTextCursor_insertImage2");

procedure QTextCursor_insertImage3(handle: not null  QTextCursorH; name: QStringH);
pragma Import(C,QTextCursor_insertImage3,"QTextCursor_insertImage3");

procedure QTextCursor_beginEditBlock(handle: not null  QTextCursorH);   
pragma Import(C,QTextCursor_beginEditBlock,"QTextCursor_beginEditBlock");

procedure QTextCursor_joinPreviousEditBlock(handle: not null  QTextCursorH);   
pragma Import(C,QTextCursor_joinPreviousEditBlock,"QTextCursor_joinPreviousEditBlock");

procedure QTextCursor_endEditBlock(handle: not null  QTextCursorH);   
pragma Import(C,QTextCursor_endEditBlock,"QTextCursor_endEditBlock");

function QTextCursor_isCopyOf(handle: not null  QTextCursorH; other: QTextCursorH) return  Boolean;   
pragma Import(C,QTextCursor_isCopyOf,"QTextCursor_isCopyOf");

function QTextCursor_blockNumber(handle: not null  QTextCursorH) return  Integer;   
pragma Import(C,QTextCursor_blockNumber,"QTextCursor_blockNumber");

function QTextCursor_columnNumber(handle: not null  QTextCursorH) return  Integer;   
pragma Import(C,QTextCursor_columnNumber,"QTextCursor_columnNumber");

-------------------------------------------------------------------------------------
 function  QTextCursor_positionInBlock(handle: not null QTextCursorH) return integer;
 pragma Import(C,QTextCursor_positionInBlock, "QTextCursor_positionInBlock");
 
 function  QTextCursor_visualNavigation(handle: not null QTextCursorH) return boolean;
 pragma Import(C,QTextCursor_visualNavigation, "QTextCursor_visualNavigation");
 
 procedure QTextCursor_setVisualNavigation(handle: not null QTextCursorH;fl:boolean);
 pragma Import(C,QTextCursor_setVisualNavigation, "QTextCursor_setVisualNavigation");
 
 procedure QTextCursor_setVerticalMovementX(handle: not null QTextCursorH; x:integer);
 pragma Import(C,QTextCursor_setVerticalMovementX, "QTextCursor_setVerticalMovementX");
 
 function  QTextCursor_verticalMovementX(handle: not null QTextCursorH) return integer;
 pragma Import(C,QTextCursor_verticalMovementX, "QTextCursor_verticalMovementX");
 
 procedure QTextCursor_setKeepPositionOnInsert(handle: not null QTextCursorH;fl:boolean);
 pragma Import(C,QTextCursor_setKeepPositionOnInsert, "QTextCursor_setKeepPositionOnInsert");
 
 function  QTextCursor_keepPositionOnInsert(handle: not null QTextCursorH) return boolean;
 pragma Import(C,QTextCursor_keepPositionOnInsert, "QTextCursor_keepPositionOnInsert");
 
 function  QTextCursor_insertList(handle: not null QTextCursorH; format:QTextListFormatH) return QTextListH;
 pragma Import(C,QTextCursor_insertList, "QTextCursor_insertList");
 
 function  QTextCursor_insertList2(handle: not null QTextCursorH;style:QTextFormatStyle) return QTextListH;
 pragma Import(C,QTextCursor_insertList2, "QTextCursor_insertList2");
 
 function  QTextCursor_createList(handle: not null QTextCursorH;format:QTextListFormatH) return QTextListH;
 pragma Import(C,QTextCursor_createList, "QTextCursor_createList");
 
 function  QTextCursor_createList2(handle: not null QTextCursorH;style:QTextFormatStyle) return QTextListH;
 pragma Import(C,QTextCursor_createList2, "QTextCursor_createList2");
 
 procedure QTextCursor_insertImage(handle: not null QTextCursorH;format:QTextImageFormatH; alignment:QTextFrameFormatPosition);
 pragma Import(C,QTextCursor_insertImage, "QTextCursor_insertImage");
 
 procedure QTextCursor_insertImage4(handle: not null QTextCursorH;image:QImageH;name:QStringH  := s2qs(""));
 pragma Import(C,QTextCursor_insertImage4, "QTextCursor_insertImage4");
 
 function  QTextCursor_document(handle: not null QTextCursorH) return QTextDocumentH;
 pragma Import(C,QTextCursor_document, "QTextCursor_document");

-----------------------------------------------------------------------
function QTextCursor_create(document: QTextDocumentH) return  QTextCursorH;
function QTextCursor_create(frame: QTextFrameH) return  QTextCursorH;
function QTextCursor_create(block: QTextBlockH) return  QTextCursorH;

function QTextCursor_create(cursor: QTextCursorH) return  QTextCursorH;
procedure QTextCursor_insertText(handle: not null  QTextCursorH; text: QStringH; format: QTextCharFormatH);
procedure QTextCursor_insertBlock(handle: not null  QTextCursorH; format: QTextBlockFormatH);
procedure QTextCursor_insertBlock(handle: not null  QTextCursorH; format: QTextBlockFormatH; charFormat: QTextCharFormatH);
function QTextCursor_insertTable(handle: not null  QTextCursorH; rows: Integer; cols: Integer) return  QTextTableH;
procedure QTextCursor_insertImage(handle: not null  QTextCursorH; format: QTextImageFormatH);
procedure QTextCursor_insertImage(handle: not null  QTextCursorH; name: QStringH);

 procedure QTextCursor_insertImage(handle: not null QTextCursorH;image:QImageH;name:QStringH  := s2qs(""));
 function  QTextCursor_insertList(handle: not null QTextCursorH;style:QTextFormatStyle) return QTextListH;
 function  QTextCursor_createList(handle: not null QTextCursorH;style:QTextFormatStyle) return QTextListH;
end Qt.QTextCursor;
