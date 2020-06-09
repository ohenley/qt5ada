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

with Interfaces.C;  use Interfaces.C;
package Qt.QChart is

 type ChartType is (ChartTypeUndefined,ChartTypeCartesian,ChartTypePolar);
 pragma convention(C,ChartType);

 type ChartTheme is (ChartThemeLight,ChartThemeBlueCerulean,ChartThemeDark,
        ChartThemeBrownSand,ChartThemeBlueNcs,ChartThemeHighContrast,ChartThemeBlueIcy,ChartThemeQt);
 pragma convention(C,ChartTheme);

 type AnimationOptions is (NoAnimation,GridAxisAnimations,SeriesAnimations,AllAnimations);
 pragma convention(C,AnimationOptions);

 function  QChart_create(parent:QGraphicsItemH := null) return QChartH;
 pragma Import(C,QChart_create, "QChart_create");
 
 procedure QChart_destroy(handle:not null QChartH);
 pragma Import(C,QChart_destroy, "QChart_destroy");
 
 procedure QChart_addSeries(handle:not null QChartH;series:QSeriesH);
 pragma Import(C,QChart_addSeries, "QChart_addSeries");
 
 procedure QChart_removeSeries(handle:not null QChartH;series:QSeriesH);
 pragma Import(C,QChart_removeSeries, "QChart_removeSeries");
 
 procedure QChart_removeAllSeries(handle:not null QChartH);
 pragma Import(C,QChart_removeAllSeries, "QChart_removeAllSeries");
 
 function  QChart_series(handle:not null QChartH) return QObjectListH;
 pragma Import(C,QChart_series, "QChart_series");
 
 procedure QChart_addAxis(handle:not null QChartH;axis:QAxisH;alignment: QtAlignment);
 pragma Import(C,QChart_addAxis, "QChart_addAxis");
 
 procedure QChart_removeAxis(handle:not null QChartH;axis:QAxisH);
 pragma Import(C,QChart_removeAxis, "QChart_removeAxis");
 
 function  QChart_axes(handle:not null QChartH;orientation :QtOrientations :=  QtHorizontal + QtVertical;series : QSeriesH :=  null) return QObjectListH;
 pragma Import(C,QChart_axes, "QChart_axes");
 
 procedure QChart_createDefaultAxes(handle:not null QChartH);
 pragma Import(C,QChart_createDefaultAxes, "QChart_createDefaultAxes");
 
 procedure QChart_setTheme(handle:not null QChartH;theme:ChartTheme);
 pragma Import(C,QChart_setTheme, "QChart_setTheme");
 
 function  QChart_theme(handle:not null QChartH) return ChartTheme;
 pragma Import(C,QChart_theme, "QChart_theme");
 
 procedure QChart_setTitle(handle:not null QChartH;title:QStringH);
 pragma Import(C,QChart_setTitle, "QChart_setTitle");
 
 function  QChart_title(handle:not null QChartH) return QStringH;
 pragma Import(C,QChart_title, "QChart_title");
 
 procedure QChart_setTitleFont(handle:not null QChartH;font: QFontH);
 pragma Import(C,QChart_setTitleFont, "QChart_setTitleFont");
 
 function  QChart_titleFont(handle:not null QChartH) return QFontH;
 pragma Import(C,QChart_titleFont, "QChart_titleFont");
 
 procedure QChart_setTitleBrush(handle:not null QChartH;brush: QBrushH);
 pragma Import(C,QChart_setTitleBrush, "QChart_setTitleBrush");
 
 function  QChart_titleBrush(handle:not null QChartH) return QBrushH;
 pragma Import(C,QChart_titleBrush, "QChart_titleBrush");
 
 procedure QChart_setBackgroundBrush(handle:not null QChartH;brush: QBrushH);
 pragma Import(C,QChart_setBackgroundBrush, "QChart_setBackgroundBrush");
 
 function  QChart_backgroundBrush(handle:not null QChartH) return QBrushH;
 pragma Import(C,QChart_backgroundBrush, "QChart_backgroundBrush");
 
 procedure QChart_setBackgroundPen(handle:not null QChartH;pen: QPenH);
 pragma Import(C,QChart_setBackgroundPen, "QChart_setBackgroundPen");
 
 function  QChart_backgroundPen(handle:not null QChartH) return QPenH;
 pragma Import(C,QChart_backgroundPen, "QChart_backgroundPen");
 
 procedure QChart_setBackgroundVisible(handle:not null QChartH;visible :boolean :=  true);
 pragma Import(C,QChart_setBackgroundVisible, "QChart_setBackgroundVisible");
 
 function  QChart_isBackgroundVisible(handle:not null QChartH) return boolean;
 pragma Import(C,QChart_isBackgroundVisible, "QChart_isBackgroundVisible");
 
 procedure QChart_setDropShadowEnabled(handle:not null QChartH;enabled :boolean :=  true);
 pragma Import(C,QChart_setDropShadowEnabled, "QChart_setDropShadowEnabled");
 
 function  QChart_isDropShadowEnabled(handle:not null QChartH) return boolean;
 pragma Import(C,QChart_isDropShadowEnabled, "QChart_isDropShadowEnabled");
 
 procedure QChart_setBackgroundRoundness(handle:not null QChartH;diameter:qreal);
 pragma Import(C,QChart_setBackgroundRoundness, "QChart_setBackgroundRoundness");
 
 function  QChart_backgroundRoundness(handle:not null QChartH) return qreal;
 pragma Import(C,QChart_backgroundRoundness, "QChart_backgroundRoundness");
 
 procedure QChart_setAnimationOptions(handle:not null QChartH;options:AnimationOptions);
 pragma Import(C,QChart_setAnimationOptions, "QChart_setAnimationOptions");
 
 function  QChart_animationOptions(handle:not null QChartH) return AnimationOptions;
 pragma Import(C,QChart_animationOptions, "QChart_animationOptions");
 
 procedure QChart_setAnimationDuration(handle:not null QChartH;msecs:integer);
 pragma Import(C,QChart_setAnimationDuration, "QChart_setAnimationDuration");
 
 function  QChart_animationDuration(handle:not null QChartH) return integer;
 pragma Import(C,QChart_animationDuration, "QChart_animationDuration");
 
 procedure QChart_setAnimationEasingCurve(handle:not null QChartH;curve: QEasingCurveH);
 pragma Import(C,QChart_setAnimationEasingCurve, "QChart_setAnimationEasingCurve");
 
 function  QChart_animationEasingCurve(handle:not null QChartH) return QEasingCurveH;
 pragma Import(C,QChart_animationEasingCurve, "QChart_animationEasingCurve");
 
 procedure QChart_zoomIn(handle:not null QChartH);
 pragma Import(C,QChart_zoomIn, "QChart_zoomIn");
 
 procedure QChart_zoomIn2(handle:not null QChartH;rect: QRectFH);
 pragma Import(C,QChart_zoomIn2, "QChart_zoomIn2");
 
 procedure QChart_zoomOut(handle:not null QChartH);
 pragma Import(C,QChart_zoomOut, "QChart_zoomOut");
 
 procedure QChart_zoom(handle:not null QChartH;factor:qreal);
 pragma Import(C,QChart_zoom, "QChart_zoom");
 
 procedure QChart_zoomReset(handle:not null QChartH);
 pragma Import(C,QChart_zoomReset, "QChart_zoomReset");
 
 function  QChart_isZoomed(handle:not null QChartH) return boolean;
 pragma Import(C,QChart_isZoomed, "QChart_isZoomed");
 
 procedure QChart_scroll(handle:not null QChartH;dx:qreal;dy: qreal);
 pragma Import(C,QChart_scroll, "QChart_scroll");
 
 function  QChart_legend(handle:not null QChartH) return QLegendH;
 pragma Import(C,QChart_legend, "QChart_legend");
 
 procedure QChart_setMargins(handle:not null QChartH;margins: QMarginsH);
 pragma Import(C,QChart_setMargins, "QChart_setMargins");
 
 function  QChart_margins(handle:not null QChartH) return QMarginsH;
 pragma Import(C,QChart_margins, "QChart_margins");
 
 function  QChart_plotArea(handle:not null QChartH) return QRectFH;
 pragma Import(C,QChart_plotArea, "QChart_plotArea");
 
 procedure QChart_setPlotAreaBackgroundBrush(handle:not null QChartH;brush: QBrushH);
 pragma Import(C,QChart_setPlotAreaBackgroundBrush, "QChart_setPlotAreaBackgroundBrush");
 
 function  QChart_plotAreaBackgroundBrush(handle:not null QChartH) return QBrushH;
 pragma Import(C,QChart_plotAreaBackgroundBrush, "QChart_plotAreaBackgroundBrush");
 
 procedure QChart_setPlotAreaBackgroundPen(handle:not null QChartH;pen: QPenH);
 pragma Import(C,QChart_setPlotAreaBackgroundPen, "QChart_setPlotAreaBackgroundPen");
 
 function  QChart_plotAreaBackgroundPen(handle:not null QChartH) return QPenH;
 pragma Import(C,QChart_plotAreaBackgroundPen, "QChart_plotAreaBackgroundPen");
 
 procedure QChart_setPlotAreaBackgroundVisible(handle:not null QChartH;visible :boolean :=  true);
 pragma Import(C,QChart_setPlotAreaBackgroundVisible, "QChart_setPlotAreaBackgroundVisible");
 
 function  QChart_isPlotAreaBackgroundVisible(handle:not null QChartH) return boolean;
 pragma Import(C,QChart_isPlotAreaBackgroundVisible, "QChart_isPlotAreaBackgroundVisible");
 
 procedure QChart_setLocalizeNumbers(handle:not null QChartH;localize:boolean);
 pragma Import(C,QChart_setLocalizeNumbers, "QChart_setLocalizeNumbers");
 
 function  QChart_localizeNumbers(handle:not null QChartH) return boolean;
 pragma Import(C,QChart_localizeNumbers, "QChart_localizeNumbers");
 
 procedure QChart_setLocale(handle:not null QChartH;locale: QLocaleH);
 pragma Import(C,QChart_setLocale, "QChart_setLocale");
 
 function  QChart_locale(handle:not null QChartH) return QLocaleH;
 pragma Import(C,QChart_locale, "QChart_locale");
 
 function  QChart_mapToValue(handle:not null QChartH;position: void_Star;series : QSeriesH :=  null) return void_Star;
 pragma Import(C,QChart_mapToValue, "QChart_mapToValue");
 
 function  QChart_mapToPosition(handle:not null QChartH;value: void_Star;series : QSeriesH :=  null) return void_Star;
 pragma Import(C,QChart_mapToPosition, "QChart_mapToPosition");
 
 function  QChart_chartType(handle:not null QChartH) return ChartType;
 pragma Import(C,QChart_chartType, "QChart_chartType");
 
 procedure QChart_signal_slot_plotAreaChanged(handle:not null QChartH;plotArea: QRectFH);
 pragma Import(C,QChart_signal_slot_plotAreaChanged, "QChart_signal_slot_plotAreaChanged");
 
end;
