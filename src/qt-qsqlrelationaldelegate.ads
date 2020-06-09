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

package Qt.QSqlRelationaldelegate is

 function  QSqlRelationalDelegate_create(parent:QObjectH) return QSqlRelationalDelegateH;
 pragma Import(C,QSqlRelationalDelegate_create, "QSqlRelationalDelegate_create");
 
 procedure QSqlRelationalDelegate_destroy(handle: not null QSqlRelationalDelegateH);
 pragma Import(C,QSqlRelationalDelegate_destroy, "QSqlRelationalDelegate_destroy");
 
 function  QSqlRelationalDelegate_createEditor(handle: not null QSqlRelationalDelegateH;parent:QWidgetH;option:QStyleOptionViewItemH;index:QModelIndexH) return QWidgetH;
 pragma Import(C,QSqlRelationalDelegate_createEditor, "QSqlRelationalDelegate_createEditor");
 
 procedure QSqlRelationalDelegate_setModelData(handle: not null QSqlRelationalDelegateH;editor:QWidgetH;model: QAbstractItemModelH; index:QModelIndexH);
 pragma Import(C,QSqlRelationalDelegate_setModelData, "QSqlRelationalDelegate_setModelData");
 
end;
