--
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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QScxmlEcmaScriptDataModel  is

 function  QScxmlEcmaScriptDataModel_create(parent:QObjectH := null) return QXmlDataModelH;
 pragma Import(C,QScxmlEcmaScriptDataModel_create, "QScxmlEcmaScriptDataModel_create");
 
 procedure QScxmlEcmaScriptDataModel_destroy(handle:not null QXmlDataModelH);
 pragma Import(C,QScxmlEcmaScriptDataModel_destroy, "QScxmlEcmaScriptDataModel_destroy");
 
 function  QScxmlEcmaScriptDataModel_setup(handle:not null QXmlDataModelH;initialDataValues:QVariantMapH) return boolean;
 pragma Import(C,QScxmlEcmaScriptDataModel_setup, "QScxmlEcmaScriptDataModel_setup");
 
 procedure QScxmlEcmaScriptDataModel_setScxmlEvent(handle:not null QXmlDataModelH;event:QEventH);
 pragma Import(C,QScxmlEcmaScriptDataModel_setScxmlEvent, "QScxmlEcmaScriptDataModel_setScxmlEvent");
 
 function  QScxmlEcmaScriptDataModel_scxmlProperty(handle:not null QXmlDataModelH;name:QStringH) return QVariantH;
 pragma Import(C,QScxmlEcmaScriptDataModel_scxmlProperty, "QScxmlEcmaScriptDataModel_scxmlProperty");
 
 function  QScxmlEcmaScriptDataModel_hasScxmlProperty(handle:not null QXmlDataModelH;name:QStringH) return boolean;
 pragma Import(C,QScxmlEcmaScriptDataModel_hasScxmlProperty, "QScxmlEcmaScriptDataModel_hasScxmlProperty");
 
 function  QScxmlEcmaScriptDataModel_setScxmlProperty(handle:not null QXmlDataModelH;name:QStringH;value: QVariantH;context:  QStringH) return boolean;
 pragma Import(C,QScxmlEcmaScriptDataModel_setScxmlProperty, "QScxmlEcmaScriptDataModel_setScxmlProperty");
 
end;
