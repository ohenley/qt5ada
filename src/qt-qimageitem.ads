-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QImageItem  is

 type QGraphicsSceneHoverEventH  is new QEventH;

 function  QImageItem_create(id:integer;timeLine:QTimeLineH;pixmap:QPixmapH; parent:QGraphicsItemH := null) return QGraphicsPixmapItemH;
 pragma Import(C,QImageItem_create, "QImageItem_create");
 
 procedure QImageItem_delete(handle:not null QGraphicsPixmapItemH);
 pragma Import(C,QImageItem_delete, "QImageItem_delete");
 
 procedure QImageItem_adjust(handle:not null QGraphicsPixmapItemH);
 pragma Import(C,QImageItem_adjust, "QImageItem_adjust");
 
 function  QImageItem_id(handle:not null QGraphicsPixmapItemH) return integer;
 pragma Import(C,QImageItem_id, "QImageItem_id");
 
 procedure QImageItem_setFrame(handle:not null QGraphicsPixmapItemH; frame:integer);
 pragma Import(C,QImageItem_setFrame, "QImageItem_setFrame");
 
 procedure QImageItem_updateItemPosition(handle:not null QGraphicsPixmapItemH);
 pragma Import(C,QImageItem_updateItemPosition, "QImageItem_updateItemPosition");
 
 procedure QImageItem_hoverEnterEvent(handle:not null QGraphicsPixmapItemH;event:QGraphicsSceneHoverEventH);
 pragma Import(C,QImageItem_hoverEnterEvent, "QImageItem_hoverEnterEvent");
 
 procedure QImageItem_hoverLeaveEvent(handle:not null QGraphicsPixmapItemH;event:QGraphicsSceneHoverEventH);
 pragma Import(C,QImageItem_hoverLeaveEvent, "QImageItem_hoverLeaveEvent");
 
 function  QImageItem_timeLine(handle:not null QGraphicsPixmapItemH) return QTimeLineH;
 pragma Import(C,QImageItem_timeLine, "QImageItem_timeLine");

 procedure QImageItem_setFrameLast(handle:not null QGraphicsPixmapItemH;frameLast:integer := 150);
 pragma Import(C,QImageItem_setFrameLast, "QImageItem_setFrameLast");
 
 procedure QImageItem_setScaleFactor(handle:not null QGraphicsPixmapItemH;scaleFactor:double := 120.0);
 pragma Import(C,QImageItem_setScaleFactor, "QImageItem_setScaleFactor");
 
 procedure QImageItem_setFrameScale(handle:not null QGraphicsPixmapItemH;frameScale:double := 330.0);
 pragma Import(C,QImageItem_setFrameScale, "QImageItem_setFrameScale");
 
end;
