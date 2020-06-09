--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2016,2019            บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QText; use Qt.Qtext;
with Qt.QTextCursor; use Qt.QtextCursor;
with Qt.QTextDocument; use Qt.QtextDocument;

package Qt.QEdit                is

  
html_header : constant string  := "<!DOCTYPE HTML PUBLIC ""-//W3C//DTD HTML 4.0//EN"" ""http://www.w3.org/TR/REC-html40/strict.dtd"">" & 
"<html><head><meta name=""qrichtext"" content=""1"" /><meta http-equiv=""Content-Type"" content=""text/html; charset=UTF-8"" />" & 
"<style type=""text/css""> p, li { white-space: pre-wrap; } </style></head>";

html_end : constant string := "</html>";

-- To create QTextEditH from QStringH need to do: text := s2qs(html_header) + s2qs("<body>...</body>") + s2qs(html_end)

type QLineEditEchoMode is (QLineEditNormal, QLineEditNoEcho, QLineEditPassword, QLineEditPasswordEchoOnEdit );
pragma Convention(C,QLineEditEchoMode);

function QLineEdit_create(parent: QWidgetH := null) return QLineEditH;    
pragma Import(C,QLineEdit_create,"QLineEdit_create");

procedure QLineEdit_destroy(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_destroy,"QLineEdit_destroy");

function QLineEdit_create2(p1: QStringH; parent: QWidgetH := null) return QLineEditH;
pragma Import(C,QLineEdit_create2,"QLineEdit_create2");

function  QLineEdit_text(handle: not null  QLineEditH) return QStringH;
pragma Import(C,QLineEdit_text,"QLineEdit_text");

function  QLineEdit_displayText(handle: not null  QLineEditH) return QStringH;
pragma Import(C,QLineEdit_displayText,"QLineEdit_displayText");

function QLineEdit_maxLength(handle: not null  QLineEditH) return  Integer;   
pragma Import(C,QLineEdit_maxLength,"QLineEdit_maxLength");

procedure QLineEdit_setMaxLength(handle: not null  QLineEditH; p1: Integer);   
pragma Import(C,QLineEdit_setMaxLength,"QLineEdit_setMaxLength");

procedure QLineEdit_setFrame(handle: not null  QLineEditH; p1: Boolean);   
pragma Import(C,QLineEdit_setFrame,"QLineEdit_setFrame");

function QLineEdit_hasFrame(handle: not null  QLineEditH) return  Boolean;   
pragma Import(C,QLineEdit_hasFrame,"QLineEdit_hasFrame");

function QLineEdit_echoMode(handle: not null  QLineEditH) return  QLineEditEchoMode;   
pragma Import(C,QLineEdit_echoMode,"QLineEdit_echoMode");

procedure QLineEdit_setEchoMode(handle: not null  QLineEditH; p1: QLineEditEchoMode);   
pragma Import(C,QLineEdit_setEchoMode,"QLineEdit_setEchoMode");

function QLineEdit_isReadOnly(handle: not null  QLineEditH) return  Boolean;   
pragma Import(C,QLineEdit_isReadOnly,"QLineEdit_isReadOnly");

procedure QLineEdit_setReadOnly(handle: not null  QLineEditH; p1: Boolean);   
pragma Import(C,QLineEdit_setReadOnly,"QLineEdit_setReadOnly");

procedure QLineEdit_setValidator(handle: not null  QLineEditH; p1: QValidatorH);   
pragma Import(C,QLineEdit_setValidator,"QLineEdit_setValidator");

 procedure QLineEdit_setValidator2(handle:not null QLineEditH; pattern:QStringH;cs: QtCaseSensitivity := QtCaseSensitive; parent:QObjectH := null);
 pragma Import(C,QLineEdit_setValidator2, "QLineEdit_setValidator2");

function QLineEdit_validator(handle: not null  QLineEditH) return  QValidatorH;   
pragma Import(C,QLineEdit_validator,"QLineEdit_validator");

procedure QLineEdit_setCompleter(handle: not null  QLineEditH; completer: QCompleterH);   
pragma Import(C,QLineEdit_setCompleter,"QLineEdit_setCompleter");

function QLineEdit_completer(handle: not null  QLineEditH) return  QCompleterH;   
pragma Import(C,QLineEdit_completer,"QLineEdit_completer");

function  QLineEdit_sizeHint(handle: not null  QLineEditH) return QSizeH;
pragma Import(C,QLineEdit_sizeHint,"QLineEdit_sizeHint");

