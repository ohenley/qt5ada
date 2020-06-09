-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.
--

with Qt; use Qt; 
package  Qt.QAbstractItemModelTester is

 type FailureReportingMode is (QtTest,Warning,Fatal);
 pragma convention(C,FailureReportingMode);

 function  QAbstractItemModelTester_create(model:QAbstractItemModelH;parent : QObjectH :=  null) return QAbstractItemModelTesterH;
 pragma Import(C,QAbstractItemModelTester_create, "QAbstractItemModelTester_create");
 
 function  QAbstractItemModelTester_create2(model:QAbstractItemModelH;mode: FailureReportingMode;parent : QObjectH := null) return QAbstractItemModelTesterH;
 pragma Import(C,QAbstractItemModelTester_create2, "QAbstractItemModelTester_create2");
 
 procedure QAbstractItemModelTester_destroy(handle:not null QAbstractItemModelTesterH);
 pragma Import(C,QAbstractItemModelTester_destroy, "QAbstractItemModelTester_destroy");
 
 function  QAbstractItemModelTester_model(handle:not null QAbstractItemModelTesterH) return QAbstractItemModelH;
 pragma Import(C,QAbstractItemModelTester_model, "QAbstractItemModelTester_model");
 
 function  QAbstractItemModelTester_failureReportingMode(handle:not null QAbstractItemModelTesterH) return FailureReportingMode;
 pragma Import(C,QAbstractItemModelTester_failureReportingMode, "QAbstractItemModelTester_failureReportingMode");
 
 function  QAbstractItemModelTester_create(model:QAbstractItemModelH;mode: FailureReportingMode;parent : QObjectH := null) return QAbstractItemModelTesterH;

end;
