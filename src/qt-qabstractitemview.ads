--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *
with Interfaces.C; use Interfaces.C;
package Qt.QAbstractItemView    is

type QAbstractItemViewSelectionMode is (QAbstractItemViewNoSelection, QAbstractItemViewSingleSelection, QAbstractItemViewMultiSelection, QAbstractItemViewExtendedSelection, QAbstractItemViewContiguousSelection );
pragma Convention (C,QAbstractItemViewSelectionMode);

type QAbstractItemViewSelectionBehavior is (QAbstractItemViewSelectItems, QAbstractItemViewSelectRows, QAbstractItemViewSelectColumns );
pragma Convention (C,QAbstractItemViewSelectionBehavior);

type QAbstractItemViewScrollHint is (QAbstractItemViewEnsureVisible, QAbstractItemViewPositionAtTop, QAbstractItemViewPositionAtBottom, QAbstractItemViewPositionAtCenter );
pragma Convention (C,QAbstractItemViewScrollHint);

type QAbstractItemViewScrollMode is (QAbstractItemViewScrollPerItem, QAbstractItemViewScrollPerPixel );
pragma Convention (C,QAbstractItemViewScrollMode);

type QAbstractItemViewDragDropMode is (QAbstractItemViewNoDragDrop, QAbstractItemViewDragOnly, QAbstractItemViewDropOnly, QAbstractItemViewDragDrop, QAbstractItemViewInternalMove );
pragma Convention (C,QAbstractItemViewDragDropMode);

type updatePreviewWidget is access procedure(hook: QModelIndexH);
pragma Convention(C,updatePreviewWidget);

subtype QAbstractItemViewEditTrigger  is cardinal;
subtype QAbstractItemViewEditTriggers is cardinal;

QAbstractItemViewNoEditTriggers : constant QAbstractItemViewEditTrigger := 0;
QAbstractItemViewCurrentChanged : constant QAbstractItemViewEditTrigger := 1;
QAbstractItemViewDoubleClicked  : constant QAbstractItemViewEditTrigger := 2;
QAbstractItemViewSelectedClicked: constant QAbstractItemViewEditTrigger := 4;
QAbstractItemViewEditKeyPressed : constant QAbstractItemViewEditTrigger := 8;
QAbstractItemViewAnyKeyPressed  : constant QAbstractItemViewEditTrigger :=16;
QAbstractItemViewAllEditTriggers: constant QAbstractItemViewEditTrigger :=31;

procedure QAbstractItemView_setModel(handle: not null  QAbstractItemViewH; model: QAbstractItemModelH);   
pragma Import(C,QAbstractItemView_setModel,"QAbstractItemView_setModel");

function QAbstractItemView_model(handle: not null  QAbstractItemViewH) return  QAbstractItemModelH;   
pragma Import(C,QAbstractItemView_model,"QAbstractItemView_model");

procedure QAbstractItemView_setSelectionModel(handle: not null  QAbstractItemViewH; selectionModel: QItemSelectionModelH);   
pragma Import(C,QAbstractItemView_setSelectionModel,"QAbstractItemView_setSelectionModel");

function QAbstractItemView_selectionModel(handle: not null  QAbstractItemViewH) return  QItemSelectionModelH;   
pragma Import(C,QAbstractItemView_selectionModel,"QAbstractItemView_selectionModel");

procedure QAbstractItemView_setItemDelegate(handle: not null  QAbstractItemViewH; delegate: QAbstractItemDelegateH);   
pragma Import(C,QAbstractItemView_setItemDelegate,"QAbstractItemView_setItemDelegate");

function QAbstractItemView_itemDelegate(handle: not null  QAbstractItemViewH) return  QAbstractItemDelegateH;    
pragma Import(C,QAbstractItemView_itemDelegate,"QAbstractItemView_itemDelegate");

procedure QAbstractItemView_setSelectionMode(handle: not null  QAbstractItemViewH; mode: QAbstractItemViewSelectionMode);   
pragma Import(C,QAbstractItemView_setSelectionMode,"QAbstractItemView_setSelectionMode");

function QAbstractItemView_selectionMode(handle: not null  QAbstractItemViewH) return  QAbstractItemViewSelectionMode;   
pragma Import(C,QAbstractItemView_selectionMode,"QAbstractItemView_selectionMode");

