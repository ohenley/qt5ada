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
package Qt.QCandlestickSeries  is

 function  QCandlestickSeries_create(parent:QObjectH := null) return QSeriesH;
 pragma Import(C,QCandlestickSeries_create, "QCandlestickSeries_create");
 
 procedure QCandlestickSeries_destroy(handle:not null QSeriesH);
 pragma Import(C,QCandlestickSeries_destroy, "QCandlestickSeries_destroy");
 
 function  QCandlestickSeries_append(handle:not null QSeriesH;set:QSetH) return boolean;
 pragma Import(C,QCandlestickSeries_append, "QCandlestickSeries_append");
 
 function  QCandlestickSeries_remove(handle:not null QSeriesH;set:QSetH) return boolean;
 pragma Import(C,QCandlestickSeries_remove, "QCandlestickSeries_remove");
 
 function  QCandlestickSeries_append2(handle:not null QSeriesH;sets:QObjectListH) return boolean;
 pragma Import(C,QCandlestickSeries_append2, "QCandlestickSeries_append2");
 
 function  QCandlestickSeries_remove2(handle:not null QSeriesH;sets:QObjectListH) return boolean;
 pragma Import(C,QCandlestickSeries_remove2, "QCandlestickSeries_remove2");
 
 function  QCandlestickSeries_insert(handle:not null QSeriesH;index:integer;set: QSetH) return boolean;
 pragma Import(C,QCandlestickSeries_insert, "QCandlestickSeries_insert");
 
 function  QCandlestickSeries_take(handle:not null QSeriesH;set:QSetH) return boolean;
 pragma Import(C,QCandlestickSeries_take, "QCandlestickSeries_take");
 
 procedure QCandlestickSeries_clear(handle:not null QSeriesH);
 pragma Import(C,QCandlestickSeries_clear, "QCandlestickSeries_clear");
 
 function  QCandlestickSeries_sets(handle:not null QSeriesH) return QObjectListH;
 pragma Import(C,QCandlestickSeries_sets, "QCandlestickSeries_sets");
 
 function  QCandlestickSeries_count(handle:not null QSeriesH) return integer;
 pragma Import(C,QCandlestickSeries_count, "QCandlestickSeries_count");
 
 function  QCandlestickSeries_type(handle:not null QSeriesH) return Qt.QAbstractSeries.SeriesType;
 pragma Import(C,QCandlestickSeries_type, "QCandlestickSeries_type");
 
 procedure QCandlestickSeries_setMaximumColumnWidth(handle:not null QSeriesH;maximumColumnWidth:qreal);
 pragma Import(C,QCandlestickSeries_setMaximumColumnWidth, "QCandlestickSeries_setMaximumColumnWidth");
 
 function  QCandlestickSeries_maximumColumnWidth(handle:not null QSeriesH) return qreal;
 pragma Import(C,QCandlestickSeries_maximumColumnWidth, "QCandlestickSeries_maximumColumnWidth");
 
 procedure QCandlestickSeries_setMinimumColumnWidth(handle:not null QSeriesH;minimumColumnWidth:qreal);
 pragma Import(C,QCandlestickSeries_setMinimumColumnWidth, "QCandlestickSeries_setMinimumColumnWidth");
 
 function  QCandlestickSeries_minimumColumnWidth(handle:not null QSeriesH) return qreal;
 pragma Import(C,QCandlestickSeries_minimumColumnWidth, "QCandlestickSeries_minimumColumnWidth");
 
 procedure QCandlestickSeries_setBodyWidth(handle:not null QSeriesH;bodyWidth:qreal);
 pragma Import(C,QCandlestickSeries_setBodyWidth, "QCandlestickSeries_setBodyWidth");
 
 function  QCandlestickSeries_bodyWidth(handle:not null QSeriesH) return qreal;
 pragma Import(C,QCandlestickSeries_bodyWidth, "QCandlestickSeries_bodyWidth");
 
 procedure QCandlestickSeries_setBodyOutlineVisible(handle:not null QSeriesH;bodyOutlineVisible:boolean);
 pragma Import(C,QCandlestickSeries_setBodyOutlineVisible, "QCandlestickSeries_setBodyOutlineVisible");
 
 function  QCandlestickSeries_bodyOutlineVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QCandlestickSeries_bodyOutlineVisible, "QCandlestickSeries_bodyOutlineVisible");
 
 procedure QCandlestickSeries_setCapsWidth(handle:not null QSeriesH;capsWidth:qreal);
 pragma Import(C,QCandlestickSeries_setCapsWidth, "QCandlestickSeries_setCapsWidth");
 
 function  QCandlestickSeries_capsWidth(handle:not null QSeriesH) return qreal;
 pragma Import(C,QCandlestickSeries_capsWidth, "QCandlestickSeries_capsWidth");
 
 procedure QCandlestickSeries_setCapsVisible(handle:not null QSeriesH;capsVisible:boolean);
 pragma Import(C,QCandlestickSeries_setCapsVisible, "QCandlestickSeries_setCapsVisible");
 
 function  QCandlestickSeries_capsVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QCandlestickSeries_capsVisible, "QCandlestickSeries_capsVisible");
 
 procedure QCandlestickSeries_setIncreasingColor(handle:not null QSeriesH;increasingColor:QColorH);
 pragma Import(C,QCandlestickSeries_setIncreasingColor, "QCandlestickSeries_setIncreasingColor");
 
 function  QCandlestickSeries_increasingColor(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QCandlestickSeries_increasingColor, "QCandlestickSeries_increasingColor");
 
 procedure QCandlestickSeries_setDecreasingColor(handle:not null QSeriesH;decreasingColor:QColorH);
 pragma Import(C,QCandlestickSeries_setDecreasingColor, "QCandlestickSeries_setDecreasingColor");
 
 function  QCandlestickSeries_decreasingColor(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QCandlestickSeries_decreasingColor, "QCandlestickSeries_decreasingColor");
 
 procedure QCandlestickSeries_setBrush(handle:not null QSeriesH;brush:QBrushH);
 pragma Import(C,QCandlestickSeries_setBrush, "QCandlestickSeries_setBrush");
 
 function  QCandlestickSeries_brush(handle:not null QSeriesH) return QBrushH;
 pragma Import(C,QCandlestickSeries_brush, "QCandlestickSeries_brush");
 
 procedure QCandlestickSeries_setPen(handle:not null QSeriesH;pen:QPenH);
 pragma Import(C,QCandlestickSeries_setPen, "QCandlestickSeries_setPen");
 
 function  QCandlestickSeries_pen(handle:not null QSeriesH) return QPenH;
 pragma Import(C,QCandlestickSeries_pen, "QCandlestickSeries_pen");
 
 type setCallbackH is access procedure(p:QSetH);
 pragma convention(C,setCallbackH);

 type boolSetCallbackH is access procedure(b:boolean;p:QSetH);
 pragma convention(C,boolSetCallbackH);

 type listCallbackH is access procedure(p:QObjectListH);
 pragma convention(C,listCallbackH);

 procedure QCandlestickSeries_signal_slot_clicked(handle:not null QSeriesH;hook:setCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_clicked, "QCandlestickSeries_signal_slot_clicked");
 
 procedure QCandlestickSeries_signal_slot_hovered(handle:not null QSeriesH;hook:boolSetCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_hovered, "QCandlestickSeries_signal_slot_hovered");
 
 procedure QCandlestickSeries_signal_slot_pressed(handle:not null QSeriesH;hook:setCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_pressed, "QCandlestickSeries_signal_slot_pressed");
 
 procedure QCandlestickSeries_signal_slot_released(handle:not null QSeriesH;hook:setCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_released, "QCandlestickSeries_signal_slot_released");
 
 procedure QCandlestickSeries_signal_slot_doubleClicked(handle:not null QSeriesH;hook:setCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_doubleClicked, "QCandlestickSeries_signal_slot_doubleClicked");
 
 procedure QCandlestickSeries_signal_slot_candlestickSetsAdded(handle:not null QSeriesH; hook: listCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_candlestickSetsAdded, "QCandlestickSeries_signal_slot_candlestickSetsAdded");
 
 procedure QCandlestickSeries_signal_slot_candlestickSetsRemoved(handle:not null QSeriesH;hook: listCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_candlestickSetsRemoved, "QCandlestickSeries_signal_slot_candlestickSetsRemoved");
 
 procedure QCandlestickSeries_signal_slot_countChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_countChanged, "QCandlestickSeries_signal_slot_countChanged");
 
 procedure QCandlestickSeries_signal_slot_maximumColumnWidthChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_maximumColumnWidthChanged, "QCandlestickSeries_signal_slot_maximumColumnWidthChanged");
 
 procedure QCandlestickSeries_signal_slot_minimumColumnWidthChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_minimumColumnWidthChanged, "QCandlestickSeries_signal_slot_minimumColumnWidthChanged");
 
 procedure QCandlestickSeries_signal_slot_bodyWidthChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_bodyWidthChanged, "QCandlestickSeries_signal_slot_bodyWidthChanged");
 
 procedure QCandlestickSeries_signal_slot_bodyOutlineVisibilityChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_bodyOutlineVisibilityChanged, "QCandlestickSeries_signal_slot_bodyOutlineVisibilityChanged");
 
 procedure QCandlestickSeries_signal_slot_capsWidthChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_capsWidthChanged, "QCandlestickSeries_signal_slot_capsWidthChanged");
 
 procedure QCandlestickSeries_signal_slot_capsVisibilityChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_capsVisibilityChanged, "QCandlestickSeries_signal_slot_capsVisibilityChanged");
 
 procedure QCandlestickSeries_signal_slot_increasingColorChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_increasingColorChanged, "QCandlestickSeries_signal_slot_increasingColorChanged");
 
 procedure QCandlestickSeries_signal_slot_decreasingColorChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_decreasingColorChanged, "QCandlestickSeries_signal_slot_decreasingColorChanged");
 
 procedure QCandlestickSeries_signal_slot_brushChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_brushChanged, "QCandlestickSeries_signal_slot_brushChanged");
 
 procedure QCandlestickSeries_signal_slot_penChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QCandlestickSeries_signal_slot_penChanged, "QCandlestickSeries_signal_slot_penChanged");
 
 function  QCandlestickSeries_append(handle:not null QSeriesH;sets:QObjectListH) return boolean;
 function  QCandlestickSeries_remove(handle:not null QSeriesH;sets:QObjectListH) return boolean;

end;
