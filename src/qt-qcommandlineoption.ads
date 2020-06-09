--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2015                      บ
-- บ Copyright (C) 2012,2013,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

with Qt.QString ; use Qt.QString;
package Qt.QCommandLineOption  is

 function  QCommandLineOption_create(name:QStringH;description,valueName,defaultValue:QStringH := QString_create) return QCommandLineOptionH;
 pragma Import(C,QCommandLineOption_create, "QCommandLineOption_create");
 
 function  QCommandLineOption_create2(names:QStringListH; description,valueName,defaultValue:QStringH := QString_create) return QCommandLineOptionH;
 pragma Import(C,QCommandLineOption_create2, "QCommandLineOption_create2");
 
 function  QCommandLineOption_create3(other:not null QCommandLineOptionH) return QCommandLineOptionH;
 pragma Import(C,QCommandLineOption_create3, "QCommandLineOption_create3");
 
 procedure QCommandLineOption_destroy(handle: not null QCommandLineOptionH);
 pragma Import(C,QCommandLineOption_destroy, "QCommandLineOption_destroy");
 
 procedure QCommandLineOption_swap(handle,other:not null QCommandLineOptionH);
 pragma Import(C,QCommandLineOption_swap, "QCommandLineOption_swap");
 
 function  QCommandLineOption_names(handle: not null QCommandLineOptionH) return QStringListH;
 pragma Import(C,QCommandLineOption_names, "QCommandLineOption_names");
 
 procedure QCommandLineOption_setValueName(handle: not null QCommandLineOptionH;name:QStringH);
 pragma Import(C,QCommandLineOption_setValueName, "QCommandLineOption_setValueName");
 
 function  QCommandLineOption_valueName(handle: not null QCommandLineOptionH) return QStringH;
 pragma Import(C,QCommandLineOption_valueName, "QCommandLineOption_valueName");
 
 procedure QCommandLineOption_setDescription(handle: not null QCommandLineOptionH; description:QStringH);
 pragma Import(C,QCommandLineOption_setDescription, "QCommandLineOption_setDescription");
 
 function  QCommandLineOption_description(handle: not null QCommandLineOptionH) return QStringH;
 pragma Import(C,QCommandLineOption_description, "QCommandLineOption_description");
 
 procedure QCommandLineOption_setDefaultValue(handle: not null QCommandLineOptionH;defaultValue:QStringH);
 pragma Import(C,QCommandLineOption_setDefaultValue, "QCommandLineOption_setDefaultValue");
 
 procedure QCommandLineOption_setDefaultValues(handle: not null QCommandLineOptionH; defaultValues:QStringListH);
 pragma Import(C,QCommandLineOption_setDefaultValues, "QCommandLineOption_setDefaultValues");
 
 function  QCommandLineOption_defaultValues(handle: not null QCommandLineOptionH) return QStringListH;
 pragma Import(C,QCommandLineOption_defaultValues, "QCommandLineOption_defaultValues");

 function  QCommandLineOption_isHidden(handle:not null QCommandLineOptionH) return boolean;
 pragma Import(C,QCommandLineOption_isHidden, "QCommandLineOption_isHidden");
 
 procedure QCommandLineOption_setHidden(handle:not null QCommandLineOptionH;hide:boolean);
 pragma Import(C,QCommandLineOption_setHidden, "QCommandLineOption_setHidden");
 
------------------------------------------------------------------
 function  QCommandLineOption_create(names:QStringListH; description,valueName,defaultValue:QStringH := QString_create) return QCommandLineOptionH;
 function  QCommandLineOption_create(other:not null QCommandLineOptionH) return QCommandLineOptionH;
end;