function QLineEdit_minimumSizeHint(handle: not null  QLineEditH) return QSizeH;
pragma Import(C,QLineEdit_minimumSizeHint,"QLineEdit_minimumSizeHint");

function QLineEdit_cursorPosition(handle: not null  QLineEditH) return  Integer;   
pragma Import(C,QLineEdit_cursorPosition,"QLineEdit_cursorPosition");

procedure QLineEdit_setCursorPosition(handle: not null  QLineEditH; p1: Integer);   
pragma Import(C,QLineEdit_setCursorPosition,"QLineEdit_setCursorPosition");

function QLineEdit_cursorPositionAt(handle: not null  QLineEditH; pos: QPointH) return  Integer;   
pragma Import(C,QLineEdit_cursorPositionAt,"QLineEdit_cursorPositionAt");

procedure QLineEdit_setAlignment(handle: not null  QLineEditH; flag: QtAlignment);   
pragma Import(C,QLineEdit_setAlignment,"QLineEdit_setAlignment");

function QLineEdit_alignment(handle: not null  QLineEditH) return  QtAlignment;   
pragma Import(C,QLineEdit_alignment,"QLineEdit_alignment");

procedure QLineEdit_cursorForward(handle: not null  QLineEditH; mark: Boolean; steps: Integer := 1);   
pragma Import(C,QLineEdit_cursorForward,"QLineEdit_cursorForward");

procedure QLineEdit_cursorBackward(handle: not null  QLineEditH; mark: Boolean; steps: Integer := 1);   
pragma Import(C,QLineEdit_cursorBackward,"QLineEdit_cursorBackward");

procedure QLineEdit_cursorWordForward(handle: not null  QLineEditH; mark: Boolean);   
pragma Import(C,QLineEdit_cursorWordForward,"QLineEdit_cursorWordForward");

procedure QLineEdit_cursorWordBackward(handle: not null  QLineEditH; mark: Boolean);   
pragma Import(C,QLineEdit_cursorWordBackward,"QLineEdit_cursorWordBackward");

procedure QLineEdit_backspace(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_backspace,"QLineEdit_backspace");

procedure QLineEdit_del(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_del,"QLineEdit_del");

procedure QLineEdit_home(handle: not null  QLineEditH; mark: Boolean);   
pragma Import(C,QLineEdit_home,"QLineEdit_home");

procedure QLineEdit_end(handle: not null  QLineEditH; mark: Boolean);   
pragma Import(C,QLineEdit_end,"QLineEdit_end");

function QLineEdit_isModified(handle: not null  QLineEditH) return  Boolean;   
pragma Import(C,QLineEdit_isModified,"QLineEdit_isModified");

procedure QLineEdit_setModified(handle: not null  QLineEditH; p1: Boolean);   
pragma Import(C,QLineEdit_setModified,"QLineEdit_setModified");

procedure QLineEdit_setSelection(handle: not null  QLineEditH; p1: Integer; p2: Integer);   
pragma Import(C,QLineEdit_setSelection,"QLineEdit_setSelection");

function QLineEdit_hasSelectedText(handle: not null  QLineEditH) return  Boolean;   
pragma Import(C,QLineEdit_hasSelectedText,"QLineEdit_hasSelectedText");

function  QLineEdit_selectedText(handle: not null  QLineEditH) return QStringH;
pragma Import(C,QLineEdit_selectedText,"QLineEdit_selectedText");

function QLineEdit_selectionStart(handle: not null  QLineEditH) return  Integer;   
pragma Import(C,QLineEdit_selectionStart,"QLineEdit_selectionStart");

function QLineEdit_isUndoAvailable(handle: not null  QLineEditH) return  Boolean;   
pragma Import(C,QLineEdit_isUndoAvailable,"QLineEdit_isUndoAvailable");

function QLineEdit_isRedoAvailable(handle: not null  QLineEditH) return  Boolean;   
pragma Import(C,QLineEdit_isRedoAvailable,"QLineEdit_isRedoAvailable");

procedure QLineEdit_setDragEnabled(handle: not null  QLineEditH; b: Boolean);   
pragma Import(C,QLineEdit_setDragEnabled,"QLineEdit_setDragEnabled");

function QLineEdit_dragEnabled(handle: not null  QLineEditH) return  Boolean;   
pragma Import(C,QLineEdit_dragEnabled,"QLineEdit_dragEnabled");

function  QLineEdit_inputMask(handle: not null  QLineEditH) return QStringH;
pragma Import(C,QLineEdit_inputMask,"QLineEdit_inputMask");

