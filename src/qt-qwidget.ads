--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2014,2015,2016,2019  บ
-- บ Copyright (C) 2012,2013,2015,2016,2019                            บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QSizePolicy; use Qt.QSizePolicy;
with Qt.QPalette;    use Qt.QPalette;
with Qt.QPoint;      use Qt.QPoint;
with Qt.QRect;       use Qt.QRect; 
with Qt.QSize;       use Qt.QSize; 
with Qt.QRegion;     use Qt.QRegion;
with Interfaces.C;   use Interfaces.C;
package Qt.QWidget is

subtype  QWidgetRenderFlag   is cardinal;
subtype  QWidgetRenderFlags  is cardinal;

QWidgetDrawWindowBackground : constant := 16#1#;
QWidgetDrawChildren         : constant := 16#2#;
QWidgetIgnoreMask           : constant := 16#4#;

type customPaintH is access procedure(e:QPaintEventH);
pragma convention(C,customPaintH);

function QWidget_create(parent: QWidgetH := null; f: QtWindowFlags := 0) return QWidgetH;   
pragma Import(C,QWidget_create,"QWidget_create");

function QWidget_create2(painter:customPaintH;parent: QWidgetH := null; f: QtWindowFlags := 0) return QWidgetH;   
pragma Import(C,QWidget_create2,"QWidget_create2");

procedure QWidget_destroy(handle: not null  QWidgetH);   
pragma Import(C,QWidget_destroy,"QWidget_destroy");

function QWidget_sender(handle: not null  QWidgetH) return  QObjectH;
pragma Import(C,QWidget_sender,"QWidget_sender");

function QWidget_devType(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_devType,"QWidget_devType");

function QWidget_winId(handle: not null  QWidgetH) return  LongWord;   
pragma Import(C,QWidget_winId,"QWidget_winId");

procedure QWidget_createWinId(handle: not null  QWidgetH);   
pragma Import(C,QWidget_createWinId,"QWidget_createWinId");

function QWidget_internalWinId(handle: not null  QWidgetH) return  LongWord;   
pragma Import(C,QWidget_internalWinId,"QWidget_internalWinId");

function QWidget_style(handle: not null  QWidgetH) return  QStyleH;   
pragma Import(C,QWidget_style,"QWidget_style");

procedure QWidget_setStyle(handle: not null  QWidgetH; p1: QStyleH);   
pragma Import(C,QWidget_setStyle,"QWidget_setStyle");

function QWidget_isTopLevel(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isTopLevel,"QWidget_isTopLevel");

function QWidget_isWindow(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isWindow,"QWidget_isWindow");

function QWidget_isModal(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isModal,"QWidget_isModal");

function QWidget_windowModality(handle: not null  QWidgetH) return  QtWindowModality;   
pragma Import(C,QWidget_windowModality,"QWidget_windowModality");

procedure QWidget_setWindowModality(handle: not null  QWidgetH; windowModality: QtWindowModality);   
pragma Import(C,QWidget_setWindowModality,"QWidget_setWindowModality");

function QWidget_isEnabled(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isEnabled,"QWidget_isEnabled");

function QWidget_isEnabledTo(handle: not null  QWidgetH; p1: QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isEnabledTo,"QWidget_isEnabledTo");

function QWidget_isEnabledToTLW(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isEnabledToTLW,"QWidget_isEnabledToTLW");

procedure QWidget_setEnabled(handle: not null  QWidgetH; p1: Boolean);   
pragma Import(C,QWidget_setEnabled,"QWidget_setEnabled");

procedure QWidget_setDisabled(handle: not null  QWidgetH; p1: Boolean);   
pragma Import(C,QWidget_setDisabled,"QWidget_setDisabled");

procedure QWidget_setWindowModified(handle: not null  QWidgetH; p1: Boolean);   
pragma Import(C,QWidget_setWindowModified,"QWidget_setWindowModified");

function  QWidget_frameGeometry(handle: not null  QWidgetH) return QRectH;
pragma Import(C,QWidget_frameGeometry,"QWidget_frameGeometry");

function  QWidget_geometry(handle: not null  QWidgetH) return QRectH;
pragma Import(C,QWidget_geometry,"QWidget_geometry");

function  QWidget_normalGeometry(handle: not null  QWidgetH) return QRectH;
pragma Import(C,QWidget_normalGeometry,"QWidget_normalGeometry");

function QWidget_x(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_x,"QWidget_x");

function QWidget_y(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_y,"QWidget_y");

function  QWidget_pos(handle: not null  QWidgetH) return QPointH;
pragma Import(C,QWidget_pos,"QWidget_pos");

function  QWidget_frameSize(handle: not null  QWidgetH) return QSizeH;
pragma Import(C,QWidget_frameSize,"QWidget_frameSize");

function  QWidget_size(handle: not null  QWidgetH) return QSizeH;
pragma Import(C,QWidget_size,"QWidget_size");

function QWidget_width(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_width,"QWidget_width");

function QWidget_height(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_height,"QWidget_height");

function  QWidget_rect(handle: not null  QWidgetH) return QRectH;
pragma Import(C,QWidget_rect,"QWidget_rect");

function  QWidget_childrenRect(handle: not null  QWidgetH) return QRectH;
pragma Import(C,QWidget_childrenRect,"QWidget_childrenRect");

function  QWidget_childrenRegion(handle: not null  QWidgetH) return QRegionH;
pragma Import(C,QWidget_childrenRegion,"QWidget_childrenRegion");

function  QWidget_minimumSize(handle: not null  QWidgetH) return QSizeH;
pragma Import(C,QWidget_minimumSize,"QWidget_minimumSize");

function  QWidget_maximumSize(handle: not null  QWidgetH) return QSizeH;
pragma Import(C,QWidget_maximumSize,"QWidget_maximumSize");

function QWidget_minimumWidth(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_minimumWidth,"QWidget_minimumWidth");

function QWidget_minimumHeight(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_minimumHeight,"QWidget_minimumHeight");

function QWidget_maximumWidth(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_maximumWidth,"QWidget_maximumWidth");

function QWidget_maximumHeight(handle: not null  QWidgetH) return  Integer;   
pragma Import(C,QWidget_maximumHeight,"QWidget_maximumHeight");

procedure QWidget_setMinimumSize(handle: not null  QWidgetH; p1: QSizeH);    
pragma Import(C,QWidget_setMinimumSize,"QWidget_setMinimumSize");

procedure QWidget_setMinimumSize2(handle: not null  QWidgetH; minw: Integer; minh: Integer);
pragma Import(C,QWidget_setMinimumSize2,"QWidget_setMinimumSize2");

