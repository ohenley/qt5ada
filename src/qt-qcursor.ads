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

package Qt.QCursor              is

function QCursor_create return  QCursorH;    
pragma Import(C,QCursor_create,"QCursor_create");

procedure QCursor_destroy(handle: not null  QCursorH);   
pragma Import(C,QCursor_destroy,"QCursor_destroy");

function QCursor_create2(shape: QtCursorShape) return  QCursorH;
pragma Import(C,QCursor_create2,"QCursor_create2");

function QCursor_create3(bitmap: QBitmapH; mask: QBitmapH; hotX: Integer := -1; hotY: Integer := -1) return QCursorH;
pragma Import(C,QCursor_create3,"QCursor_create3");

function QCursor_create4(pixmap: QPixmapH; hotX: Integer := -1; hotY: Integer := -1) return QCursorH;
pragma Import(C,QCursor_create4,"QCursor_create4");

function QCursor_create5(cursor: QCursorH) return  QCursorH;
pragma Import(C,QCursor_create5,"QCursor_create5");

function QCursor_shape(handle: not null  QCursorH) return  QtCursorShape;   
pragma Import(C,QCursor_shape,"QCursor_shape");

procedure QCursor_setShape(handle: not null  QCursorH; newShape: QtCursorShape);   
pragma Import(C,QCursor_setShape,"QCursor_setShape");

function QCursor_bitmap(handle: not null  QCursorH) return  QBitmapH;   
pragma Import(C,QCursor_bitmap,"QCursor_bitmap");

function QCursor_mask(handle: not null  QCursorH) return  QBitmapH;   
pragma Import(C,QCursor_mask,"QCursor_mask");

function  QCursor_pixmap(handle: not null  QCursorH) return  QPixmapH;
pragma Import(C,QCursor_pixmap,"QCursor_pixmap");

function  QCursor_hotSpot(handle: not null  QCursorH) return  QPointH;
pragma Import(C,QCursor_hotSpot,"QCursor_hotSpot");

function  QCursor_pos return  QPointH;
pragma Import(C,QCursor_pos,"QCursor_pos");

procedure QCursor_setPos(x: Integer; y: Integer);    
pragma Import(C,QCursor_setPos,"QCursor_setPos");

procedure QCursor_setPos2(p: QPointH);
pragma Import(C,QCursor_setPos2,"QCursor_setPos2");

---------------------------------------------------------------------------------------------------------------
function QCursor_create(shape: QtCursorShape) return  QCursorH;
function QCursor_create(bitmap: QBitmapH; mask: QBitmapH; hotX: Integer := -1; hotY: Integer := -1) return QCursorH;
function QCursor_create(pixmap: QPixmapH; hotX: Integer := -1; hotY: Integer := -1) return QCursorH;
function QCursor_create(cursor: QCursorH) return  QCursorH;
procedure QCursor_setPos(p: QPointH);

end Qt.QCursor;
