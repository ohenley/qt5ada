 
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

package Qt.QUndo is
 
 type StringProc is access procedure(text: QStringH);
 pragma Convention(C,StringProc);

 type BoolProc is access procedure(isEnable: boolean);
 pragma Convention(C,BoolProc);

 type IntProc is access procedure(index: integer);
 pragma Convention(C,IntProc);

 type UndoProc is access procedure(stack: QUndoStackH);
 pragma Convention(C,UndoProc);
-------------------------------------------------------------------------------------------------------------
 function  QUndoCommand_create(parent:QUndoCommandH := null) return QUndoCommandH ;
 pragma Import(C,QUndoCommand_create, "QUndoCommand_create");
 
 function  QUndoCommand_create2(text:QStringH;parent:QUndoCommandH := null) return QUndoCommandH ;
 pragma Import(C,QUndoCommand_create2, "QUndoCommand_create2");
 
 procedure QUndoCommand_destroy(handle: not null QUndoCommandH);
 pragma Import(C,QUndoCommand_destroy, "QUndoCommand_destroy");
 
 procedure QUndoCommand_undo(handle: not null QUndoCommandH);
 pragma Import(C,QUndoCommand_undo, "QUndoCommand_undo");
 
 procedure QUndoCommand_redo(handle: not null QUndoCommandH);
 pragma Import(C,QUndoCommand_redo, "QUndoCommand_redo");
 
 function  QUndoCommand_text(handle: not null QUndoCommandH) return QStringH;
 pragma Import(C,QUndoCommand_text, "QUndoCommand_text");
 
 function  QUndoCommand_actionText(handle: not null QUndoCommandH) return QStringH;
 pragma Import(C,QUndoCommand_actionText, "QUndoCommand_actionText");
 
 procedure QUndoCommand_setText(handle: not null QUndoCommandH; text:QStringH);
 pragma Import(C,QUndoCommand_setText, "QUndoCommand_setText");
 
 function  QUndoCommand_id(handle: not null QUndoCommandH) return integer;
 pragma Import(C,QUndoCommand_id, "QUndoCommand_id");
 
 function  QUndoCommand_mergeWith(handle: not null QUndoCommandH; otherCommand:QUndoCommandH) return boolean;
 pragma Import(C,QUndoCommand_mergeWith, "QUndoCommand_mergeWith");
 
 function  QUndoCommand_childCount(handle: not null QUndoCommandH) return integer;
 pragma Import(C,QUndoCommand_childCount, "QUndoCommand_childCount");
 
 function  QUndoCommand_child(handle: not null QUndoCommandH; index:integer) return QUndoCommandH;
 pragma Import(C,QUndoCommand_child, "QUndoCommand_child");
 
 function  QUndoCommand_create(text:QStringH;parent:QUndoCommandH := null) return QUndoCommandH ;
