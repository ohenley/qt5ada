-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2016                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QWinExtras is

 function  QWinTaskbarButton_create(parent:QObjectH := null) return QToolButtonH;
 pragma Import(C,QWinTaskbarButton_create, "QWinTaskbarButton_create");
 
 procedure QWinTaskbarButton_destroy(handle:not null QToolButtonH);
 pragma Import(C,QWinTaskbarButton_destroy, "QWinTaskbarButton_destroy");
 
 procedure QWinTaskbarButton_setWindow(handle:not null QToolButtonH;window:QWindowH);
 pragma Import(C,QWinTaskbarButton_setWindow, "QWinTaskbarButton_setWindow");
 
 function  QWinTaskbarButton_window(handle:not null QToolButtonH) return QWindowH;
 pragma Import(C,QWinTaskbarButton_window, "QWinTaskbarButton_window");
 
 function  QWinTaskbarButton_overlayIcon(handle:not null QToolButtonH) return QIconH;
 pragma Import(C,QWinTaskbarButton_overlayIcon, "QWinTaskbarButton_overlayIcon");
 
 function  QWinTaskbarButton_overlayAccessibleDescription(handle:not null QToolButtonH) return QStringH;
 pragma Import(C,QWinTaskbarButton_overlayAccessibleDescription, "QWinTaskbarButton_overlayAccessibleDescription");
 
 function  QWinTaskbarButton_progress(handle:not null QToolButtonH) return QProgressBarH;
 pragma Import(C,QWinTaskbarButton_progress, "QWinTaskbarButton_progress");
 
 function  QWinTaskbarButton_eventFilter(handle:not null QToolButtonH;object:QObjectH;event: QEventH) return boolean;
 pragma Import(C,QWinTaskbarButton_eventFilter, "QWinTaskbarButton_eventFilter");
 
 procedure QWinTaskbarButton_setOverlayIcon(handle:not null QToolButtonH;icon: QIconH);
 pragma Import(C,QWinTaskbarButton_setOverlayIcon, "QWinTaskbarButton_setOverlayIcon");
 
 procedure QWinTaskbarButton_setOverlayAccessibleDescription(handle:not null QToolButtonH;description: QStringH);
 pragma Import(C,QWinTaskbarButton_setOverlayAccessibleDescription, "QWinTaskbarButton_setOverlayAccessibleDescription");
 
 procedure QWinTaskbarButton_clearOverlayIcon(handle:not null QToolButtonH);
 pragma Import(C,QWinTaskbarButton_clearOverlayIcon, "QWinTaskbarButton_clearOverlayIcon");
 
 ------------------------------------------------------------------------
 function  QWinTaskbarProgress_create(parent:QObjectH := null) return QProgressBarH;
 pragma Import(C,QWinTaskbarProgress_create, "QWinTaskbarProgress_create");
 
 procedure QWinTaskbarProgress_destroy(handle:not null QProgressBarH);
 pragma Import(C,QWinTaskbarProgress_destroy, "QWinTaskbarProgress_destroy");
 
 function  QWinTaskbarProgress_value(handle:not null QProgressBarH) return integer;
 pragma Import(C,QWinTaskbarProgress_value, "QWinTaskbarProgress_value");
 
 function  QWinTaskbarProgress_minimum(handle:not null QProgressBarH) return integer;
 pragma Import(C,QWinTaskbarProgress_minimum, "QWinTaskbarProgress_minimum");
 
 function  QWinTaskbarProgress_maximum(handle:not null QProgressBarH) return integer;
 pragma Import(C,QWinTaskbarProgress_maximum, "QWinTaskbarProgress_maximum");
 
 function  QWinTaskbarProgress_isVisible(handle:not null QProgressBarH) return boolean;
 pragma Import(C,QWinTaskbarProgress_isVisible, "QWinTaskbarProgress_isVisible");
 
 function  QWinTaskbarProgress_isPaused(handle:not null QProgressBarH) return boolean;
 pragma Import(C,QWinTaskbarProgress_isPaused, "QWinTaskbarProgress_isPaused");
 
 function  QWinTaskbarProgress_isStopped(handle:not null QProgressBarH) return boolean;
 pragma Import(C,QWinTaskbarProgress_isStopped, "QWinTaskbarProgress_isStopped");
 
 procedure QWinTaskbarProgress_setValue(handle:not null QProgressBarH;value:integer);
 pragma Import(C,QWinTaskbarProgress_setValue, "QWinTaskbarProgress_setValue");
 
 procedure QWinTaskbarProgress_setMinimum(handle:not null QProgressBarH;minimum:integer);
 pragma Import(C,QWinTaskbarProgress_setMinimum, "QWinTaskbarProgress_setMinimum");
 
 procedure QWinTaskbarProgress_setMaximum(handle:not null QProgressBarH;maximum:integer);
 pragma Import(C,QWinTaskbarProgress_setMaximum, "QWinTaskbarProgress_setMaximum");
 
 procedure QWinTaskbarProgress_setRange(handle:not null QProgressBarH;minimum:integer;maximum: integer);
 pragma Import(C,QWinTaskbarProgress_setRange, "QWinTaskbarProgress_setRange");
 
 procedure QWinTaskbarProgress_reset(handle:not null QProgressBarH);
 pragma Import(C,QWinTaskbarProgress_reset, "QWinTaskbarProgress_reset");
 
 procedure QWinTaskbarProgress_show(handle:not null QProgressBarH);
 pragma Import(C,QWinTaskbarProgress_show, "QWinTaskbarProgress_show");
 
 procedure QWinTaskbarProgress_hide(handle:not null QProgressBarH);
 pragma Import(C,QWinTaskbarProgress_hide, "QWinTaskbarProgress_hide");
 
 procedure QWinTaskbarProgress_setVisible(handle:not null QProgressBarH;visible:boolean);
 pragma Import(C,QWinTaskbarProgress_setVisible, "QWinTaskbarProgress_setVisible");
 
 procedure QWinTaskbarProgress_pause(handle:not null QProgressBarH);
 pragma Import(C,QWinTaskbarProgress_pause, "QWinTaskbarProgress_pause");
 
 procedure QWinTaskbarProgress_resume(handle:not null QProgressBarH);
 pragma Import(C,QWinTaskbarProgress_resume, "QWinTaskbarProgress_resume");
 
 procedure QWinTaskbarProgress_setPaused(handle:not null QProgressBarH;paused:boolean);
 pragma Import(C,QWinTaskbarProgress_setPaused, "QWinTaskbarProgress_setPaused");
 
 procedure QWinTaskbarProgress_stop(handle:not null QProgressBarH);
 pragma Import(C,QWinTaskbarProgress_stop, "QWinTaskbarProgress_stop");
 
 procedure QWinTaskbarProgress_signal_slot_valueChanged(handle:not null QProgressBarH;callback:intCallbackH);
 pragma Import(C,QWinTaskbarProgress_signal_slot_valueChanged, "QWinTaskbarProgress_signal_slot_valueChanged");
 
 procedure QWinTaskbarProgress_signal_slot_minimumChanged(handle:not null QProgressBarH;callback:intCallbackH);
 pragma Import(C,QWinTaskbarProgress_signal_slot_minimumChanged, "QWinTaskbarProgress_signal_slot_minimumChanged");
 
 procedure QWinTaskbarProgress_signal_slot_maximumChanged(handle:not null QProgressBarH;callback:intCallbackH);
 pragma Import(C,QWinTaskbarProgress_signal_slot_maximumChanged, "QWinTaskbarProgress_signal_slot_maximumChanged");
 
 procedure QWinTaskbarProgress_signal_slot_visibilityChanged(handle:not null QProgressBarH;callback:boolCallbackH);
 pragma Import(C,QWinTaskbarProgress_signal_slot_visibilityChanged, "QWinTaskbarProgress_signal_slot_visibilityChanged");
 
 procedure QWinTaskbarProgress_signal_slot_pausedChanged(handle:not null QProgressBarH;callback:boolCallbackH);
 pragma Import(C,QWinTaskbarProgress_signal_slot_pausedChanged, "QWinTaskbarProgress_signal_slot_pausedChanged");
 
 procedure QWinTaskbarProgress_signal_slot_stoppedChanged(handle:not null QProgressBarH;callback:boolCallbackH);
 pragma Import(C,QWinTaskbarProgress_signal_slot_stoppedChanged, "QWinTaskbarProgress_signal_slot_stoppedChanged");
 
 ------------------------------------------------------------------------
  function  QWinThumbnailToolBar_create(parent:QObjectH := null) return QToolBarH;
 pragma Import(C,QWinThumbnailToolBar_create, "QWinThumbnailToolBar_create");
 
 procedure QWinThumbnailToolBar_destroy(handle:not null QToolBarH);
 pragma Import(C,QWinThumbnailToolBar_destroy, "QWinThumbnailToolBar_destroy");
 
 procedure QWinThumbnailToolBar_setWindow(handle:not null QToolBarH;window:QWindowH);
 pragma Import(C,QWinThumbnailToolBar_setWindow, "QWinThumbnailToolBar_setWindow");
 
 function  QWinThumbnailToolBar_window(handle:not null QToolBarH) return QWindowH;
 pragma Import(C,QWinThumbnailToolBar_window, "QWinThumbnailToolBar_window");
 
 procedure QWinThumbnailToolBar_addButton(handle:not null QToolBarH;button:QToolButtonH);
 pragma Import(C,QWinThumbnailToolBar_addButton, "QWinThumbnailToolBar_addButton");
 
 procedure QWinThumbnailToolBar_removeButton(handle:not null QToolBarH;button:QToolButtonH);
 pragma Import(C,QWinThumbnailToolBar_removeButton, "QWinThumbnailToolBar_removeButton");
 
 procedure QWinThumbnailToolBar_setButtons(handle:not null QToolBarH ;buttons:QObjectListH);
 pragma Import(C,QWinThumbnailToolBar_setButtons, "QWinThumbnailToolBar_setButtons");
 
 function  QWinThumbnailToolBar_buttons(handle:not null QToolBarH) return QObjectListH;
 pragma Import(C,QWinThumbnailToolBar_buttons, "QWinThumbnailToolBar_buttons");
 
 function  QWinThumbnailToolBar_count(handle:not null QToolBarH) return integer;
 pragma Import(C,QWinThumbnailToolBar_count, "QWinThumbnailToolBar_count");
 
 function  QWinThumbnailToolBar_iconicPixmapNotificationsEnabled(handle:not null QToolBarH) return boolean;
 pragma Import(C,QWinThumbnailToolBar_iconicPixmapNotificationsEnabled, "QWinThumbnailToolBar_iconicPixmapNotificationsEnabled");
 
 procedure QWinThumbnailToolBar_setIconicPixmapNotificationsEnabled(handle:not null QToolBarH;enabled:boolean);
 pragma Import(C,QWinThumbnailToolBar_setIconicPixmapNotificationsEnabled, "QWinThumbnailToolBar_setIconicPixmapNotificationsEnabled");
 
 function  QWinThumbnailToolBar_iconicThumbnailPixmap(handle:not null QToolBarH) return QPixmapH;
 pragma Import(C,QWinThumbnailToolBar_iconicThumbnailPixmap, "QWinThumbnailToolBar_iconicThumbnailPixmap");
 
 function  QWinThumbnailToolBar_iconicLivePreviewPixmap(handle:not null QToolBarH) return QPixmapH;
 pragma Import(C,QWinThumbnailToolBar_iconicLivePreviewPixmap, "QWinThumbnailToolBar_iconicLivePreviewPixmap");
 
 procedure QWinThumbnailToolBar_clear(handle:not null QToolBarH);
 pragma Import(C,QWinThumbnailToolBar_clear, "QWinThumbnailToolBar_clear");
 
 procedure QWinThumbnailToolBar_setIconicThumbnailPixmap(handle:not null QToolBarH;pixmap:QPixmapH);
 pragma Import(C,QWinThumbnailToolBar_setIconicThumbnailPixmap, "QWinThumbnailToolBar_setIconicThumbnailPixmap");
 
 procedure QWinThumbnailToolBar_setIconicLivePreviewPixmap(handle:not null QToolBarH;pixmap:QPixmapH);
 pragma Import(C,QWinThumbnailToolBar_setIconicLivePreviewPixmap, "QWinThumbnailToolBar_setIconicLivePreviewPixmap");
 
 procedure QWinThumbnailToolBar_signal_slot_iconicThumbnailPixmapRequested(handle:not null QToolBarH;callback:voidCallbackH);
 pragma Import(C,QWinThumbnailToolBar_signal_slot_iconicThumbnailPixmapRequested, "QWinThumbnailToolBar_signal_slot_iconicThumbnailPixmapRequested");
 
 procedure QWinThumbnailToolBar_signal_slot_iconicLivePreviewPixmapRequested(handle:not null QToolBarH;callback:voidCallbackH);
 pragma Import(C,QWinThumbnailToolBar_signal_slot_iconicLivePreviewPixmapRequested, "QWinThumbnailToolBar_signal_slot_iconicLivePreviewPixmapRequested");
 
 ------------------------------------------------------------------------
  function  QWinThumbnailToolButton_create(parent:QObjectH := null) return QToolButtonH;
 pragma Import(C,QWinThumbnailToolButton_create, "QWinThumbnailToolButton_create");
 
 procedure QWinThumbnailToolButton_destroy(handle:not null QToolButtonH);
 pragma Import(C,QWinThumbnailToolButton_destroy, "QWinThumbnailToolButton_destroy");
 
 procedure QWinThumbnailToolButton_setToolTip(handle:not null QToolButtonH;toolTip: QStringH);
 pragma Import(C,QWinThumbnailToolButton_setToolTip, "QWinThumbnailToolButton_setToolTip");
 
 function  QWinThumbnailToolButton_toolTip(handle:not null QToolButtonH) return QStringH;
 pragma Import(C,QWinThumbnailToolButton_toolTip, "QWinThumbnailToolButton_toolTip");
 
 procedure QWinThumbnailToolButton_setIcon(handle:not null QToolButtonH;icon:QIconH);
 pragma Import(C,QWinThumbnailToolButton_setIcon, "QWinThumbnailToolButton_setIcon");
 
 function  QWinThumbnailToolButton_icon(handle:not null QToolButtonH) return QIconH;
 pragma Import(C,QWinThumbnailToolButton_icon, "QWinThumbnailToolButton_icon");
 
 procedure QWinThumbnailToolButton_setEnabled(handle:not null QToolButtonH;enabled:boolean);
 pragma Import(C,QWinThumbnailToolButton_setEnabled, "QWinThumbnailToolButton_setEnabled");
 
 function  QWinThumbnailToolButton_isEnabled(handle:not null QToolButtonH) return boolean;
 pragma Import(C,QWinThumbnailToolButton_isEnabled, "QWinThumbnailToolButton_isEnabled");
 
 procedure QWinThumbnailToolButton_setInteractive(handle:not null QToolButtonH;interactive:boolean);
 pragma Import(C,QWinThumbnailToolButton_setInteractive, "QWinThumbnailToolButton_setInteractive");
 
 function  QWinThumbnailToolButton_isInteractive(handle:not null QToolButtonH) return boolean;
 pragma Import(C,QWinThumbnailToolButton_isInteractive, "QWinThumbnailToolButton_isInteractive");
 
 procedure QWinThumbnailToolButton_setVisible(handle:not null QToolButtonH;visible:boolean);
 pragma Import(C,QWinThumbnailToolButton_setVisible, "QWinThumbnailToolButton_setVisible");
 
 function  QWinThumbnailToolButton_isVisible(handle:not null QToolButtonH) return boolean;
 pragma Import(C,QWinThumbnailToolButton_isVisible, "QWinThumbnailToolButton_isVisible");
 
 procedure QWinThumbnailToolButton_setDismissOnClick(handle:not null QToolButtonH;dismiss:boolean);
 pragma Import(C,QWinThumbnailToolButton_setDismissOnClick, "QWinThumbnailToolButton_setDismissOnClick");
 
 function  QWinThumbnailToolButton_dismissOnClick(handle:not null QToolButtonH) return boolean;
 pragma Import(C,QWinThumbnailToolButton_dismissOnClick, "QWinThumbnailToolButton_dismissOnClick");
 
 procedure QWinThumbnailToolButton_setFlat(handle:not null QToolButtonH;flat:boolean);
 pragma Import(C,QWinThumbnailToolButton_setFlat, "QWinThumbnailToolButton_setFlat");
 
 function  QWinThumbnailToolButton_isFlat(handle:not null QToolButtonH) return boolean;
 pragma Import(C,QWinThumbnailToolButton_isFlat, "QWinThumbnailToolButton_isFlat");
 
 procedure QWinThumbnailToolButton_click(handle:not null QToolButtonH);
 pragma Import(C,QWinThumbnailToolButton_click, "QWinThumbnailToolButton_click");
 
 procedure QWinThumbnailToolButton_signal_slot_clicked(handle:not null QToolButtonH;callback:voidCallbackH);
 pragma Import(C,QWinThumbnailToolButton_signal_slot_clicked, "QWinThumbnailToolButton_signal_slot_clicked");
 
 procedure QWinThumbnailToolButton_signal_slot_changed(handle:not null QToolButtonH;callback:voidCallbackH);
 pragma Import(C,QWinThumbnailToolButton_signal_slot_changed, "QWinThumbnailToolButton_signal_slot_changed");
 

end;
