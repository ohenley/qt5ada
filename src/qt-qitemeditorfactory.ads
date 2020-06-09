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

with Qt.QVariant; use Qt.QVariant;
package Qt.QItemEditorFactory   is

 function  QItemEditorCreatorBase_createWidget(handle: not null  QItemEditorCreatorBaseH; parent:QWidgetH) return QWidgetH;
 pragma Import(c,QItemEditorCreatorBase_createWidget, "QItemEditorCreatorBase_createWidget");

 function  QItemEditorCreatorBase_valuePropertyName(handle: not null  QItemEditorCreatorBaseH) return QByteArrayH;
 pragma Import(c,QItemEditorCreatorBase_valuePropertyName, "QItemEditorCreatorBase_valuePropertyName");

 function  QItemEditorFactory_create return QItemEditorFactoryH;
 pragma Import(c,QItemEditorFactory_create, "QItemEditorFactory_create");

 procedure QItemEditorFactory_destroy(handle: not null  QItemEditorFactoryH);
 pragma Import(c,QItemEditorFactory_destroy, "QItemEditorFactory_destroy");

 function  QItemEditorFactory_createEditor(handle: not null  QItemEditorFactoryH; tp: QVariantType; parent:QWidgetH) return QWidgetH;
 pragma Import(c,QItemEditorFactory_createEditor, "QItemEditorFactory_createEditor");

 function  QItemEditorFactory_valuePropertyName(handle: not null  QItemEditorFactoryH; tp: QVariantType) return QByteArrayH;
 pragma Import(c,QItemEditorFactory_valuePropertyName, "QItemEditorFactory_valuePropertyName");

 procedure QItemEditorFactory_registerEditor(handle: not null  QItemEditorFactoryH; tp: QVariantType; creator: QItemEditorCreatorBaseH);
 pragma Import(c,QItemEditorFactory_registerEditor, "QItemEditorFactory_registerEditor");

 function  QItemEditorFactory_defaultFactory return QItemEditorFactoryH;
 pragma Import(c,QItemEditorFactory_defaultFactory, "QItemEditorFactory_defaultFactory");

 procedure QItemEditorFactory_setDefaultFactory(factory: QItemEditorFactoryH);
 pragma Import(c,QItemEditorFactory_setDefaultFactory, "QItemEditorFactory_setDefaultFactory");
  
end  Qt.QItemEditorFactory;
