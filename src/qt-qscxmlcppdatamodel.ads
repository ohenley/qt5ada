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

package Qt.QScxmlCppDataModel  is

 procedure QScxmlCppDataModel_destroy(handle:not null QXmlDataModelH);
 pragma Import(C,QScxmlCppDataModel_destroy, "QScxmlCppDataModel_destroy");
 
 function  QScxmlCppDataModel_setup(handle:not null QXmlDataModelH;initialDataValues:QVariantMapH) return boolean;
 pragma Import(C,QScxmlCppDataModel_setup, "QScxmlCppDataModel_setup");
 
 procedure QScxmlCppDataModel_setScxmlEvent(handle:not null QXmlDataModelH;scxmlEvent:QEventH);
 pragma Import(C,QScxmlCppDataModel_setScxmlEvent, "QScxmlCppDataModel_setScxmlEvent");
 
 function  QScxmlCppDataModel_scxmlEvent(handle:not null QXmlDataModelH) return QEventH;
 pragma Import(C,QScxmlCppDataModel_scxmlEvent, "QScxmlCppDataModel_scxmlEvent");
 
 function  QScxmlCppDataModel_scxmlProperty(handle:not null QXmlDataModelH;name:QStringH) return QVariantH;
 pragma Import(C,QScxmlCppDataModel_scxmlProperty, "QScxmlCppDataModel_scxmlProperty");
 
 function  QScxmlCppDataModel_hasScxmlProperty(handle:not null QXmlDataModelH;name:QStringH) return boolean;
 pragma Import(C,QScxmlCppDataModel_hasScxmlProperty, "QScxmlCppDataModel_hasScxmlProperty");
 
 function  QScxmlCppDataModel_setScxmlProperty(handle:not null QXmlDataModelH;name:QStringH;value: QVariantH;context: QStringH) return boolean;
 pragma Import(C,QScxmlCppDataModel_setScxmlProperty, "QScxmlCppDataModel_setScxmlProperty");
 
 function  QScxmlCppDataModel_inState(handle:not null QXmlDataModelH;stateName:QStringH) return boolean;
 pragma Import(C,QScxmlCppDataModel_inState, "QScxmlCppDataModel_inState");
 
end;