procedure QLineEdit_setInputMask(handle: not null  QLineEditH; inputMask: QStringH);   
pragma Import(C,QLineEdit_setInputMask,"QLineEdit_setInputMask");

function QLineEdit_hasAcceptableInput(handle: not null  QLineEditH) return  Boolean;   
pragma Import(C,QLineEdit_hasAcceptableInput,"QLineEdit_hasAcceptableInput");

procedure QLineEdit_setText(handle: not null  QLineEditH; p1: QStringH);   
pragma Import(C,QLineEdit_setText,"QLineEdit_setText");

procedure QLineEdit_clear(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_clear,"QLineEdit_clear");

procedure QLineEdit_selectAll(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_selectAll,"QLineEdit_selectAll");

procedure QLineEdit_undo(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_undo,"QLineEdit_undo");

procedure QLineEdit_redo(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_redo,"QLineEdit_redo");

procedure QLineEdit_cut(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_cut,"QLineEdit_cut");

procedure QLineEdit_copy(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_copy,"QLineEdit_copy");

procedure QLineEdit_paste(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_paste,"QLineEdit_paste");

procedure QLineEdit_deselect(handle: not null  QLineEditH);   
pragma Import(C,QLineEdit_deselect,"QLineEdit_deselect");

procedure QLineEdit_insert(handle: not null  QLineEditH; p1: QStringH);   
pragma Import(C,QLineEdit_insert,"QLineEdit_insert");

function QLineEdit_createStandardContextMenu(handle: not null  QLineEditH) return  QMenuH;   
pragma Import(C,QLineEdit_createStandardContextMenu,"QLineEdit_createStandardContextMenu");

function  QLineEdit_inputMethodQuery(handle: not null  QLineEditH; p1: QtInputMethodQuery) return QVariantH;
pragma Import(C,QLineEdit_inputMethodQuery,"QLineEdit_inputMethodQuery");

function QLineEdit_event(handle: not null  QLineEditH; p1: QEventH) return  Boolean;   
pragma Import(C,QLineEdit_event,"QLineEdit_event");

 function  QLineEdit_alignmentEnable(checked,based: QtAlignment) return boolean;
 pragma Import(C,QLineEdit_alignmentEnable, "QLineEdit_alignmentEnable");
 
 procedure QLineEdit_setPlaceholderText(handle:not null QLineEditH;placeholderText :QStringH );
 pragma Import(C,QLineEdit_setPlaceholderText, "QLineEdit_setPlaceholderText");
 
 function  QLineEdit_placeholderText(handle:not null QLineEditH) return QStringH;
 pragma Import(C,QLineEdit_placeholderText, "QLineEdit_placeholderText");
 
 procedure QLineEdit_setClearButtonEnabled(handle:not null QLineEditH;enable:boolean);
 pragma Import(C,QLineEdit_setClearButtonEnabled, "QLineEdit_setClearButtonEnabled");
 
 function  QLineEdit_isClearButtonEnabled(handle:not null QLineEditH) return boolean;
 pragma Import(C,QLineEdit_isClearButtonEnabled, "QLineEdit_isClearButtonEnabled");


type QTextEditLineWrapMode is (QTextEditNoWrap, QTextEditWidgetWidth, QTextEditFixedPixelWidth, QTextEditFixedColumnWidth );

subtype QTextEditAutoFormattingFlag is cardinal;
subtype QTextEditAutoFormatting     is cardinal;

QTextEditAutoNone       : constant QTextEditAutoFormattingFlag :=   0;
QTextEditAutoBulletList : constant QTextEditAutoFormattingFlag := 16#00000001#;
QTextEditAutoAll        : constant QTextEditAutoFormattingFlag := 16#ffffffff#;

function QTextEdit_create(parent: QWidgetH := null) return QTextEditH;    
pragma Import(C,QTextEdit_create,"QTextEdit_create");

procedure QTextEdit_destroy(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_destroy,"QTextEdit_destroy");

function QTextEdit_create2(text: QStringH; parent: QWidgetH := null) return QTextEditH;
pragma Import(C,QTextEdit_create2,"QTextEdit_create2");

procedure QTextEdit_setDocument(handle: not null  QTextEditH; document: QTextDocumentH);   
pragma Import(C,QTextEdit_setDocument,"QTextEdit_setDocument");

function QTextEdit_document(handle: not null  QTextEditH) return  QTextDocumentH;   
pragma Import(C,QTextEdit_document,"QTextEdit_document");

