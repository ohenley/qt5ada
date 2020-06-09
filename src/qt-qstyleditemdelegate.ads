--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2015                      บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QStyledItemDelegate is

 function  QStyledItemDelegate_create(parent:QObjectH := null ) return QStyledItemDelegateH;
 pragma Import(C,QStyledItemDelegate_create, "QStyledItemDelegate_create");
 
 procedure QStyledItemDelegate_destroy(handle:not null QStyledItemDelegateH);
 pragma Import(C,QStyledItemDelegate_destroy, "QStyledItemDelegate_destroy");
 
 procedure QStyledItemDelegate_paint(handle:not null QStyledItemDelegateH; painter:QPainterH; option:QStyleOptionViewItemH; index:QModelIndexH);
 pragma Import(C,QStyledItemDelegate_paint, "QStyledItemDelegate_paint");
 
 function  QStyledItemDelegate_sizeHint(handle:not null QStyledItemDelegateH; option:QStyleOptionViewItemH; index:QModelIndexH) return QSizeH;
 pragma Import(C,QStyledItemDelegate_sizeHint, "QStyledItemDelegate_sizeHint");
 
 function  QStyledItemDelegate_createEditor(handle:not null QStyledItemDelegateH; parent:QWidgetH; option:QStyleOptionViewItemH; index:QModelIndexH) return QWidgetH;
 pragma Import(C,QStyledItemDelegate_createEditor, "QStyledItemDelegate_createEditor");
 
 procedure QStyledItemDelegate_setEditorData(handle:not null QStyledItemDelegateH; editor:QWidgetH; index:QModelIndexH);
 pragma Import(C,QStyledItemDelegate_setEditorData, "QStyledItemDelegate_setEditorData");
 
 procedure QStyledItemDelegate_setModelData(handle:not null QStyledItemDelegateH; editor:QWidgetH;model: QAbstractItemModelH;index: QModelIndexH);
 pragma Import(C,QStyledItemDelegate_setModelData, "QStyledItemDelegate_setModelData");
 
 procedure QStyledItemDelegate_updateEditorGeometry(handle:not null QStyledItemDelegateH; editor:QWidgetH; option:QStyleOptionViewItemH; index:QModelIndexH);
 pragma Import(C,QStyledItemDelegate_updateEditorGeometry, "QStyledItemDelegate_updateEditorGeometry");
 
 function  QStyledItemDelegate_itemEditorFactory(handle:not null QStyledItemDelegateH) return QItemEditorFactoryH;
 pragma Import(C,QStyledItemDelegate_itemEditorFactory, "QStyledItemDelegate_itemEditorFactory");
 
 procedure QStyledItemDelegate_setItemEditorFactory(handle:not null QStyledItemDelegateH; factory:QItemEditorFactoryH);
 pragma Import(C,QStyledItemDelegate_setItemEditorFactory, "QStyledItemDelegate_setItemEditorFactory");
 
 function  QStyledItemDelegate_displayText(handle:not null QStyledItemDelegateH; value:QVariantH; locale:QLocaleH) return QStringH;
 pragma Import(C,QStyledItemDelegate_displayText, "QStyledItemDelegate_displayText");
 
 procedure QStyledItemDelegate_initStyleOption(handle: not null QStyledItemDelegateH;option:QStyleOptionViewItemH;index:QModelIndexH);
 pragma Import(C,QStyledItemDelegate_initStyleOption, "QStyledItemDelegate_initStyleOption");
 
 function  QStyledItemDelegate_eventFilter(handle: not null QStyledItemDelegateH;object:QObjectH;e: QEventH) return boolean;
 pragma Import(C,QStyledItemDelegate_eventFilter, "QStyledItemDelegate_eventFilter");
 
 function  QStyledItemDelegate_editorEvent(handle: not null QStyledItemDelegateH;e:QEventH;model: QAbstractItemModelH;option:QStyleOptionViewItemH;index:QModelIndexH) return boolean;
 pragma Import(C,QStyledItemDelegate_editorEvent, "QStyledItemDelegate_editorEvent");

 type customPaintProc is access function(painter:QPainterH;option: QStyleOptionViewItemH; index: QModelIndexH) return boolean;
 pragma convention(C,customPaintProc);

 type customCreateEditorProc is access function(parent:QWidgetH;option: QStyleOptionViewItemH;index: QModelIndexH) return QWidgetH;
 pragma convention(C,customCreateEditorProc);

 type customSetEditorDataProc is access function(editor: QWidgetH;index:QModelIndexH) return boolean;
 pragma convention(C,customSetEditorDataProc);

 type customSetModelDataProc is access function(editor:QWidgetH; model:QAbstractItemModelH; index: QModelIndexH) return boolean;
 pragma convention(C,customSetModelDataProc);

 type customSizeHintProc is access function(option:QStyleOptionViewItemH;index: QModelIndexH) return QSizeH; 
 pragma convention(C,customSizeHintProc);

 type customUpdateEditorGeometryProc is access function(editor:QWidgetH;option: QStyleOptionViewItemH;index: QModelIndexH) return boolean;
 pragma convention(C,customUpdateEditorGeometryProc); 
 
 function QStyledItemDelegate_createWithCustomEventFilter(parent: QObjectH := null;f:TEventFilterMethod) return QStyledItemDelegateH;  
 pragma Import(C,QStyledItemDelegate_createWithCustomEventFilter,"QStyledItemDelegate_create2");
 
 -- ATTENTION !!! To use default delegate methods need return from custom functions FALSE or NULL

 procedure QStyledItemDelegate_setUserPaintProc(handle:not null QStyledItemDelegateH;customPaint:customPaintProc);
 pragma Import(C,QStyledItemDelegate_setUserPaintProc, "QStyledItemDelegate_setUserPaintProc");
 
 procedure QStyledItemDelegate_setUserCreateEditorProc(handle:not null QStyledItemDelegateH;customCreateEditor:customCreateEditorProc);
 pragma Import(C,QStyledItemDelegate_setUserCreateEditorProc, "QStyledItemDelegate_setUserCreateEditorProc");
  
 procedure QStyledItemDelegate_setUserEditorDataProc(handle:not null QStyledItemDelegateH;customSetEditorData:customSetEditorDataProc);
 pragma Import(C,QStyledItemDelegate_setUserEditorDataProc, "QStyledItemDelegate_setUserEditorDataProc");
  
 procedure QStyledItemDelegate_setUserModelDataProc(handle:not null QStyledItemDelegateH;customSetModelData:customSetModelDataProc);
 pragma Import(C,QStyledItemDelegate_setUserModelDataProc, "QStyledItemDelegate_setUserModelDataProc");

 procedure QStyledItemDelegate_setUserSizeHintProc(handle:not null QStyledItemDelegateH;customSizeHint: customSizeHintProc);
 pragma Import(C,QStyledItemDelegate_setUserSizeHintProc, "QStyledItemDelegate_setUserSizeHintProc");
 
 procedure QStyledItemDelegate_setUserUpdateEditorGeometryProc(handle:not null QStyledItemDelegateH; customUpdateEditorGeometry:customUpdateEditorGeometryProc);
 pragma Import(C,QStyledItemDelegate_setUserUpdateEditorGeometryProc, "QStyledItemDelegate_setUserUpdateEditorGeometryProc");

 function  QStyledItemDelegate_staticCast(handle:not null QStyledItemDelegateH;editor:QWidgetH) return QWidgetH;
 pragma Import(C,QStyledItemDelegate_staticCast, "QStyledItemDelegate_staticCast");
  
end;