procedure QAbstractItemView_setSelectionBehavior(handle: not null  QAbstractItemViewH; behavior: QAbstractItemViewSelectionBehavior);   
pragma Import(C,QAbstractItemView_setSelectionBehavior,"QAbstractItemView_setSelectionBehavior");

function QAbstractItemView_selectionBehavior(handle: not null  QAbstractItemViewH) return  QAbstractItemViewSelectionBehavior;   
pragma Import(C,QAbstractItemView_selectionBehavior,"QAbstractItemView_selectionBehavior");

function  QAbstractItemView_currentIndex(handle: not null  QAbstractItemViewH) return QModelIndexH;
pragma Import(C,QAbstractItemView_currentIndex,"QAbstractItemView_currentIndex");

function  QAbstractItemView_rootIndex(handle: not null  QAbstractItemViewH) return QModelIndexH;
pragma Import(C,QAbstractItemView_rootIndex,"QAbstractItemView_rootIndex");

procedure QAbstractItemView_setEditTriggers(handle: not null  QAbstractItemViewH; triggers: QAbstractItemViewEditTriggers);   
pragma Import(C,QAbstractItemView_setEditTriggers,"QAbstractItemView_setEditTriggers");

function QAbstractItemView_editTriggers(handle: not null  QAbstractItemViewH) return  QAbstractItemViewEditTriggers;   
pragma Import(C,QAbstractItemView_editTriggers,"QAbstractItemView_editTriggers");

procedure QAbstractItemView_setVerticalScrollMode(handle: not null  QAbstractItemViewH; mode: QAbstractItemViewScrollMode);   
pragma Import(C,QAbstractItemView_setVerticalScrollMode,"QAbstractItemView_setVerticalScrollMode");

function QAbstractItemView_verticalScrollMode(handle: not null  QAbstractItemViewH) return  QAbstractItemViewScrollMode;   
pragma Import(C,QAbstractItemView_verticalScrollMode,"QAbstractItemView_verticalScrollMode");

procedure QAbstractItemView_setHorizontalScrollMode(handle: not null  QAbstractItemViewH; mode: QAbstractItemViewScrollMode);   
pragma Import(C,QAbstractItemView_setHorizontalScrollMode,"QAbstractItemView_setHorizontalScrollMode");

function QAbstractItemView_horizontalScrollMode(handle: not null  QAbstractItemViewH) return  QAbstractItemViewScrollMode;   
pragma Import(C,QAbstractItemView_horizontalScrollMode,"QAbstractItemView_horizontalScrollMode");

procedure QAbstractItemView_setAutoScroll(handle: not null  QAbstractItemViewH; enable: Boolean);   
pragma Import(C,QAbstractItemView_setAutoScroll,"QAbstractItemView_setAutoScroll");

function QAbstractItemView_hasAutoScroll(handle: not null  QAbstractItemViewH) return  Boolean;   
pragma Import(C,QAbstractItemView_hasAutoScroll,"QAbstractItemView_hasAutoScroll");

procedure QAbstractItemView_setTabKeyNavigation(handle: not null  QAbstractItemViewH; enable: Boolean);   
pragma Import(C,QAbstractItemView_setTabKeyNavigation,"QAbstractItemView_setTabKeyNavigation");

function QAbstractItemView_tabKeyNavigation(handle: not null  QAbstractItemViewH) return  Boolean;   
pragma Import(C,QAbstractItemView_tabKeyNavigation,"QAbstractItemView_tabKeyNavigation");

procedure QAbstractItemView_setDropIndicatorShown(handle: not null  QAbstractItemViewH; enable: Boolean);   
pragma Import(C,QAbstractItemView_setDropIndicatorShown,"QAbstractItemView_setDropIndicatorShown");

function QAbstractItemView_showDropIndicator(handle: not null  QAbstractItemViewH) return  Boolean;   
pragma Import(C,QAbstractItemView_showDropIndicator,"QAbstractItemView_showDropIndicator");

procedure QAbstractItemView_setDragEnabled(handle: not null  QAbstractItemViewH; enable: Boolean);   
pragma Import(C,QAbstractItemView_setDragEnabled,"QAbstractItemView_setDragEnabled");

function QAbstractItemView_dragEnabled(handle: not null  QAbstractItemViewH) return  Boolean;   
pragma Import(C,QAbstractItemView_dragEnabled,"QAbstractItemView_dragEnabled");

