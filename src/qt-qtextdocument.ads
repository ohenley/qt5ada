--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QByteArray; use Qt.QByteArray;
with Qt.QNamespace;
package Qt.QTextDocument        is

type QTextDocumentMetaInformation is ( QTextDocumentDocumentTitle );

subtype QTextDocumentFindFlag  is cardinal;
subtype QTextDocumentFindFlags is cardinal;

QTextDocumentFindBackward        : constant QTextDocumentFindFlag := 16#00001#;
QTextDocumentFindCaseSensitively : constant QTextDocumentFindFlag := 16#00002#;
QTextDocumentFindWholeWords      : constant QTextDocumentFindFlag := 16#00004#;

type QTextDocumentResourceType is (QTextDocumentHtmlResource,QTextDocumentImageResource,QTextDocumentStyleSheetResource,QTextDocumentUserResource);

for  QTextDocumentResourceType'size use cardinal'size;
for  QTextDocumentResourceType use (
         QTextDocumentHtmlResource => 1,
         QTextDocumentImageResource => 2,
         QTextDocumentStyleSheetResource => 3,
         QTextDocumentUserResource => 100 );

function QTextDocument_create(parent: QObjectH := null) return QTextDocumentH;    
pragma Import(C,QTextDocument_create,"QTextDocument_create");

procedure QTextDocument_destroy(handle: not null  QTextDocumentH);   
pragma Import(C,QTextDocument_destroy,"QTextDocument_destroy");

function QTextDocument_create2(text: QStringH; parent: QObjectH := null) return QTextDocumentH;
pragma Import(C,QTextDocument_create2,"QTextDocument_create2");

function QTextDocument_clone(handle: not null  QTextDocumentH; parent: QObjectH := null) return QTextDocumentH;   
pragma Import(C,QTextDocument_clone,"QTextDocument_clone");

function QTextDocument_isEmpty(handle: not null  QTextDocumentH) return  Boolean;   
pragma Import(C,QTextDocument_isEmpty,"QTextDocument_isEmpty");

procedure QTextDocument_clear(handle: not null  QTextDocumentH);   
pragma Import(C,QTextDocument_clear,"QTextDocument_clear");

procedure QTextDocument_setUndoRedoEnabled(handle: not null  QTextDocumentH; enable: Boolean);   
pragma Import(C,QTextDocument_setUndoRedoEnabled,"QTextDocument_setUndoRedoEnabled");

function QTextDocument_isUndoRedoEnabled(handle: not null  QTextDocumentH) return  Boolean;   
pragma Import(C,QTextDocument_isUndoRedoEnabled,"QTextDocument_isUndoRedoEnabled");

function QTextDocument_isUndoAvailable(handle: not null  QTextDocumentH) return  Boolean;   
pragma Import(C,QTextDocument_isUndoAvailable,"QTextDocument_isUndoAvailable");

function QTextDocument_isRedoAvailable(handle: not null  QTextDocumentH) return  Boolean;   
pragma Import(C,QTextDocument_isRedoAvailable,"QTextDocument_isRedoAvailable");

procedure QTextDocument_setDocumentLayout(handle: not null  QTextDocumentH; layout: QAbstractTextDocumentLayoutH);   
pragma Import(C,QTextDocument_setDocumentLayout,"QTextDocument_setDocumentLayout");

function QTextDocument_documentLayout(handle: not null  QTextDocumentH) return  QAbstractTextDocumentLayoutH;   
pragma Import(C,QTextDocument_documentLayout,"QTextDocument_documentLayout");

procedure QTextDocument_setMetaInformation(handle: not null  QTextDocumentH; info: QTextDocumentMetaInformation; p2: QStringH);   
pragma Import(C,QTextDocument_setMetaInformation,"QTextDocument_setMetaInformation");

function  QTextDocument_metaInformation(handle: not null  QTextDocumentH; info: QTextDocumentMetaInformation) return QStringH;
pragma Import(C,QTextDocument_metaInformation,"QTextDocument_metaInformation");

function  QTextDocument_toHtml(handle: not null  QTextDocumentH; encoding: QByteArrayH := null) return QStringH;
pragma Import(C,QTextDocument_toHtml,"QTextDocument_toHtml");

procedure QTextDocument_setHtml(handle: not null  QTextDocumentH; html: QStringH);   
pragma Import(C,QTextDocument_setHtml,"QTextDocument_setHtml");

function  QTextDocument_toPlainText(handle: not null  QTextDocumentH) return QStringH;
pragma Import(C,QTextDocument_toPlainText,"QTextDocument_toPlainText");

