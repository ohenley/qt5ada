-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2016,2017                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

-- Thanks a lot for Stefan Frings  QtWebApp http://stefanfrings.de
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QAbstractAxis;
with Qt.QLegend;use Qt.QLegend;
package Qt.QLegendMarker is

 type LegendMarkerType is (LegendMarkerTypeArea,LegendMarkerTypeBar,
      LegendMarkerTypePie,LegendMarkerTypeXY,
      LegendMarkerTypeBoxPlot,LegendMarkerTypeCandlestick);

 procedure QLegendMarker_destroy(handle:not null QMarkerH);
 pragma Import(C,QLegendMarker_destroy, "QLegendMarker_destroy");
 
 function  QLegendMarker_type(handle:not null QMarkerH) return LegendMarkerType;
 pragma Import(C,QLegendMarker_type, "QLegendMarker_type");
 
 function  QLegendMarker_label(handle:not null QMarkerH) return QStringH;
 pragma Import(C,QLegendMarker_label, "QLegendMarker_label");
 
 procedure QLegendMarker_setLabel(handle:not null QMarkerH;label:QStringH);
 pragma Import(C,QLegendMarker_setLabel, "QLegendMarker_setLabel");
 
 function  QLegendMarker_labelBrush(handle:not null QMarkerH) return QBrushH;
 pragma Import(C,QLegendMarker_labelBrush, "QLegendMarker_labelBrush");
 
 procedure QLegendMarker_setLabelBrush(handle:not null QMarkerH;brush:QBrushH);
 pragma Import(C,QLegendMarker_setLabelBrush, "QLegendMarker_setLabelBrush");
 
 function  QLegendMarker_font(handle:not null QMarkerH) return QFontH;
 pragma Import(C,QLegendMarker_font, "QLegendMarker_font");
 
 procedure QLegendMarker_setFont(handle:not null QMarkerH;font:QFontH);
 pragma Import(C,QLegendMarker_setFont, "QLegendMarker_setFont");
 
 function  QLegendMarker_pen(handle:not null QMarkerH) return QPenH;
 pragma Import(C,QLegendMarker_pen, "QLegendMarker_pen");
 
 procedure QLegendMarker_setPen(handle:not null QMarkerH;pen:QPenH);
 pragma Import(C,QLegendMarker_setPen, "QLegendMarker_setPen");
 
 function  QLegendMarker_brush(handle:not null QMarkerH) return QBrushH;
 pragma Import(C,QLegendMarker_brush, "QLegendMarker_brush");
 
 procedure QLegendMarker_setBrush(handle:not null QMarkerH;brush:QBrushH);
 pragma Import(C,QLegendMarker_setBrush, "QLegendMarker_setBrush");
 
 function  QLegendMarker_isVisible(handle:not null QMarkerH) return boolean;
 pragma Import(C,QLegendMarker_isVisible, "QLegendMarker_isVisible");
 
 procedure QLegendMarker_setVisible(handle:not null QMarkerH;visible:boolean);
 pragma Import(C,QLegendMarker_setVisible, "QLegendMarker_setVisible");
 
 function  QLegendMarker_series(handle:not null QMarkerH) return QSeriesH;
 pragma Import(C,QLegendMarker_series, "QLegendMarker_series");
 
 function  QLegendMarker_shape(handle:not null QMarkerH) return MarkerShape;
 pragma Import(C,QLegendMarker_shape, "QLegendMarker_shape");
 
 procedure QLegendMarker_setShape(handle:not null QMarkerH;shape:MarkerShape);
 pragma Import(C,QLegendMarker_setShape, "QLegendMarker_setShape");

 procedure QLegendMarker_signal_slot_clicked(handle:not null QMarkerH;hook:voidCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_clicked, "QLegendMarker_signal_slot_clicked");
 
 procedure QLegendMarker_signal_slot_hovered(handle:not null QMarkerH;hook:boolCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_hovered, "QLegendMarker_signal_slot_hovered");
 
 procedure QLegendMarker_signal_slot_labelChanged(handle:not null QMarkerH;hook:voidCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_labelChanged, "QLegendMarker_signal_slot_labelChanged");
 
 procedure QLegendMarker_signal_slot_labelBrushChanged(handle:not null QMarkerH;hook:voidCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_labelBrushChanged, "QLegendMarker_signal_slot_labelBrushChanged");
 
 procedure QLegendMarker_signal_slot_fontChanged(handle:not null QMarkerH;hook:voidCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_fontChanged, "QLegendMarker_signal_slot_fontChanged");
 
 procedure QLegendMarker_signal_slot_penChanged(handle:not null QMarkerH;hook:voidCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_penChanged, "QLegendMarker_signal_slot_penChanged");
 
 procedure QLegendMarker_signal_slot_brushChanged(handle:not null QMarkerH;hook:voidCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_brushChanged, "QLegendMarker_signal_slot_brushChanged");
 
 procedure QLegendMarker_signal_slot_visibleChanged(handle:not null QMarkerH;hook:voidCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_visibleChanged, "QLegendMarker_signal_slot_visibleChanged");
 
 procedure QLegendMarker_signal_slot_shapeChanged(handle:not null QMarkerH;hook:voidCallbackH);
 pragma Import(C,QLegendMarker_signal_slot_shapeChanged, "QLegendMarker_signal_slot_shapeChanged");
 
end;