procedure QAbstractItemView_setDragDropOverwriteMode(handle: not null  QAbstractItemViewH; overwrite: Boolean);   
pragma Import(C,QAbstractItemView_setDragDropOverwriteMode,"QAbstractItemView_setDragDropOverwriteMode");

function QAbstractItemView_dragDropOverwriteMode(handle: not null  QAbstractItemViewH) return  Boolean;   
pragma Import(C,QAbstractItemView_dragDropOverwriteMode,"QAbstractItemView_dragDropOverwriteMode");

procedure QAbstractItemView_setDragDropMode(handle: not null  QAbstractItemViewH; behavior: QAbstractItemViewDragDropMode);   
pragma Import(C,QAbstractItemView_setDragDropMode,"QAbstractItemView_setDragDropMode");

function QAbstractItemView_dragDropMode(handle: not null  QAbstractItemViewH) return  QAbstractItemViewDragDropMode;   
pragma Import(C,QAbstractItemView_dragDropMode,"QAbstractItemView_dragDropMode");

procedure QAbstractItemView_setAlternatingRowColors(handle: not null  QAbstractItemViewH; enable: Boolean);   
pragma Import(C,QAbstractItemView_setAlternatingRowColors,"QAbstractItemView_setAlternatingRowColors");

function QAbstractItemView_alternatingRowColors(handle: not null  QAbstractItemViewH) return  Boolean;   
pragma Import(C,QAbstractItemView_alternatingRowColors,"QAbstractItemView_alternatingRowColors");

procedure QAbstractItemView_setIconSize(handle: not null  QAbstractItemViewH; size: QSizeH);   
pragma Import(C,QAbstractItemView_setIconSize,"QAbstractItemView_setIconSize");

function  QAbstractItemView_iconSize(handle: not null  QAbstractItemViewH) return QSizeH;
pragma Import(C,QAbstractItemView_iconSize,"QAbstractItemView_iconSize");

procedure QAbstractItemView_setTextElideMode(handle: not null  QAbstractItemViewH; mode: QtTextElideMode);   
pragma Import(C,QAbstractItemView_setTextElideMode,"QAbstractItemView_setTextElideMode");

function QAbstractItemView_textElideMode(handle: not null  QAbstractItemViewH) return  QtTextElideMode;   
pragma Import(C,QAbstractItemView_textElideMode,"QAbstractItemView_textElideMode");

procedure QAbstractItemView_keyboardSearch(handle: not null  QAbstractItemViewH; search: QStringH);   
pragma Import(C,QAbstractItemView_keyboardSearch,"QAbstractItemView_keyboardSearch");

function  QAbstractItemView_visualRect(handle: not null  QAbstractItemViewH; index: QModelIndexH) return QRectH;
pragma Import(C,QAbstractItemView_visualRect,"QAbstractItemView_visualRect");

procedure QAbstractItemView_scrollTo(handle: not null  QAbstractItemViewH; index: QModelIndexH; hint: QAbstractItemViewScrollHint := QAbstractItemViewEnsureVisible);   
pragma Import(C,QAbstractItemView_scrollTo,"QAbstractItemView_scrollTo");

function  QAbstractItemView_indexAt(handle: not null  QAbstractItemViewH; point: QPointH)  return QModelIndexH;
pragma Import(C,QAbstractItemView_indexAt,"QAbstractItemView_indexAt");

function  QAbstractItemView_sizeHintForIndex(handle: not null  QAbstractItemViewH; index: QModelIndexH)  return QSizeH;
pragma Import(C,QAbstractItemView_sizeHintForIndex,"QAbstractItemView_sizeHintForIndex");

function QAbstractItemView_sizeHintForRow(handle: not null  QAbstractItemViewH; row: Integer) return  Integer;   
pragma Import(C,QAbstractItemView_sizeHintForRow,"QAbstractItemView_sizeHintForRow");

function QAbstractItemView_sizeHintForColumn(handle: not null  QAbstractItemViewH; column: Integer) return  Integer;   
pragma Import(C,QAbstractItemView_sizeHintForColumn,"QAbstractItemView_sizeHintForColumn");

procedure QAbstractItemView_openPersistentEditor(handle: not null  QAbstractItemViewH; index: QModelIndexH);   
pragma Import(C,QAbstractItemView_openPersistentEditor,"QAbstractItemView_openPersistentEditor");

