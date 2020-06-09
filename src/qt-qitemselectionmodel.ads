--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Interfaces.C; use Interfaces.C;
package Qt.QItemSelectionModel  is

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

 function  QItemSelectionRange_create return QItemSelectionRangeH;
 pragma Import(c,QItemSelectionRange_create, "QItemSelectionRange_create");

 procedure QItemSelectionRange_destroy(handle: not null  QItemSelectionRangeH);
 pragma Import(c,QItemSelectionRange_destroy, "QItemSelectionRange_destroy");

 function  QItemSelectionRange_create2(other: QItemSelectionRangeH) return QItemSelectionRangeH;
 pragma Import(c,QItemSelectionRange_create2, "QItemSelectionRange_create2");

 function  QItemSelectionRange_create3(topLeft: QModelIndexH; bottomRight: QModelIndexH) return QItemSelectionRangeH;
 pragma Import(c,QItemSelectionRange_create3, "QItemSelectionRange_create3");

 function  QItemSelectionRange_create4(index: QModelIndexH) return QItemSelectionRangeH;
 pragma Import(c,QItemSelectionRange_create4, "QItemSelectionRange_create4");

 function  QItemSelectionRange_top(handle: not null  QItemSelectionRangeH) return integer;
 pragma Import(c,QItemSelectionRange_top, "QItemSelectionRange_top");

 function  QItemSelectionRange_left(handle: not null  QItemSelectionRangeH) return integer;
 pragma Import(c,QItemSelectionRange_left, "QItemSelectionRange_left");

 function  QItemSelectionRange_bottom(handle: not null  QItemSelectionRangeH) return integer;
 pragma Import(c,QItemSelectionRange_bottom, "QItemSelectionRange_bottom");

 function  QItemSelectionRange_right(handle: not null  QItemSelectionRangeH) return integer;
 pragma Import(c,QItemSelectionRange_right, "QItemSelectionRange_right");

 function  QItemSelectionRange_width(handle: not null  QItemSelectionRangeH) return integer;
 pragma Import(c,QItemSelectionRange_width, "QItemSelectionRange_width");

 function  QItemSelectionRange_height(handle: not null  QItemSelectionRangeH) return integer;
 pragma Import(c,QItemSelectionRange_height, "QItemSelectionRange_height");

 function  QItemSelectionRange_topLeft(handle: not null  QItemSelectionRangeH) return QModelIndexH;
 pragma Import(c,QItemSelectionRange_topLeft, "QItemSelectionRange_topLeft");

 function  QItemSelectionRange_bottomRight(handle: not null  QItemSelectionRangeH) return QModelIndexH;
 pragma Import(c,QItemSelectionRange_bottomRight, "QItemSelectionRange_bottomRight");

 function  QItemSelectionRange_parent(handle: not null  QItemSelectionRangeH) return QModelIndexH;
 pragma Import(c,QItemSelectionRange_parent, "QItemSelectionRange_parent");

 function  QItemSelectionRange_model(handle: not null  QItemSelectionRangeH) return QAbstractItemModelH;
 pragma Import(c,QItemSelectionRange_model, "QItemSelectionRange_model");

 function  QItemSelectionRange_contains(handle: not null  QItemSelectionRangeH; index: QModelIndexH) return boolean;
 pragma Import(c,QItemSelectionRange_contains, "QItemSelectionRange_contains");

 function  QItemSelectionRange_contains2(handle: not null  QItemSelectionRangeH; row:integer; column:integer; parentIndex: QModelIndexH) return boolean;
 pragma Import(c,QItemSelectionRange_contains2, "QItemSelectionRange_contains2");

 function  QItemSelectionRange_intersects(handle: not null  QItemSelectionRangeH; other: QItemSelectionRangeH) return boolean;
 pragma Import(c,QItemSelectionRange_intersects, "QItemSelectionRange_intersects");

