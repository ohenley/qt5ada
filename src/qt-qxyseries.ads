-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QXYSeries is

 procedure QXYSeries_desroy(handle:not null QSeriesH);
 pragma Import(C,QXYSeries_desroy, "QXYSeries_desroy");
 
 procedure QXYSeries_append(handle:not null QSeriesH;x:qreal;y: qreal);
 pragma Import(C,QXYSeries_append, "QXYSeries_append");
 
 procedure QXYSeries_append2(handle:not null QSeriesH;point:QPointFH);
 pragma Import(C,QXYSeries_append2, "QXYSeries_append2");
 
 procedure QXYSeries_append3(handle:not null QSeriesH;points:QObjectListH);
 pragma Import(C,QXYSeries_append3, "QXYSeries_append3");
 
 procedure QXYSeries_replace(handle:not null QSeriesH;oldX,oldY,newX,newY: qreal);
 pragma Import(C,QXYSeries_replace, "QXYSeries_replace");
 
 procedure QXYSeries_replace2(handle:not null QSeriesH;oldPoint,newPoint: QPointFH);
 pragma Import(C,QXYSeries_replace2, "QXYSeries_replace2");
 
 procedure QXYSeries_replace3(handle:not null QSeriesH;index:integer;newX: qreal;newY: qreal);
 pragma Import(C,QXYSeries_replace3, "QXYSeries_replace3");
 
 procedure QXYSeries_replace4(handle:not null QSeriesH;index:integer;newPoint: QPointFH);
 pragma Import(C,QXYSeries_replace4, "QXYSeries_replace4");
 
 procedure QXYSeries_replace5(handle:not null QSeriesH;points:QObjectListH);
 pragma Import(C,QXYSeries_replace5, "QXYSeries_replace5");
 
 procedure QXYSeries_replace6(handle:not null QSeriesH;points:QVectorH);
 pragma Import(C,QXYSeries_replace6, "QXYSeries_replace6");
 
 procedure QXYSeries_remove(handle:not null QSeriesH;x,y: qreal);
 pragma Import(C,QXYSeries_remove, "QXYSeries_remove");
 
 procedure QXYSeries_remove2(handle:not null QSeriesH;point:QPointFH);
 pragma Import(C,QXYSeries_remove2, "QXYSeries_remove2");
 
 procedure QXYSeries_remove3(handle:not null QSeriesH;index:integer);
 pragma Import(C,QXYSeries_remove3, "QXYSeries_remove3");
 
 procedure QXYSeries_removePoints(handle:not null QSeriesH;index,count: integer);
 pragma Import(C,QXYSeries_removePoints, "QXYSeries_removePoints");
 
 procedure QXYSeries_insert(handle:not null QSeriesH;index,point: QPointFH);
 pragma Import(C,QXYSeries_insert, "QXYSeries_insert");
 
 procedure QXYSeries_clear(handle:not null QSeriesH);
 pragma Import(C,QXYSeries_clear, "QXYSeries_clear");
 
 function  QXYSeries_count(handle:not null QSeriesH) return integer;
 pragma Import(C,QXYSeries_count, "QXYSeries_count");
 
 function  QXYSeries_points(handle:not null QSeriesH) return QObjectListH;
 pragma Import(C,QXYSeries_points, "QXYSeries_points");
 
 function  QXYSeries_pointsVector(handle:not null QSeriesH) return QVectorH;
 pragma Import(C,QXYSeries_pointsVector, "QXYSeries_pointsVector");
 
 function  QXYSeries_at(handle:not null QSeriesH;index:integer) return QPointFH;
 pragma Import(C,QXYSeries_at, "QXYSeries_at");
 
 procedure QXYSeries_setPen(handle:not null QSeriesH;pen:QPenH);
 pragma Import(C,QXYSeries_setPen, "QXYSeries_setPen");
 
 function  QXYSeries_pen(handle:not null QSeriesH) return QPenH;
 pragma Import(C,QXYSeries_pen, "QXYSeries_pen");
 
 procedure QXYSeries_setBrush(handle:not null QSeriesH;brush:QBrushH);
 pragma Import(C,QXYSeries_setBrush, "QXYSeries_setBrush");
 
 function  QXYSeries_brush(handle:not null QSeriesH) return QBrushH;
 pragma Import(C,QXYSeries_brush, "QXYSeries_brush");
 
 procedure QXYSeries_setColor(handle:not null QSeriesH;color:QColorH);
 pragma Import(C,QXYSeries_setColor, "QXYSeries_setColor");
 
 function  QXYSeries_color(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QXYSeries_color, "QXYSeries_color");
 
 procedure QXYSeries_setPointsVisible(handle:not null QSeriesH;visible :boolean :=  true);
 pragma Import(C,QXYSeries_setPointsVisible, "QXYSeries_setPointsVisible");
 
 function  QXYSeries_pointsVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QXYSeries_pointsVisible, "QXYSeries_pointsVisible");
 
 procedure QXYSeries_setPointLabelsFormat(handle:not null QSeriesH;format:QStringH);
 pragma Import(C,QXYSeries_setPointLabelsFormat, "QXYSeries_setPointLabelsFormat");
 
 function  QXYSeries_pointLabelsFormat(handle:not null QSeriesH) return QStringH;
 pragma Import(C,QXYSeries_pointLabelsFormat, "QXYSeries_pointLabelsFormat");
 
 procedure QXYSeries_setPointLabelsVisible(handle:not null QSeriesH;visible :boolean :=  true);
 pragma Import(C,QXYSeries_setPointLabelsVisible, "QXYSeries_setPointLabelsVisible");
 
 function  QXYSeries_pointLabelsVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QXYSeries_pointLabelsVisible, "QXYSeries_pointLabelsVisible");
 
 procedure QXYSeries_setPointLabelsFont(handle:not null QSeriesH;font:QFontH);
 pragma Import(C,QXYSeries_setPointLabelsFont, "QXYSeries_setPointLabelsFont");
 
 function  QXYSeries_pointLabelsFont(handle:not null QSeriesH) return QFontH;
 pragma Import(C,QXYSeries_pointLabelsFont, "QXYSeries_pointLabelsFont");
 
 procedure QXYSeries_setPointLabelsColor(handle:not null QSeriesH;color:QColorH);
 pragma Import(C,QXYSeries_setPointLabelsColor, "QXYSeries_setPointLabelsColor");
 
 function  QXYSeries_pointLabelsColor(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QXYSeries_pointLabelsColor, "QXYSeries_pointLabelsColor");
 
 procedure QXYSeries_setPointLabelsClipping(handle:not null QSeriesH;enabled :boolean :=  true);
 pragma Import(C,QXYSeries_setPointLabelsClipping, "QXYSeries_setPointLabelsClipping");
 
 function  QXYSeries_pointLabelsClipping(handle:not null QSeriesH) return boolean;
 pragma Import(C,QXYSeries_pointLabelsClipping, "QXYSeries_pointLabelsClipping");
 

 type pointFCallbackH is access procedure(p: QPointFH);
 pragma convention(C,pointFCallbackH);

 type pointFBoolCallbackH is access procedure(p1: QPointFH;p2:boolean);
 pragma convention(C,pointFBoolCallbackH);

 type colorCallbackH is access procedure(p: QColorH);
 pragma convention(C,colorCallbackH);

 type fontCallbackH is access procedure(p: QFontH);
 pragma convention(C,fontCallbackH);

 type penCallbackH is access procedure(p: QPenH);
 pragma convention(C,penCallbackH);

 type intIntCallbackH is access procedure(p1,p2: integer);
 pragma convention(C,intIntCallbackH);

 procedure QXYSeries_signal_slot_clicked(handle:not null QSeriesH;hook:pointFCallbackH);
 pragma Import(C,QXYSeries_signal_slot_clicked, "QXYSeries_signal_slot_clicked");
 
 procedure QXYSeries_signal_slot_hovered(handle:not null QSeriesH;hook:pointFBoolCallbackH);
 pragma Import(C,QXYSeries_signal_slot_hovered, "QXYSeries_signal_slot_hovered");
 
 procedure QXYSeries_signal_slot_pressed(handle:not null QSeriesH;hook:pointFCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pressed, "QXYSeries_signal_slot_pressed");
 
 procedure QXYSeries_signal_slot_released(handle:not null QSeriesH;hook:pointFCallbackH);
 pragma Import(C,QXYSeries_signal_slot_released, "QXYSeries_signal_slot_released");
 
 procedure QXYSeries_signal_slot_doubleClicked(handle:not null QSeriesH;hook:pointFCallbackH);
 pragma Import(C,QXYSeries_signal_slot_doubleClicked, "QXYSeries_signal_slot_doubleClicked");
 
 procedure QXYSeries_signal_slot_pointReplaced(handle:not null QSeriesH;hook:intCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointReplaced, "QXYSeries_signal_slot_pointReplaced");
 
 procedure QXYSeries_signal_slot_pointRemoved(handle:not null QSeriesH;hook:intCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointRemoved, "QXYSeries_signal_slot_pointRemoved");
 
 procedure QXYSeries_signal_slot_pointAdded(handle:not null QSeriesH;hook:intCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointAdded, "QXYSeries_signal_slot_pointAdded");
 
 procedure QXYSeries_signal_slot_colorChanged(handle:not null QSeriesH;hook:colorCallbackH);
 pragma Import(C,QXYSeries_signal_slot_colorChanged, "QXYSeries_signal_slot_colorChanged");
 
 procedure QXYSeries_signal_slot_pointsReplaced(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointsReplaced, "QXYSeries_signal_slot_pointsReplaced");
 
 procedure QXYSeries_signal_slot_pointLabelsFormatChanged(handle:not null QSeriesH;hook:QStringCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointLabelsFormatChanged, "QXYSeries_signal_slot_pointLabelsFormatChanged");
 
 procedure QXYSeries_signal_slot_pointLabelsVisibilityChanged(handle:not null QSeriesH;hook:boolCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointLabelsVisibilityChanged, "QXYSeries_signal_slot_pointLabelsVisibilityChanged");
 
 procedure QXYSeries_signal_slot_pointLabelsFontChanged(handle:not null QSeriesH;hook:fontCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointLabelsFontChanged, "QXYSeries_signal_slot_pointLabelsFontChanged");
 
 procedure QXYSeries_signal_slot_pointLabelsColorChanged(handle:not null QSeriesH;hook:colorcallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointLabelsColorChanged, "QXYSeries_signal_slot_pointLabelsColorChanged");
 
 procedure QXYSeries_signal_slot_pointLabelsClippingChanged(handle:not null QSeriesH;hook:boolCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointLabelsClippingChanged, "QXYSeries_signal_slot_pointLabelsClippingChanged");
 
 procedure QXYSeries_signal_slot_pointsRemoved(handle:not null QSeriesH;hook:intIntCallbackH);
 pragma Import(C,QXYSeries_signal_slot_pointsRemoved, "QXYSeries_signal_slot_pointsRemoved");
 
 procedure QXYSeries_signal_slot_penChanged(handle:not null QSeriesH;hook:penCallbackH);
 pragma Import(C,QXYSeries_signal_slot_penChanged, "QXYSeries_signal_slot_penChanged");
---------------------------------------------------------------------------
 procedure QXYSeries_append(handle:not null QSeriesH;point:QPointFH);
 procedure QXYSeries_append(handle:not null QSeriesH;points:QObjectListH);
 procedure QXYSeries_replace(handle:not null QSeriesH;oldPoint,newPoint: QPointFH);
 procedure QXYSeries_replace(handle:not null QSeriesH;index:integer;newX: qreal;newY: qreal);
 procedure QXYSeries_replace(handle:not null QSeriesH;index:integer;newPoint: QPointFH);
 procedure QXYSeries_replace(handle:not null QSeriesH;points:QObjectListH);
 procedure QXYSeries_replace(handle:not null QSeriesH;points:QVectorH);
 procedure QXYSeries_remove(handle:not null QSeriesH;point:QPointFH);
 procedure QXYSeries_remove(handle:not null QSeriesH;index:integer); 
 
end;