procedure QTextEdit_setTextCursor(handle: not null  QTextEditH; cursor: QTextCursorH);   
pragma Import(C,QTextEdit_setTextCursor,"QTextEdit_setTextCursor");

function  QTextEdit_textCursor(handle: not null  QTextEditH) return QTextCursorH;
pragma Import(C,QTextEdit_textCursor,"QTextEdit_textCursor");

function QTextEdit_isReadOnly(handle: not null  QTextEditH) return  Boolean;   
pragma Import(C,QTextEdit_isReadOnly,"QTextEdit_isReadOnly");

procedure QTextEdit_setReadOnly(handle: not null  QTextEditH; ro: Boolean);   
pragma Import(C,QTextEdit_setReadOnly,"QTextEdit_setReadOnly");

procedure QTextEdit_setTextInteractionFlags(handle: not null  QTextEditH; flags: QtTextInteractionFlags);   
pragma Import(C,QTextEdit_setTextInteractionFlags,"QTextEdit_setTextInteractionFlags");

function QTextEdit_textInteractionFlags(handle: not null  QTextEditH) return  QtTextInteractionFlags;   
pragma Import(C,QTextEdit_textInteractionFlags,"QTextEdit_textInteractionFlags");

function QTextEdit_fontPointSize(handle: not null  QTextEditH) return  Double;   
pragma Import(C,QTextEdit_fontPointSize,"QTextEdit_fontPointSize");

function  QTextEdit_fontFamily(handle: not null  QTextEditH) return QStringH;
pragma Import(C,QTextEdit_fontFamily,"QTextEdit_fontFamily");

function QTextEdit_fontWeight(handle: not null  QTextEditH) return  Integer;   
pragma Import(C,QTextEdit_fontWeight,"QTextEdit_fontWeight");

function QTextEdit_fontUnderline(handle: not null  QTextEditH) return  Boolean;   
pragma Import(C,QTextEdit_fontUnderline,"QTextEdit_fontUnderline");

function QTextEdit_fontItalic(handle: not null  QTextEditH) return  Boolean;   
pragma Import(C,QTextEdit_fontItalic,"QTextEdit_fontItalic");

function  QTextEdit_textColor(handle: not null  QTextEditH) return QColorH;
pragma Import(C,QTextEdit_textColor,"QTextEdit_textColor");

function  QTextEdit_currentFont(handle: not null  QTextEditH) return QFontH;
pragma Import(C,QTextEdit_currentFont,"QTextEdit_currentFont");

function QTextEdit_alignment(handle: not null  QTextEditH) return  QtAlignment;   
pragma Import(C,QTextEdit_alignment,"QTextEdit_alignment");

procedure QTextEdit_mergeCurrentCharFormat(handle: not null  QTextEditH; modifier: QTextCharFormatH);   
pragma Import(C,QTextEdit_mergeCurrentCharFormat,"QTextEdit_mergeCurrentCharFormat");

procedure QTextEdit_setCurrentCharFormat(handle: not null  QTextEditH; format: QTextCharFormatH);   
pragma Import(C,QTextEdit_setCurrentCharFormat,"QTextEdit_setCurrentCharFormat");

function  QTextEdit_currentCharFormat(handle: not null  QTextEditH) return  QTextCharFormatH;
pragma Import(C,QTextEdit_currentCharFormat,"QTextEdit_currentCharFormat");

function QTextEdit_autoFormatting(handle: not null  QTextEditH) return  QTextEditAutoFormatting;   
pragma Import(C,QTextEdit_autoFormatting,"QTextEdit_autoFormatting");

procedure QTextEdit_setAutoFormatting(handle: not null  QTextEditH; features: QTextEditAutoFormatting);   
pragma Import(C,QTextEdit_setAutoFormatting,"QTextEdit_setAutoFormatting");

function QTextEdit_tabChangesFocus(handle: not null  QTextEditH) return  Boolean;   
pragma Import(C,QTextEdit_tabChangesFocus,"QTextEdit_tabChangesFocus");

procedure QTextEdit_setTabChangesFocus(handle: not null  QTextEditH; b: Boolean);   
pragma Import(C,QTextEdit_setTabChangesFocus,"QTextEdit_setTabChangesFocus");

procedure QTextEdit_setDocumentTitle(handle: not null  QTextEditH; title: QStringH);   
pragma Import(C,QTextEdit_setDocumentTitle,"QTextEdit_setDocumentTitle");

function  QTextEdit_documentTitle(handle: not null  QTextEditH) return QStringH;
pragma Import(C,QTextEdit_documentTitle,"QTextEdit_documentTitle");

