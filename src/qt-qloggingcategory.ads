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

with Qt.QNamespace; use Qt.QNamespace;
with builtin; use builtin;
package Qt.QLoggingCategory is

 type QLoggingCategoryH is new QObjectH;

 type CategoryFilter is access procedure(category: QLoggingCategoryH);
 pragma convention(C,CategoryFilter);

 function  QLoggingCategory_create(category:zstring) return QLoggingCategoryH;
 pragma Import(C,QLoggingCategory_create, "QLoggingCategory_create");
 
 function  QLoggingCategory_create2(category:zstring;severityLevel: QtMsgType) return QLoggingCategoryH;
 pragma Import(C,QLoggingCategory_create2, "QLoggingCategory_create2");
 
 procedure QLoggingCategory_destroy(handle:not null QLoggingCategoryH);
 pragma Import(C,QLoggingCategory_destroy, "QLoggingCategory_destroy");
 
 function  QLoggingCategory_isEnabled(handle:not null QLoggingCategoryH;tp:QtMsgType) return boolean;
 pragma Import(C,QLoggingCategory_isEnabled, "QLoggingCategory_isEnabled");
 
 procedure QLoggingCategory_setEnabled(handle:not null QLoggingCategoryH;tp:QtMsgType;enable: boolean);
 pragma Import(C,QLoggingCategory_setEnabled, "QLoggingCategory_setEnabled");
 
 function  QLoggingCategory_isDebugEnabled(handle:not null QLoggingCategoryH) return boolean;
 pragma Import(C,QLoggingCategory_isDebugEnabled, "QLoggingCategory_isDebugEnabled");
 
 function  QLoggingCategory_isInfoEnabled(handle:not null QLoggingCategoryH) return boolean;
 pragma Import(C,QLoggingCategory_isInfoEnabled, "QLoggingCategory_isInfoEnabled");
 
 function  QLoggingCategory_isWarningEnabled(handle:not null QLoggingCategoryH) return boolean;
 pragma Import(C,QLoggingCategory_isWarningEnabled, "QLoggingCategory_isWarningEnabled");
 
 function  QLoggingCategory_isCriticalEnabled(handle:not null QLoggingCategoryH) return boolean;
 pragma Import(C,QLoggingCategory_isCriticalEnabled, "QLoggingCategory_isCriticalEnabled");
 
 function  QLoggingCategory_categoryName(handle:not null QLoggingCategoryH) return zstring;
 pragma Import(C,QLoggingCategory_categoryName, "QLoggingCategory_categoryName");
 
 function  QLoggingCategory_defaultCategory return QLoggingCategoryH;
 pragma Import(C,QLoggingCategory_defaultCategory, "QLoggingCategory_defaultCategory");

 function  QLoggingCategory_installFilter(filter:CategoryFilter) return CategoryFilter;
 pragma Import(C,QLoggingCategory_installFilter, "QLoggingCategory_installFilter");
 
 procedure QLoggingCategory_setFilterRules(rules:QStringH);
 pragma Import(C,QLoggingCategory_setFilterRules, "QLoggingCategory_setFilterRules");
 
end;
