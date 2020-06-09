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

package Qt.QAbstractTextDocumentLayout is

 function  QAbstractTextDocumentLayout_hitTest(handle: not null  QAbstractTextDocumentLayoutH; point: QPointFH;  accuracy: QtHitTestAccuracy) return integer;
 pragma Import(c,QAbstractTextDocumentLayout_hitTest, "QAbstractTextDocumentLayout_hitTest");

 function  QAbstractTextDocumentLayout_anchorAt(handle: not null  QAbstractTextDocumentLayoutH; pos: QPointFH) return QStringH;
 pragma Import(c,QAbstractTextDocumentLayout_anchorAt, "QAbstractTextDocumentLayout_anchorAt");

 function  QAbstractTextDocumentLayout_pageCount(handle: not null  QAbstractTextDocumentLayoutH) return integer;
 pragma Import(c,QAbstractTextDocumentLayout_pageCount, "QAbstractTextDocumentLayout_pageCount");

 function  QAbstractTextDocumentLayout_documentSize(handle: not null  QAbstractTextDocumentLayoutH) return QSizeFH;
 pragma Import(c,QAbstractTextDocumentLayout_documentSize, "QAbstractTextDocumentLayout_documentSize");

 function  QAbstractTextDocumentLayout_frameBoundingRect(handle: not null  QAbstractTextDocumentLayoutH; frame: QTextFrameH) return QRectFH;
 pragma Import(c,QAbstractTextDocumentLayout_frameBoundingRect, "QAbstractTextDocumentLayout_frameBoundingRect");

 function  QAbstractTextDocumentLayout_blockBoundingRect(handle: not null  QAbstractTextDocumentLayoutH; block: QTextBlockH) return QRectFH;
 pragma Import(c,QAbstractTextDocumentLayout_blockBoundingRect, "QAbstractTextDocumentLayout_blockBoundingRect");

 procedure QAbstractTextDocumentLayout_setPaintDevice(handle: not null  QAbstractTextDocumentLayoutH; device: QPaintDeviceH);
 pragma Import(c,QAbstractTextDocumentLayout_setPaintDevice, "QAbstractTextDocumentLayout_setPaintDevice");

 function  QAbstractTextDocumentLayout_paintDevice(handle: not null  QAbstractTextDocumentLayoutH) return QPaintDeviceH;
 pragma Import(c,QAbstractTextDocumentLayout_paintDevice, "QAbstractTextDocumentLayout_paintDevice");

 function  QAbstractTextDocumentLayout_document(handle: not null  QAbstractTextDocumentLayoutH) return QTextDocumentH;
 pragma Import(c,QAbstractTextDocumentLayout_document, "QAbstractTextDocumentLayout_document");

 procedure QAbstractTextDocumentLayout_registerHandler(handle: not null  QAbstractTextDocumentLayoutH; objectType: integer; component: QObjectH);
 pragma Import(c,QAbstractTextDocumentLayout_registerHandler, "QAbstractTextDocumentLayout_registerHandler");

 function  QAbstractTextDocumentLayout_handlerForObject(handle: not null  QAbstractTextDocumentLayoutH; objectType: integer) return QTextObjectInterfaceH;
 pragma Import(c,QAbstractTextDocumentLayout_handlerForObject, "QAbstractTextDocumentLayout_handlerForObject");

 function  QTextObjectInterface_intrinsicSize(handle: not null  QTextObjectInterfaceH; doc: QTextDocumentH; posInDocument: integer; format: QTextFormatH) return QSizeFH;
 pragma Import(c,QTextObjectInterface_intrinsicSize, "QTextObjectInterface_intrinsicSize");

 procedure QTextObjectInterface_drawObject(handle: not null  QTextObjectInterfaceH; painter: QPainterH; rect: QRectFH; doc: QTextDocumentH; posInDocument: integer; format: QTextFormatH);
 pragma Import(c,QTextObjectInterface_drawObject, "QTextObjectInterface_drawObject");

 type QAbstractTextDocumentLayout_updateEvent  is access procedure(rect:QRectFH);
 pragma Convention(C,QAbstractTextDocumentLayout_updateEvent);

 type QAbstractTextDocumentLayout_update2Event  is access procedure;
 pragma Convention(C,QAbstractTextDocumentLayout_update2Event);

 type QAbstractTextDocumentLayout_updateBlockEvent  is access procedure(block:QTextBlockH);
 pragma Convention(C,QAbstractTextDocumentLayout_updateBlockEvent);

 type QAbstractTextDocumentLayout_documentSizeChangedEvent  is access procedure(size:QSizeFH);
 pragma Convention(C,QAbstractTextDocumentLayout_documentSizeChangedEvent);

 type QAbstractTextDocumentLayout_pageCountChangedEvent  is access procedure(count:integer);
 pragma Convention(C,QAbstractTextDocumentLayout_pageCountChangedEvent);
 
 procedure QAbstractTextDocumentLayout_signal_slot_update(handle: not null QAbstractTextDocumentLayoutH; hook:QAbstractTextDocumentLayout_updateEvent);
 pragma Import(C,QAbstractTextDocumentLayout_signal_slot_update, "QAbstractTextDocumentLayout_signal_slot_update");
 
 procedure QAbstractTextDocumentLayout_signal_slot_update2(handle: not null QAbstractTextDocumentLayoutH; hook:QAbstractTextDocumentLayout_update2Event);
 pragma Import(C,QAbstractTextDocumentLayout_signal_slot_update2, "QAbstractTextDocumentLayout_signal_slot_update2");
 
 procedure QAbstractTextDocumentLayout_signal_slot_updateBlock(handle: not null QAbstractTextDocumentLayoutH; hook:QAbstractTextDocumentLayout_updateBlockEvent);
 pragma Import(C,QAbstractTextDocumentLayout_signal_slot_updateBlock, "QAbstractTextDocumentLayout_signal_slot_updateBlock");
 
 procedure QAbstractTextDocumentLayout_signal_slot_documentSizeChanged(handle: not null QAbstractTextDocumentLayoutH; hook:QAbstractTextDocumentLayout_documentSizeChangedEvent);
 pragma Import(C,QAbstractTextDocumentLayout_signal_slot_documentSizeChanged, "QAbstractTextDocumentLayout_signal_slot_documentSizeChanged");
 
 procedure QAbstractTextDocumentLayout_signal_slot_pageCountChanged(handle: not null QAbstractTextDocumentLayoutH; hook:QAbstractTextDocumentLayout_pageCountChangedEvent);
 pragma Import(C,QAbstractTextDocumentLayout_signal_slot_pageCountChanged, "QAbstractTextDocumentLayout_signal_slot_pageCountChanged");

end  Qt.QAbstractTextDocumentLayout;