procedure QTextDocument_setPlainText(handle: not null  QTextDocumentH; text: QStringH);   
pragma Import(C,QTextDocument_setPlainText,"QTextDocument_setPlainText");

function  QTextDocument_find(handle: not null  QTextDocumentH; subString: QStringH; from: Integer := 0; options: QTextDocumentFindFlags := 0) return QTextCursorH;
pragma Import(C,QTextDocument_find,"QTextDocument_find");

function  QTextDocument_find2(handle: not null  QTextDocumentH; subString: QStringH; from: QTextCursorH; options: QTextDocumentFindFlags := 0) return QTextCursorH;
pragma Import(C,QTextDocument_find2,"QTextDocument_find2");

function  QTextDocument_find3(handle: not null  QTextDocumentH; expr: QRegExpH; from: Integer := 0; options: QTextDocumentFindFlags := 0) return QTextCursorH;
pragma Import(C,QTextDocument_find3,"QTextDocument_find3");

function  QTextDocument_find4(handle: not null  QTextDocumentH; expr: QRegExpH; from: QTextCursorH; options: QTextDocumentFindFlags := 0) return QTextCursorH;
pragma Import(C,QTextDocument_find4,"QTextDocument_find4");

function QTextDocument_frameAt(handle: not null  QTextDocumentH; pos: Integer) return  QTextFrameH;   
pragma Import(C,QTextDocument_frameAt,"QTextDocument_frameAt");

function QTextDocument_rootFrame(handle: not null  QTextDocumentH) return  QTextFrameH;   
pragma Import(C,QTextDocument_rootFrame,"QTextDocument_rootFrame");

function QTextDocumentqobject(handle: not null  QTextDocumentH; objectIndex: Integer) return  QTextObjectH;   
pragma Import(C,QTextDocumentqobject,"QTextDocumentqobject");

function QTextDocumentqobjectForFormat(handle: not null  QTextDocumentH; p1: QTextFormatH) return  QTextObjectH;   
pragma Import(C,QTextDocumentqobjectForFormat,"QTextDocumentqobjectForFormat");

function  QTextDocument_findBlock(handle: not null  QTextDocumentH; pos: Integer) return QTextBlockH;
pragma Import(C,QTextDocument_findBlock,"QTextDocument_findBlock");

function  QTextDocument_begin(handle: not null  QTextDocumentH) return QTextBlockH;
pragma Import(C,QTextDocument_begin,"QTextDocument_begin");

function  QTextDocument_end(handle: not null  QTextDocumentH) return QTextBlockH;
pragma Import(C,QTextDocument_end,"QTextDocument_end");

procedure QTextDocument_setPageSize(handle: not null  QTextDocumentH; size: QSizeFH);   
pragma Import(C,QTextDocument_setPageSize,"QTextDocument_setPageSize");

function  QTextDocument_pageSize(handle: not null  QTextDocumentH) return QSizeFH;
pragma Import(C,QTextDocument_pageSize,"QTextDocument_pageSize");

procedure QTextDocument_setDefaultFont(handle: not null  QTextDocumentH; font: QFontH);   
pragma Import(C,QTextDocument_setDefaultFont,"QTextDocument_setDefaultFont");

function  QTextDocument_defaultFont(handle: not null  QTextDocumentH) return QFontH;
pragma Import(C,QTextDocument_defaultFont,"QTextDocument_defaultFont");

function QTextDocument_pageCount(handle: not null  QTextDocumentH) return  Integer;   
pragma Import(C,QTextDocument_pageCount,"QTextDocument_pageCount");

function QTextDocument_isModified(handle: not null  QTextDocumentH) return  Boolean;   
pragma Import(C,QTextDocument_isModified,"QTextDocument_isModified");

procedure QTextDocument_print(handle: not null  QTextDocumentH; printer: QPrinterH);   
pragma Import(C,QTextDocument_print,"QTextDocument_print");

function  QTextDocument_resource(handle: not null  QTextDocumentH; qtype: Integer; name: QUrlH) return QVariantH;
pragma Import(C,QTextDocument_resource,"QTextDocument_resource");

procedure QTextDocument_addResource(handle: not null  QTextDocumentH; qtype: Integer; name: QUrlH; resource: QVariantH);   
pragma Import(C,QTextDocument_addResource,"QTextDocument_addResource");

procedure QTextDocument_markContentsDirty(handle: not null  QTextDocumentH; from: Integer; length: Integer);   
pragma Import(C,QTextDocument_markContentsDirty,"QTextDocument_markContentsDirty");

