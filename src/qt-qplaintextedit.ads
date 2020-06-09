--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015,2016                 บ
-- บ Copyright (C) 2012,2015,2016                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QPlainTextEdit   is

type QPlainTextEditLineWrapMode is (NoWrap, WidgetWidt);
pragma Convention(C,QPlainTextEditLineWrapMode);

type QTextOption_WrapMode is (NoWrap, WordWrap, ManualWrap, WrapAnywhere, WrapAtWordBoundaryOrAnywher);
pragma Convention(C,QTextOption_WrapMode);

type  QTextCursor_MoveOperation is (NoMove, Start, Up, StartOfLine, StartOfBlock,
        StartOfWord, PreviousBlock, PreviousCharacter, PreviousWord,
        Left, WordLeft, Ends, Down, EndOfLine, EndOfWord, EndOfBlock,
        NextBlock, NextCharacter, NextWord, Right, WordRight, NextCell,
        PreviousCell, NextRow, PreviousRow );
pragma Convention(C,QTextCursor_MoveOperation);
    
type  QTextCursor_MoveMode is (MoveAnchor, KeepAnchor);
pragma Convention(C,QTextCursor_MoveMode);

 function  QPlainTextEdit_create(text:QStringH; parent:QWidgetH := null) return QPlainTextEditH;
 pragma Import(C,QPlainTextEdit_create, "QPlainTextEdit_create");

 function  QPlainTextEdit_create2(parent:QWidgetH := null) return  QPlainTextEditH;
 pragma Import(C,QPlainTextEdit_create2, "QPlainTextEdit_create2");

 procedure QPlainTextEdit_destroy(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_destroy, "QPlainTextEdit_destroy");

 procedure QPlainTextEdit_setDocument(handle: not null  QPlainTextEditH; document: QTextDocumentH);
 pragma Import(C,QPlainTextEdit_setDocument, "QPlainTextEdit_setDocument");

 function  QPlainTextEdit_document(handle: not null  QPlainTextEditH) return  QTextDocumentH;
 pragma Import(C,QPlainTextEdit_document, "QPlainTextEdit_document");

 procedure QPlainTextEdit_setTextCursor(handle: not null  QPlainTextEditH; cursor: QTextCursorH);
 pragma Import(C,QPlainTextEdit_setTextCursor, "QPlainTextEdit_setTextCursor");

 function  QPlainTextEdit_textCursor(handle: not null  QPlainTextEditH) return QTextCursorH;
 pragma Import(C,QPlainTextEdit_textCursor, "QPlainTextEdit_textCursor");

 function  QPlainTextEdit_isReadOnly(handle: not null  QPlainTextEditH) return  boolean;
 pragma Import(C,QPlainTextEdit_isReadOnly, "QPlainTextEdit_isReadOnly");

 procedure QPlainTextEdit_setReadOnly(handle: not null  QPlainTextEditH; ro:boolean);
 pragma Import(C,QPlainTextEdit_setReadOnly, "QPlainTextEdit_setReadOnly");

 procedure QPlainTextEdit_setTextInteractionFlags(handle: not null  QPlainTextEditH; flags: quint);
 pragma Import(C,QPlainTextEdit_setTextInteractionFlags, "QPlainTextEdit_setTextInteractionFlags");

 function  QPlainTextEdit_textInteractionFlags(handle: not null  QPlainTextEditH) return quint;
 pragma Import(C,QPlainTextEdit_textInteractionFlags, "QPlainTextEdit_textInteractionFlags");

 procedure QPlainTextEdit_mergeCurrentCharFormat(handle: not null  QPlainTextEditH; modifier: QTextCharFormatH);
 pragma Import(C,QPlainTextEdit_mergeCurrentCharFormat, "QPlainTextEdit_mergeCurrentCharFormat");

 procedure QPlainTextEdit_setCurrentCharFormat(handle: not null  QPlainTextEditH; format: QTextCharFormatH);
 pragma Import(C,QPlainTextEdit_setCurrentCharFormat, "QPlainTextEdit_setCurrentCharFormat");

 function  QPlainTextEdit_currentCharFormat(handle: not null  QPlainTextEditH) return  QTextCharFormatH;
 pragma Import(C,QPlainTextEdit_currentCharFormat, "QPlainTextEdit_currentCharFormat");

 function  QPlainTextEdit_tabChangesFocus(handle: not null  QPlainTextEditH) return boolean;
 pragma Import(C,QPlainTextEdit_tabChangesFocus, "QPlainTextEdit_tabChangesFocus");

 procedure QPlainTextEdit_setTabChangesFocus(handle: not null  QPlainTextEditH; enabled:boolean);
 pragma Import(C,QPlainTextEdit_setTabChangesFocus, "QPlainTextEdit_setTabChangesFocus");

 procedure QPlainTextEdit_setDocumentTitle(handle: not null  QPlainTextEditH; title: QStringH);
 pragma Import(C,QPlainTextEdit_setDocumentTitle, "QPlainTextEdit_setDocumentTitle");

 function  QPlainTextEdit_documentTitle(handle: not null  QPlainTextEditH) return QStringH;
 pragma Import(C,QPlainTextEdit_documentTitle, "QPlainTextEdit_documentTitle");

 function  QPlainTextEdit_isUndoRedoEnabled(handle: not null  QPlainTextEditH) return boolean;
 pragma Import(C,QPlainTextEdit_isUndoRedoEnabled, "QPlainTextEdit_isUndoRedoEnabled");

 procedure QPlainTextEdit_setUndoRedoEnabled(handle: not null  QPlainTextEditH; enable: boolean);
 pragma Import(C,QPlainTextEdit_setUndoRedoEnabled, "QPlainTextEdit_setUndoRedoEnabled");

 procedure QPlainTextEdit_setMaximumBlockCount(handle: not null  QPlainTextEditH; maximum: integer);
 pragma Import(C,QPlainTextEdit_setMaximumBlockCount, "QPlainTextEdit_setMaximumBlockCount");

 function  QPlainTextEdit_maximumBlockCount(handle: not null  QPlainTextEditH) return integer;
 pragma Import(C,QPlainTextEdit_maximumBlockCount, "QPlainTextEdit_maximumBlockCount");

 function  QPlainTextEdit_lineWrapMode(handle: not null  QPlainTextEditH) return QPlainTextEditLineWrapMode;
 pragma Import(C,QPlainTextEdit_lineWrapMode, "QPlainTextEdit_lineWrapMode");

 procedure QPlainTextEdit_setLineWrapMode(handle: not null  QPlainTextEditH; mode: QPlainTextEditLineWrapMode);
 pragma Import(C,QPlainTextEdit_setLineWrapMode, "QPlainTextEdit_setLineWrapMode");

 function  QPlainTextEdit_wordWrapMode(handle: not null  QPlainTextEditH) return QTextOption_WrapMode;
 pragma Import(C,QPlainTextEdit_wordWrapMode, "QPlainTextEdit_wordWrapMode");

 procedure QPlainTextEdit_setWordWrapMode(handle: not null  QPlainTextEditH; policy: QTextOption_WrapMode);
 pragma Import(C,QPlainTextEdit_setWordWrapMode, "QPlainTextEdit_setWordWrapMode");

 procedure QPlainTextEdit_setBackgroundVisible(handle: not null  QPlainTextEditH; visible:boolean);
 pragma Import(C,QPlainTextEdit_setBackgroundVisible, "QPlainTextEdit_setBackgroundVisible");

 function  QPlainTextEdit_backgroundVisible(handle: not null  QPlainTextEditH) return boolean;
 pragma Import(C,QPlainTextEdit_backgroundVisible, "QPlainTextEdit_backgroundVisible");

 procedure QPlainTextEdit_setCenterOnScroll(handle: not null  QPlainTextEditH; enabled:boolean);
 pragma Import(C,QPlainTextEdit_setCenterOnScroll, "QPlainTextEdit_setCenterOnScroll");

 function  QPlainTextEdit_centerOnScroll(handle: not null  QPlainTextEditH) return boolean;
 pragma Import(C,QPlainTextEdit_centerOnScroll, "QPlainTextEdit_centerOnScroll");

 function  QPlainTextEdit_find(handle: not null  QPlainTextEditH; exp: QStringH; options: quint) return boolean;
 pragma Import(C,QPlainTextEdit_find, "QPlainTextEdit_find");

 function  QPlainTextEdit_toPlainText(handle: not null  QPlainTextEditH) return QStringH;
 pragma Import(C,QPlainTextEdit_toPlainText, "QPlainTextEdit_toPlainText");

 procedure QPlainTextEdit_ensureCursorVisible(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_ensureCursorVisible, "QPlainTextEdit_ensureCursorVisible");

 function  QPlainTextEdit_loadResource(handle: not null  QPlainTextEditH; typ: integer; name: QUrlH) return QVariantH;
 pragma Import(C,QPlainTextEdit_loadResource, "QPlainTextEdit_loadResource");

 function  QPlainTextEdit_createStandardContextMenu(handle: not null  QPlainTextEditH) return QMenuH;
 pragma Import(C,QPlainTextEdit_createStandardContextMenu, "QPlainTextEdit_createStandardContextMenu");

 function  QPlainTextEdit_cursorForPosition(handle: not null  QPlainTextEditH; pos:QPointH) return QTextCursorH;
 pragma Import(C,QPlainTextEdit_cursorForPosition, "QPlainTextEdit_cursorForPosition");

 function  QPlainTextEdit_cursorRect(handle: not null  QPlainTextEditH; cursor: QTextCursorH) return QRectH;
 pragma Import(C,QPlainTextEdit_cursorRect, "QPlainTextEdit_cursorRect");

 function  QPlainTextEdit_cursorRect2(handle: not null  QPlainTextEditH) return QRectH;
 pragma Import(C,QPlainTextEdit_cursorRect2, "QPlainTextEdit_cursorRect2");

 function  QPlainTextEdit_overwriteMode(handle: not null  QPlainTextEditH) return boolean;
 pragma Import(C,QPlainTextEdit_overwriteMode, "QPlainTextEdit_overwriteMode");

 procedure QPlainTextEdit_setOverwriteMode(handle: not null  QPlainTextEditH; overwrite: boolean);
 pragma Import(C,QPlainTextEdit_setOverwriteMode, "QPlainTextEdit_setOverwriteMode");

 function  QPlainTextEdit_tabStopWidth(handle: not null  QPlainTextEditH) return integer;
 pragma Import(C,QPlainTextEdit_tabStopWidth, "QPlainTextEdit_tabStopWidth");

 procedure QPlainTextEdit_setTabStopWidth(handle: not null  QPlainTextEditH; width:integer);
 pragma Import(C,QPlainTextEdit_setTabStopWidth, "QPlainTextEdit_setTabStopWidth");

 function  QPlainTextEdit_cursorWidth(handle: not null  QPlainTextEditH) return integer;
 pragma Import(C,QPlainTextEdit_cursorWidth, "QPlainTextEdit_cursorWidth");

 procedure QPlainTextEdit_setCursorWidth(handle: not null  QPlainTextEditH; width:integer);
 pragma Import(C,QPlainTextEdit_setCursorWidth, "QPlainTextEdit_setCursorWidth");

 procedure QPlainTextEdit_moveCursor(handle: not null  QPlainTextEditH; operation: QTextCursor_MoveOperation; mode: QTextCursor_MoveMode);
 pragma Import(C,QPlainTextEdit_moveCursor, "QPlainTextEdit_moveCursor");

 function  QPlainTextEdit_canPaste(handle: not null  QPlainTextEditH) return boolean;
 pragma Import(C,QPlainTextEdit_canPaste, "QPlainTextEdit_canPaste");

 procedure QPlainTextEdit_print(handle: not null  QPlainTextEditH; printer: QPrinterH);
 pragma Import(C,QPlainTextEdit_print, "QPlainTextEdit_print");

 function  QPlainTextEdit_blockCount(handle: not null  QPlainTextEditH) return integer;
 pragma Import(C,QPlainTextEdit_blockCount, "QPlainTextEdit_blockCount");

 procedure QPlainTextEdit_setPlainText(handle: not null  QPlainTextEditH; text:QStringH);
 pragma Import(C,QPlainTextEdit_setPlainText, "QPlainTextEdit_setPlainText");

 procedure QPlainTextEdit_cut(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_cut, "QPlainTextEdit_cut");

 procedure QPlainTextEdit_copy(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_copy, "QPlainTextEdit_copy");

 procedure QPlainTextEdit_paste(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_paste, "QPlainTextEdit_paste");

 procedure QPlainTextEdit_undo(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_undo, "QPlainTextEdit_undo");

 procedure QPlainTextEdit_redo(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_redo, "QPlainTextEdit_redo");

 procedure QPlainTextEdit_clear(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_clear, "QPlainTextEdit_clear");

 procedure QPlainTextEdit_selectAll(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_selectAll, "QPlainTextEdit_selectAll");

 procedure QPlainTextEdit_insertPlainText(handle: not null  QPlainTextEditH; text:QStringH);
 pragma Import(C,QPlainTextEdit_insertPlainText, "QPlainTextEdit_insertPlainText");

 procedure QPlainTextEdit_appendPlainText(handle: not null  QPlainTextEditH; text:QStringH);
 pragma Import(C,QPlainTextEdit_appendPlainText, "QPlainTextEdit_appendPlainText");

 procedure QPlainTextEdit_appendHtml(handle: not null  QPlainTextEditH; html: QStringH);
 pragma Import(C,QPlainTextEdit_appendHtml, "QPlainTextEdit_appendHtml");

 procedure QPlainTextEdit_centerCursor(handle: not null  QPlainTextEditH);
 pragma Import(C,QPlainTextEdit_centerCursor, "QPlainTextEdit_centerCursor");

 function  QPlainTextDocumentLayout_create(document:QTextDocumentH) return QPlainTextDocumentLayoutH;
 pragma Import(C,QPlainTextDocumentLayout_create, "QPlainTextDocumentLayout_create");

 procedure QPlainTextDocumentLayout_destroy(handle: not null  QPlainTextDocumentLayoutH);
 pragma Import(C,QPlainTextDocumentLayout_destroy, "QPlainTextDocumentLayout_destroy");

 function  QPlainTextDocumentLayout_hitTest(handle: not null  QPlainTextDocumentLayoutH; point: QPointFH; hit: QtHitTestAccuracy) return integer;
 pragma Import(C,QPlainTextDocumentLayout_hitTest, "QPlainTextDocumentLayout_hitTest");

 function  QPlainTextDocumentLayout_pageCount(handle: not null  QPlainTextDocumentLayoutH) return integer;
 pragma Import(C,QPlainTextDocumentLayout_pageCount, "QPlainTextDocumentLayout_pageCount");

 function  QPlainTextDocumentLayout_documentSize(handle: not null  QPlainTextDocumentLayoutH) return QSizeFH;
 pragma Import(C,QPlainTextDocumentLayout_documentSize, "QPlainTextDocumentLayout_documentSize");

 function  QPlainTextDocumentLayout_frameBoundingRect(handle: not null  QPlainTextDocumentLayoutH; text: QTextFrameH) return QRectFH;
 pragma Import(C,QPlainTextDocumentLayout_frameBoundingRect, "QPlainTextDocumentLayout_frameBoundingRect");

 function  QPlainTextDocumentLayout_blockBoundingRect(handle: not null  QPlainTextDocumentLayoutH; block: QTextBlockH) return QRectFH;
 pragma Import(C,QPlainTextDocumentLayout_blockBoundingRect, "QPlainTextDocumentLayout_blockBoundingRect");

 procedure QPlainTextDocumentLayout_ensureBlockLayout(handle: not null  QPlainTextDocumentLayoutH; block: QTextBlockH);
 pragma Import(C,QPlainTextDocumentLayout_ensureBlockLayout, "QPlainTextDocumentLayout_ensureBlockLayout");

 procedure QPlainTextDocumentLayout_setCursorWidth(handle: not null  QPlainTextDocumentLayoutH; width:integer);
 pragma Import(C,QPlainTextDocumentLayout_setCursorWidth, "QPlainTextDocumentLayout_setCursorWidth");

 function  QPlainTextDocumentLayout_cursorWidth(handle: not null  QPlainTextDocumentLayoutH) return integer;
 pragma Import(C,QPlainTextDocumentLayout_cursorWidth, "QPlainTextDocumentLayout_cursorWidth");

 procedure QPlainTextDocumentLayout_requestUpdate(handle: not null  QPlainTextDocumentLayoutH);
 pragma Import(C,QPlainTextDocumentLayout_requestUpdate, "QPlainTextDocumentLayout_requestUpdate");


 type QPlainTextEdit_textChangedEvent is access procedure;
 pragma Convention(C,QPlainTextEdit_textChangedEvent );

 type QPlainTextEdit_undoAvailableEvent is access procedure(fl:boolean);
 pragma Convention(C,QPlainTextEdit_undoAvailableEvent );

 type QPlainTextEdit_redoAvailableEvent is access procedure(fl:boolean);
 pragma Convention(C,QPlainTextEdit_redoAvailableEvent );

 type QPlainTextEdit_copyAvailableEvent is access procedure(fl:boolean);
 pragma Convention(C,QPlainTextEdit_copyAvailableEvent );

 type QPlainTextEdit_selectionChangedEvent is access procedure;
 pragma Convention(C,QPlainTextEdit_selectionChangedEvent );

 type QPlainTextEdit_cursorPositionChangedEvent is access procedure;
 pragma Convention(C,QPlainTextEdit_cursorPositionChangedEvent );

 type QPlainTextEdit_updateRequestEvent is access procedure(rect: QRectH; i: integer);
 pragma Convention(C,QPlainTextEdit_updateRequestEvent );

 type QPlainTextEdit_blockCountChangedEvent is access procedure(i:integer);
 pragma Convention(C,QPlainTextEdit_blockCountChangedEvent );

 type QPlainTextEdit_modificationChangedEvent is access procedure(fl:boolean);
 pragma Convention(C,QPlainTextEdit_modificationChangedEvent );

 
 procedure QPlainTextEdit_signal_slot_textChanged(handle: not null QPlainTextEditH; hook:QPlainTextEdit_textChangedEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_textChanged, "QPlainTextEdit_signal_slot_textChanged");
 
 procedure QPlainTextEdit_signal_slot_undoAvailable(handle: not null QPlainTextEditH; hook:QPlainTextEdit_undoAvailableEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_undoAvailable, "QPlainTextEdit_signal_slot_undoAvailable");
 
 procedure QPlainTextEdit_signal_slot_redoAvailable(handle: not null QPlainTextEditH; hook:QPlainTextEdit_redoAvailableEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_redoAvailable, "QPlainTextEdit_signal_slot_redoAvailable");
 
 procedure QPlainTextEdit_signal_slot_copyAvailable(handle: not null QPlainTextEditH; hook:QPlainTextEdit_copyAvailableEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_copyAvailable, "QPlainTextEdit_signal_slot_copyAvailable");
 
 procedure QPlainTextEdit_signal_slot_selectionChanged(handle: not null QPlainTextEditH; hook:QPlainTextEdit_selectionChangedEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_selectionChanged, "QPlainTextEdit_signal_slot_selectionChanged");
 
 procedure QPlainTextEdit_signal_slot_cursorPositionChanged(handle: not null QPlainTextEditH; hook:QPlainTextEdit_cursorPositionChangedEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_cursorPositionChanged, "QPlainTextEdit_signal_slot_cursorPositionChanged");
 
 procedure QPlainTextEdit_signal_slot_updateRequest(handle: not null QPlainTextEditH; hook:QPlainTextEdit_updateRequestEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_updateRequest, "QPlainTextEdit_signal_slot_updateRequest");
 
 procedure QPlainTextEdit_signal_slot_blockCountChanged(handle: not null QPlainTextEditH; hook:QPlainTextEdit_blockCountChangedEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_blockCountChanged, "QPlainTextEdit_signal_slot_blockCountChanged");
 
 procedure QPlainTextEdit_signal_slot_modificationChanged(handle: not null QPlainTextEditH; hook:QPlainTextEdit_modificationChangedEvent);
 pragma Import(C,QPlainTextEdit_signal_slot_modificationChanged, "QPlainTextEdit_signal_slot_modificationChanged");

 -- QXmlEdit is child of QPlainTextEdit

 function  QXmlEdit_create(parent:QWidgetH := null) return QPlainTextEditH;
 pragma Import(C,QXmlEdit_create, "QXmlEdit_create");
 
 procedure QXmlEdit_setDocument(handle:not null QPlainTextEditH; document:QTextDocumentH);
 pragma Import(C,QXmlEdit_setDocument, "QXmlEdit_setDocument");
 
 procedure QXmlEdit_setPlainText(handle:not null QPlainTextEditH; text:QStringH);
 pragma Import(C,QXmlEdit_setPlainText, "QXmlEdit_setPlainText");
 
 function  QPlainTextEdit_alignmentEnable(checked,based:QtAlignment) return boolean;
 pragma Import(C,QPlainTextEdit_alignmentEnable, "QPlainTextEdit_alignmentEnable");
 
 procedure QPlainTextEdit_setPlaceholderText(handle:not null QPlainTextEditH; placeholderText :QStringH);
 pragma Import(C,QPlainTextEdit_setPlaceholderText, "QPlainTextEdit_setPlaceholderText");
 
 function  QPlainTextEdit_placeholderText(handle:not null QPlainTextEditH) return QStringH;
 pragma Import(C,QPlainTextEdit_placeholderText, "QPlainTextEdit_placeholderText");
 
  function  QPlainTextEdit_find2(handle:not null QPlainTextEditH;exp:QRegExpH;options: quint) return boolean;
 pragma Import(C,QPlainTextEdit_find2, "QPlainTextEdit_find2");
 
 function  QPlainTextEdit_find3(handle:not null QPlainTextEditH;exp:QRegularExpressionH;options: quint) return boolean;
 pragma Import(C,QPlainTextEdit_find3, "QPlainTextEdit_find3");
 
 function  QPlainTextEdit_createStandardContextMenu2(handle:not null QPlainTextEditH;pos:QPointH) return QMenuH;
 pragma Import(C,QPlainTextEdit_createStandardContextMenu2, "QPlainTextEdit_createStandardContextMenu2");
 
 function  QPlainTextEdit_anchorAt(handle:not null QPlainTextEditH;pos:QPointH) return QStringH;
 pragma Import(C,QPlainTextEdit_anchorAt, "QPlainTextEdit_anchorAt");
 
 procedure QPlainTextEdit_setExtraSelections(handle:not null QPlainTextEditH;selections:QObjectListH);
 pragma Import(C,QPlainTextEdit_setExtraSelections, "QPlainTextEdit_setExtraSelections");
 
 function  QPlainTextEdit_extraSelections(handle:not null QPlainTextEditH) return QObjectListH;
 pragma Import(C,QPlainTextEdit_extraSelections, "QPlainTextEdit_extraSelections");
 
 function  QPlainTextEdit_inputMethodQuery(handle:not null QPlainTextEditH;query:QtInputMethodQuery;argument: QVariantH) return QVariantH;
 pragma Import(C,QPlainTextEdit_inputMethodQuery, "QPlainTextEdit_inputMethodQuery");
 
 function  QPlainTextEdit_inputMethodQuery2(handle:not null QPlainTextEditH;property:QtInputMethodQuery) return QVariantH;
 pragma Import(C,QPlainTextEdit_inputMethodQuery2, "QPlainTextEdit_inputMethodQuery2");
 
 procedure QPlainTextEdit_zoomIn(handle:not null QPlainTextEditH;rng :integer :=  1);
 pragma Import(C,QPlainTextEdit_zoomIn, "QPlainTextEdit_zoomIn");
 
 procedure QPlainTextEdit_zoomOut(handle:not null QPlainTextEditH;rng :integer :=  1);
 pragma Import(C,QPlainTextEdit_zoomOut, "QPlainTextEdit_zoomOut");
 
 
---------------------------------------------------------------------------------------------
 function  QPlainTextEdit_create(parent:QWidgetH := null) return  QPlainTextEditH;
function  QPlainTextEdit_find(handle:not null QPlainTextEditH;exp:QRegExpH;options: quint) return boolean;
 function  QPlainTextEdit_find(handle:not null QPlainTextEditH;exp:QRegularExpressionH;options: quint) return boolean;
 function  QPlainTextEdit_inputMethodQuery(handle:not null QPlainTextEditH;property:QtInputMethodQuery) return QVariantH;
 

end Qt.QPlainTextEdit;
