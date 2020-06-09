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

package Qt.QSize      is

 function  QSize_create return QSizeH;
 pragma Import(c,QSize_create, "QSize_create");

 procedure QSize_destroy(handle: not null  QSizeH);
 pragma Import(c,QSize_destroy, "QSize_destroy");

 function  QSize_create2(w:integer; h:integer) return QSizeH;
 pragma Import(c,QSize_create2, "QSize_create2");

 function  QSize_isNull(handle: not null  QSizeH) return boolean;
 pragma Import(c,QSize_isNull, "QSize_isNull");

 function  QSize_isEmpty(handle: not null  QSizeH) return boolean;
 pragma Import(c,QSize_isEmpty, "QSize_isEmpty");

 function  QSize_isValid(handle: not null  QSizeH) return boolean;
 pragma Import(c,QSize_isValid, "QSize_isValid");

 function  QSize_width(handle: not null  QSizeH) return integer;
 pragma Import(c,QSize_width, "QSize_width");

 function  QSize_height(handle: not null  QSizeH) return integer;
 pragma Import(c,QSize_height, "QSize_height");

 procedure QSize_setWidth(handle: not null  QSizeH; w:integer);
 pragma Import(c,QSize_setWidth, "QSize_setWidth");

 procedure QSize_setHeight(handle: not null  QSizeH; h:integer);
 pragma Import(c,QSize_setHeight, "QSize_setHeight");

 procedure QSize_transpose(handle: not null  QSizeH);
 pragma Import(c,QSize_transpose, "QSize_transpose");

 procedure QSize_scale(handle: not null  QSizeH; w:integer; h:integer; mode: QtAspectRatioMode);
 pragma Import(c,QSize_scale, "QSize_scale");

 procedure QSize_scale2(handle: not null  QSizeH; size: QSizeH; mode: QtAspectRatioMode);
 pragma Import(c,QSize_scale2, "QSize_scale2");

 function  QSize_expandedTo(handle: not null  QSizeH; size:QSizeH) return QSizeH;
 pragma Import(c,QSize_expandedTo, "QSize_expandedTo");

 function  QSize_boundedTo(handle: not null  QSizeH; size:QSizeH) return QSizeH;
 pragma Import(c,QSize_boundedTo, "QSize_boundedTo");

 function  QSize_rwidth(handle: not null  QSizeH) return integer;
 pragma Import(c,QSize_rwidth, "QSize_rwidth");

 function  QSize_rheight(handle: not null  QSizeH) return integer;
 pragma Import(c,QSize_rheight, "QSize_rheight");

 function  QSizeF_create return QSizeFH;
 pragma Import(c,QSizeF_create, "QSizeF_create");

 procedure QSizeF_destroy(handle: not null  QSizeFH);
 pragma Import(c,QSizeF_destroy, "QSizeF_destroy");

 function  QSizeF_create2(size:QSizeH) return QSizeFH;
 pragma Import(c,QSizeF_create2, "QSizeF_create2");

 function  QSizeF_create3(width,height : float) return QSizeFH;
 pragma Import(c,QSizeF_create3, "QSizeF_create3");

 function  QSizeF_isNull(handle: not null  QSizeFH) return boolean;
 pragma Import(c,QSizeF_isNull, "QSizeF_isNull");

 function  QSizeF_isEmpty(handle: not null  QSizeFH) return boolean;
 pragma Import(c,QSizeF_isEmpty, "QSizeF_isEmpty");

 function  QSizeF_isValid(handle: not null  QSizeFH) return boolean;
 pragma Import(c,QSizeF_isValid, "QSizeF_isValid");

 function  QSizeF_width(handle: not null  QSizeFH) return float;
 pragma Import(c,QSizeF_width, "QSizeF_width");

 function  QSizeF_height(handle: not null  QSizeFH) return float;
 pragma Import(c,QSizeF_height, "QSizeF_height");

 procedure QSizeF_setWidth(handle: not null  QSizeFH; width: float);
 pragma Import(c,QSizeF_setWidth, "QSizeF_setWidth");

 procedure QSizeF_setHeight(handle: not null  QSizeFH; height: float);
 pragma Import(c,QSizeF_setHeight, "QSizeF_setHeight");

 procedure QSizeF_transpose(handle: not null  QSizeFH);
 pragma Import(c,QSizeF_transpose, "QSizeF_transpose");

 procedure QSizeF_scale(handle: not null  QSizeFH; width,height: float; mode: QtAspectRatioMode);
 pragma Import(c,QSizeF_scale, "QSizeF_scale");

 procedure QSizeF_scale2(handle: not null  QSizeFH; size: QSizeFH; mode: QtAspectRatioMode);
 pragma Import(c,QSizeF_scale2, "QSizeF_scale2");

 function  QSizeF_expandedTo(handle: not null  QSizeFH; size: QSizeFH) return QSizeFH;
 pragma Import(c,QSizeF_expandedTo, "QSizeF_expandedTo");

 function  QSizeF_boundedTo(handle: not null  QSizeFH; size: QSizeFH) return QSizeFH;
 pragma Import(c,QSizeF_boundedTo, "QSizeF_boundedTo");

 function  QSizeF_rwidth(handle: not null  QSizeFH) return float;
 pragma Import(c,QSizeF_rwidth, "QSizeF_rwidth");

 function  QSizeF_rheight(handle: not null  QSizeFH) return float;
 pragma Import(c,QSizeF_rheight, "QSizeF_rheight");

 function  QSizeF_toSize(handle: not null  QSizeFH) return QSizeH;
 pragma Import(c,QSizeF_toSize, "QSizeF_toSize");
---------------------------------------------------------------
 function  QSize_create(w:integer; h:integer) return QSizeH;
 procedure QSize_scale(handle: not null  QSizeH; size: QSizeH; mode: QtAspectRatioMode);
 function  QSizeF_create(size:QSizeH) return QSizeFH;
 function  QSizeF_create(width,height : float) return QSizeFH;
 procedure QSizeF_scale(handle: not null  QSizeFH; size: QSizeFH; mode: QtAspectRatioMode);

end     Qt.QSize;
