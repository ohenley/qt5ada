--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QKeySequence; use Qt.QKeySequence;
package Qt.QAction              is

type  QActionMenuRole  is (QActionNoRole, QActionTextHeuristicRole, QActionApplicationSpecificRole, QActionAboutQtRole, QActionAboutRole, QActionPreferencesRole, QActionQuitRole );
pragma Convention(C,QActionMenuRole);

type QActionSoftKeyRole is (NoSoftKey, PositiveSoftKey, NegativeSoftKey, SelectSoftKey);
pragma Convention(C,QActionSoftKeyRole);

type QActionEvent is (QActionTrigger, QActionHover );
pragma Convention(C,QActionEvent);

QActionLowPriority    : constant := 0;
QActionNormalPriority : constant := 128;
QActionHighPriority   : constant := 256;

function QAction_create(parent: QObjectH := null) return  QActionH;    
pragma Import(C,QAction_create,"QAction_create");

procedure QAction_destroy(handle: not null  QActionH);   
pragma Import(C,QAction_destroy,"QAction_destroy");

function QAction_create2(text: QStringH; parent: QObjectH := null) return  QActionH;
pragma Import(C,QAction_create2,"QAction_create2");

function QAction_create3(icon: QIconH; text: QStringH; parent: QObjectH := null) return  QActionH;
pragma Import(C,QAction_create3,"QAction_create3");

function  QActionGroup_create(object: QObjectH := null) return QActionGroupH;
pragma Import(C,QActionGroup_create,"QActionGroup_create");

procedure QAction_setActionGroup(handle: not null  QActionH; group: QActionGroupH);   
pragma Import(C,QAction_setActionGroup,"QAction_setActionGroup");

function QAction_actionGroup(handle: not null  QActionH) return  QActionGroupH;   
pragma Import(C,QAction_actionGroup,"QAction_actionGroup");

procedure QAction_setIcon(handle: not null  QActionH; icon: QIconH);   
pragma Import(C,QAction_setIcon,"QAction_setIcon");

function  QAction_icon(handle: not null  QActionH) return QIconH;
pragma Import(C,QAction_icon,"QAction_icon");

procedure QAction_setText(handle: not null  QActionH; text: QStringH);   
pragma Import(C,QAction_setText,"QAction_setText");

function  QAction_text(handle: not null  QActionH) return QStringH;
pragma Import(C,QAction_text,"QAction_text");

procedure QAction_setIconText(handle: not null  QActionH; text: QStringH);   
pragma Import(C,QAction_setIconText,"QAction_setIconText");

function  QAction_iconText(handle: not null  QActionH) return QStringH;
pragma Import(C,QAction_iconText,"QAction_iconText");

procedure QAction_setToolTip(handle: not null  QActionH; tip: QStringH);   
pragma Import(C,QAction_setToolTip,"QAction_setToolTip");

function  QAction_toolTip(handle: not null  QActionH) return QStringH;
pragma Import(C,QAction_toolTip,"QAction_toolTip");

procedure QAction_setStatusTip(handle: not null  QActionH; statusTip: QStringH);   
pragma Import(C,QAction_setStatusTip,"QAction_setStatusTip");

function  QAction_statusTip(handle: not null  QActionH) return QStringH;
pragma Import(C,QAction_statusTip,"QAction_statusTip");

procedure QAction_setWhatsThis(handle: not null  QActionH; what: QStringH);   
pragma Import(C,QAction_setWhatsThis,"QAction_setWhatsThis");

function  QAction_whatsThis(handle: not null  QActionH) return QStringH;
pragma Import(C,QAction_whatsThis,"QAction_whatsThis");

function QAction_menu(handle: not null  QActionH) return  QMenuH;   
pragma Import(C,QAction_menu,"QAction_menu");

procedure QAction_setMenu(handle: not null  QActionH; menu: QMenuH);   
pragma Import(C,QAction_setMenu,"QAction_setMenu");

procedure QAction_setSeparator(handle: not null  QActionH; b: Boolean);   
pragma Import(C,QAction_setSeparator,"QAction_setSeparator");

function QAction_isSeparator(handle: not null  QActionH) return  Boolean;   
pragma Import(C,QAction_isSeparator,"QAction_isSeparator");

procedure QAction_setShortcut(handle: not null  QActionH; shortcut: QKeySequenceH);   
pragma Import(C,QAction_setShortcut,"QAction_setShortcut");

function  QAction_shortcut(handle: not null  QActionH) return QKeySequenceH;
pragma Import(C,QAction_shortcut,"QAction_shortcut");

procedure QAction_setShortcuts2(handle: not null  QActionH; p1: QKeySequenceStandardKey);
pragma Import(C,QAction_setShortcuts2,"QAction_setShortcuts2");