procedure QTextDocument_setUseDesignMetrics(handle: not null  QTextDocumentH; b: Boolean);   
pragma Import(C,QTextDocument_setUseDesignMetrics,"QTextDocument_setUseDesignMetrics");

function QTextDocument_useDesignMetrics(handle: not null  QTextDocumentH) return  Boolean;   
pragma Import(C,QTextDocument_useDesignMetrics,"QTextDocument_useDesignMetrics");

procedure QTextDocument_drawContents(handle: not null  QTextDocumentH; painter: QPainterH; rect: QRectFH := null);   
pragma Import(C,QTextDocument_drawContents,"QTextDocument_drawContents");

procedure QTextDocument_setTextWidth(handle: not null  QTextDocumentH; width: Double);   
pragma Import(C,QTextDocument_setTextWidth,"QTextDocument_setTextWidth");

function QTextDocument_textWidth(handle: not null  QTextDocumentH) return  Double;   
pragma Import(C,QTextDocument_textWidth,"QTextDocument_textWidth");

function QTextDocument_idealWidth(handle: not null  QTextDocumentH) return  Double;   
pragma Import(C,QTextDocument_idealWidth,"QTextDocument_idealWidth");

procedure QTextDocument_adjustSize(handle: not null  QTextDocumentH);   
pragma Import(C,QTextDocument_adjustSize,"QTextDocument_adjustSize");

function  QTextDocument_size(handle: not null  QTextDocumentH) return QSizeFH;
pragma Import(C,QTextDocument_size,"QTextDocument_size");

function QTextDocument_blockCount(handle: not null  QTextDocumentH) return  Integer;   
pragma Import(C,QTextDocument_blockCount,"QTextDocument_blockCount");

procedure QTextDocument_setDefaultStyleSheet(handle: not null  QTextDocumentH; sheet: QStringH);   
pragma Import(C,QTextDocument_setDefaultStyleSheet,"QTextDocument_setDefaultStyleSheet");

function  QTextDocument_defaultStyleSheet(handle: not null  QTextDocumentH) return QStringH;
pragma Import(C,QTextDocument_defaultStyleSheet,"QTextDocument_defaultStyleSheet");

procedure QTextDocument_undo(handle: not null  QTextDocumentH; cursor: QTextCursorH);    
pragma Import(C,QTextDocument_undo,"QTextDocument_undo");

procedure QTextDocument_redo(handle: not null  QTextDocumentH; cursor: QTextCursorH);    
pragma Import(C,QTextDocument_redo,"QTextDocument_redo");

function QTextDocument_maximumBlockCount(handle: not null  QTextDocumentH) return  Integer;   
pragma Import(C,QTextDocument_maximumBlockCount,"QTextDocument_maximumBlockCount");

procedure QTextDocument_setMaximumBlockCount(handle: not null  QTextDocumentH; maximum: Integer);   
pragma Import(C,QTextDocument_setMaximumBlockCount,"QTextDocument_setMaximumBlockCount");

function  QTextDocument_defaultTextOption(handle: not null  QTextDocumentH) return QTextOptionH;
pragma Import(C,QTextDocument_defaultTextOption,"QTextDocument_defaultTextOption");

procedure QTextDocument_setDefaultTextOption(handle: not null  QTextDocumentH; option: QTextOptionH);   
pragma Import(C,QTextDocument_setDefaultTextOption,"QTextDocument_setDefaultTextOption");

procedure QTextDocument_undo2(handle: not null  QTextDocumentH);
pragma Import(C,QTextDocument_undo2,"QTextDocument_undo2");

procedure QTextDocument_redo2(handle: not null  QTextDocumentH);
pragma Import(C,QTextDocument_redo2,"QTextDocument_redo2");

procedure QTextDocument_setModified(handle: not null  QTextDocumentH; m: Boolean := True);   
pragma Import(C,QTextDocument_setModified,"QTextDocument_setModified");

procedure QTextDocument_appendUndoItem(handle: not null QTextDocumentH; item: QStandardItemH);
pragma Import(C,QTextDocument_appendUndoItem, "QTextDocument_appendUndoItem");

type QtHitTestAccuracy is (ExactHit,FuzzyHit);
pragma Convention(C,QtHitTestAccuracy);

type QtWhiteSpaceMode is new quint;

 WhiteSpaceNormal        : constant QtWhiteSpaceMode :=  0;
 WhiteSpacePre           : constant QtWhiteSpaceMode :=  1;
 WhiteSpaceNoWrap        : constant QtWhiteSpaceMode :=  2;
 WhiteSpaceModeUndefined : constant QtWhiteSpaceMode := -1;


