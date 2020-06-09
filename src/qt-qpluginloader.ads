--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QPluginLoader is

type QPluginH is  new QObjectH;

type QMetaObject_Call is (Invoke_Meta_Method, Read_Property, Write_Property, Reset_Property, Query_Property_Designable,Query_Property_Scriptable, Query_Property_Stored, Query_Property_Editable, Query_Property_User);
   pragma Convention (C, QMetaObject_Call);
   
 type Qt_Interface is limited interface;
 pragma convention(C,Qt_Interface);
 type Qt_Interface_Access is access all Qt_Interface'Class;
  
 function  QPluginLoader_create(parent:QObjectH := null) return QPluginLoaderH;
 pragma Import(C,QPluginLoader_create, "QPluginLoader_create");
 
 function  QPluginLoader_create2(fileName:QStringH;parent:QObjectH := null) return QPluginLoaderH;
 pragma Import(C,QPluginLoader_create2, "QPluginLoader_create2");
 
 procedure QPluginLoader_destroy(handle: not null QPluginLoaderH);
 pragma Import(C,QPluginLoader_destroy, "QPluginLoader_destroy");
 
 function  QPluginLoader_staticInstances return QObjectListH;
 pragma Import(C,QPluginLoader_staticInstances, "QPluginLoader_staticInstances");
 
 function  QPluginLoader_instance(handle: not null QPluginLoaderH) return QPluginH;
 pragma Import(C,QPluginLoader_instance, "QPluginLoader_instance");
 
 function  QPluginLoader_load(handle: not null QPluginLoaderH) return boolean;
 pragma Import(C,QPluginLoader_load, "QPluginLoader_load");
 
 function  QPluginLoader_unload(handle: not null QPluginLoaderH) return boolean;
 pragma Import(C,QPluginLoader_unload, "QPluginLoader_unload");
 
 function  QPluginLoader_isLoaded(handle: not null QPluginLoaderH) return boolean;
 pragma Import(C,QPluginLoader_isLoaded, "QPluginLoader_isLoaded");
 
 procedure QPluginLoader_setFileName(handle: not null QPluginLoaderH;fileName:QStringH);
 pragma Import(C,QPluginLoader_setFileName, "QPluginLoader_setFileName");
 
 function  QPluginLoader_fileName(handle: not null QPluginLoaderH) return QStringH;
 pragma Import(C,QPluginLoader_fileName, "QPluginLoader_fileName");
 
 function  QPluginLoader_errorString(handle: not null QPluginLoaderH) return QStringH;
 pragma Import(C,QPluginLoader_errorString, "QPluginLoader_errorString");
 
 procedure QPluginLoader_setLoadHints(handle: not null QPluginLoaderH; loadHints:QIntListH);
 pragma Import(C,QPluginLoader_setLoadHints, "QPluginLoader_setLoadHints");
 
 function  QPluginLoader_loadHints(handle: not null QPluginLoaderH) return QIntListH;
 pragma Import(C,QPluginLoader_loadHints, "QPluginLoader_loadHints");
 
 function QPluginLoader_invokeFunction(handle:not null QPluginLoaderH; Unit_Name: zstring) return void_Star;
 pragma Import(C,QPluginLoader_invokeFunction, "QPluginLoader_invokeFunction");
 
 function  QPluginLoader_metacall_wrapper(handle:not null QPluginLoaderH; method:QMetaObject_Call; id: integer; argumentsPointer: void_Star) return integer;
 pragma Import(C,QPluginLoader_metacall_wrapper, "QPluginLoader_metacall_wrapper");
 
 function  QPluginLoader_getInterface(handle:not null QPluginLoaderH) return Qt_Interface_Access;
 pragma Import(C,QPluginLoader_getInterface, "QPluginLoader_getInterface");

 function QPluginLoader_createLibrary(handle:not null QPluginLoaderH) return QLibraryH;
 pragma Import(C,QPluginLoader_createLibrary, "QPluginLoader_createLibrary");
 
 function  QPlugin_getInterface(handle:not null QPluginH) return Qt_Interface_Access;
 pragma Import(C,QPlugin_getInterface, "QPlugin_getInterface");
 
-----------------------------------------------------------------------------------------------------
 function  QPluginLoader_create(fileName:QStringH;parent:QObjectH := null) return QPluginLoaderH;
 procedure QPluginLoader_invokeProcedure(handle:not null QPluginLoaderH; Unit_Name: zstring);

end Qt.QPluginLoader;