function QTextEdit_isUndoRedoEnabled(handle: not null  QTextEditH) return  Boolean;   
pragma Import(C,QTextEdit_isUndoRedoEnabled,"QTextEdit_isUndoRedoEnabled");

procedure QTextEdit_setUndoRedoEnabled(handle: not null  QTextEditH; enable: Boolean);   
pragma Import(C,QTextEdit_setUndoRedoEnabled,"QTextEdit_setUndoRedoEnabled");

function QTextEdit_lineWrapMode(handle: not null  QTextEditH) return  QTextEditLineWrapMode;   
pragma Import(C,QTextEdit_lineWrapMode,"QTextEdit_lineWrapMode");

procedure QTextEdit_setLineWrapMode(handle: not null  QTextEditH; mode: QTextEditLineWrapMode);   
pragma Import(C,QTextEdit_setLineWrapMode,"QTextEdit_setLineWrapMode");

function QTextEdit_lineWrapColumnOrWidth(handle: not null  QTextEditH) return  Integer;   
pragma Import(C,QTextEdit_lineWrapColumnOrWidth,"QTextEdit_lineWrapColumnOrWidth");

procedure QTextEdit_setLineWrapColumnOrWidth(handle: not null  QTextEditH; w: Integer);   
pragma Import(C,QTextEdit_setLineWrapColumnOrWidth,"QTextEdit_setLineWrapColumnOrWidth");

function QTextEdit_wordWrapMode(handle: not null  QTextEditH) return  QTextOptionWrapMode;   
pragma Import(C,QTextEdit_wordWrapMode,"QTextEdit_wordWrapMode");

procedure QTextEdit_setWordWrapMode(handle: not null  QTextEditH; policy: QTextOptionWrapMode);   
pragma Import(C,QTextEdit_setWordWrapMode,"QTextEdit_setWordWrapMode");

function QTextEdit_find(handle: not null  QTextEditH; exp: QStringH; options: QTextDocumentFindFlags := 0) return Boolean;   
pragma Import(C,QTextEdit_find,"QTextEdit_find");

function  QTextEdit_toPlainText(handle: not null  QTextEditH) return QStringH;
pragma Import(C,QTextEdit_toPlainText,"QTextEdit_toPlainText");

function  QTextEdit_toHtml(handle: not null  QTextEditH) return QStringH;
pragma Import(C,QTextEdit_toHtml,"QTextEdit_toHtml");

procedure QTextEdit_ensureCursorVisible(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_ensureCursorVisible,"QTextEdit_ensureCursorVisible");

function  QTextEdit_loadResource(handle: not null  QTextEditH; qtype: Integer; name: QUrlH) return QVariantH;
pragma Import(C,QTextEdit_loadResource,"QTextEdit_loadResource");

function QTextEdit_createStandardContextMenu(handle: not null  QTextEditH) return  QMenuH;   
pragma Import(C,QTextEdit_createStandardContextMenu,"QTextEdit_createStandardContextMenu");

function  QTextEdit_cursorForPosition(handle: not null  QTextEditH; pos: QPointH) return QTextCursorH;
pragma Import(C,QTextEdit_cursorForPosition,"QTextEdit_cursorForPosition");

function  QTextEdit_cursorRect(handle: not null  QTextEditH; cursor: QTextCursorH) return QRectH;
pragma Import(C,QTextEdit_cursorRect,"QTextEdit_cursorRect");

function  QTextEdit_cursorRect2(handle: not null  QTextEditH) return QRectH;
pragma Import(C,QTextEdit_cursorRect2,"QTextEdit_cursorRect2");

function  QTextEdit_anchorAt(handle: not null  QTextEditH; pos: QPointH) return QStringH;
pragma Import(C,QTextEdit_anchorAt,"QTextEdit_anchorAt");

function QTextEdit_overwriteMode(handle: not null  QTextEditH) return  Boolean;   
pragma Import(C,QTextEdit_overwriteMode,"QTextEdit_overwriteMode");

procedure QTextEdit_setOverwriteMode(handle: not null  QTextEditH; overwrite: Boolean);   
pragma Import(C,QTextEdit_setOverwriteMode,"QTextEdit_setOverwriteMode");

function QTextEdit_tabStopWidth(handle: not null  QTextEditH) return  Integer;   
pragma Import(C,QTextEdit_tabStopWidth,"QTextEdit_tabStopWidth");