procedure QWidget_setMaximumSize(handle: not null  QWidgetH; p1: QSizeH);    
pragma Import(C,QWidget_setMaximumSize,"QWidget_setMaximumSize");

procedure QWidget_setMaximumSize2(handle: not null  QWidgetH; maxw: Integer; maxh: Integer);
pragma Import(C,QWidget_setMaximumSize2,"QWidget_setMaximumSize2");

procedure QWidget_setMinimumWidth(handle: not null  QWidgetH; minw: Integer);   
pragma Import(C,QWidget_setMinimumWidth,"QWidget_setMinimumWidth");

procedure QWidget_setMinimumHeight(handle: not null  QWidgetH; minh: Integer);   
pragma Import(C,QWidget_setMinimumHeight,"QWidget_setMinimumHeight");

procedure QWidget_setMaximumWidth(handle: not null  QWidgetH; maxw: Integer);   
pragma Import(C,QWidget_setMaximumWidth,"QWidget_setMaximumWidth");

procedure QWidget_setMaximumHeight(handle: not null  QWidgetH; maxh: Integer);   
pragma Import(C,QWidget_setMaximumHeight,"QWidget_setMaximumHeight");

function  QWidget_sizeIncrement(handle: not null  QWidgetH) return QSizeH;
pragma Import(C,QWidget_sizeIncrement,"QWidget_sizeIncrement");

procedure QWidget_setSizeIncrement(handle: not null  QWidgetH; p1: QSizeH);    
pragma Import(C,QWidget_setSizeIncrement,"QWidget_setSizeIncrement");

procedure QWidget_setSizeIncrement2(handle: not null  QWidgetH; w: Integer; h: Integer);
pragma Import(C,QWidget_setSizeIncrement2,"QWidget_setSizeIncrement2");

function  QWidget_baseSize(handle: not null  QWidgetH) return QSizeH;
pragma Import(C,QWidget_baseSize,"QWidget_baseSize");

procedure QWidget_setBaseSize(handle: not null  QWidgetH; p1: QSizeH);    
pragma Import(C,QWidget_setBaseSize,"QWidget_setBaseSize");

procedure QWidget_setBaseSize2(handle: not null  QWidgetH; basew: Integer; baseh: Integer);
pragma Import(C,QWidget_setBaseSize2,"QWidget_setBaseSize2");

procedure QWidget_setFixedSize(handle: not null  QWidgetH; p1: QSizeH);    
pragma Import(C,QWidget_setFixedSize,"QWidget_setFixedSize");

procedure QWidget_setFixedSize2(handle: not null  QWidgetH; w: Integer; h: Integer);
pragma Import(C,QWidget_setFixedSize2,"QWidget_setFixedSize2");

procedure QWidget_setFixedWidth(handle: not null  QWidgetH; w: Integer);   
pragma Import(C,QWidget_setFixedWidth,"QWidget_setFixedWidth");

procedure QWidget_setFixedHeight(handle: not null  QWidgetH; h: Integer);   
pragma Import(C,QWidget_setFixedHeight,"QWidget_setFixedHeight");

function  QWidget_mapToGlobal(handle: not null  QWidgetH; p1: QPointH) return QPointH;
pragma Import(C,QWidget_mapToGlobal,"QWidget_mapToGlobal");

function  QWidget_mapFromGlobal(handle: not null  QWidgetH; p1: QPointH) return QPointH;
pragma Import(C,QWidget_mapFromGlobal,"QWidget_mapFromGlobal");

function  QWidget_mapToParent(handle: not null  QWidgetH; p1: QPointH) return QPointH;
pragma Import(C,QWidget_mapToParent,"QWidget_mapToParent");

function  QWidget_mapFromParent(handle: not null  QWidgetH; p1: QPointH) return QPointH;
pragma Import(C,QWidget_mapFromParent,"QWidget_mapFromParent");

function  QWidget_mapTo(handle: not null  QWidgetH; p1: QWidgetH; p2: QPointH) return QPointH;
pragma Import(C,QWidget_mapTo,"QWidget_mapTo");

function  QWidget_mapFrom(handle: not null  QWidgetH; p1: QWidgetH; p2: QPointH) return QPointH;
pragma Import(C,QWidget_mapFrom,"QWidget_mapFrom");

function QWidget_window(handle: not null  QWidgetH) return  QWidgetH;   
pragma Import(C,QWidget_window,"QWidget_window");

function QWidget_topLevelWidget(handle: not null  QWidgetH) return  QWidgetH;   
pragma Import(C,QWidget_topLevelWidget,"QWidget_topLevelWidget");

function QWidget_palette(handle: not null  QWidgetH) return  QPaletteH;   
pragma Import(C,QWidget_palette,"QWidget_palette");

procedure QWidget_setPalette(handle: not null  QWidgetH; p1: QPaletteH);   
pragma Import(C,QWidget_setPalette,"QWidget_setPalette");

procedure QWidget_setBackgroundRole(handle: not null  QWidgetH; p1: QPaletteColorRole);   
pragma Import(C,QWidget_setBackgroundRole,"QWidget_setBackgroundRole");

function QWidget_backgroundRole(handle: not null  QWidgetH) return  QPaletteColorRole;   
pragma Import(C,QWidget_backgroundRole,"QWidget_backgroundRole");

procedure QWidget_setForegroundRole(handle: not null  QWidgetH; p1: QPaletteColorRole);   
pragma Import(C,QWidget_setForegroundRole,"QWidget_setForegroundRole");

function QWidget_foregroundRole(handle: not null  QWidgetH) return  QPaletteColorRole;   
pragma Import(C,QWidget_foregroundRole,"QWidget_foregroundRole");

function QWidget_font(handle: not null  QWidgetH) return  QFontH;   
pragma Import(C,QWidget_font,"QWidget_font");

procedure QWidget_setFont(handle: not null  QWidgetH; p1: QFontH);   
pragma Import(C,QWidget_setFont,"QWidget_setFont");

function  QWidget_fontMetrics(handle: not null  QWidgetH) return QFontMetricsH;
pragma Import(C,QWidget_fontMetrics,"QWidget_fontMetrics");

function  QWidget_fontInfo(handle: not null  QWidgetH) return QFontInfoH;
pragma Import(C,QWidget_fontInfo,"QWidget_fontInfo");

function  QWidget_cursor(handle: not null  QWidgetH) return QCursorH;
pragma Import(C,QWidget_cursor,"QWidget_cursor");

procedure QWidget_setCursor(handle: not null  QWidgetH; p1: QCursorH);   
pragma Import(C,QWidget_setCursor,"QWidget_setCursor");