procedure QAbstractItemView_closePersistentEditor(handle: not null  QAbstractItemViewH; index: QModelIndexH);   
pragma Import(C,QAbstractItemView_closePersistentEditor,"QAbstractItemView_closePersistentEditor");

procedure QAbstractItemView_setIndexWidget(handle: not null  QAbstractItemViewH; index: QModelIndexH; widget: QWidgetH);   
pragma Import(C,QAbstractItemView_setIndexWidget,"QAbstractItemView_setIndexWidget");

function QAbstractItemView_indexWidget(handle: not null  QAbstractItemViewH; index: QModelIndexH) return  QWidgetH;   
pragma Import(C,QAbstractItemView_indexWidget,"QAbstractItemView_indexWidget");

procedure QAbstractItemView_setItemDelegateForRow(handle: not null  QAbstractItemViewH; row: Integer; delegate: QAbstractItemDelegateH);   
pragma Import(C,QAbstractItemView_setItemDelegateForRow,"QAbstractItemView_setItemDelegateForRow");

function QAbstractItemView_itemDelegateForRow(handle: not null  QAbstractItemViewH; row: Integer) return  QAbstractItemDelegateH;   
pragma Import(C,QAbstractItemView_itemDelegateForRow,"QAbstractItemView_itemDelegateForRow");

procedure QAbstractItemView_setItemDelegateForColumn(handle: not null  QAbstractItemViewH; column: Integer; delegate: QAbstractItemDelegateH);   
pragma Import(C,QAbstractItemView_setItemDelegateForColumn,"QAbstractItemView_setItemDelegateForColumn");

function QAbstractItemView_itemDelegateForColumn(handle: not null  QAbstractItemViewH; column: Integer) return  QAbstractItemDelegateH;   
pragma Import(C,QAbstractItemView_itemDelegateForColumn,"QAbstractItemView_itemDelegateForColumn");

function QAbstractItemView_itemDelegate2(handle: not null  QAbstractItemViewH; index: QModelIndexH) return  QAbstractItemDelegateH;
pragma Import(C,QAbstractItemView_itemDelegate2,"QAbstractItemView_itemDelegate2");

function  QAbstractItemView_inputMethodQuery(handle: not null  QAbstractItemViewH; query: QtInputMethodQuery) return QVariantH;
pragma Import(C,QAbstractItemView_inputMethodQuery,"QAbstractItemView_inputMethodQuery");

procedure QAbstractItemView_reset(handle: not null  QAbstractItemViewH);   
pragma Import(C,QAbstractItemView_reset,"QAbstractItemView_reset");

procedure QAbstractItemView_setRootIndex(handle: not null  QAbstractItemViewH; index: QModelIndexH);   
pragma Import(C,QAbstractItemView_setRootIndex,"QAbstractItemView_setRootIndex");

procedure QAbstractItemView_doItemsLayout(handle: not null  QAbstractItemViewH);   
pragma Import(C,QAbstractItemView_doItemsLayout,"QAbstractItemView_doItemsLayout");

procedure QAbstractItemView_selectAll(handle: not null  QAbstractItemViewH);   
pragma Import(C,QAbstractItemView_selectAll,"QAbstractItemView_selectAll");

procedure QAbstractItemView_edit(handle: not null  QAbstractItemViewH; index: QModelIndexH);   
pragma Import(C,QAbstractItemView_edit,"QAbstractItemView_edit");

procedure QAbstractItemView_clearSelection(handle: not null  QAbstractItemViewH);   
pragma Import(C,QAbstractItemView_clearSelection,"QAbstractItemView_clearSelection");

procedure QAbstractItemView_setCurrentIndex(handle: not null  QAbstractItemViewH; index: QModelIndexH);   
pragma Import(C,QAbstractItemView_setCurrentIndex,"QAbstractItemView_setCurrentIndex");

procedure QAbstractItemView_scrollToTop(handle: not null  QAbstractItemViewH);   
pragma Import(C,QAbstractItemView_scrollToTop,"QAbstractItemView_scrollToTop");

procedure QAbstractItemView_scrollToBottom(handle: not null  QAbstractItemViewH);   
pragma Import(C,QAbstractItemView_scrollToBottom,"QAbstractItemView_scrollToBottom");

