-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2016,2017                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QAbstractAxis;
package Qt.QBarCategoryAxis is

 function  QBarCategoryAxis_create(parent:QObjectH := null) return QAxisH;
 pragma Import(C,QBarCategoryAxis_create, "QBarCategoryAxis_create");
 
 procedure QBarCategoryAxis_destroy(handle:not null QAxisH);
 pragma Import(C,QBarCategoryAxis_destroy, "QBarCategoryAxis_destroy");
 
 function  QBarCategoryAxis_type(handle:not null QAxisH) return Qt.QAbstractAxis.AxisType;
 pragma Import(C,QBarCategoryAxis_type, "QBarCategoryAxis_type");
 
 procedure QBarCategoryAxis_append(handle:not null QAxisH;categories:QStringListH);
 pragma Import(C,QBarCategoryAxis_append, "QBarCategoryAxis_append");
 
 procedure QBarCategoryAxis_append2(handle:not null QAxisH;category:QStringH);
 pragma Import(C,QBarCategoryAxis_append2, "QBarCategoryAxis_append2");
 
 procedure QBarCategoryAxis_remove(handle:not null QAxisH;category:QStringH);
 pragma Import(C,QBarCategoryAxis_remove, "QBarCategoryAxis_remove");
 
 procedure QBarCategoryAxis_insert(handle:not null QAxisH;index:integer;category: QStringH);
 pragma Import(C,QBarCategoryAxis_insert, "QBarCategoryAxis_insert");
 
 procedure QBarCategoryAxis_replace(handle:not null QAxisH;oldCategory,newCategory: QStringH);
 pragma Import(C,QBarCategoryAxis_replace, "QBarCategoryAxis_replace");
 
 procedure QBarCategoryAxis_clear(handle:not null QAxisH);
 pragma Import(C,QBarCategoryAxis_clear, "QBarCategoryAxis_clear");
 
 procedure QBarCategoryAxis_setCategories(handle:not null QAxisH;categories:QStringListH);
 pragma Import(C,QBarCategoryAxis_setCategories, "QBarCategoryAxis_setCategories");
 
 function  QBarCategoryAxis_categories(handle:not null QAxisH) return QStringListH;
 pragma Import(C,QBarCategoryAxis_categories, "QBarCategoryAxis_categories");
 
 function  QBarCategoryAxis_count(handle:not null QAxisH) return integer;
 pragma Import(C,QBarCategoryAxis_count, "QBarCategoryAxis_count");
 
 function  QBarCategoryAxis_at(handle:not null QAxisH;index:int) return QStringH;
 pragma Import(C,QBarCategoryAxis_at, "QBarCategoryAxis_at");
 
 procedure QBarCategoryAxis_setMin(handle:not null QAxisH;minCategory:QStringH);
 pragma Import(C,QBarCategoryAxis_setMin, "QBarCategoryAxis_setMin");
 
 function  QBarCategoryAxis_min(handle:not null QAxisH) return QStringH;
 pragma Import(C,QBarCategoryAxis_min, "QBarCategoryAxis_min");
 
 procedure QBarCategoryAxis_setMax(handle:not null QAxisH;maxCategory:QStringH);
 pragma Import(C,QBarCategoryAxis_setMax, "QBarCategoryAxis_setMax");
 
 function  QBarCategoryAxis_max(handle:not null QAxisH) return QStringH;
 pragma Import(C,QBarCategoryAxis_max, "QBarCategoryAxis_max");
 
 procedure QBarCategoryAxis_setRange(handle:not null QAxisH;minCategory:QStringH;maxCategory: QStringH);
 pragma Import(C,QBarCategoryAxis_setRange, "QBarCategoryAxis_setRange");
 
 
 type stringStringCallbackH is access procedure(p1,p2:QStringH);
 pragma convention(C,stringStringCallbackH);
 
 procedure QBarCategoryAxis_signal_slot_categoriesChanged(handle:not null QAxisH;hook:voidCallbackH);
 pragma Import(C,QBarCategoryAxis_signal_slot_categoriesChanged, "QBarCategoryAxis_signal_slot_categoriesChanged");
 
 procedure QBarCategoryAxis_signal_slot_minChanged(handle:not null QAxisH;hook:qstringCallbackH);
 pragma Import(C,QBarCategoryAxis_signal_slot_minChanged, "QBarCategoryAxis_signal_slot_minChanged");
 
 procedure QBarCategoryAxis_signal_slot_maxChanged(handle:not null QAxisH;hook:qstringCallbackH);
 pragma Import(C,QBarCategoryAxis_signal_slot_maxChanged, "QBarCategoryAxis_signal_slot_maxChanged");
 
 procedure QBarCategoryAxis_signal_slot_rangeChanged(handle:not null QAxisH;hook:stringStringCallbackH);
 pragma Import(C,QBarCategoryAxis_signal_slot_rangeChanged, "QBarCategoryAxis_signal_slot_rangeChanged");
 
 procedure QBarCategoryAxis_signal_slot_countChanged(handle:not null QAxisH;hook:voidCallbackH);
 pragma Import(C,QBarCategoryAxis_signal_slot_countChanged, "QBarCategoryAxis_signal_slot_countChanged");
 
 procedure QBarCategoryAxis_append(handle:not null QAxisH;category:QStringH);

end;