function  QTextDocument_mightBeRichText(str:QStringH) return boolean;
pragma Import(C,QTextDocument_mightBeRichText, "QTextDocument_mightBeRichText");

function  QTextDocument_escape(plain:QStringH) return QStringH;
pragma Import(C,QTextDocument_escape, "QTextDocument_escape");

function  QTextDocument_convertFromPlainText(plain:QStringH;mode: QtWhiteSpaceMode := WhiteSpacePre) return QStringH;
pragma Import(C,QTextDocument_convertFromPlainText, "QTextDocument_convertFromPlainText");


 type QTextDocument_contentsChangeEvent is access procedure(from, charsRemoves, charsAdded: integer);
 pragma Convention(C,QTextDocument_contentsChangeEvent);

 type QTextDocument_contentsChangedEvent is access procedure;
 pragma Convention(C,QTextDocument_contentsChangedEvent);

 type QTextDocument_undoAvailableEvent is access procedure(fl:boolean); 
 pragma Convention(C,QTextDocument_undoAvailableEvent);

 type QTextDocument_redoAvailableEvent is access procedure(fl:boolean);
 pragma Convention(C,QTextDocument_redoAvailableEvent);

 type QTextDocument_undoCommandAddedEvent is access procedure;
 pragma Convention(C,QTextDocument_undoCommandAddedEvent);

 type QTextDocument_modificationChangedEvent is access procedure(m: boolean);
 pragma Convention(C,QTextDocument_modificationChangedEvent);

 type QTextDocument_cursorPositionChangedEvent is access procedure(cursor:QTextCursorH);
 pragma Convention(C,QTextDocument_cursorPositionChangedEvent);

 type QTextDocument_blockCountChangedEvent is access procedure(newBlockCount:integer);
 pragma Convention(C,QTextDocument_blockCountChangedEvent);

 procedure QTextDocument_signal_slot_contentsChange(handle: not null QTextDocumentH; hook : QTextDocument_contentsChangeEvent);
 pragma Import(C,QTextDocument_signal_slot_contentsChange, "QTextDocument_signal_slot_contentsChange");
 
 procedure QTextDocument_signal_slot_contentsChanged(handle: not null QTextDocumentH; hook : QTextDocument_contentsChangedEvent);
 pragma Import(C,QTextDocument_signal_slot_contentsChanged, "QTextDocument_signal_slot_contentsChanged");
 
 procedure QTextDocument_signal_slot_undoAvailable(handle: not null QTextDocumentH; hook : QTextDocument_undoAvailableEvent);
 pragma Import(C,QTextDocument_signal_slot_undoAvailable, "QTextDocument_signal_slot_undoAvailable");
 
 procedure QTextDocument_signal_slot_redoAvailable(handle: not null QTextDocumentH; hook : QTextDocument_redoAvailableEvent);
 pragma Import(C,QTextDocument_signal_slot_redoAvailable, "QTextDocument_signal_slot_redoAvailable");
 
 procedure QTextDocument_signal_slot_undoCommandAdded(handle: not null QTextDocumentH; hook : QTextDocument_undoCommandAddedEvent);
 pragma Import(C,QTextDocument_signal_slot_undoCommandAdded, "QTextDocument_signal_slot_undoCommandAdded");
 
 procedure QTextDocument_signal_slot_modificationChanged(handle: not null QTextDocumentH; hook : QTextDocument_modificationChangedEvent);
 pragma Import(C,QTextDocument_signal_slot_modificationChanged, "QTextDocument_signal_slot_modificationChanged");
 
 procedure QTextDocument_signal_slot_cursorPositionChanged(handle: not null QTextDocumentH; hook : QTextDocument_cursorPositionChangedEvent);
 pragma Import(C,QTextDocument_signal_slot_cursorPositionChanged, "QTextDocument_signal_slot_cursorPositionChanged");
 
 procedure QTextDocument_signal_slot_blockCountChanged(handle: not null QTextDocumentH; hook : QTextDocument_blockCountChangedEvent);
 pragma Import(C,QTextDocument_signal_slot_blockCountChanged, "QTextDocument_signal_slot_blockCountChanged");
 
 function  QTextDocumentWriter_create return QTextDocumentWriterH;
 pragma Import(C,QTextDocumentWriter_create, "QTextDocumentWriter_create");
 
 function  QTextDocumentWriter_create2(device:QIODeviceH; format:QByteArrayH) return QTextDocumentWriterH;
 pragma Import(C,QTextDocumentWriter_create2, "QTextDocumentWriter_create2");
 
 function  QTextDocumentWriter_create3(fileName:QStringH; format:QByteArrayH := QByteArray_create) return QTextDocumentWriterH;
 pragma Import(C,QTextDocumentWriter_create3, "QTextDocumentWriter_create3");
 
 procedure QTextDocumentWriter_destroy(handle: not null QTextDocumentWriterH);
 pragma Import(C,QTextDocumentWriter_destroy, "QTextDocumentWriter_destroy");
 
 procedure QTextDocumentWriter_setFormat(handle: not null QTextDocumentWriterH; format:QByteArrayH );
 pragma Import(C,QTextDocumentWriter_setFormat, "QTextDocumentWriter_setFormat");
 
 function  QTextDocumentWriter_format(handle: not null QTextDocumentWriterH) return QByteArrayH;
 pragma Import(C,QTextDocumentWriter_format, "QTextDocumentWriter_format");
 
 procedure QTextDocumentWriter_setDevice(handle: not null QTextDocumentWriterH;device:QIODeviceH);
 pragma Import(C,QTextDocumentWriter_setDevice, "QTextDocumentWriter_setDevice");
 
 function  QTextDocumentWriter_device(handle: not null QTextDocumentWriterH) return QIODeviceH;
 pragma Import(C,QTextDocumentWriter_device, "QTextDocumentWriter_device");
 
 procedure QTextDocumentWriter_setFileName(handle: not null QTextDocumentWriterH;fileName:QStringH);
 pragma Import(C,QTextDocumentWriter_setFileName, "QTextDocumentWriter_setFileName");
 
 function  QTextDocumentWriter_fileName(handle: not null QTextDocumentWriterH) return QStringH;
 pragma Import(C,QTextDocumentWriter_fileName, "QTextDocumentWriter_fileName");
 
 function  QTextDocumentWriter_write(handle: not null QTextDocumentWriterH;document:QTextDocumentH) return boolean;
 pragma Import(C,QTextDocumentWriter_write, "QTextDocumentWriter_write");
 
 function  QTextDocumentWriter_write2(handle: not null QTextDocumentWriterH;fragment: QTextDocumentFragmentH) return boolean;
 pragma Import(C,QTextDocumentWriter_write2, "QTextDocumentWriter_write2");
 
 function  QTextDocumentWriter_supportedDocumentFormats return QObjectListH;
 pragma Import(C,QTextDocumentWriter_supportedDocumentFormats, "QTextDocumentWriter_supportedDocumentFormats");

