-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2016,2017                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QAbstractSeries;
package Qt.QBoxPlotSeries is

 function  QBoxPlotSeries_create(parent:QObjectH := null) return QSeriesH;
 pragma Import(C,QBoxPlotSeries_create, "QBoxPlotSeries_create");
 
 procedure QBoxPlotSeries_destroy(handle:not null QSeriesH);
 pragma Import(C,QBoxPlotSeries_destroy, "QBoxPlotSeries_destroy");
 
 function  QBoxPlotSeries_append(handle:not null QSeriesH;box:QSetH) return boolean;
 pragma Import(C,QBoxPlotSeries_append, "QBoxPlotSeries_append");
 
 function  QBoxPlotSeries_remove(handle:not null QSeriesH;box:QSetH) return boolean;
 pragma Import(C,QBoxPlotSeries_remove, "QBoxPlotSeries_remove");
 
 function  QBoxPlotSeries_take(handle:not null QSeriesH;box:QSetH) return boolean;
 pragma Import(C,QBoxPlotSeries_take, "QBoxPlotSeries_take");
 
 function  QBoxPlotSeries_append2(handle:not null QSeriesH;boxes:QObjectListH) return boolean;
 pragma Import(C,QBoxPlotSeries_append2, "QBoxPlotSeries_append2");
 
 function  QBoxPlotSeries_insert(handle:not null QSeriesH;index:int;box: QSetH) return boolean;
 pragma Import(C,QBoxPlotSeries_insert, "QBoxPlotSeries_insert");
 
 function  QBoxPlotSeries_count(handle:not null QSeriesH) return integer;
 pragma Import(C,QBoxPlotSeries_count, "QBoxPlotSeries_count");
 
 function  QBoxPlotSeries_boxSets(handle:not null QSeriesH) return QObjectListH;
 pragma Import(C,QBoxPlotSeries_boxSets, "QBoxPlotSeries_boxSets");
 
 procedure QBoxPlotSeries_clear(handle:not null QSeriesH);
 pragma Import(C,QBoxPlotSeries_clear, "QBoxPlotSeries_clear");
 
 function  QBoxPlotSeries_type(handle:not null QSeriesH) return Qt.QAbstractSeries.SeriesType;
 pragma Import(C,QBoxPlotSeries_type, "QBoxPlotSeries_type");
 
 procedure QBoxPlotSeries_setBoxOutlineVisible(handle:not null QSeriesH;visible:boolean);
 pragma Import(C,QBoxPlotSeries_setBoxOutlineVisible, "QBoxPlotSeries_setBoxOutlineVisible");
 
 function  QBoxPlotSeries_boxOutlineVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QBoxPlotSeries_boxOutlineVisible, "QBoxPlotSeries_boxOutlineVisible");
 
 procedure QBoxPlotSeries_setBoxWidth(handle:not null QSeriesH;width:qreal);
 pragma Import(C,QBoxPlotSeries_setBoxWidth, "QBoxPlotSeries_setBoxWidth");
 
 function  QBoxPlotSeries_boxWidth(handle:not null QSeriesH) return qreal;
 pragma Import(C,QBoxPlotSeries_boxWidth, "QBoxPlotSeries_boxWidth");
 
 procedure QBoxPlotSeries_setBrush(handle:not null QSeriesH;brush:QBrushH);
 pragma Import(C,QBoxPlotSeries_setBrush, "QBoxPlotSeries_setBrush");
 
 function  QBoxPlotSeries_brush(handle:not null QSeriesH) return QBrushH;
 pragma Import(C,QBoxPlotSeries_brush, "QBoxPlotSeries_brush");
 
 procedure QBoxPlotSeries_setPen(handle:not null QSeriesH;pen:QPenH);
 pragma Import(C,QBoxPlotSeries_setPen, "QBoxPlotSeries_setPen");
 
 function  QBoxPlotSeries_pen(handle:not null QSeriesH) return QPenH;
 pragma Import(C,QBoxPlotSeries_pen, "QBoxPlotSeries_pen");
 

 type setCallbackH is access procedure(p: QSetH);
 pragma convention(C,setCallbackH);
 
 type boolSetCallbackH is access procedure(p1:boolean;p2: QSetH);
 pragma convention(C,boolSetCallbackH);
 
 type listCallbackH is access procedure(p: QObjectListH);
 pragma convention(C,listCallbackH);

 procedure QBoxPlotSeries_signal_slot_clicked(handle:not null QSeriesH;hook:setCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_clicked, "QBoxPlotSeries_signal_slot_clicked");
 
 procedure QBoxPlotSeries_signal_slot_hovered(handle:not null QSeriesH;hook:boolSetCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_hovered, "QBoxPlotSeries_signal_slot_hovered");
 
 procedure QBoxPlotSeries_signal_slot_pressed(handle:not null QSeriesH;hook:setCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_pressed, "QBoxPlotSeries_signal_slot_pressed");
 
 procedure QBoxPlotSeries_signal_slot_released(handle:not null QSeriesH;hook:setCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_released, "QBoxPlotSeries_signal_slot_released");
 
 procedure QBoxPlotSeries_signal_slot_doubleClicked(handle:not null QSeriesH;hook:setCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_doubleClicked, "QBoxPlotSeries_signal_slot_doubleClicked");
 
 procedure QBoxPlotSeries_signal_slot_countChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_countChanged, "QBoxPlotSeries_signal_slot_countChanged");
 
 procedure QBoxPlotSeries_signal_slot_penChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_penChanged, "QBoxPlotSeries_signal_slot_penChanged");
 
 procedure QBoxPlotSeries_signal_slot_brushChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_brushChanged, "QBoxPlotSeries_signal_slot_brushChanged");
 
 procedure QBoxPlotSeries_signal_slot_boxOutlineVisibilityChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_boxOutlineVisibilityChanged, "QBoxPlotSeries_signal_slot_boxOutlineVisibilityChanged");
 
 procedure QBoxPlotSeries_signal_slot_boxWidthChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_boxWidthChanged, "QBoxPlotSeries_signal_slot_boxWidthChanged");
 
 procedure QBoxPlotSeries_signal_slot_boxsetsAdded(handle:not null QSeriesH;hook:listCallbackH);
 pragma Import(C,QBoxPlotSeries_signal_slot_boxsetsAdded, "QBoxPlotSeries_signal_slot_boxsetsAdded");
 
 procedure QBoxPlotSeries_signal_slot_boxsetsRemoved(handle:not null QSeriesH;hook:listCallbackH);          
 pragma Import(C,QBoxPlotSeries_signal_slot_boxsetsRemoved, "QBoxPlotSeries_signal_slot_boxsetsRemoved");
 -------------------------------------------------------------------
 function  QBoxPlotSeries_append(handle:not null QSeriesH;boxes:QObjectListH) return boolean;
end;