procedure QWidget_unsetCursor(handle: not null  QWidgetH);   
pragma Import(C,QWidget_unsetCursor,"QWidget_unsetCursor");

procedure QWidget_setMouseTracking(handle: not null  QWidgetH; enable: Boolean);   
pragma Import(C,QWidget_setMouseTracking,"QWidget_setMouseTracking");

function QWidget_hasMouseTracking(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_hasMouseTracking,"QWidget_hasMouseTracking");

function QWidget_underMouse(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_underMouse,"QWidget_underMouse");

procedure QWidget_setMask(handle: not null  QWidgetH; p1: QBitmapH);    
pragma Import(C,QWidget_setMask,"QWidget_setMask");

procedure QWidget_setMask2(handle: not null  QWidgetH; p1: QRegionH);
pragma Import(C,QWidget_setMask2,"QWidget_setMask2");

function  QWidget_mask(handle: not null  QWidgetH) return QRegionH;
pragma Import(C,QWidget_mask,"QWidget_mask");

procedure QWidget_clearMask(handle: not null  QWidgetH);   
pragma Import(C,QWidget_clearMask,"QWidget_clearMask");

procedure QWidget_render(handle: not null  QWidgetH; target: QPaintDeviceH; targetOffset: QPointH := QPoint_create; sourceRegion: QRegionH := QRegion_create; renderFlags: QWidgetRenderFlags := QWidgetDrawWindowBackground + QWidgetDrawChildren);   
pragma Import(C,QWidget_render,"QWidget_render");

procedure QWidget_render2(handle: not null  QWidgetH; target: QPainterH; targetOffset: QPointH := QPoint_create; sourceRegion: QRegionH := QRegion_create; renderFlags: QWidgetRenderFlags := QWidgetDrawWindowBackground + QWidgetDrawChildren);   
pragma Import(C,QWidget_render2,"QWidget_render2");

procedure QWidget_render3(handle: not null  QWidgetH; target: QPrinterH);   
pragma Import(C,QWidget_render3,"QWidget_render3");

procedure QWidget_render4(handle: not null  QWidgetH; target: QPainterH);   
pragma Import(C,QWidget_render4,"QWidget_render4");

procedure QWidget_setWindowTitle(handle: not null  QWidgetH; p1: QStringH);   
pragma Import(C,QWidget_setWindowTitle,"QWidget_setWindowTitle");

procedure QWidget_setStyleSheet(handle: not null  QWidgetH; styleSheet: QStringH);   
pragma Import(C,QWidget_setStyleSheet,"QWidget_setStyleSheet");

function  QWidget_styleSheet(handle: not null  QWidgetH) return QStringH;
pragma Import(C,QWidget_styleSheet,"QWidget_styleSheet");

function  QWidget_windowTitle(handle: not null  QWidgetH) return QStringH;
pragma Import(C,QWidget_windowTitle,"QWidget_windowTitle");

procedure QWidget_setWindowIcon(handle: not null  QWidgetH; icon: QIconH);   
pragma Import(C,QWidget_setWindowIcon,"QWidget_setWindowIcon");

function  QWidget_windowIcon(handle: not null  QWidgetH) return QIconH;
pragma Import(C,QWidget_windowIcon,"QWidget_windowIcon");

procedure QWidget_setWindowIconText(handle: not null  QWidgetH; p1: QStringH);   
pragma Import(C,QWidget_setWindowIconText,"QWidget_setWindowIconText");

function  QWidget_windowIconText(handle: not null  QWidgetH) return  QStringH;
pragma Import(C,QWidget_windowIconText,"QWidget_windowIconText");

procedure QWidget_setWindowRole(handle: not null  QWidgetH; p1: QStringH);   
pragma Import(C,QWidget_setWindowRole,"QWidget_setWindowRole");

function  QWidget_windowRole(handle: not null  QWidgetH) return QStringH;
pragma Import(C,QWidget_windowRole,"QWidget_windowRole");

procedure QWidget_setWindowOpacity(handle: not null  QWidgetH; level: Double);   
pragma Import(C,QWidget_setWindowOpacity,"QWidget_setWindowOpacity");

function QWidget_windowOpacity(handle: not null  QWidgetH) return  Double;   
pragma Import(C,QWidget_windowOpacity,"QWidget_windowOpacity");

function QWidget_isWindowModified(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isWindowModified,"QWidget_isWindowModified");

procedure QWidget_setToolTip(handle: not null  QWidgetH; p1: QStringH);   
pragma Import(C,QWidget_setToolTip,"QWidget_setToolTip");

function  QWidget_toolTip(handle: not null  QWidgetH) return QStringH;
pragma Import(C,QWidget_toolTip,"QWidget_toolTip");

procedure QWidget_setStatusTip(handle: not null  QWidgetH; p1: QStringH);   
pragma Import(C,QWidget_setStatusTip,"QWidget_setStatusTip");

function  QWidget_statusTip(handle: not null  QWidgetH) return QStringH;
pragma Import(C,QWidget_statusTip,"QWidget_statusTip");

procedure QWidget_setWhatsThis(handle: not null  QWidgetH; p1: QStringH);   
pragma Import(C,QWidget_setWhatsThis,"QWidget_setWhatsThis");

function  QWidget_whatsThis(handle: not null  QWidgetH) return QStringH;
pragma Import(C,QWidget_whatsThis,"QWidget_whatsThis");

-- function  QWidget_accessibleName(handle: not null  QWidgetH) return QStringH;
-- pragma Import(C,QWidget_accessibleName,"QWidget_accessibleName");

-- procedure QWidget_setAccessibleName(handle: not null  QWidgetH; name: QStringH);   
-- pragma Import(C,QWidget_setAccessibleName,"QWidget_setAccessibleName");

-- function  QWidget_accessibleDescription(handle: not null  QWidgetH) return QStringH;
-- pragma Import(C,QWidget_accessibleDescription,"QWidget_accessibleDescription");

-- procedure QWidget_setAccessibleDescription(handle: not null  QWidgetH; description: QStringH);   
-- pragma Import(C,QWidget_setAccessibleDescription,"QWidget_setAccessibleDescription");

procedure QWidget_setLayoutDirection(handle: not null  QWidgetH; direction: QtLayoutDirection);   
pragma Import(C,QWidget_setLayoutDirection,"QWidget_setLayoutDirection");

function QWidget_layoutDirection(handle: not null  QWidgetH) return  QtLayoutDirection;   
pragma Import(C,QWidget_layoutDirection,"QWidget_layoutDirection");

procedure QWidget_unsetLayoutDirection(handle: not null  QWidgetH);   
pragma Import(C,QWidget_unsetLayoutDirection,"QWidget_unsetLayoutDirection");