procedure QAbstractItemView_update(handle: not null  QAbstractItemViewH; index: QModelIndexH);   
pragma Import(C,QAbstractItemView_update,"QAbstractItemView_update");

type QAbstractItemView_pressedEvent is access procedure (index: QModelIndexH);
pragma Convention(C,QAbstractItemView_pressedEvent);

type QAbstractItemView_clickedEvent is access procedure (index: QModelIndexH);
pragma Convention(C,QAbstractItemView_clickedEvent);

type QAbstractItemView_doubleClickedEvent is access procedure (index: QModelIndexH);
pragma Convention(C,QAbstractItemView_doubleClickedEvent);

type QAbstractItemView_activatedEvent is access procedure (index: QModelIndexH);
pragma Convention(C,QAbstractItemView_activatedEvent);

type QAbstractItemView_enteredEvent is access procedure (index: QModelIndexH);
pragma Convention(C,QAbstractItemView_enteredEvent);

type QAbstractItemView_viewportEnteredEvent is access procedure ;
pragma Convention(C,QAbstractItemView_viewportEnteredEvent);


procedure QAbstractItemView_signal_slot_pressed(handle: not null QAbstractItemViewH; hook:QAbstractItemView_pressedEvent);
pragma Import(C,QAbstractItemView_signal_slot_pressed, "QAbstractItemView_signal_slot_pressed");

procedure QAbstractItemView_signal_slot_clicked(handle: not null QAbstractItemViewH; hook:QAbstractItemView_clickedEvent);
pragma Import(C,QAbstractItemView_signal_slot_clicked, "QAbstractItemView_signal_slot_clicked");

procedure QAbstractItemView_signal_slot_doubleClicked(handle: not null QAbstractItemViewH; hook:QAbstractItemView_doubleClickedEvent);
pragma Import(C,QAbstractItemView_signal_slot_doubleClicked, "QAbstractItemView_signal_slot_doubleClicked");

procedure QAbstractItemView_signal_slot_activated(handle: not null QAbstractItemViewH; hook:QAbstractItemView_activatedEvent);
pragma Import(C,QAbstractItemView_signal_slot_activated, "QAbstractItemView_signal_slot_activated");

procedure QAbstractItemView_signal_slot_entered(handle: not null QAbstractItemViewH; hook:QAbstractItemView_enteredEvent);
pragma Import(C,QAbstractItemView_signal_slot_entered, "QAbstractItemView_signal_slot_entered");

procedure QAbstractItemView_signal_slot_viewportEntered(handle: not null QAbstractItemViewH; hook:QAbstractItemView_viewportEnteredEvent);
pragma Import(C,QAbstractItemView_signal_slot_viewportEntered, "QAbstractItemView_signal_slot_viewportEntered");

 type QAbstractItemDelegate_commitDataEvent is access procedure(widget:QWidgetH);
 pragma Convention(C, QAbstractItemDelegate_commitDataEvent);

 type QAbstractItemDelegate_closeEditor2Event is access procedure(widget:QWidgetH;event:integer);
 pragma Convention(C, QAbstractItemDelegate_closeEditor2Event);

 type QAbstractItemDelegate_closeEditorEvent is access procedure(widget:QWidgetH);
 pragma Convention(C, QAbstractItemDelegate_closeEditorEvent);
 
 procedure QAbstractItemDelegate_signal_slot_commitData(handle: not null QAbstractItemDelegateH; hook:QAbstractItemDelegate_commitDataEvent);
 pragma Import(C,QAbstractItemDelegate_signal_slot_commitData, "QAbstractItemDelegate_signal_slot_commitData");
 
 procedure QAbstractItemDelegate_signal_slot_closeEditor(handle: not null QAbstractItemDelegateH; hook:QAbstractItemDelegate_closeEditorEvent);
 pragma Import(C,QAbstractItemDelegate_signal_slot_closeEditor, "QAbstractItemDelegate_signal_slot_closeEditor");


