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

package Qt.QAbstractScrollArea  is

type QAbstractScrollAreaSizeAdjustPolicy is (AdjutIgnored,AdjustToContentsOnFirstShow,AdjustToContents);
pragma convention(C,QAbstractScrollAreaSizeAdjustPolicy);

function QAbstractScrollArea_create(parent: QWidgetH := null) return QAbstractScrollAreaH;   
pragma Import(C,QAbstractScrollArea_create,"QAbstractScrollArea_create");

procedure QAbstractScrollArea_destroy(handle: not null  QAbstractScrollAreaH);   
pragma Import(C,QAbstractScrollArea_destroy,"QAbstractScrollArea_destroy");

function QAbstractScrollArea_verticalScrollBarPolicy(handle: not null  QAbstractScrollAreaH) return  QtScrollBarPolicy;   
pragma Import(C,QAbstractScrollArea_verticalScrollBarPolicy,"QAbstractScrollArea_verticalScrollBarPolicy");

procedure QAbstractScrollArea_setVerticalScrollBarPolicy(handle: not null  QAbstractScrollAreaH; p1: QtScrollBarPolicy);   
pragma Import(C,QAbstractScrollArea_setVerticalScrollBarPolicy,"QAbstractScrollArea_setVerticalScrollBarPolicy");

function QAbstractScrollArea_verticalScrollBar(handle: not null  QAbstractScrollAreaH) return  QScrollBarH;   
pragma Import(C,QAbstractScrollArea_verticalScrollBar,"QAbstractScrollArea_verticalScrollBar");

procedure QAbstractScrollArea_setVerticalScrollBar(handle: not null  QAbstractScrollAreaH; scrollbar: QScrollBarH);   
pragma Import(C,QAbstractScrollArea_setVerticalScrollBar,"QAbstractScrollArea_setVerticalScrollBar");

function QAbstractScrollArea_horizontalScrollBarPolicy(handle: not null  QAbstractScrollAreaH) return  QtScrollBarPolicy;   
pragma Import(C,QAbstractScrollArea_horizontalScrollBarPolicy,"QAbstractScrollArea_horizontalScrollBarPolicy");

procedure QAbstractScrollArea_setHorizontalScrollBarPolicy(handle: not null  QAbstractScrollAreaH; p1: QtScrollBarPolicy);   
pragma Import(C,QAbstractScrollArea_setHorizontalScrollBarPolicy,"QAbstractScrollArea_setHorizontalScrollBarPolicy");

function QAbstractScrollArea_horizontalScrollBar(handle: not null  QAbstractScrollAreaH) return  QScrollBarH;   
pragma Import(C,QAbstractScrollArea_horizontalScrollBar,"QAbstractScrollArea_horizontalScrollBar");

procedure QAbstractScrollArea_setHorizontalScrollBar(handle: not null  QAbstractScrollAreaH; scrollbar: QScrollBarH);   
pragma Import(C,QAbstractScrollArea_setHorizontalScrollBar,"QAbstractScrollArea_setHorizontalScrollBar");

function QAbstractScrollArea_cornerWidget(handle: not null  QAbstractScrollAreaH) return  QWidgetH;   
pragma Import(C,QAbstractScrollArea_cornerWidget,"QAbstractScrollArea_cornerWidget");

procedure QAbstractScrollArea_setCornerWidget(handle: not null  QAbstractScrollAreaH; widget: QWidgetH);   
pragma Import(C,QAbstractScrollArea_setCornerWidget,"QAbstractScrollArea_setCornerWidget");

procedure QAbstractScrollArea_addScrollBarWidget(handle: not null  QAbstractScrollAreaH; widget: QWidgetH; alignment: QtAlignment);   
pragma Import(C,QAbstractScrollArea_addScrollBarWidget,"QAbstractScrollArea_addScrollBarWidget");

function  QAbstractScrollArea_scrollBarWidgets(handle: not null  QAbstractScrollAreaH;  alignment: QtAlignment) return QObjectListH;
pragma Import(C,QAbstractScrollArea_scrollBarWidgets,"QAbstractScrollArea_scrollBarWidgets");

function QAbstractScrollArea_viewport(handle: not null  QAbstractScrollAreaH) return  QWidgetH;   
pragma Import(C,QAbstractScrollArea_viewport,"QAbstractScrollArea_viewport");

procedure QAbstractScrollArea_setViewport(handle: not null  QAbstractScrollAreaH; widget: QWidgetH);   
pragma Import(C,QAbstractScrollArea_setViewport,"QAbstractScrollArea_setViewport");

function  QAbstractScrollArea_maximumViewportSize(handle: not null  QAbstractScrollAreaH) return QSizeH;
pragma Import(C,QAbstractScrollArea_maximumViewportSize,"QAbstractScrollArea_maximumViewportSize");

function  QAbstractScrollArea_minimumSizeHint(handle: not null  QAbstractScrollAreaH) return QSizeH;
pragma Import(C,QAbstractScrollArea_minimumSizeHint,"QAbstractScrollArea_minimumSizeHint");

function  QAbstractScrollArea_sizeHint(handle: not null  QAbstractScrollAreaH) return QSizeH;
pragma Import(C,QAbstractScrollArea_sizeHint,"QAbstractScrollArea_sizeHint");

 procedure QAbstractScrollArea_setupViewport(handle:not null QAbstractScrollAreaH; viewport:QWidgetH);
 pragma Import(C,QAbstractScrollArea_setupViewport, "QAbstractScrollArea_setupViewport");
 
 function  QAbstractScrollArea_sizeAdjustPolicy(handle:not null QAbstractScrollAreaH) return QAbstractScrollAreaSizeAdjustPolicy;
 pragma Import(C,QAbstractScrollArea_sizeAdjustPolicy, "QAbstractScrollArea_sizeAdjustPolicy");
 
 procedure QAbstractScrollArea_setSizeAdjustPolicy(handle:not null QAbstractScrollAreaH;policy:QAbstractScrollAreaSizeAdjustPolicy);
 pragma Import(C,QAbstractScrollArea_setSizeAdjustPolicy, "QAbstractScrollArea_setSizeAdjustPolicy");
 
end Qt.QAbstractScrollArea;