procedure QTextEdit_setTabStopWidth(handle: not null  QTextEditH; width: Integer);   
pragma Import(C,QTextEdit_setTabStopWidth,"QTextEdit_setTabStopWidth");

function QTextEdit_cursorWidth(handle: not null  QTextEditH) return  Integer;   
pragma Import(C,QTextEdit_cursorWidth,"QTextEdit_cursorWidth");

procedure QTextEdit_setCursorWidth(handle: not null  QTextEditH; width: Integer);   
pragma Import(C,QTextEdit_setCursorWidth,"QTextEdit_setCursorWidth");

function QTextEdit_acceptRichText(handle: not null  QTextEditH) return  Boolean;   
pragma Import(C,QTextEdit_acceptRichText,"QTextEdit_acceptRichText");

procedure QTextEdit_setAcceptRichText(handle: not null  QTextEditH; isaccept: Boolean);
pragma Import(C,QTextEdit_setAcceptRichText,"QTextEdit_setAcceptRichText");

procedure QTextEdit_moveCursor(handle: not null  QTextEditH; operation: QTextCursorMoveOperation; mode: QTextCursorMoveMode := QTextCursorMoveAnchor);   
pragma Import(C,QTextEdit_moveCursor,"QTextEdit_moveCursor");

function QTextEdit_canPaste(handle: not null  QTextEditH) return  Boolean;   
pragma Import(C,QTextEdit_canPaste,"QTextEdit_canPaste");

procedure QTextEdit_print(handle: not null  QTextEditH; printer: QPrinterH);   
pragma Import(C,QTextEdit_print,"QTextEdit_print");

procedure QTextEdit_setFontPointSize(handle: not null  QTextEditH; s: Double);   
pragma Import(C,QTextEdit_setFontPointSize,"QTextEdit_setFontPointSize");

procedure QTextEdit_setFontFamily(handle: not null  QTextEditH; fontFamily: QStringH);   
pragma Import(C,QTextEdit_setFontFamily,"QTextEdit_setFontFamily");

procedure QTextEdit_setFontWeight(handle: not null  QTextEditH; w: Integer);   
pragma Import(C,QTextEdit_setFontWeight,"QTextEdit_setFontWeight");

procedure QTextEdit_setFontUnderline(handle: not null  QTextEditH; b: Boolean);   
pragma Import(C,QTextEdit_setFontUnderline,"QTextEdit_setFontUnderline");

procedure QTextEdit_setFontItalic(handle: not null  QTextEditH; b: Boolean);   
pragma Import(C,QTextEdit_setFontItalic,"QTextEdit_setFontItalic");

procedure QTextEdit_setTextColor(handle: not null  QTextEditH; c: QColorH);   
pragma Import(C,QTextEdit_setTextColor,"QTextEdit_setTextColor");

procedure QTextEdit_setCurrentFont(handle: not null  QTextEditH; f: QFontH);   
pragma Import(C,QTextEdit_setCurrentFont,"QTextEdit_setCurrentFont");

procedure QTextEdit_setAlignment(handle: not null  QTextEditH; a: QtAlignment);   
pragma Import(C,QTextEdit_setAlignment,"QTextEdit_setAlignment");

procedure QTextEdit_setPlainText(handle: not null  QTextEditH; text: QStringH);   
pragma Import(C,QTextEdit_setPlainText,"QTextEdit_setPlainText");

procedure QTextEdit_setHtml(handle: not null  QTextEditH; text: QStringH);   
pragma Import(C,QTextEdit_setHtml,"QTextEdit_setHtml");

procedure QTextEdit_setText(handle: not null  QTextEditH; text: QStringH);   
pragma Import(C,QTextEdit_setText,"QTextEdit_setText");

procedure QTextEdit_cut(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_cut,"QTextEdit_cut");

procedure QTextEdit_copy(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_copy,"QTextEdit_copy");

procedure QTextEdit_paste(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_paste,"QTextEdit_paste");

procedure QTextEdit_undo(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_undo,"QTextEdit_undo");

procedure QTextEdit_redo(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_redo,"QTextEdit_redo");

procedure QTextEdit_clear(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_clear,"QTextEdit_clear");

procedure QTextEdit_selectAll(handle: not null  QTextEditH);   
pragma Import(C,QTextEdit_selectAll,"QTextEdit_selectAll");

procedure QTextEdit_insertPlainText(handle: not null  QTextEditH; text: QStringH);   
pragma Import(C,QTextEdit_insertPlainText,"QTextEdit_insertPlainText");

