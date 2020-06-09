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

package Qt.QRubberBand  is

 type QRubberBandShape is (Line, Rectangle);

 function  QRubberBand_create(shape:QRubberBandShape; widget:QWidgetH) return QRubberBandH;
 pragma Import(c,QRubberBand_create, "QRubberBand_create");

 procedure QRubberBand_destroy(handle: not null  QRubberBandH);
 pragma Import(c,QRubberBand_destroy, "QRubberBand_destroy");

 function  QRubberBand_shape(handle: not null  QRubberBandH) return QRubberBandShape;
 pragma Import(c,QRubberBand_shape, "QRubberBand_shape");

 procedure QRubberBand_setGeometry(handle: not null  QRubberBandH; rect: QRectH);
 pragma Import(c,QRubberBand_setGeometry, "QRubberBand_setGeometry");

 procedure QRubberBand_setGeometry2(handle: not null  QRubberBandH; x:integer; y:integer; w:integer; h:integer);
 pragma Import(c,QRubberBand_setGeometry2, "QRubberBand_setGeometry2");

 procedure QRubberBand_move(handle: not null  QRubberBandH; x:integer; y:integer);
 pragma Import(c,QRubberBand_move, "QRubberBand_move");

 procedure QRubberBand_move2(handle: not null  QRubberBandH; point: QPointH);
 pragma Import(c,QRubberBand_move2, "QRubberBand_move2");

 procedure QRubberBand_resize(handle: not null  QRubberBandH; w:integer; h:integer);
 pragma Import(c,QRubberBand_resize, "QRubberBand_resize");

 procedure QRubberBand_resize2(handle: not null  QRubberBandH; size: QSizeH);
 pragma Import(c,QRubberBand_resize2, "QRubberBand_resize2");
 ---------------------------------------------------------------------
 procedure QRubberBand_setGeometry(handle: not null  QRubberBandH; x:integer; y:integer; w:integer; h:integer);
 procedure QRubberBand_move(handle: not null  QRubberBandH; point: QPointH);
 procedure QRubberBand_resize(handle: not null  QRubberBandH; size: QSizeH);

end Qt.QRubberBand;
