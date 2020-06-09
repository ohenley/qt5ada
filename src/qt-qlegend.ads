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

package Qt.QLegend is

type MarkerShape is (MarkerShapeDefault, MarkerShapeRectangle, MarkerShapeCircle, MarkerShapeFromSeries); 
pragma convention(C,MarkerShape);

 procedure QLegend_destroy(handle:not null QLegendH);
 pragma Import(C,QLegend_destroy, "QLegend_destroy");
 
 procedure QLegend_paint(handle:not null QLegendH;painter:QPainterH;option: QStyleOptionGraphicsItemH;widget : QWidgetH :=  null);
 pragma Import(C,QLegend_paint, "QLegend_paint");
 
 procedure QLegend_setBrush(handle:not null QLegendH;brush:QBrushH);
 pragma Import(C,QLegend_setBrush, "QLegend_setBrush");
 
 function  QLegend_brush(handle:not null QLegendH) return QBrushH;
 pragma Import(C,QLegend_brush, "QLegend_brush");
 
 procedure QLegend_setColor(handle:not null QLegendH;color:QColorH);
 pragma Import(C,QLegend_setColor, "QLegend_setColor");
 
 function  QLegend_color(handle:not null QLegendH) return QColorH;
 pragma Import(C,QLegend_color, "QLegend_color");
 
 procedure QLegend_setPen(handle:not null QLegendH;pen:QPenH);
 pragma Import(C,QLegend_setPen, "QLegend_setPen");
 
 function  QLegend_pen(handle:not null QLegendH) return QPenH;
 pragma Import(C,QLegend_pen, "QLegend_pen");
 
 procedure QLegend_setBorderColor(handle:not null QLegendH;color:QColorH);
 pragma Import(C,QLegend_setBorderColor, "QLegend_setBorderColor");
 
 function  QLegend_borderColor(handle:not null QLegendH) return QColorH;
 pragma Import(C,QLegend_borderColor, "QLegend_borderColor");
 
 procedure QLegend_setFont(handle:not null QLegendH;font:QFontH);
 pragma Import(C,QLegend_setFont, "QLegend_setFont");
 
 function  QLegend_font(handle:not null QLegendH) return QFontH;
 pragma Import(C,QLegend_font, "QLegend_font");
 
 procedure QLegend_setLabelBrush(handle:not null QLegendH;brush:QBrushH);
 pragma Import(C,QLegend_setLabelBrush, "QLegend_setLabelBrush");
 
 function  QLegend_labelBrush(handle:not null QLegendH) return QBrushH;
 pragma Import(C,QLegend_labelBrush, "QLegend_labelBrush");
 
 procedure QLegend_setLabelColor(handle:not null QLegendH;color:QColorH);
 pragma Import(C,QLegend_setLabelColor, "QLegend_setLabelColor");
 
 function  QLegend_labelColor(handle:not null QLegendH) return QColorH;
 pragma Import(C,QLegend_labelColor, "QLegend_labelColor");
 
 procedure QLegend_setAlignment(handle:not null QLegendH;alignment:QtAlignment);
 pragma Import(C,QLegend_setAlignment, "QLegend_setAlignment");
 
 function  QLegend_alignment(handle:not null QLegendH) return QtAlignment;
 pragma Import(C,QLegend_alignment, "QLegend_alignment");
 
 procedure QLegend_detachFromChart(handle:not null QLegendH);
 pragma Import(C,QLegend_detachFromChart, "QLegend_detachFromChart");
 
 procedure QLegend_attachToChart(handle:not null QLegendH);
 pragma Import(C,QLegend_attachToChart, "QLegend_attachToChart");
 
 function  QLegend_isAttachedToChart(handle:not null QLegendH) return boolean;
 pragma Import(C,QLegend_isAttachedToChart, "QLegend_isAttachedToChart");
 
 procedure QLegend_setBackgroundVisible(handle:not null QLegendH;visible :boolean :=  true);
 pragma Import(C,QLegend_setBackgroundVisible, "QLegend_setBackgroundVisible");
 
 procedure QLegend_setVisible(handle:not null QLegendH;visible :boolean :=  true);
 pragma Import(C,QLegend_setVisible, "QLegend_setVisible");
 
 function  QLegend_isBackgroundVisible(handle:not null QLegendH) return boolean;
 pragma Import(C,QLegend_isBackgroundVisible, "QLegend_isBackgroundVisible");
 
 function  QLegend_markers(handle:not null QLegendH;series :QSeriesH :=  null) return QObjectListH;
 pragma Import(C,QLegend_markers, "QLegend_markers");
 
 function  QLegend_reverseMarkers(handle:not null QLegendH) return boolean;
 pragma Import(C,QLegend_reverseMarkers, "QLegend_reverseMarkers");
 
 procedure QLegend_setReverseMarkers(handle:not null QLegendH;reverseMarkers :boolean :=  true);
 pragma Import(C,QLegend_setReverseMarkers, "QLegend_setReverseMarkers");
 
 function  QLegend_showToolTips(handle:not null QLegendH) return boolean;
 pragma Import(C,QLegend_showToolTips, "QLegend_showToolTips");
 
 procedure QLegend_setShowToolTips(handle:not null QLegendH;show:boolean);
 pragma Import(C,QLegend_setShowToolTips, "QLegend_setShowToolTips");
 
 function  QLegend_markerShape(handle:not null QLegendH) return MarkerShape;
 pragma Import(C,QLegend_markerShape, "QLegend_markerShape");
 
 procedure QLegend_setMarkerShape(handle:not null QLegendH;shape:MarkerShape);
 pragma Import(C,QLegend_setMarkerShape, "QLegend_setMarkerShape");
 
 type colorCallbackH is access procedure(p: QColorH);
 pragma convention(C,colorCallbackH);

 type fontCallbackH is access procedure(p: QFontH);
 pragma convention(C,fontCallbackH);

 procedure QLegend_signal_slot_backgroundVisibleChanged(handle:not null QLegendH;hook: boolCallbackH);
 pragma Import(C,QLegend_signal_slot_backgroundVisibleChanged, "QLegend_signal_slot_backgroundVisibleChanged");
 
 procedure QLegend_signal_slot_colorChanged(handle:not null QLegendH;hook: colorCallbackH);
 pragma Import(C,QLegend_signal_slot_colorChanged, "QLegend_signal_slot_colorChanged");
 
 procedure QLegend_signal_slot_borderColorChanged(handle:not null QLegendH;hook: colorCallbackH);
 pragma Import(C,QLegend_signal_slot_borderColorChanged, "QLegend_signal_slot_borderColorChanged");
 
 procedure QLegend_signal_slot_fontChanged(handle:not null QLegendH;hook:fontCallbackH);
 pragma Import(C,QLegend_signal_slot_fontChanged, "QLegend_signal_slot_fontChanged");
 
 procedure QLegend_signal_slot_labelColorChanged(handle:not null QLegendH;hook: colorCallbackH);
 pragma Import(C,QLegend_signal_slot_labelColorChanged, "QLegend_signal_slot_labelColorChanged");
 
 procedure QLegend_signal_slot_reverseMarkersChanged(handle:not null QLegendH;hook:boolCallbackH);
 pragma Import(C,QLegend_signal_slot_reverseMarkersChanged, "QLegend_signal_slot_reverseMarkersChanged");
 
 procedure QLegend_signal_slot_showToolTipsChanged(handle:not null QLegendH;hook:boolCallbackH);    
 pragma Import(C,QLegend_signal_slot_showToolTipsChanged, "QLegend_signal_slot_showToolTipsChanged");
 
 procedure QLegend_signal_slot_markerShapeChanged(handle:not null QLegendH;hook:voidCallbackH);    
 pragma Import(C,QLegend_signal_slot_markerShapeChanged, "QLegend_signal_slot_markerShapeChanged");
 
end;