-------------------------------------------------------------------------------------------------------------
 function  QUndoGroup_create(parent:QObjectH := null) return QUndoGroupH ;
 pragma Import(C,QUndoGroup_create, "QUndoGroup_create");
 
 procedure QUndoGroup_destroy(handle: not null QUndoGroupH);
 pragma Import(C,QUndoGroup_destroy, "QUndoGroup_destroy");
 
 procedure QUndoGroup_addStack(handle: not null QUndoGroupH;stack:QUndoStackH);
 pragma Import(C,QUndoGroup_addStack, "QUndoGroup_addStack");
 
 procedure QUndoGroup_removeStack(handle: not null QUndoGroupH;stack:QUndoStackH);
 pragma Import(C,QUndoGroup_removeStack, "QUndoGroup_removeStack");
 
 function  QUndoGroup_stacks(handle: not null QUndoGroupH) return QListH;
 pragma Import(C,QUndoGroup_stacks, "QUndoGroup_stacks");
 
 function  QUndoGroup_activeStack(handle: not null QUndoGroupH) return QUndoStackH;
 pragma Import(C,QUndoGroup_activeStack, "QUndoGroup_activeStack");
 
 function  QUndoGroup_canUndo(handle: not null QUndoGroupH) return boolean;
 pragma Import(C,QUndoGroup_canUndo, "QUndoGroup_canUndo");
 
 function  QUndoGroup_canRedo(handle: not null QUndoGroupH) return boolean;
 pragma Import(C,QUndoGroup_canRedo, "QUndoGroup_canRedo");
 
 function  QUndoGroup_undoText(handle: not null QUndoGroupH) return QStringH;
 pragma Import(C,QUndoGroup_undoText, "QUndoGroup_undoText");
 
 function  QUndoGroup_redoText(handle: not null QUndoGroupH) return QStringH;
 pragma Import(C,QUndoGroup_redoText, "QUndoGroup_redoText");
 
 function  QUndoGroup_isClean(handle: not null QUndoGroupH) return boolean;
 pragma Import(C,QUndoGroup_isClean, "QUndoGroup_isClean");

 procedure QUndoGroup_signal_slot_undoTextChanged(handle: not null QUndoGroupH; hook: StringProc);
 pragma Import(C,QUndoGroup_signal_slot_undoTextChanged, "QUndoGroup_signal_slot_undoTextChanged");
 
 procedure QUndoGroup_signal_slot_redoTextChanged(handle: not null QUndoGroupH; hook: StringProc);     
 pragma Import(C,QUndoGroup_signal_slot_redoTextChanged, "QUndoGroup_signal_slot_redoTextChanged");
 
 procedure QUndoGroup_signal_slot_cleanChanged(handle: not null QUndoGroupH; hook: BoolProc);
 pragma Import(C,QUndoGroup_signal_slot_cleanChanged, "QUndoGroup_signal_slot_cleanChanged");
 
 procedure QUndoGroup_signal_slot_canRedoChanged(handle: not null QUndoGroupH; hook: BoolProc);       
 pragma Import(C,QUndoGroup_signal_slot_canRedoChanged, "QUndoGroup_signal_slot_canRedoChanged");
 
 procedure QUndoGroup_signal_slot_canUndoChanged(handle: not null QUndoGroupH; hook: BoolProc);       
 pragma Import(C,QUndoGroup_signal_slot_canUndoChanged, "QUndoGroup_signal_slot_canUndoChanged");
 
 procedure QUndoGroup_signal_slot_indexChanged(handle: not null QUndoGroupH; hook: IntProc);       
 pragma Import(C,QUndoGroup_signal_slot_indexChanged, "QUndoGroup_signal_slot_indexChanged");
 
 procedure QUndoGroup_signal_slot_activeStackChanged(handle: not null QUndoGroupH; hook: UndoProc);
 pragma Import(C,QUndoGroup_signal_slot_activeStackChanged, "QUndoGroup_signal_slot_activeStackChanged");