--  2015
 function  QTextDocument_baseUrl(handle:QTextDocumentH) return QUrlH;
 pragma Import(C,QTextDocument_baseUrl, "QTextDocument_baseUrl");
 
 procedure QTextDocument_setBaseUrl(handle:QTextDocumentH;url:QUrlH);
 pragma Import(C,QTextDocument_setBaseUrl, "QTextDocument_setBaseUrl");
 
 function  QTextDocument_defaultCursorMoveStyle(handle:QTextDocumentH) return integer;
 pragma Import(C,QTextDocument_defaultCursorMoveStyle, "QTextDocument_defaultCursorMoveStyle");
 
 procedure QTextDocument_setDefaultCursorMoveStyle(handle:QTextDocumentH;style: integer := Qt.QNameSpace.LogicalMoveStyle);
 pragma Import(C,QTextDocument_setDefaultCursorMoveStyle, "QTextDocument_setDefaultCursorMoveStyle");
 
------------------------------------------------------------------------
function  QTextDocument_create(text: QStringH; parent: QObjectH := null) return QTextDocumentH;
function  QTextDocument_find(handle: not null  QTextDocumentH; subString: QStringH; from: QTextCursorH; options: QTextDocumentFindFlags := 0) return QTextCursorH;
function  QTextDocument_find(handle: not null  QTextDocumentH; expr: QRegExpH; from: Integer := 0; options: QTextDocumentFindFlags := 0) return QTextCursorH;
function  QTextDocument_find(handle: not null  QTextDocumentH; expr: QRegExpH; from: QTextCursorH; options: QTextDocumentFindFlags := 0) return QTextCursorH;
procedure QTextDocument_undo(handle: not null  QTextDocumentH);
procedure QTextDocument_redo(handle: not null  QTextDocumentH);

function  QTextDocumentWriter_create(device:QIODeviceH; format:QByteArrayH) return QTextDocumentWriterH;
function  QTextDocumentWriter_create(fileName:QStringH; format:QByteArrayH := QByteArray_create) return QTextDocumentWriterH;
function  QTextDocumentWriter_write(handle: not null QTextDocumentWriterH;fragment: QTextDocumentFragmentH) return boolean;

end Qt.QTextDocument;
