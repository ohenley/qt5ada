-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QAbstractSeries is

 type SeriesType is (SeriesTypeLine,SeriesTypeArea,SeriesTypeBar,
        SeriesTypeStackedBar,SeriesTypePercentBar,SeriesTypePie,SeriesTypeScatter,
        SeriesTypeSpline,SeriesTypeHorizontalBar,SeriesTypeHorizontalStackedBar,
        SeriesTypeHorizontalPercentBar,SeriesTypeBoxPlot,SeriesTypeCandlestick);
 pragma convention(C,SeriesType);

 procedure QAbstractSeries_destroy(handle:not null QSeriesH);
 pragma Import(C,QAbstractSeries_destroy, "QAbstractSeries_destroy");
 
 function  QAbstractSeries_type(handle:not null QSeriesH) return SeriesType;
 pragma Import(C,QAbstractSeries_type, "QAbstractSeries_type");
 
 procedure QAbstractSeries_setName(handle:not null QSeriesH;name:QStringH);
 pragma Import(C,QAbstractSeries_setName, "QAbstractSeries_setName");
 
 function  QAbstractSeries_name(handle:not null QSeriesH) return QStringH;
 pragma Import(C,QAbstractSeries_name, "QAbstractSeries_name");
 
 procedure QAbstractSeries_setVisible(handle:not null QSeriesH;visible :boolean :=  true);
 pragma Import(C,QAbstractSeries_setVisible, "QAbstractSeries_setVisible");
 
 function  QAbstractSeries_isVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QAbstractSeries_isVisible, "QAbstractSeries_isVisible");
 
 function  QAbstractSeries_opacity(handle:not null QSeriesH) return qreal;
 pragma Import(C,QAbstractSeries_opacity, "QAbstractSeries_opacity");
 
 procedure QAbstractSeries_setOpacity(handle:not null QSeriesH;opacity:qreal);
 pragma Import(C,QAbstractSeries_setOpacity, "QAbstractSeries_setOpacity");
 
 procedure QAbstractSeries_setUseOpenGL(handle:not null QSeriesH;enable :boolean :=  true);
 pragma Import(C,QAbstractSeries_setUseOpenGL, "QAbstractSeries_setUseOpenGL");
 
 function  QAbstractSeries_useOpenGL(handle:not null QSeriesH) return boolean;
 pragma Import(C,QAbstractSeries_useOpenGL, "QAbstractSeries_useOpenGL");
 
 function  QAbstractSeries_chart(handle:not null QSeriesH) return QChartH;
 pragma Import(C,QAbstractSeries_chart, "QAbstractSeries_chart");
 
 function  QAbstractSeries_attachAxis(handle:not null QSeriesH;axis:QAxisH) return boolean;
 pragma Import(C,QAbstractSeries_attachAxis, "QAbstractSeries_attachAxis");
 
 function  QAbstractSeries_detachAxis(handle:not null QSeriesH;axis:QAxisH) return boolean;
 pragma Import(C,QAbstractSeries_detachAxis, "QAbstractSeries_detachAxis");
 
 function  QAbstractSeries_attachedAxes(handle:not null QSeriesH) return QObjectListH;
 pragma Import(C,QAbstractSeries_attachedAxes, "QAbstractSeries_attachedAxes");
 
 procedure QAbstractSeries_show(handle:not null QSeriesH);
 pragma Import(C,QAbstractSeries_show, "QAbstractSeries_show");
 
 procedure QAbstractSeries_hide(handle:not null QSeriesH);
 pragma Import(C,QAbstractSeries_hide, "QAbstractSeries_hide");
 
 procedure QAbstractSeries_signal_slot_nameChanged(handle:not null QSeriesH;hook: voidCallbackH);
 pragma Import(C,QAbstractSeries_signal_slot_nameChanged, "QAbstractSeries_signal_slot_nameChanged");
 
 procedure QAbstractSeries_signal_slot_visibleChanged(handle:not null QSeriesH;hook: voidCallbackH);
 pragma Import(C,QAbstractSeries_signal_slot_visibleChanged, "QAbstractSeries_signal_slot_visibleChanged");
 
 procedure QAbstractSeries_signal_slot_opacityChanged(handle:not null QSeriesH;hook: voidCallbackH);
 pragma Import(C,QAbstractSeries_signal_slot_opacityChanged, "QAbstractSeries_signal_slot_opacityChanged");
 
 procedure QAbstractSeries_signal_slot_useOpenGLChanged(handle:not null QSeriesH;hook: voidCallbackH);
 pragma Import(C,QAbstractSeries_signal_slot_useOpenGLChanged, "QAbstractSeries_signal_slot_useOpenGLChanged");

end;
