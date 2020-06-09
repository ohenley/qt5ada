--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QMargins; use Qt.QMargins;
package Qt.QPageLayout  is

 -- NOTE: Must keep in sync with QPageSize::Unit and QPrinter::Unit
 type Unit is (Millimeter,Point, Inch, Pica, Didot, Cicero);
 pragma convention(C,Unit);   

 -- NOTE: Must keep in sync with QPrinter::Orientation
 type Orientation is (Portrait, Landscape);
 pragma convention(C,Orientation);   
  
 type Mode is (
        StandardMode,  -- Paint Rect includes margins
        FullPageMode   -- Paint Rect excludes margins
    ); 
 pragma convention(C,Mode);   

 function  QPageLayout_create return QPageLayoutH;
 pragma Import(C,QPageLayout_create, "QPageLayout_create");
 
 function  QPageLayout_create2(pageSize:QPageSizeH;orient:Orientation; margins:QMarginsFH; units:Unit := Point;  minMargins:QMarginsFH := QMarginsF_create(0.0, 0.0, 0.0, 0.0)) return QPageLayoutH;
 pragma Import(C,QPageLayout_create2, "QPageLayout_create2");
 
 function  QPageLayout_create3(otherPageLayout:QPageLayoutH) return QPageLayoutH;
 pragma Import(C,QPageLayout_create3, "QPageLayout_create3");
 
 procedure QPageLayout_delete(handle:QPageLayoutH);
 pragma Import(C,QPageLayout_delete, "QPageLayout_delete");
 
 procedure QPageLayout_swap(handle:QPageLayoutH;otherPageLayout:QPageLayoutH);
 pragma Import(C,QPageLayout_swap, "QPageLayout_swap");
 
 function  QPageLayout_isEquivalentTo(handle:QPageLayoutH;otherPageLayout:QPageLayoutH) return boolean;
 pragma Import(C,QPageLayout_isEquivalentTo, "QPageLayout_isEquivalentTo");
 
 function  QPageLayout_isValid(handle:QPageLayoutH) return boolean;
 pragma Import(C,QPageLayout_isValid, "QPageLayout_isValid");
 
 procedure QPageLayout_setMode(handle:QPageLayoutH;pageLayoutmode:Mode);
 pragma Import(C,QPageLayout_setMode, "QPageLayout_setMode");
 
 function  QPageLayout_mode(handle:QPageLayoutH) return Mode;
 pragma Import(C,QPageLayout_mode, "QPageLayout_mode");
 
 procedure QPageLayout_setPageSize(handle:QPageLayoutH; pageSize:QPageSizeH;minMargins:QMarginsFH := QMarginsF_create(0.0, 0.0, 0.0, 0.0));
 pragma Import(C,QPageLayout_setPageSize, "QPageLayout_setPageSize");
 
 function  QPageLayout_pageSize(handle:QPageLayoutH) return QPageSizeH;
 pragma Import(C,QPageLayout_pageSize, "QPageLayout_pageSize");
 
 procedure QPageLayout_setOrientation(handle:QPageLayoutH;orient:Orientation);
 pragma Import(C,QPageLayout_setOrientation, "QPageLayout_setOrientation");
 
 function  QPageLayout_orientation(handle:QPageLayoutH) return Orientation;
 pragma Import(C,QPageLayout_orientation, "QPageLayout_orientation");
 
 procedure QPageLayout_setUnits(handle:QPageLayoutH;units:Unit);
 pragma Import(C,QPageLayout_setUnits, "QPageLayout_setUnits");
 
 function  QPageLayout_units(handle:QPageLayoutH) return Unit;
 pragma Import(C,QPageLayout_units, "QPageLayout_units");
 
 function  QPageLayout_setMargins(handle:QPageLayoutH;margins :QMarginsFH) return boolean;
 pragma Import(C,QPageLayout_setMargins, "QPageLayout_setMargins");
 
 function  QPageLayout_setLeftMargin(handle:QPageLayoutH;leftMargin:qreal) return boolean;
 pragma Import(C,QPageLayout_setLeftMargin, "QPageLayout_setLeftMargin");
 
 function  QPageLayout_setRightMargin(handle:QPageLayoutH;rightMargin:qreal) return boolean;
 pragma Import(C,QPageLayout_setRightMargin, "QPageLayout_setRightMargin");
 
 function  QPageLayout_setTopMargin(handle:QPageLayoutH; topMargin:qreal) return boolean;
 pragma Import(C,QPageLayout_setTopMargin, "QPageLayout_setTopMargin");
 
 function  QPageLayout_setBottomMargin(handle:QPageLayoutH; bottomMargin:qreal) return boolean;
 pragma Import(C,QPageLayout_setBottomMargin, "QPageLayout_setBottomMargin");
 
 function  QPageLayout_margins(handle:QPageLayoutH) return QMarginsFH;
 pragma Import(C,QPageLayout_margins, "QPageLayout_margins");
 
 function  QPageLayout_margins2(handle:QPageLayoutH;units:Unit) return QMarginsFH;
 pragma Import(C,QPageLayout_margins2, "QPageLayout_margins2");
 
 function  QPageLayout_marginsPoints(handle:QPageLayoutH) return QMarginsH;
 pragma Import(C,QPageLayout_marginsPoints, "QPageLayout_marginsPoints");
 
 function  QPageLayout_marginsPixels(handle:QPageLayoutH;resolution:integer) return QMarginsH;
 pragma Import(C,QPageLayout_marginsPixels, "QPageLayout_marginsPixels");
 
 procedure QPageLayout_setMinimumMargins(handle:QPageLayoutH;minMargins:QMarginsFH);
 pragma Import(C,QPageLayout_setMinimumMargins, "QPageLayout_setMinimumMargins");
 
 function  QPageLayout_minimumMargins(handle:QPageLayoutH) return QMarginsFH;
 pragma Import(C,QPageLayout_minimumMargins, "QPageLayout_minimumMargins");
 
 function  QPageLayout_maximumMargins(handle:QPageLayoutH) return QMarginsFH;
 pragma Import(C,QPageLayout_maximumMargins, "QPageLayout_maximumMargins");
 
 function  QPageLayout_fullRect(handle:QPageLayoutH) return QRectFH;
 pragma Import(C,QPageLayout_fullRect, "QPageLayout_fullRect");
 
 function  QPageLayout_fullRect2(handle:QPageLayoutH;units:Unit) return QRectFH;
 pragma Import(C,QPageLayout_fullRect2, "QPageLayout_fullRect2");
 
 function  QPageLayout_fullRectPoints(handle:QPageLayoutH) return QRectH;
 pragma Import(C,QPageLayout_fullRectPoints, "QPageLayout_fullRectPoints");
 
 function  QPageLayout_fullRectPixels(handle:QPageLayoutH; resolution:integer) return QRectH;
 pragma Import(C,QPageLayout_fullRectPixels, "QPageLayout_fullRectPixels");
 
 function  QPageLayout_paintRect(handle:QPageLayoutH) return QRectFH;
 pragma Import(C,QPageLayout_paintRect, "QPageLayout_paintRect");
 
 function  QPageLayout_paintRect2(handle:QPageLayoutH;units:Unit) return QRectFH;
 pragma Import(C,QPageLayout_paintRect2, "QPageLayout_paintRect2");
 
 function  QPageLayout_paintRectPoints(handle:QPageLayoutH) return QRectH;
 pragma Import(C,QPageLayout_paintRectPoints, "QPageLayout_paintRectPoints");
 
 function  QPageLayout_paintRectPixels(handle:QPageLayoutH; resolution:integer) return QRectH;
 pragma Import(C,QPageLayout_paintRectPixels, "QPageLayout_paintRectPixels");
 
------------------------------------------------------------------------
 function  QPageLayout_create(pageSize:QPageSizeH; orient:Orientation; margins:QMarginsFH; units:Unit := Point;  minMargins:QMarginsFH := QMarginsF_create(0.0, 0.0, 0.0, 0.0)) return QPageLayoutH;
 function  QPageLayout_create(otherPageLayout:QPageLayoutH) return QPageLayoutH;
 function  QPageLayout_margins(handle:QPageLayoutH;units:Unit) return QMarginsFH;

end;
