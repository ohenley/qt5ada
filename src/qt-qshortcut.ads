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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QShortcut is

 function  QShortcut_create(parent:QWidgetH := null) return QShortcutH;
 pragma Import(C,QShortcut_create, "QShortcut_create");
 
 function  QShortcut_create2(key: QKeySequenceH;parent: QWidgetH; member, ambiguousMember:zstring;context: QtShortcutContext ) return QShortcutH;
 pragma Import(C,QShortcut_create2, "QShortcut_create2");
 
 procedure QShortcut_destroy(handle: not null QShortcutH);
 pragma Import(C,QShortcut_destroy, "QShortcut_destroy");
 
 procedure QShortcut_setKey(handle: not null QShortcutH;key: QKeySequenceH);
 pragma Import(C,QShortcut_setKey, "QShortcut_setKey");
 
 function  QShortcut_key(handle: not null QShortcutH) return QKeySequenceH;
 pragma Import(C,QShortcut_key, "QShortcut_key");
 
 procedure QShortcut_setEnabled(handle: not null QShortcutH; enable:boolean);
 pragma Import(C,QShortcut_setEnabled, "QShortcut_setEnabled");
 
 function  QShortcut_isEnabled(handle: not null QShortcutH) return boolean;
 pragma Import(C,QShortcut_isEnabled, "QShortcut_isEnabled");
 
 procedure QShortcut_setContext(handle: not null QShortcutH; context: QtShortcutContext);
 pragma Import(C,QShortcut_setContext, "QShortcut_setContext");
 
 function  QShortcut_context(handle: not null QShortcutH) return QtShortcutContext;
 pragma Import(C,QShortcut_context, "QShortcut_context");
 
 procedure QShortcut_setWhatsThis(handle: not null QShortcutH; text:QStringH);
 pragma Import(C,QShortcut_setWhatsThis, "QShortcut_setWhatsThis");
 
 function  QShortcut_whatsThis(handle: not null QShortcutH) return QStringH;
 pragma Import(C,QShortcut_whatsThis, "QShortcut_whatsThis");
 
 procedure QShortcut_setAutoRepeat(handle: not null QShortcutH;on: boolean);
 pragma Import(C,QShortcut_setAutoRepeat, "QShortcut_setAutoRepeat");
 
 function  QShortcut_autoRepeat(handle: not null QShortcutH) return boolean;
 pragma Import(C,QShortcut_autoRepeat, "QShortcut_autoRepeat");
 
 function  QShortcut_id(handle: not null QShortcutH) return integer;
 pragma Import(C,QShortcut_id, "QShortcut_id");
 
 function  QShortcut_parentWidget(handle: not null QShortcutH) return QWidgetH;
 pragma Import(C,QShortcut_parentWidget, "QShortcut_parentWidget");

 type QShortcut_activatedEvent is access procedure;
 pragma Convention(C, QShortcut_activatedEvent);

 type QShortcut_activatedAmbiguouslyEvent is access procedure;
 pragma Convention(C, QShortcut_activatedAmbiguouslyEvent);

 procedure QShortcut_signal_slot_activated(handle: not null QShortcutH; hook: QShortcut_activatedEvent);
 pragma Import(C,QShortcut_signal_slot_activated, "QShortcut_signal_slot_activated");
 
 procedure QShortcut_signal_slot_activatedAmbiguously(handle: not null QShortcutH; hook: QShortcut_activatedAmbiguouslyEvent);
 pragma Import(C,QShortcut_signal_slot_activatedAmbiguously, "QShortcut_signal_slot_activatedAmbiguously");

 --------------------------------------------------------------------------
 function  QShortcut_create(key: QKeySequenceH;parent: QWidgetH; member, ambiguousMember:zstring;context: QtShortcutContext ) return QShortcutH;

end Qt.QShortcut;