procedure QAction_setShortcutContext(handle: not null  QActionH; context: QtShortcutContext);   
pragma Import(C,QAction_setShortcutContext,"QAction_setShortcutContext");

function QAction_shortcutContext(handle: not null  QActionH) return  QtShortcutContext;   
pragma Import(C,QAction_shortcutContext,"QAction_shortcutContext");

procedure QAction_setAutoRepeat(handle: not null  QActionH; p1: Boolean);   
pragma Import(C,QAction_setAutoRepeat,"QAction_setAutoRepeat");

function QAction_autoRepeat(handle: not null  QActionH) return  Boolean;   
pragma Import(C,QAction_autoRepeat,"QAction_autoRepeat");

procedure QAction_setFont(handle: not null  QActionH; font: QFontH);   
pragma Import(C,QAction_setFont,"QAction_setFont");

function  QAction_font(handle: not null  QActionH) return QFontH;
pragma Import(C,QAction_font,"QAction_font");

procedure QAction_setCheckable(handle: not null  QActionH; p1: Boolean);   
pragma Import(C,QAction_setCheckable,"QAction_setCheckable");

function QAction_isCheckable(handle: not null  QActionH) return  Boolean;   
pragma Import(C,QAction_isCheckable,"QAction_isCheckable");

function  QAction_data(handle: not null  QActionH) return QVariantH;
pragma Import(C,QAction_data,"QAction_data");

procedure QAction_setData(handle: not null  QActionH; qvar: QVariantH);
pragma Import(C,QAction_setData,"QAction_setData");

function QAction_isChecked(handle: not null  QActionH) return  Boolean;   
pragma Import(C,QAction_isChecked,"QAction_isChecked");

function QAction_isEnabled(handle: not null  QActionH) return  Boolean;   
pragma Import(C,QAction_isEnabled,"QAction_isEnabled");

function QAction_isVisible(handle: not null  QActionH) return  Boolean;   
pragma Import(C,QAction_isVisible,"QAction_isVisible");

procedure QAction_activate(handle: not null  QActionH; event: QActionEvent);   
pragma Import(C,QAction_activate,"QAction_activate");

function QAction_showStatusText(handle: not null  QActionH; widget: QWidgetH := null) return Boolean;   
pragma Import(C,QAction_showStatusText,"QAction_showStatusText");

procedure QAction_setMenuRole(handle: not null  QActionH; menuRole: QActionMenuRole);   
pragma Import(C,QAction_setMenuRole,"QAction_setMenuRole");

function QAction_menuRole(handle: not null  QActionH) return  QActionMenuRole;   
pragma Import(C,QAction_menuRole,"QAction_menuRole");

function QAction_parentWidget(handle: not null  QActionH) return  QWidgetH;   
pragma Import(C,QAction_parentWidget,"QAction_parentWidget");

procedure QAction_trigger(handle: not null  QActionH);   
pragma Import(C,QAction_trigger,"QAction_trigger");

procedure QAction_hover(handle: not null  QActionH);   
pragma Import(C,QAction_hover,"QAction_hover");

procedure QAction_setChecked(handle: not null  QActionH; p1: Boolean);   
pragma Import(C,QAction_setChecked,"QAction_setChecked");

procedure QAction_toggle(handle: not null  QActionH);   
pragma Import(C,QAction_toggle,"QAction_toggle");

procedure QAction_setEnabled(handle: not null  QActionH; p1: Boolean);   
pragma Import(C,QAction_setEnabled,"QAction_setEnabled");

procedure QAction_setDisabled(handle: not null  QActionH; b: Boolean);   
pragma Import(C,QAction_setDisabled,"QAction_setDisabled");

procedure QAction_setVisible(handle: not null  QActionH; p1: Boolean);   
pragma Import(C,QAction_setVisible,"QAction_setVisible");

type  QAction_changed_Event is access procedure ;
pragma Convention(C,QAction_changed_Event );

type  QAction_triggered_Event is access procedure (checked: Boolean);
pragma Convention(C,QAction_triggered_Event );

type  QAction_triggered2_Event is access procedure ;
pragma Convention(C,QAction_triggered2_Event );

type  QAction_hovered_Event is access procedure ;
pragma Convention(C,QAction_hovered_Event );

type  QAction_toggled_Event is access procedure (p1: Boolean);
pragma Convention(C,QAction_toggled_Event );

procedure QAction_signal_slot_changed(handle: not null QActionH; hook:QAction_changed_Event);
pragma Import(C,QAction_signal_slot_changed, "QAction_signal_slot_changed");