-------------------------------------------------------------------------------------------------------------
 function  QUndoStack_create(parent:QObjectH := null) return QUndoStackH ;
 pragma Import(C,QUndoStack_create, "QUndoStack_create");
 
 procedure QUndoStack_destroy(handle: not null QUndoStackH);
 pragma Import(C,QUndoStack_destroy, "QUndoStack_destroy");
 
 procedure QUndoStack_clear(handle: not null QUndoStackH);
 pragma Import(C,QUndoStack_clear, "QUndoStack_clear");
 
 procedure QUndoStack_push(handle: not null QUndoStackH;cmd:QUndoCommandH);
 pragma Import(C,QUndoStack_push, "QUndoStack_push");
 
 function  QUndoStack_canUndo(handle: not null QUndoStackH) return boolean;
 pragma Import(C,QUndoStack_canUndo, "QUndoStack_canUndo");
 
 function  QUndoStack_canRedo(handle: not null QUndoStackH) return boolean;
 pragma Import(C,QUndoStack_canRedo, "QUndoStack_canRedo");
 
 function  QUndoStack_undoText(handle: not null QUndoStackH) return QStringH;
 pragma Import(C,QUndoStack_undoText, "QUndoStack_undoText");
 
 function  QUndoStack_redoText(handle: not null QUndoStackH) return QStringH;
 pragma Import(C,QUndoStack_redoText, "QUndoStack_redoText");
 
 function  QUndoStack_count(handle: not null QUndoStackH) return integer;
 pragma Import(C,QUndoStack_count, "QUndoStack_count");
 
 function  QUndoStack_index(handle: not null QUndoStackH) return integer;
 pragma Import(C,QUndoStack_index, "QUndoStack_index");
 
 function  QUndoStack_text(handle: not null QUndoStackH; index: integer) return QStringH;
 pragma Import(C,QUndoStack_text, "QUndoStack_text");
 
 function  QUndoStack_isActive(handle: not null QUndoStackH) return boolean;
 pragma Import(C,QUndoStack_isActive, "QUndoStack_isActive");
 
 function  QUndoStack_isClean(handle: not null QUndoStackH) return boolean;
 pragma Import(C,QUndoStack_isClean, "QUndoStack_isClean");
 
 function  QUndoStack_cleanIndex(handle: not null QUndoStackH) return integer;
 pragma Import(C,QUndoStack_cleanIndex, "QUndoStack_cleanIndex");
 
 procedure QUndoStack_beginMacro(handle: not null QUndoStackH; text:QStringH);
 pragma Import(C,QUndoStack_beginMacro, "QUndoStack_beginMacro");
 
 procedure QUndoStack_endMacro(handle: not null QUndoStackH);
 pragma Import(C,QUndoStack_endMacro, "QUndoStack_endMacro");
 
 procedure QUndoStack_setUndoLimit(handle: not null QUndoStackH; limit: integer);
 pragma Import(C,QUndoStack_setUndoLimit, "QUndoStack_setUndoLimit");
 
 function  QUndoStack_undoLimit(handle: not null QUndoStackH) return integer;
 pragma Import(C,QUndoStack_undoLimit, "QUndoStack_undoLimit");
 
 function  QUndoStack_command(handle: not null QUndoStackH; index: integer) return QUndoCommandH;
 pragma Import(C,QUndoStack_command, "QUndoStack_command");
 
 procedure QUndoStack_signal_slot_undoTextChanged(handle: not null QUndoStackH; hook: StringProc);
 pragma Import(C,QUndoStack_signal_slot_undoTextChanged, "QUndoStack_signal_slot_undoTextChanged");
 
 procedure QUndoStack_signal_slot_redoTextChanged(handle: not null QUndoStackH; hook: StringProc);     
 pragma Import(C,QUndoStack_signal_slot_redoTextChanged, "QUndoStack_signal_slot_redoTextChanged");
 
 procedure QUndoStack_signal_slot_cleanChanged(handle: not null QUndoStackH; hook: BoolProc);
 pragma Import(C,QUndoStack_signal_slot_cleanChanged, "QUndoStack_signal_slot_cleanChanged");
 
 procedure QUndoStack_signal_slot_canRedoChanged(handle: not null QUndoStackH; hook: BoolProc);       
 pragma Import(C,QUndoStack_signal_slot_canRedoChanged, "QUndoStack_signal_slot_canRedoChanged");
 
 procedure QUndoStack_signal_slot_canUndoChanged(handle: not null QUndoStackH; hook: BoolProc);       
 pragma Import(C,QUndoStack_signal_slot_canUndoChanged, "QUndoStack_signal_slot_canUndoChanged");
 
 procedure QUndoStack_signal_slot_indexChanged(handle: not null QUndoStackH; hook: IntProc);       
 pragma Import(C,QUndoStack_signal_slot_indexChanged, "QUndoStack_signal_slot_indexChanged");
-------------------------------------------------------------------------------------------------
 function  QUndoView_create(parent:QWidgetH := null) return QUndoViewH ;
 pragma Import(C,QUndoView_create, "QUndoView_create");
 
 function  QUndoView_create2(stack:QUndoStackH;parent:QUndoViewH := null) return QUndoViewH ;
 pragma Import(C,QUndoView_create2, "QUndoView_create2");
 
 procedure QUndoView_destroy(handle: not null QUndoViewH);
 pragma Import(C,QUndoView_destroy, "QUndoView_destroy");
 
 function  QUndoView_stack(handle: not null QUndoViewH) return QUndoStackH;
 pragma Import(C,QUndoView_stack, "QUndoView_stack");
 
 procedure QUndoView_setEmptyLabel(handle: not null QUndoViewH;label:QStringH);
 pragma Import(C,QUndoView_setEmptyLabel, "QUndoView_setEmptyLabel");
 
 function  QUndoView_emptyLabel(handle: not null QUndoViewH) return QStringH;
 pragma Import(C,QUndoView_emptyLabel, "QUndoView_emptyLabel");
 
 procedure QUndoView_setCleanIcon(handle: not null QUndoViewH;icon:QIconH);
 pragma Import(C,QUndoView_setCleanIcon, "QUndoView_setCleanIcon");
 
 function  QUndoView_cleanIcon(handle: not null QUndoViewH) return QIconH;
 pragma Import(C,QUndoView_cleanIcon, "QUndoView_cleanIcon");
 
 function  QUndoView_create(stack:QUndoStackH;parent:QUndoViewH := null) return QUndoViewH ;

end;