procedure QTextEdit_insertHtml(handle: not null  QTextEditH; text: QStringH);   
pragma Import(C,QTextEdit_insertHtml,"QTextEdit_insertHtml");

procedure QTextEdit_append(handle: not null  QTextEditH; text: QStringH);   
pragma Import(C,QTextEdit_append,"QTextEdit_append");

procedure QTextEdit_scrollToAnchor(handle: not null  QTextEditH; name: QStringH);   
pragma Import(C,QTextEdit_scrollToAnchor,"QTextEdit_scrollToAnchor");

procedure QTextEdit_zoomIn(handle: not null  QTextEditH; rng: Integer := 1);   
pragma Import(C,QTextEdit_zoomIn,"QTextEdit_zoomIn");

procedure QTextEdit_zoomOut(handle: not null  QTextEditH; rng: Integer := 1);   
pragma Import(C,QTextEdit_zoomOut,"QTextEdit_zoomOut");

function  QTextEdit_alignmentEnable(checked,based: QtAlignment) return boolean;
pragma Import(C,QTextEdit_alignmentEnable, "QTextEdit_alignmentEnable");

procedure QTextEdit_setPlaceholderText(handle:not null QTextEditH; placeholderText:QStringH);
pragma Import(C,QTextEdit_setPlaceholderText, "QTextEdit_setPlaceholderText");
 
function  QTextEdit_placeholderText(handle:not null QTextEditH) return QStringH;
pragma Import(C,QTextEdit_placeholderText, "QTextEdit_placeholderText");
 

type QTextEdit_textChangedEvent is access procedure ;
pragma Convention(C,QTextEdit_textChangedEvent);

type QTextEdit_undoAvailableEvent is access procedure (b: Boolean);
pragma Convention(C,QTextEdit_undoAvailableEvent);

type QTextEdit_redoAvailableEvent is access procedure (b: Boolean);
pragma Convention(C,QTextEdit_redoAvailableEvent);

type QTextEdit_currentCharFormatChangedEvent is access procedure (format: QTextCharFormatH);
pragma Convention(C, QTextEdit_currentCharFormatChangedEvent);

type QTextEdit_copyAvailableEvent is access procedure (b: Boolean);
pragma Convention(C,QTextEdit_copyAvailableEvent);

type QTextEdit_selectionChangedEvent is access procedure ;
pragma Convention(C,QTextEdit_selectionChangedEvent);

type QTextEdit_cursorPositionChangedEvent is access procedure ;
pragma Convention(C, QTextEdit_cursorPositionChangedEvent);
 
 procedure QTextEdit_signal_slot_textChanged(handle: not null QTextEditH; hook:QTextEdit_textChangedEvent);
 pragma Import(C,QTextEdit_signal_slot_textChanged, "QTextEdit_signal_slot_textChanged");
 
 procedure QTextEdit_signal_slot_undoAvailable(handle: not null QTextEditH; hook:QTextEdit_undoAvailableEvent);
 pragma Import(C,QTextEdit_signal_slot_undoAvailable, "QTextEdit_signal_slot_undoAvailable");
 
 procedure QTextEdit_signal_slot_redoAvailable(handle: not null QTextEditH; hook:QTextEdit_redoAvailableEvent);
 pragma Import(C,QTextEdit_signal_slot_redoAvailable, "QTextEdit_signal_slot_redoAvailable");
 
 procedure QTextEdit_signal_slot_currentCharFormatChanged(handle: not null QTextEditH; hook:QTextEdit_currentCharFormatChangedEvent);
 pragma Import(C,QTextEdit_signal_slot_currentCharFormatChanged, "QTextEdit_signal_slot_currentCharFormatChanged");
 
 procedure QTextEdit_signal_slot_copyAvailable(handle: not null QTextEditH; hook:QTextEdit_copyAvailableEvent);
 pragma Import(C,QTextEdit_signal_slot_copyAvailable, "QTextEdit_signal_slot_copyAvailable");
 
 procedure QTextEdit_signal_slot_selectionChanged(handle: not null QTextEditH; hook:QTextEdit_selectionChangedEvent);
 pragma Import(C,QTextEdit_signal_slot_selectionChanged, "QTextEdit_signal_slot_selectionChanged");
 
 procedure QTextEdit_signal_slot_cursorPositionChanged(handle: not null QTextEditH; hook:QTextEdit_cursorPositionChangedEvent);
 pragma Import(C,QTextEdit_signal_slot_cursorPositionChanged, "QTextEdit_signal_slot_cursorPositionChanged");
 