-- function  QItemSelectionRange_intersect(handle: not null  QItemSelectionRangeH; other: QItemSelectionRangeH) return QItemSelectionRangeH;
-- pragma Import(c,QItemSelectionRange_intersect, "QItemSelectionRange_intersect");

 function  QItemSelectionRange_intersected(handle: not null  QItemSelectionRangeH; other: QItemSelectionRangeH) return QItemSelectionRangeH;
 pragma Import(c,QItemSelectionRange_intersected, "QItemSelectionRange_intersected");

 function  QItemSelectionRange_isValid(handle: not null  QItemSelectionRangeH) return boolean;
 pragma Import(c,QItemSelectionRange_isValid, "QItemSelectionRange_isValid");

 procedure QItemSelectionRange_swap(handle,other:not null QItemSelectionRangeH);
 pragma Import(C,QItemSelectionRange_swap, "QItemSelectionRange_swap");
 
 function  QItemSelectionModel_create(model: QAbstractItemModelH) return QItemSelectionModelH;
 pragma Import(c,QItemSelectionModel_create, "QItemSelectionModel_create");

 procedure QItemSelectionModel_destroy(handle: not null  QItemSelectionModelH);
 pragma Import(c,QItemSelectionModel_destroy, "QItemSelectionModel_destroy");

 function  QItemSelectionModel_create2(model: QAbstractItemModelH; parent:QObjectH) return QItemSelectionModelH;
 pragma Import(c,QItemSelectionModel_create2, "QItemSelectionModel_create2");

 function  QItemSelectionModel_currentIndex(handle: not null  QItemSelectionModelH) return QModelIndexH;
 pragma Import(c,QItemSelectionModel_currentIndex, "QItemSelectionModel_currentIndex");

 function  QItemSelectionModel_isSelected(handle: not null  QItemSelectionModelH; index: QModelIndexH) return boolean;
 pragma Import(c,QItemSelectionModel_isSelected, "QItemSelectionModel_isSelected");

 function  QItemSelectionModel_isRowSelected(handle: not null  QItemSelectionModelH; row:integer; parent: QModelIndexH) return boolean;
 pragma Import(c,QItemSelectionModel_isRowSelected, "QItemSelectionModel_isRowSelected");

 function  QItemSelectionModel_isColumnSelected(handle: not null  QItemSelectionModelH; column:integer; parent: QModelIndexH) return boolean;
 pragma Import(c,QItemSelectionModel_isColumnSelected, "QItemSelectionModel_isColumnSelected");

 function  QItemSelectionModel_rowIntersectsSelection(handle: not null  QItemSelectionModelH; row:integer; parent: QModelIndexH) return boolean;
 pragma Import(c,QItemSelectionModel_rowIntersectsSelection, "QItemSelectionModel_rowIntersectsSelection");

 function  QItemSelectionModel_columnIntersectsSelection(handle: not null  QItemSelectionModelH; column:integer; parent: QModelIndexH) return boolean;
 pragma Import(c,QItemSelectionModel_columnIntersectsSelection, "QItemSelectionModel_columnIntersectsSelection");

 function  QItemSelectionModel_hasSelection(handle: not null  QItemSelectionModelH) return boolean;
 pragma Import(c,QItemSelectionModel_hasSelection, "QItemSelectionModel_hasSelection");

 function  QItemSelectionModel_model(handle: not null  QItemSelectionModelH) return QAbstractItemModelH;
 pragma Import(c,QItemSelectionModel_model, "QItemSelectionModel_model");

 procedure QItemSelectionModel_setCurrentIndex(handle: not null  QItemSelectionModelH; index:QModelIndexH; command:quint);
 pragma Import(c,QItemSelectionModel_setCurrentIndex, "QItemSelectionModel_setCurrentIndex");

 procedure QItemSelectionModel_select(handle: not null  QItemSelectionModelH; index:QModelIndexH; command:quint);
 pragma Import(c,QItemSelectionModel_select, "QItemSelectionModel_select");

 procedure QItemSelectionModel_clear(handle: not null  QItemSelectionModelH);
 pragma Import(c,QItemSelectionModel_clear, "QItemSelectionModel_clear");

 procedure QItemSelectionModel_reset(handle: not null  QItemSelectionModelH);
 pragma Import(c,QItemSelectionModel_reset, "QItemSelectionModel_reset");

 procedure QItemSelectionModel_clearSelection(handle: not null  QItemSelectionModelH);
 pragma Import(c,QItemSelectionModel_clearSelection, "QItemSelectionModel_clearSelection");

 function  QItemSelectionModel_selectedIndexes(handle: not null QItemSelectionModelH) return  QModelIndexListH;
 pragma Import(C,QItemSelectionModel_selectedIndexes, "QItemSelectionModel_selectedIndexes");
 
 function  QItemSelectionModel_selectedRows(handle: not null QItemSelectionModelH;column :integer := 0) return  QModelIndexListH;
 pragma Import(C,QItemSelectionModel_selectedRows, "QItemSelectionModel_selectedRows");
 
 function  QItemSelectionModel_selectedColumns(handle: not null QItemSelectionModelH;row :integer := 0) return  QModelIndexListH;
 pragma Import(C,QItemSelectionModel_selectedColumns, "QItemSelectionModel_selectedColumns");

 type QItemSelectionModel_currentChangedEvent is access procedure(p1,p2:QModelIndexH);
 pragma Convention(C,QItemSelectionModel_currentChangedEvent);

 type QItemSelectionModel_currentRowChangedEvent is access procedure(p1,p2:QModelIndexH);
 pragma Convention(C,QItemSelectionModel_currentRowChangedEvent);

 type QItemSelectionModel_currentColumnChangedEvent is access procedure(p1,p2:QModelIndexH);
 pragma Convention(C,QItemSelectionModel_currentColumnChangedEvent);
 
 procedure QItemSelectionModel_signal_slot_currentChanged(handle: not null QItemSelectionModelH; hook:QItemSelectionModel_currentChangedEvent);
 pragma Import(C,QItemSelectionModel_signal_slot_currentChanged, "QItemSelectionModel_signal_slot_currentChanged");
 
 procedure QItemSelectionModel_signal_slot_currentRowChanged(handle: not null QItemSelectionModelH; hook:QItemSelectionModel_currentRowChangedEvent);
 pragma Import(C,QItemSelectionModel_signal_slot_currentRowChanged, "QItemSelectionModel_signal_slot_currentRowChanged");
 
 procedure QItemSelectionModel_signal_slot_currentColumnChanged(handle: not null QItemSelectionModelH; hook:QItemSelectionModel_currentColumnChangedEvent);
 pragma Import(C,QItemSelectionModel_signal_slot_currentColumnChanged, "QItemSelectionModel_signal_slot_currentColumnChanged");
 
--------------------------------------------------------------------------------------------------------------------------
 function  QItemSelectionRange_create(other: QItemSelectionRangeH) return QItemSelectionRangeH;
 function  QItemSelectionRange_create(topLeft: QModelIndexH; bottomRight: QModelIndexH) return QItemSelectionRangeH;
 function  QItemSelectionRange_create(index: QModelIndexH) return QItemSelectionRangeH;
 function  QItemSelectionRange_contains(handle: not null  QItemSelectionRangeH; row:integer; column:integer; parentIndex: QModelIndexH) return boolean;
 function  QItemSelectionModel_create(model: QAbstractItemModelH; parent:QObjectH) return QItemSelectionModelH;
end     Qt.QItemSelectionModel;