procedure QAction_signal_slot_triggered(handle: not null QActionH; hook:QAction_triggered_Event);
pragma Import(C,QAction_signal_slot_triggered, "QAction_signal_slot_triggered");

procedure QAction_signal_slot_triggered2(handle: not null QActionH; hook:QAction_triggered2_Event);
pragma Import(C,QAction_signal_slot_triggered2, "QAction_signal_slot_triggered2");

procedure QAction_signal_slot_hovered(handle: not null QActionH; hook:QAction_hovered_Event);
pragma Import(C,QAction_signal_slot_hovered, "QAction_signal_slot_hovered");

procedure QAction_signal_slot_toggled(handle: not null QActionH; hook:QAction_toggled_Event);
pragma Import(C,QAction_signal_slot_toggled, "QAction_signal_slot_toggled");
 
 procedure QAction_setPriority(handle: not null QActionH; priority: integer);
 pragma Import(C,QAction_setPriority, "QAction_setPriority");
 
 function  QAction_priority(handle: not null QActionH) return integer;
 pragma Import(C,QAction_priority, "QAction_priority");
 
-- procedure QAction_setSoftKeyRole(handle: not null QActionH; softKeyRole:QActionSoftKeyRole);
-- pragma Import(C,QAction_setSoftKeyRole, "QAction_setSoftKeyRole");
 
-- function  QAction_softKeyRole(handle: not null QActionH) return QActionSoftKeyRole;
-- pragma Import(C,QAction_softKeyRole, "QAction_softKeyRole");
 
 procedure QAction_setIconVisibleInMenu(handle: not null QActionH;visible:boolean);
 pragma Import(C,QAction_setIconVisibleInMenu, "QAction_setIconVisibleInMenu");
 
 function  QAction_isIconVisibleInMenu(handle: not null QActionH) return boolean;
 pragma Import(C,QAction_isIconVisibleInMenu, "QAction_isIconVisibleInMenu");
 
 function  QAction_associatedWidgets(handle: not null QActionH) return QObjectListH;
 pragma Import(C,QAction_associatedWidgets, "QAction_associatedWidgets");
 
 function  QAction_associatedGraphicsWidgets(handle: not null QActionH) return QObjectListH;
 pragma Import(C,QAction_associatedGraphicsWidgets, "QAction_associatedGraphicsWidgets");

 procedure QAction_setShortcut2(handle: not null QActionH; shortcut: quint);
 pragma Import(C,QAction_setShortcut2, "QAction_setShortcut2");
 
 procedure QAction_setShortcuts(handle: not null QActionH; shortcuts: QIntListH);
 pragma Import(C,QAction_setShortcuts, "QAction_setShortcuts");

 function  QAction_shortcuts(handle: not null QActionH) return QIntListH;
 pragma Import(C,QAction_shortcuts, "QAction_shortcuts");

 function  QWidgetAction_create(parent:QObjectH) return QWidgetActionH;
 pragma Import(C,QWidgetAction_create, "QWidgetAction_create");
 
 procedure QWidgetAction_destroy(handle: not null QWidgetActionH);
 pragma Import(C,QWidgetAction_destroy, "QWidgetAction_destroy");
 
 procedure QWidgetAction_setDefaultWidget(handle: not null QWidgetActionH;widget:QWidgetH);
 pragma Import(C,QWidgetAction_setDefaultWidget, "QWidgetAction_setDefaultWidget");
 
 function  QWidgetAction_defaultWidget(handle: not null QWidgetActionH) return QWidgetH;
 pragma Import(C,QWidgetAction_defaultWidget, "QWidgetAction_defaultWidget");
 
 function  QWidgetAction_requestWidget(handle: not null QWidgetActionH;parent:QWidgetH) return QWidgetH;
 pragma Import(C,QWidgetAction_requestWidget, "QWidgetAction_requestWidget");
 
 procedure QWidgetAction_releaseWidget(handle: not null QWidgetActionH;widget:QWidgetH);
 pragma Import(C,QWidgetAction_releaseWidget, "QWidgetAction_releaseWidget");

-----------------------------------------------------------------------------------------------------------------------
function QAction_create(text: QStringH; parent: QObjectH := null) return  QActionH;
function QAction_create(icon: QIconH; text: QStringH; parent: QObjectH := null) return  QActionH;
procedure QAction_setShortcuts(handle: not null  QActionH; p1: QKeySequenceStandardKey);
procedure QAction_setShortcut(handle: not null QActionH; shortcut: quint);
procedure QAction_setShortcut(handle: not null QActionH; shortcut: QStringH);
procedure QAction_signal_slot_triggered(handle: not null QActionH; hook:QAction_triggered2_Event);

end Qt.QAction;
