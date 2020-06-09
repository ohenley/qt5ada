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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QClipboard           is

subtype  QClipboardMode is cardinal; 

QClipboardClipboard  : constant QClipboardMode := 0;
QClipboardSelection  : constant QClipboardMode := 1;
QClipboardFindBuffer : constant QClipboardMode := 2;
QClipboardLastMode   : constant QClipboardMode := 2;

procedure QClipboard_clear(handle: not null  QClipboardH; mode: QClipboardMode := QClipboardClipboard);   
pragma Import(C,QClipboard_clear,"QClipboard_clear");

function QClipboard_supportsSelection(handle: not null  QClipboardH) return  Boolean;   
pragma Import(C,QClipboard_supportsSelection,"QClipboard_supportsSelection");

function QClipboard_supportsFindBuffer(handle: not null  QClipboardH) return  Boolean;   
pragma Import(C,QClipboard_supportsFindBuffer,"QClipboard_supportsFindBuffer");

function QClipboard_ownsSelection(handle: not null  QClipboardH) return  Boolean;   
pragma Import(C,QClipboard_ownsSelection,"QClipboard_ownsSelection");

function QClipboard_ownsClipboard(handle: not null  QClipboardH) return  Boolean;   
pragma Import(C,QClipboard_ownsClipboard,"QClipboard_ownsClipboard");

function QClipboard_ownsFindBuffer(handle: not null  QClipboardH) return  Boolean;   
pragma Import(C,QClipboard_ownsFindBuffer,"QClipboard_ownsFindBuffer");

function  QClipboard_text(handle: not null  QClipboardH; mode: QClipboardMode := QClipboardClipboard) return QStringH;
pragma Import(C,QClipboard_text,"QClipboard_text");

function  QClipboard_text2(handle: not null  QClipboardH; subtp: QStringH; mode: QClipboardMode := QClipboardClipboard) return QStringH;
pragma Import(C,QClipboard_text2,"QClipboard_text2");

procedure QClipboard_setText(handle: not null  QClipboardH; p1: QStringH; mode: QClipboardMode := QClipboardClipboard);   
pragma Import(C,QClipboard_setText,"QClipboard_setText");

function QClipboard_mimeData(handle: not null  QClipboardH; mode: QClipboardMode := QClipboardClipboard) return QMimeDataH;   
pragma Import(C,QClipboard_mimeData,"QClipboard_mimeData");

procedure QClipboard_setMimeData(handle: not null  QClipboardH; data: QMimeDataH; mode: QClipboardMode := QClipboardClipboard);   
pragma Import(C,QClipboard_setMimeData,"QClipboard_setMimeData");

function  QClipboard_image(handle: not null  QClipboardH; mode: QClipboardMode := QClipboardClipboard)  return QImageH;
pragma Import(C,QClipboard_image,"QClipboard_image");

function  QClipboard_pixmap(handle: not null  QClipboardH;  mode: QClipboardMode := QClipboardClipboard) return QPixmapH;
pragma Import(C,QClipboard_pixmap,"QClipboard_pixmap");

procedure QClipboard_setImage(handle: not null  QClipboardH; p1: QImageH; mode: QClipboardMode := QClipboardClipboard);   
pragma Import(C,QClipboard_setImage,"QClipboard_setImage");

procedure QClipboard_setPixmap(handle: not null  QClipboardH; p1: QPixmapH; mode: QClipboardMode := QClipboardClipboard);   
pragma Import(C,QClipboard_setPixmap,"QClipboard_setPixmap");

type QClipboard_changedEvent is access procedure (mode: QClipboardMode);
pragma Convention(C,QClipboard_changedEvent);

type QClipboard_selectionChangedEvent is access procedure ;
pragma Convention(C,QClipboard_selectionChangedEvent);

type QClipboard_findBufferChangedEvent is access procedure ;
pragma Convention(C,QClipboard_findBufferChangedEvent);

type QClipboard_dataChangedEvent is access procedure ;
pragma Convention(C,QClipboard_dataChangedEvent);
 
 procedure QClipboard_signal_slot_changed(handle: not null QClipboardH; hook:QClipboard_changedEvent);
 pragma Import(C,QClipboard_signal_slot_changed, "QClipboard_signal_slot_changed");
 
 procedure QClipboard_signal_slot_selectionChanged(handle: not null QClipboardH; hook:QClipboard_selectionChangedEvent);
 pragma Import(C,QClipboard_signal_slot_selectionChanged, "QClipboard_signal_slot_selectionChanged");
 
 procedure QClipboard_signal_slot_findBufferChanged(handle: not null QClipboardH; hook:QClipboard_findBufferChangedEvent);
 pragma Import(C,QClipboard_signal_slot_findBufferChanged, "QClipboard_signal_slot_findBufferChanged");
 
 procedure QClipboard_signal_slot_dataChanged(handle: not null QClipboardH; hook:QClipboard_dataChangedEvent);
 pragma Import(C,QClipboard_signal_slot_dataChanged, "QClipboard_signal_slot_dataChanged");
 
-------------------------------------------------------------------------------------------------
function  QClipboard_text(handle: not null  QClipboardH; subtp: QStringH; mode: QClipboardMode := QClipboardClipboard) return QStringH;

end Qt.QClipboard;