procedure QWidget_setLocale(handle: not null  QWidgetH; locale: QLocaleH);   
pragma Import(C,QWidget_setLocale,"QWidget_setLocale");

function  QWidget_locale(handle: not null  QWidgetH) return QLocaleH;
pragma Import(C,QWidget_locale,"QWidget_locale");

procedure QWidget_unsetLocale(handle: not null  QWidgetH);   
pragma Import(C,QWidget_unsetLocale,"QWidget_unsetLocale");

function QWidget_isRightToLeft(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isRightToLeft,"QWidget_isRightToLeft");

function QWidget_isLeftToRight(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isLeftToRight,"QWidget_isLeftToRight");

procedure QWidget_setFocus(handle: not null  QWidgetH);    
pragma Import(C,QWidget_setFocus,"QWidget_setFocus");

function QWidget_isActiveWindow(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isActiveWindow,"QWidget_isActiveWindow");

procedure QWidget_activateWindow(handle: not null  QWidgetH);   
pragma Import(C,QWidget_activateWindow,"QWidget_activateWindow");

procedure QWidget_clearFocus(handle: not null  QWidgetH);   
pragma Import(C,QWidget_clearFocus,"QWidget_clearFocus");

procedure QWidget_setFocus2(handle: not null  QWidgetH; reason: QtFocusReason);
pragma Import(C,QWidget_setFocus2,"QWidget_setFocus2");

function QWidget_focusPolicy(handle: not null  QWidgetH) return  QtFocusPolicy;   
pragma Import(C,QWidget_focusPolicy,"QWidget_focusPolicy");

procedure QWidget_setFocusPolicy(handle: not null  QWidgetH; policy: QtFocusPolicy);   
pragma Import(C,QWidget_setFocusPolicy,"QWidget_setFocusPolicy");

function QWidget_hasFocus(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_hasFocus,"QWidget_hasFocus");

procedure QWidget_setTabOrder(p1: QWidgetH; p2: QWidgetH);   
pragma Import(C,QWidget_setTabOrder,"QWidget_setTabOrder");

procedure QWidget_setFocusProxy(handle: not null  QWidgetH; p1: QWidgetH);   
pragma Import(C,QWidget_setFocusProxy,"QWidget_setFocusProxy");

function QWidget_focusProxy(handle: not null  QWidgetH) return  QWidgetH;   
pragma Import(C,QWidget_focusProxy,"QWidget_focusProxy");

function QWidget_contextMenuPolicy(handle: not null  QWidgetH) return  QtContextMenuPolicy;   
pragma Import(C,QWidget_contextMenuPolicy,"QWidget_contextMenuPolicy");

procedure QWidget_setContextMenuPolicy(handle: not null  QWidgetH; policy: QtContextMenuPolicy);   
pragma Import(C,QWidget_setContextMenuPolicy,"QWidget_setContextMenuPolicy");

procedure QWidget_grabMouse(handle: not null  QWidgetH);    
pragma Import(C,QWidget_grabMouse,"QWidget_grabMouse");

procedure QWidget_grabMouse2(handle: not null  QWidgetH; p1: QCursorH);
pragma Import(C,QWidget_grabMouse2,"QWidget_grabMouse2");

procedure QWidget_releaseMouse(handle: not null  QWidgetH);   
pragma Import(C,QWidget_releaseMouse,"QWidget_releaseMouse");

procedure QWidget_grabKeyboard(handle: not null  QWidgetH);   
pragma Import(C,QWidget_grabKeyboard,"QWidget_grabKeyboard");

procedure QWidget_releaseKeyboard(handle: not null  QWidgetH);   
pragma Import(C,QWidget_releaseKeyboard,"QWidget_releaseKeyboard");

function QWidget_grabShortcut(handle: not null  QWidgetH; key: QKeySequenceH; context: QtShortcutContext := QtWindowShortcut) return Integer;   
pragma Import(C,QWidget_grabShortcut,"QWidget_grabShortcut");

procedure QWidget_releaseShortcut(handle: not null  QWidgetH; id: Integer);   
pragma Import(C,QWidget_releaseShortcut,"QWidget_releaseShortcut");

procedure QWidget_setShortcutEnabled(handle: not null  QWidgetH; id: Integer; enable: Boolean := True);   
pragma Import(C,QWidget_setShortcutEnabled,"QWidget_setShortcutEnabled");

procedure QWidget_setShortcutAutoRepeat(handle: not null  QWidgetH; id: Integer; enable: Boolean := True);   
pragma Import(C,QWidget_setShortcutAutoRepeat,"QWidget_setShortcutAutoRepeat");

function QWidget_mouseGrabber return  QWidgetH;   
pragma Import(C,QWidget_mouseGrabber,"QWidget_mouseGrabber");

function QWidget_keyboardGrabber return  QWidgetH;   
pragma Import(C,QWidget_keyboardGrabber,"QWidget_keyboardGrabber");

function QWidget_updatesEnabled(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_updatesEnabled,"QWidget_updatesEnabled");

procedure QWidget_setUpdatesEnabled(handle: not null  QWidgetH; enable: Boolean);   
pragma Import(C,QWidget_setUpdatesEnabled,"QWidget_setUpdatesEnabled");

procedure QWidget_update(handle: not null  QWidgetH);    
pragma Import(C,QWidget_update,"QWidget_update");

procedure QWidget_repaint(handle: not null  QWidgetH);    
pragma Import(C,QWidget_repaint,"QWidget_repaint");

procedure QWidget_update2(handle: not null  QWidgetH; x: Integer; y: Integer; w: Integer; h: Integer);
pragma Import(C,QWidget_update2,"QWidget_update2");

procedure QWidget_update3(handle: not null  QWidgetH; p1: QRectH);
pragma Import(C,QWidget_update3,"QWidget_update3");

procedure QWidget_update4(handle: not null  QWidgetH; p1: QRegionH);
pragma Import(C,QWidget_update4,"QWidget_update4");

procedure QWidget_repaint2(handle: not null  QWidgetH; x: Integer; y: Integer; w: Integer; h: Integer);
pragma Import(C,QWidget_repaint2,"QWidget_repaint2");

procedure QWidget_repaint3(handle: not null  QWidgetH; p1: QRectH);
pragma Import(C,QWidget_repaint3,"QWidget_repaint3");

procedure QWidget_repaint4(handle: not null  QWidgetH; p1: QRegionH);
pragma Import(C,QWidget_repaint4,"QWidget_repaint4");

procedure QWidget_setVisible(handle: not null  QWidgetH; visible: Boolean);   
pragma Import(C,QWidget_setVisible,"QWidget_setVisible");