------------------------------------------------------------------

 type  QLineEdit_textChangedEvent is access procedure(text:QStringH);
 pragma Convention(C,QLineEdit_textChangedEvent);

 type  QLineEdit_textEditedEvent is access procedure(text:QStringH);
 pragma Convention(C,QLineEdit_textEditedEvent);

 type  QLineEdit_cursorPositionChangedEvent is access procedure(x,y:integer);
 pragma Convention(C,QLineEdit_cursorPositionChangedEvent);

 type  QLineEdit_returnPressedEvent is access procedure;
 pragma Convention(C, QLineEdit_returnPressedEvent);

 type  QLineEdit_editingFinishedEvent is access procedure;
 pragma Convention(C, QLineEdit_editingFinishedEvent);

 type  QLineEdit_selectionChangedEvent is access procedure;
 pragma Convention(C,QLineEdit_selectionChangedEvent);
 
 procedure QLineEdit_signal_slot_textChanged(handle: not null QLineEditH; hook:QLineEdit_textChangedEvent);
 pragma Import(C,QLineEdit_signal_slot_textChanged, "QLineEdit_signal_slot_textChanged");
 
 procedure QLineEdit_signal_slot_textEdited(handle: not null QLineEditH; hook:QLineEdit_textEditedEvent);
 pragma Import(C,QLineEdit_signal_slot_textEdited, "QLineEdit_signal_slot_textEdited");
 
 procedure QLineEdit_signal_slot_cursorPositionChanged(handle: not null QLineEditH; hook:QLineEdit_cursorPositionChangedEvent);
 pragma Import(C,QLineEdit_signal_slot_cursorPositionChanged, "QLineEdit_signal_slot_cursorPositionChanged");
 
 procedure QLineEdit_signal_slot_returnPressed(handle: not null QLineEditH; hook:QLineEdit_returnPressedEvent);
 pragma Import(C,QLineEdit_signal_slot_returnPressed, "QLineEdit_signal_slot_returnPressed");
 
 procedure QLineEdit_signal_slot_editingFinished(handle: not null QLineEditH; hook:QLineEdit_editingFinishedEvent);
 pragma Import(C,QLineEdit_signal_slot_editingFinished, "QLineEdit_signal_slot_editingFinished");
 
 procedure QLineEdit_signal_slot_selectionChanged(handle: not null QLineEditH; hook:QLineEdit_selectionChangedEvent);
 pragma Import(C,QLineEdit_signal_slot_selectionChanged, "QLineEdit_signal_slot_selectionChanged");

 type ActionPosition is (LeadingPosition,TrailingPosition);
 pragma convention(C,ActionPosition); 

 procedure QLineEdit_setTextMargins(handle:not null QLineEditH;left,top,right,bottom: integer);
 pragma Import(C,QLineEdit_setTextMargins, "QLineEdit_setTextMargins");
 
 procedure QLineEdit_setTextMargins2(handle:not null QLineEditH;margins: QMarginsH);
 pragma Import(C,QLineEdit_setTextMargins2, "QLineEdit_setTextMargins2");
 
 procedure QLineEdit_getTextMargins(handle:not null QLineEditH;left,top,right,bottom: in out integer);
 pragma Import(C,QLineEdit_getTextMargins, "QLineEdit_getTextMargins");
 
 function  QLineEdit_textMargins(handle:not null QLineEditH) return QMarginsH;
 pragma Import(C,QLineEdit_textMargins, "QLineEdit_textMargins");
 
 procedure QLineEdit_addAction(handle:not null QLineEditH;action:QActionH;position: ActionPosition);
 pragma Import(C,QLineEdit_addAction, "QLineEdit_addAction");
 
 function  QLineEdit_addAction2(handle:not null QLineEditH;icon: QIconH;position: ActionPosition) return QActionH;
 pragma Import(C,QLineEdit_addAction2, "QLineEdit_addAction2");
 
 
------------------------------------------------------------------

function QLineEdit_create(p1: QStringH; parent: QWidgetH := null) return QLineEditH;
procedure QLineEdit_setValidator(handle:not null QLineEditH; pattern:QStringH;cs: QtCaseSensitivity := QtCaseSensitive; parent:QObjectH := null);
function QTextEdit_create(text: QStringH; parent: QWidgetH := null) return QTextEditH;
function QTextEdit_cursorRect(handle: not null  QTextEditH) return QRectH;
procedure QLineEdit_setTextMargins(handle:not null QLineEditH;margins: QMarginsH);

end Qt.QEdit;