---------------------------------------------------------------------------------------------------
function QAbstractItemView_itemDelegate(handle: not null  QAbstractItemViewH; index: QModelIndexH) return  QAbstractItemDelegateH;
------------------------------------------------------------------------------------------------------------------
 function  QColumnView_create(parent: QWidgetH  := null) return QColumnViewH ;
 pragma Import(C,QColumnView_create, "QColumnView_create");
 
 procedure QColumnView_destroy(handle: not null QColumnViewH);
 pragma Import(C,QColumnView_destroy, "QColumnView_destroy");
 
 function  QColumnView_indexAt(handle: not null QColumnViewH; point:QPointH) return QModelIndexH;
 pragma Import(C,QColumnView_indexAt, "QColumnView_indexAt");
 
 procedure QColumnView_scrollTo(handle: not null QColumnViewH; index: QModelIndexH; hint: QAbstractItemViewScrollHintH :=  EnsureVisible);
 pragma Import(C,QColumnView_scrollTo, "QColumnView_scrollTo");
 
 function  QColumnView_sizeHint(handle: not null QColumnViewH) return QSizeH;
 pragma Import(C,QColumnView_sizeHint, "QColumnView_sizeHint");
 
 function  QColumnView_visualRect(handle: not null QColumnViewH;index:QModelIndexH) return QRectH;
 pragma Import(C,QColumnView_visualRect, "QColumnView_visualRect");
 
 procedure QColumnView_setModel(handle: not null QColumnViewH;model:QAbstractItemModelH);
 pragma Import(C,QColumnView_setModel, "QColumnView_setModel");
 
 procedure QColumnView_setSelectionModel(handle: not null QColumnViewH; selectionModel:QItemSelectionModelH);
 pragma Import(C,QColumnView_setSelectionModel, "QColumnView_setSelectionModel");
 
 procedure QColumnView_setRootIndex(handle: not null QColumnViewH; index:QModelIndexH);
 pragma Import(C,QColumnView_setRootIndex, "QColumnView_setRootIndex");
 
 procedure QColumnView_selectAll(handle: not null QColumnViewH);
 pragma Import(C,QColumnView_selectAll, "QColumnView_selectAll");
 
 procedure QColumnView_setResizeGripsVisible(handle: not null QColumnViewH; isVisible: boolean);
 pragma Import(C,QColumnView_setResizeGripsVisible, "QColumnView_setResizeGripsVisible");
 
 function  QColumnView_resizeGripsVisible(handle: not null QColumnViewH) return boolean;
 pragma Import(C,QColumnView_resizeGripsVisible, "QColumnView_resizeGripsVisible");
 
 function  QColumnView_previewWidget(handle: not null QColumnViewH) return QWidgetH;
 pragma Import(C,QColumnView_previewWidget, "QColumnView_previewWidget");
 
 procedure QColumnView_setPreviewWidget(handle: not null QColumnViewH;widget:QWidgetH);
 pragma Import(C,QColumnView_setPreviewWidget, "QColumnView_setPreviewWidget");
 
 procedure QColumnView_setColumnWidths(handle: not null QColumnViewH; list:QIntListH);
 pragma Import(C,QColumnView_setColumnWidths, "QColumnView_setColumnWidths");
 
 function  QColumnView_columnWidths(handle: not null QColumnViewH) return QIntListH;
 pragma Import(C,QColumnView_columnWidths, "QColumnView_columnWidths");

 procedure QColumnView_signal_slot_updatePreviewWidget(handle:QColumnViewH; hook: updatePreviewWidget);
 pragma Import(C,QColumnView_signal_slot_updatePreviewWidget, "QColumnView_signal_slot_updatePreviewWidget");

 subtype  SelectionFlag  is cardinal;
 subtype  SelectionFlags is cardinal;

 NoUpdateFlag   : constant SelectionFlag := 16#0000#;
 ClearFlag      : constant SelectionFlag := 16#0001#;
 SelectFlag     : constant SelectionFlag := 16#0002#;
 DeselectFlag   : constant SelectionFlag := 16#0004#;
 ToggleFlag     : constant SelectionFlag := 16#0008#;
 CurrentFlag    : constant SelectionFlag := 16#0010#;
 RowsFlag       : constant SelectionFlag := 16#0020#;
 ColumnsFlag    : constant SelectionFlag := 16#0040#;
 SelectCurrent  : constant SelectionFlag := SelectFlag + CurrentFlag;
 ToggleCurrent  : constant SelectionFlag := ToggleFlag + CurrentFlag;
 ClearAndSelect : constant SelectionFlag := ClearFlag  + SelectFlag;

 type QAbstractItemViewCursorAction is (MoveUp, MoveDown, MoveLeft, MoveRight, MoveHome, MoveEnd, MovePageUp, MovePageDown, MoveNext, MovePrevious); 
 pragma convention(C,QAbstractItemViewCursorAction);

 type QAbstractItemViewState is (NoState,DraggingState,DragSelectingState,EditingState,ExpandingState,CollapsingState,AnimatingState);
 pragma convention(C,QAbstractItemViewState);
    
 type QAbstractItemViewDropIndicatorPosition is (OnItem, AboveItem, BelowItem, OnViewport);
 pragma convention(C,QAbstractItemViewDropIndicatorPosition);

 procedure QAbstractItemView_setHorizontalStepsPerItem(handle:QAbstractItemViewH;steps:integer);
 pragma Import(C,QAbstractItemView_setHorizontalStepsPerItem, "QAbstractItemView_setHorizontalStepsPerItem");
 
 function  QAbstractItemView_horizontalStepsPerItem(handle:QAbstractItemViewH) return integer;
 pragma Import(C,QAbstractItemView_horizontalStepsPerItem, "QAbstractItemView_horizontalStepsPerItem");
 
 procedure QAbstractItemView_setVerticalStepsPerItem(handle:QAbstractItemViewH; steps:integer);
 pragma Import(C,QAbstractItemView_setVerticalStepsPerItem, "QAbstractItemView_setVerticalStepsPerItem");
 
 function  QAbstractItemView_verticalStepsPerItem(handle:QAbstractItemViewH) return integer;
 pragma Import(C,QAbstractItemView_verticalStepsPerItem, "QAbstractItemView_verticalStepsPerItem");
 
 procedure QAbstractItemView_setSelection(handle:QAbstractItemViewH;rect:QRectH; command:SelectionFlags);
 pragma Import(C,QAbstractItemView_setSelection, "QAbstractItemView_setSelection");
 
 function  QAbstractItemView_selectedIndexes(handle:QAbstractItemViewH) return QModelIndexListH;
 pragma Import(C,QAbstractItemView_selectedIndexes, "QAbstractItemView_selectedIndexes");
 
 function  QAbstractItemView_edit2(handle:QAbstractItemViewH;index:QModelIndexH; trigger:QAbstractItemViewEditTrigger ;event: QEventH) return boolean;
 pragma Import(C,QAbstractItemView_edit2, "QAbstractItemView_edit2");
 
 function  QAbstractItemView_selectionCommand(handle:QAbstractItemViewH;index:QModelIndexH; event: QEventH := null) return SelectionFlags;
 pragma Import(C,QAbstractItemView_selectionCommand, "QAbstractItemView_selectionCommand");
 
 procedure QAbstractItemView_startDrag(handle:QAbstractItemViewH;supportedActions:QtDropActions);
 pragma Import(C,QAbstractItemView_startDrag, "QAbstractItemView_startDrag");
 
 function  QAbstractItemView_viewOptions(handle:QAbstractItemViewH) return QStyleOptionViewItemH;
 pragma Import(C,QAbstractItemView_viewOptions, "QAbstractItemView_viewOptions");
 
 function  QAbstractItemView_state(handle:QAbstractItemViewH) return QAbstractItemViewState;
 pragma Import(C,QAbstractItemView_state, "QAbstractItemView_state");
 
 procedure QAbstractItemView_setState(handle:QAbstractItemViewH;state:QAbstractItemViewState);
 pragma Import(C,QAbstractItemView_setState, "QAbstractItemView_setState");
 
 procedure QAbstractItemView_scheduleDelayedItemsLayout(handle:QAbstractItemViewH);
 pragma Import(C,QAbstractItemView_scheduleDelayedItemsLayout, "QAbstractItemView_scheduleDelayedItemsLayout");
 
 procedure QAbstractItemView_executeDelayedItemsLayout(handle:QAbstractItemViewH);
 pragma Import(C,QAbstractItemView_executeDelayedItemsLayout, "QAbstractItemView_executeDelayedItemsLayout");
 
 procedure QAbstractItemView_setDirtyRegion(handle:QAbstractItemViewH;region:QRegionH);
 pragma Import(C,QAbstractItemView_setDirtyRegion, "QAbstractItemView_setDirtyRegion");
 
 procedure QAbstractItemView_scrollDirtyRegion(handle:QAbstractItemViewH; dx,dy:integer);
 pragma Import(C,QAbstractItemView_scrollDirtyRegion, "QAbstractItemView_scrollDirtyRegion");
 
 function  QAbstractItemView_dirtyRegionOffset(handle:QAbstractItemViewH) return QPointH;
 pragma Import(C,QAbstractItemView_dirtyRegionOffset, "QAbstractItemView_dirtyRegionOffset");
 
 procedure QAbstractItemView_startAutoScroll(handle:QAbstractItemViewH);
 pragma Import(C,QAbstractItemView_startAutoScroll, "QAbstractItemView_startAutoScroll");
 
 procedure QAbstractItemView_stopAutoScroll(handle:QAbstractItemViewH);
 pragma Import(C,QAbstractItemView_stopAutoScroll, "QAbstractItemView_stopAutoScroll");
 
 procedure QAbstractItemView_doAutoScroll(handle:QAbstractItemViewH);
 pragma Import(C,QAbstractItemView_doAutoScroll, "QAbstractItemView_doAutoScroll");
 
 function  QAbstractItemView_focusNextPrevChild(handle:QAbstractItemViewH;next:boolean) return boolean;
 pragma Import(C,QAbstractItemView_focusNextPrevChild, "QAbstractItemView_focusNextPrevChild");
 
 function  QAbstractItemView_event(handle:QAbstractItemViewH;event:QEventH) return boolean;
 pragma Import(C,QAbstractItemView_event, "QAbstractItemView_event");
 
 function  QAbstractItemView_viewportEvent(handle:QAbstractItemViewH;event:QEventH) return boolean;
 pragma Import(C,QAbstractItemView_viewportEvent, "QAbstractItemView_viewportEvent");
 
 procedure QAbstractItemView_mousePressEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_mousePressEvent, "QAbstractItemView_mousePressEvent");
 
 procedure QAbstractItemView_mouseMoveEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_mouseMoveEvent, "QAbstractItemView_mouseMoveEvent");
 
 procedure QAbstractItemView_mouseReleaseEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_mouseReleaseEvent, "QAbstractItemView_mouseReleaseEvent");
 
 procedure QAbstractItemView_mouseDoubleClickEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_mouseDoubleClickEvent, "QAbstractItemView_mouseDoubleClickEvent");
 
 procedure QAbstractItemView_dragEnterEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_dragEnterEvent, "QAbstractItemView_dragEnterEvent");
 
 procedure QAbstractItemView_dragMoveEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_dragMoveEvent, "QAbstractItemView_dragMoveEvent");
 
 procedure QAbstractItemView_dragLeaveEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_dragLeaveEvent, "QAbstractItemView_dragLeaveEvent");
 
 procedure QAbstractItemView_dropEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_dropEvent, "QAbstractItemView_dropEvent");
 
 procedure QAbstractItemView_focusInEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_focusInEvent, "QAbstractItemView_focusInEvent");
 
 procedure QAbstractItemView_focusOutEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_focusOutEvent, "QAbstractItemView_focusOutEvent");
 
 procedure QAbstractItemView_keyPressEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_keyPressEvent, "QAbstractItemView_keyPressEvent");
 
 procedure QAbstractItemView_resizeEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_resizeEvent, "QAbstractItemView_resizeEvent");
 
 procedure QAbstractItemView_timerEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_timerEvent, "QAbstractItemView_timerEvent");
 
 procedure QAbstractItemView_inputMethodEvent(handle:QAbstractItemViewH;event:QEventH);
 pragma Import(C,QAbstractItemView_inputMethodEvent, "QAbstractItemView_inputMethodEvent");
 
 function  QAbstractItemView_dropIndicatorPosition(handle:QAbstractItemViewH) return QAbstractItemViewDropIndicatorPosition;
 pragma Import(C,QAbstractItemView_dropIndicatorPosition, "QAbstractItemView_dropIndicatorPosition");
 
 function  QAbstractItemView_viewportSizeHint(handle:QAbstractItemViewH) return QSizeH;
 pragma Import(C,QAbstractItemView_viewportSizeHint, "QAbstractItemView_viewportSizeHint");
 
 function  QAbstractItemView_edit(handle:QAbstractItemViewH;index:QModelIndexH; trigger:QAbstractItemViewEditTrigger ;event: QEventH) return boolean;

end Qt.QAbstractItemView;