procedure QWidget_setHidden(handle: not null  QWidgetH; hidden: Boolean);   
pragma Import(C,QWidget_setHidden,"QWidget_setHidden");

procedure QWidget_show(handle: not null  QWidgetH);   
pragma Import(C,QWidget_show,"QWidget_show");

procedure QWidget_hide(handle: not null  QWidgetH);   
pragma Import(C,QWidget_hide,"QWidget_hide");

--procedure QWidget_setShown(handle: not null  QWidgetH; shown: Boolean);   
--pragma Import(C,QWidget_setShown,"QWidget_setShown");

procedure QWidget_showMinimized(handle: not null  QWidgetH);   
pragma Import(C,QWidget_showMinimized,"QWidget_showMinimized");

procedure QWidget_showMaximized(handle: not null  QWidgetH);   
pragma Import(C,QWidget_showMaximized,"QWidget_showMaximized");

procedure QWidget_showFullScreen(handle: not null  QWidgetH);   
pragma Import(C,QWidget_showFullScreen,"QWidget_showFullScreen");

procedure QWidget_showNormal(handle: not null  QWidgetH);   
pragma Import(C,QWidget_showNormal,"QWidget_showNormal");

function QWidget_close(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_close,"QWidget_close");

procedure QWidget_raise(handle: not null  QWidgetH);   
pragma Import(C,QWidget_raise,"QWidget_raise");

procedure QWidget_lower(handle: not null  QWidgetH);   
pragma Import(C,QWidget_lower,"QWidget_lower");

procedure QWidget_stackUnder(handle: not null  QWidgetH; p1: QWidgetH);   
pragma Import(C,QWidget_stackUnder,"QWidget_stackUnder");

procedure QWidget_move(handle: not null  QWidgetH; x: Integer; y: Integer);    
pragma Import(C,QWidget_move,"QWidget_move");

procedure QWidget_move2(handle: not null  QWidgetH; p1: QPointH);
pragma Import(C,QWidget_move2,"QWidget_move2");

procedure QWidget_resize(handle: not null  QWidgetH; w: Integer; h: Integer);    
pragma Import(C,QWidget_resize,"QWidget_resize");

procedure QWidget_resize2(handle: not null  QWidgetH; p1: QSizeH);
pragma Import(C,QWidget_resize2,"QWidget_resize2");

procedure QWidget_setGeometry(handle: not null  QWidgetH; x: Integer; y: Integer; w: Integer; h: Integer);    
pragma Import(C,QWidget_setGeometry,"QWidget_setGeometry");

procedure QWidget_setGeometry2(handle: not null  QWidgetH; p1: QRectH);
pragma Import(C,QWidget_setGeometry2,"QWidget_setGeometry2");

function  QWidget_saveGeometry(handle: not null  QWidgetH) return QByteArrayH;
pragma Import(C,QWidget_saveGeometry,"QWidget_saveGeometry");

function QWidget_restoreGeometry(handle: not null  QWidgetH; geometry: QByteArrayH) return  Boolean;   
pragma Import(C,QWidget_restoreGeometry,"QWidget_restoreGeometry");

procedure QWidget_adjustSize(handle: not null  QWidgetH);   
pragma Import(C,QWidget_adjustSize,"QWidget_adjustSize");

function QWidget_isVisible(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isVisible,"QWidget_isVisible");

function QWidget_isVisibleTo(handle: not null  QWidgetH; p1: QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isVisibleTo,"QWidget_isVisibleTo");

function QWidget_isHidden(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isHidden,"QWidget_isHidden");

function QWidget_isMinimized(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isMinimized,"QWidget_isMinimized");

function QWidget_isMaximized(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isMaximized,"QWidget_isMaximized");

function QWidget_isFullScreen(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isFullScreen,"QWidget_isFullScreen");

function QWidget_windowState(handle: not null  QWidgetH) return  QtWindowStates;   
pragma Import(C,QWidget_windowState,"QWidget_windowState");

procedure QWidget_setWindowState(handle: not null  QWidgetH; state: QtWindowStates);   
pragma Import(C,QWidget_setWindowState,"QWidget_setWindowState");

procedure QWidget_overrideWindowState(handle: not null  QWidgetH; state: QtWindowStates);   
pragma Import(C,QWidget_overrideWindowState,"QWidget_overrideWindowState");

function  QWidget_sizeHint(handle: not null  QWidgetH) return QSizeH;
pragma Import(C,QWidget_sizeHint,"QWidget_sizeHint");

function  QWidget_minimumSizeHint(handle: not null  QWidgetH) return QSizeH;
pragma Import(C,QWidget_minimumSizeHint,"QWidget_minimumSizeHint");

function  QWidget_sizePolicy(handle: not null  QWidgetH) return QSizePolicyH;
pragma Import(C,QWidget_sizePolicy,"QWidget_sizePolicy");

procedure QWidget_setSizePolicy(handle: not null  QWidgetH; p1 : QSizePolicyH);
pragma Import(C,QWidget_setSizePolicy,"QWidget_setSizePolicy");

procedure QWidget_setSizePolicy2(handle: not null  QWidgetH; horizontal: integer; vertical: integer);
pragma Import(C,QWidget_setSizePolicy2,"QWidget_setSizePolicy2");

function QWidget_heightForWidth(handle: not null  QWidgetH; p1: Integer) return  Integer;   
pragma Import(C,QWidget_heightForWidth,"QWidget_heightForWidth");

function  QWidget_visibleRegion(handle: not null  QWidgetH) return QRegionH;
pragma Import(C,QWidget_visibleRegion,"QWidget_visibleRegion");

procedure QWidget_setContentsMargins(handle: not null  QWidgetH; left: Integer; top: Integer; right: Integer; bottom: Integer);   
pragma Import(C,QWidget_setContentsMargins,"QWidget_setContentsMargins");

procedure QWidget_getContentsMargins(handle: not null  QWidgetH; left: PInteger; top: PInteger; right: PInteger; bottom: PInteger);   
pragma Import(C,QWidget_getContentsMargins,"QWidget_getContentsMargins");

function  QWidget_contentsRect(handle: not null  QWidgetH) return QRectH;
pragma Import(C,QWidget_contentsRect,"QWidget_contentsRect");

function QWidget_layout(handle: not null  QWidgetH) return  QLayoutH;   
pragma Import(C,QWidget_layout,"QWidget_layout");

procedure QWidget_setLayout(handle: not null  QWidgetH; p1: QLayoutH);   
pragma Import(C,QWidget_setLayout,"QWidget_setLayout");

procedure QWidget_updateGeometry(handle: not null  QWidgetH);   
pragma Import(C,QWidget_updateGeometry,"QWidget_updateGeometry");

procedure QWidget_setParent(handle: not null  QWidgetH; parent: QWidgetH);    
pragma Import(C,QWidget_setParent,"QWidget_setParent");

procedure QWidget_setParent2(handle: not null  QWidgetH; parent: QWidgetH; f: QtWindowFlags);
pragma Import(C,QWidget_setParent2,"QWidget_setParent2");

procedure QWidget_scroll(handle: not null  QWidgetH; dx: Integer; dy: Integer);    
pragma Import(C,QWidget_scroll,"QWidget_scroll");

procedure QWidget_scroll2(handle: not null  QWidgetH; dx: Integer; dy: Integer; p3: QRectH);
pragma Import(C,QWidget_scroll2,"QWidget_scroll2");

function QWidget_focusWidget(handle: not null  QWidgetH) return  QWidgetH;   
pragma Import(C,QWidget_focusWidget,"QWidget_focusWidget");

function QWidget_nextInFocusChain(handle: not null  QWidgetH) return  QWidgetH;   
pragma Import(C,QWidget_nextInFocusChain,"QWidget_nextInFocusChain");

function QWidget_acceptDrops(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_acceptDrops,"QWidget_acceptDrops");

procedure QWidget_setAcceptDrops(handle: not null  QWidgetH; on: Boolean);   
pragma Import(C,QWidget_setAcceptDrops,"QWidget_setAcceptDrops");

procedure QWidget_addAction(handle: not null  QWidgetH; action: QActionH);   
pragma Import(C,QWidget_addAction,"QWidget_addAction");

procedure QWidget_addActions(handle: not null  QWidgetH; actions: QObjectListH);   
pragma Import(C,QWidget_addActions,"QWidget_addActions");

procedure QWidget_insertAction(handle: not null  QWidgetH; before: QActionH; action: QActionH);   
pragma Import(C,QWidget_insertAction,"QWidget_insertAction");

procedure QWidget_insertActions(handle: not null  QWidgetH; before: QActionH; actions: QObjectListH);   
pragma Import(C,QWidget_insertActions,"QWidget_insertActions");

procedure QWidget_removeAction(handle: not null  QWidgetH; action: QActionH);   
pragma Import(C,QWidget_removeAction,"QWidget_removeAction");

function  QWidget_actions(handle: not null  QWidgetH) return QObjectListH;
pragma Import(C,QWidget_actions,"QWidget_actions");

function QWidget_parentWidget(handle: not null  QWidgetH) return  QWidgetH;   
pragma Import(C,QWidget_parentWidget,"QWidget_parentWidget");

procedure QWidget_setWindowFlags(handle: not null  QWidgetH; qtype: QtWindowFlags);   
pragma Import(C,QWidget_setWindowFlags,"QWidget_setWindowFlags");

function QWidget_windowFlags(handle: not null  QWidgetH) return  QtWindowFlags;   
pragma Import(C,QWidget_windowFlags,"QWidget_windowFlags");

procedure QWidget_overrideWindowFlags(handle: not null  QWidgetH; qtype: QtWindowFlags);   
pragma Import(C,QWidget_overrideWindowFlags,"QWidget_overrideWindowFlags");

function QWidget_windowType(handle: not null  QWidgetH) return  QtWindowType;   
pragma Import(C,QWidget_windowType,"QWidget_windowType");

function QWidget_find(p1: LongWord) return  QWidgetH;   
pragma Import(C,QWidget_find,"QWidget_find");

function QWidget_childAt(handle: not null  QWidgetH; x: Integer; y: Integer) return  QWidgetH;    
pragma Import(C,QWidget_childAt,"QWidget_childAt");

function QWidget_childAt2(handle: not null  QWidgetH; p: QPointH) return  QWidgetH;
pragma Import(C,QWidget_childAt2,"QWidget_childAt2");


procedure QWidget_setAttribute(handle: not null  QWidgetH; p1: QtWidgetAttribute; on: Boolean := True);   
pragma Import(C,QWidget_setAttribute,"QWidget_setAttribute");

function QWidget_testAttribute(handle: not null  QWidgetH; p1: QtWidgetAttribute) return  Boolean;   
pragma Import(C,QWidget_testAttribute,"QWidget_testAttribute");

function QWidget_paintEngine(handle: not null  QWidgetH) return  QPaintEngineH;   
pragma Import(C,QWidget_paintEngine,"QWidget_paintEngine");

procedure QWidget_ensurePolished(handle: not null  QWidgetH);   
pragma Import(C,QWidget_ensurePolished,"QWidget_ensurePolished");

--function QWidget_inputContext(handle: not null  QWidgetH) return  QInputContextH;   
--pragma Import(C,QWidget_inputContext,"QWidget_inputContext");

--procedure QWidget_setInputContext(handle: not null  QWidgetH; p1: QInputContextH);   
--pragma Import(C,QWidget_setInputContext,"QWidget_setInputContext");

function QWidget_isAncestorOf(handle: not null  QWidgetH; child: QWidgetH) return  Boolean;   
pragma Import(C,QWidget_isAncestorOf,"QWidget_isAncestorOf");

function QWidget_autoFillBackground(handle: not null  QWidgetH) return  Boolean;   
pragma Import(C,QWidget_autoFillBackground,"QWidget_autoFillBackground");

procedure QWidget_setAutoFillBackground(handle: not null  QWidgetH; enabled: Boolean);   
pragma Import(C,QWidget_setAutoFillBackground,"QWidget_setAutoFillBackground");

function  QWidget_inputMethodQuery(handle: not null  QWidgetH; p1: QtInputMethodQuery) return QVariantH;
pragma Import(C,QWidget_inputMethodQuery,"QWidget_inputMethodQuery");

function QWidget_to_QPaintDevice(handle: not null  QWidgetH) return  QPaintDeviceH;   
pragma Import(C,QWidget_to_QPaintDevice,"QWidget_to_QPaintDevice");

type  QWidget_customContextMenuRequested_Event is access procedure (pos: QPointH);

function QWidget_isPopup(widget:QWidgetH) return integer;
pragma Import(C,QWidget_isPopup, "QWidget_isPopup");

function QWidget_isDesktop(widget:QWidgetH) return integer;
pragma Import(C,QWidget_isDesktop, "QWidget_isDesktop");

function QWidget_backgroundMode(widget:QWidgetH) return integer;
pragma Import(C,QWidget_backgroundMode, "QWidget_backgroundMode");

function QWidget_backgroundColor(widget:QWidgetH) return QColorH;
pragma Import(C,QWidget_backgroundColor, "QWidget_backgroundColor");

function QWidget_foregroundColor(widget:QWidgetH) return QColorH;
pragma Import(C,QWidget_foregroundColor, "QWidget_foregroundColor");

--procedure QWidget_setBackgroundColor(widget:QWidgetH; color : QColorH);
--pragma Import(C,QWidget_setBackgroundColor, "QWidget_setBackgroundColor");


function QWidget_caption(widget:QWidgetH) return QStringH;
pragma Import(C,QWidget_caption, "QWidget_caption");

procedure QWidget_setCaption(widget:QWidgetH; caption : QStringH);
pragma Import(C,QWidget_setCaption, "QWidget_setCaption");

function QWidget_icon(widget:QWidgetH) return QPixmapH;
pragma Import(C,QWidget_icon, "QWidget_icon");

procedure QWidget_setIcon(widget:QWidgetH; icon : QPixmapH);
pragma Import(C,QWidget_setIcon, "QWidget_setIcon");

procedure QWidget_setIconText(widget:QWidgetH; text : QStringH);
pragma Import(C,QWidget_setIconText, "QWidget_setIconText"); 

procedure QWidget_setActiveWindow(widget:QWidgetH);
pragma Import(C,QWidget_setActiveWindow, "QWidget_setActiveWindow");

function QWidget_isVisibleToTLW(widget:QWidgetH) return integer;
pragma Import(C,QWidget_isVisibleToTLW, "QWidget_isVisibleToTLW");

procedure QWidget_erase(widget:QWidgetH);
pragma Import(C,QWidget_erase, "QWidget_erase");


 procedure QWidget_setWindowFilePath(handle:QWidgetH; filePath: not null QStringH);
 pragma Import(C,QWidget_setWindowFilePath, "QWidget_setWindowFilePath");
 
 function  QWidget_windowFilePath(handle:QWidgetH) return  QStringH;
 pragma Import(C,QWidget_windowFilePath, "QWidget_windowFilePath");
 
 function  QWidget_windowHandle(handle:QWidgetH) return  QWindowH;
 pragma Import(C,QWidget_windowHandle, "QWidget_windowHandle");

 function  QWidget_event(handle: not null QWidgetH; e:QEventH) return boolean;
 pragma Import(C,QWidget_event, "QWidget_event");
 
 procedure QWidget_mousePressEvent(handle: not null QWidgetH; e:QMouseEventH);
 pragma Import(C,QWidget_mousePressEvent, "QWidget_mousePressEvent");
 
 procedure QWidget_mouseReleaseEvent(handle: not null QWidgetH; e:QMouseEventH);
 pragma Import(C,QWidget_mouseReleaseEvent, "QWidget_mouseReleaseEvent");
 
 procedure QWidget_mouseDoubleClickEvent(handle: not null QWidgetH; e:QMouseEventH);
 pragma Import(C,QWidget_mouseDoubleClickEvent, "QWidget_mouseDoubleClickEvent");
 
 procedure QWidget_mouseMoveEvent(handle: not null QWidgetH; e:QMouseEventH);
 pragma Import(C,QWidget_mouseMoveEvent, "QWidget_mouseMoveEvent");
 
 procedure QWidget_keyPressEvent(handle: not null QWidgetH; e:QKeyEventH);
 pragma Import(C,QWidget_keyPressEvent, "QWidget_keyPressEvent");
 
 procedure QWidget_keyReleaseEvent(handle: not null QWidgetH; e:QKeyEventH);
 pragma Import(C,QWidget_keyReleaseEvent, "QWidget_keyReleaseEvent");
 
 procedure QWidget_focusInEvent(handle: not null QWidgetH; e:QFocusEventH);
 pragma Import(C,QWidget_focusInEvent, "QWidget_focusInEvent");
 
 procedure QWidget_focusOutEvent(handle: not null QWidgetH; e:QFocusEventH);
 pragma Import(C,QWidget_focusOutEvent, "QWidget_focusOutEvent");
 
 procedure QWidget_enterEvent(handle: not null QWidgetH; e:QEventH);
 pragma Import(C,QWidget_enterEvent, "QWidget_enterEvent");
 
 procedure QWidget_leaveEvent(handle: not null QWidgetH; e:QEventH);
 pragma Import(C,QWidget_leaveEvent, "QWidget_leaveEvent");
 
 procedure QWidget_paintEvent(handle: not null QWidgetH; e:QPaintEventH);
 pragma Import(C,QWidget_paintEvent, "QWidget_paintEvent");
 
 procedure QWidget_moveEvent(handle: not null QWidgetH; e:QMoveEventH);
 pragma Import(C,QWidget_moveEvent, "QWidget_moveEvent");
 
 procedure QWidget_resizeEvent(handle: not null QWidgetH; e:QResizeEventH);
 pragma Import(C,QWidget_resizeEvent, "QWidget_resizeEvent");
 
 procedure QWidget_closeEvent(handle: not null QWidgetH; e:QCloseEventH);
 pragma Import(C,QWidget_closeEvent, "QWidget_closeEvent");
 
 procedure QWidget_showEvent(handle: not null QWidgetH; e:QShowEventH);
 pragma Import(C,QWidget_showEvent, "QWidget_showEvent");
 
 procedure QWidget_hideEvent(handle: not null QWidgetH; e:QHideEventH);
 pragma Import(C,QWidget_hideEvent, "QWidget_hideEvent");
 
 function  QWidget_nativeEvent(handle: not null QWidgetH; eventType:QByteArrayH;message:void_Star;result: out integer) return boolean;
 pragma Import(C,QWidget_nativeEvent, "QWidget_nativeEvent");
 
 procedure QWidget_inputMethodEvent(handle: not null QWidgetH; e:QInputMethodEventH);
 pragma Import(C,QWidget_inputMethodEvent, "QWidget_inputMethodEvent");

 procedure QWidget_setToolTipDuration(handle:not null QWidgetH;msec:integer);
 pragma Import(C,QWidget_setToolTipDuration, "QWidget_setToolTipDuration");
 
 function  QWidget_toolTipDuration(handle:not null QWidgetH) return integer;
 pragma Import(C,QWidget_toolTipDuration, "QWidget_toolTipDuration");
 
 function  QWidget_painter(handle:not null QWidgetH) return QPainterH ;
 pragma Import(C,QWidget_painter, "QWidget_painter");

 procedure  QWidget_setBackgroundPixmap(handle : not null QWidgetH; pixmap: QPixmapH);
 pragma Import(C,QWidget_setBackgroundPixmap,"QWidget_setBackgroundPixmap");

 type QWidget_customContextMenuRequestedEvent is access procedure(point:QPointH);
 pragma Convention(C,QWidget_customContextMenuRequestedEvent);

 procedure QWidget_signal_slot_customContextMenuRequested(handle: not null QWidgetH; hook: QWidget_customContextMenuRequestedEvent);
 pragma Import(C,QWidget_signal_slot_customContextMenuRequested, "QWidget_signal_slot_customContextMenuRequested");
 
----------------------    2019      ----------------------------------------------------------
 type QBackingStoreH is new QWidgetH;  

 function  QWidget_effectiveWinId(handle:not null QWidgetH) return integer;
 pragma Import(C,QWidget_effectiveWinId, "QWidget_effectiveWinId");
 
 function  QWidget_nativeParentWidget(handle:not null QWidgetH) return QWidgetH;
 pragma Import(C,QWidget_nativeParentWidget, "QWidget_nativeParentWidget");
 
 procedure QWidget_setTabletTracking(handle:not null QWidgetH;enable:boolean);
 pragma Import(C,QWidget_setTabletTracking, "QWidget_setTabletTracking");
 
 function  QWidget_hasTabletTracking(handle:not null QWidgetH) return boolean;
 pragma Import(C,QWidget_hasTabletTracking, "QWidget_hasTabletTracking");
 
 function  QWidget_grab(handle:not null QWidgetH;rectangle : QRectH := QRect_create(QPoint_create(0,0),QSize_create(-1,-1))) return QPixmapH;
 pragma Import(C,QWidget_grab, "QWidget_grab");
 
 function  QWidget_graphicsEffect(handle:not null QWidgetH) return QGraphicsEffectH;
 pragma Import(C,QWidget_graphicsEffect, "QWidget_graphicsEffect");
 
 procedure QWidget_setGraphicsEffect(handle:not null QWidgetH;effect:QGraphicsEffectH);
 pragma Import(C,QWidget_setGraphicsEffect, "QWidget_setGraphicsEffect");
 
 function  QWidget_graphicsProxyWidget(handle:not null QWidgetH) return QGraphicsProxyWidgetH;
 pragma Import(C,QWidget_graphicsProxyWidget, "QWidget_graphicsProxyWidget");
 
 function  QWidget_hasHeightForWidth(handle:not null QWidgetH) return boolean;
 pragma Import(C,QWidget_hasHeightForWidth, "QWidget_hasHeightForWidth");
 
 procedure QWidget_setContentsMargins2(handle:not null QWidgetH;margins: QMarginsH);
 pragma Import(C,QWidget_setContentsMargins2, "QWidget_setContentsMargins2");
 
 function  QWidget_contentsMargins2(handle:not null QWidgetH) return QMarginsH;
 pragma Import(C,QWidget_contentsMargins2, "QWidget_contentsMargins2");
 
 function  QWidget_previousInFocusChain(handle:not null QWidgetH) return QWidgetH;
 pragma Import(C,QWidget_previousInFocusChain, "QWidget_previousInFocusChain");
 
 procedure QWidget_setWindowFlag(handle:not null QWidgetH;tp:integer;on : boolean :=  true);
 pragma Import(C,QWidget_setWindowFlag, "QWidget_setWindowFlag");
 
 function  QWidget_backingStore(handle:not null QWidgetH) return QBackingStoreH;
 pragma Import(C,QWidget_backingStore, "QWidget_backingStore");
 
 function  QWidget_inputMethodHints(handle:not null QWidgetH) return Integer;             
 pragma Import(C,QWidget_inputMethodHints, "QWidget_inputMethodHints");
 
 procedure QWidget_setInputMethodHints(handle:not null QWidgetH;hints:Integer);
 pragma Import(C,QWidget_setInputMethodHints, "QWidget_setInputMethodHints");
 
----------------------------------------------------------------------------------------------
 function QWidget_create(painter:customPaintH;parent: QWidgetH := null; f: QtWindowFlags := 0) return QWidgetH;   
 procedure QWidget_setMinimumSize(handle: not null  QWidgetH; minw: Integer; minh: Integer);
 procedure QWidget_setMaximumSize(handle: not null  QWidgetH; maxw: Integer; maxh: Integer);
 procedure QWidget_setSizeIncrement(handle: not null  QWidgetH; w: Integer; h: Integer);
 procedure QWidget_setBaseSize(handle: not null  QWidgetH; basew: Integer; baseh: Integer);
 procedure QWidget_setFixedSize(handle: not null  QWidgetH; w: Integer; h: Integer);
 procedure QWidget_setMask(handle: not null  QWidgetH; p1: QRegionH);
 procedure QWidget_setFocus(handle: not null  QWidgetH; reason: QtFocusReason);
 procedure QWidget_grabMouse(handle: not null  QWidgetH; p1: QCursorH);
 procedure QWidget_update(handle: not null  QWidgetH; x: Integer; y: Integer; w: Integer; h: Integer);
 procedure QWidget_update(handle: not null  QWidgetH; p1: QRectH);
 procedure QWidget_update(handle: not null  QWidgetH; p1: QRegionH);
 procedure QWidget_repaint(handle: not null  QWidgetH; x: Integer; y: Integer; w: Integer; h: Integer);
 procedure QWidget_repaint(handle: not null  QWidgetH; p1: QRectH);
 procedure QWidget_repaint(handle: not null  QWidgetH; p1: QRegionH);
 procedure QWidget_move(handle: not null  QWidgetH; p1: QPointH);
 procedure QWidget_resize(handle: not null  QWidgetH; p1: QSizeH);
 procedure QWidget_setGeometry(handle: not null  QWidgetH; p1: QRectH);
 procedure QWidget_setSizePolicy(handle: not null  QWidgetH; horizontal: integer; vertical: integer);
 procedure QWidget_setParent(handle: not null  QWidgetH; parent: QWidgetH; f: QtWindowFlags);
 procedure QWidget_scroll(handle: not null  QWidgetH; dx: Integer; dy: Integer; p3: QRectH);
 function  QWidget_childAt(handle: not null  QWidgetH; p: QPointH) return  QWidgetH;

 procedure  QWidget_setColor(handle: not null  QWidgetH;foregroundColor,backgroundColor: QColorH); 
 procedure  QWidget_setBackgroundColor(handle: not null  QWidgetH;backgroundColor: QColorH); 
 procedure QWidget_render(handle: not null  QWidgetH; target: QPainterH; targetOffset: QPointH := QPoint_create; sourceRegion: QRegionH := QRegion_create; renderFlags: QWidgetRenderFlags := QWidgetDrawWindowBackground + QWidgetDrawChildren);   
 procedure QWidget_render(handle: not null  QWidgetH; target: QPrinterH);   

end Qt.QWidget;
