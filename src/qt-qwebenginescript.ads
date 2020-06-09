--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QWebEngineScript is

 type InjectionPoint is (Deferred,DocumentReady,DocumentCreation);
 pragma convention(C,InjectionPoint);
  
 type ScriptWorldId  is (MainWorld,ApplicationWorld,UserWorld);
 pragma convention(C,ScriptWorldId);
      
 function  QWebEngineScript_create return QWebScriptH;
 pragma Import(C,QWebEngineScript_create, "QWebEngineScript_create");
 
 function  QWebEngineScript_create2(other:QWebScriptH) return QWebScriptH;
 pragma Import(C,QWebEngineScript_create2, "QWebEngineScript_create2");
 
 procedure QWebEngineScript_delete(handle:not null QWebScriptH);
 pragma Import(C,QWebEngineScript_delete, "QWebEngineScript_delete");
 
 function  QWebEngineScript_isNull(handle:not null QWebScriptH) return boolean;
 pragma Import(C,QWebEngineScript_isNull, "QWebEngineScript_isNull");
 
 function  QWebEngineScript_name(handle:not null QWebScriptH) return QStringH;
 pragma Import(C,QWebEngineScript_name, "QWebEngineScript_name");
 
 procedure QWebEngineScript_setName(handle:not null QWebScriptH;name:QStringH);
 pragma Import(C,QWebEngineScript_setName, "QWebEngineScript_setName");
 
 function  QWebEngineScript_sourceCode(handle:not null QWebScriptH) return QStringH;
 pragma Import(C,QWebEngineScript_sourceCode, "QWebEngineScript_sourceCode");
 
 procedure QWebEngineScript_setSourceCode(handle:not null QWebScriptH;code:QStringH);
 pragma Import(C,QWebEngineScript_setSourceCode, "QWebEngineScript_setSourceCode");
 
 function  QWebEngineScript_injectionPoint(handle:not null QWebScriptH) return InjectionPoint;
 pragma Import(C,QWebEngineScript_injectionPoint, "QWebEngineScript_injectionPoint");
 
 procedure QWebEngineScript_setInjectionPoint(handle:not null QWebScriptH;point:InjectionPoint);
 pragma Import(C,QWebEngineScript_setInjectionPoint, "QWebEngineScript_setInjectionPoint");
 
 function  QWebEngineScript_worldId(handle:not null QWebScriptH) return quint;
 pragma Import(C,QWebEngineScript_worldId, "QWebEngineScript_worldId");
 
 procedure QWebEngineScript_setWorldId(handle:not null QWebScriptH;id:quint);
 pragma Import(C,QWebEngineScript_setWorldId, "QWebEngineScript_setWorldId");
 
 function  QWebEngineScript_runsOnSubFrames(handle:not null QWebScriptH) return boolean;
 pragma Import(C,QWebEngineScript_runsOnSubFrames, "QWebEngineScript_runsOnSubFrames");
 
 procedure QWebEngineScript_setRunsOnSubFrames(handle:not null QWebScriptH;on:boolean);
 pragma Import(C,QWebEngineScript_setRunsOnSubFrames, "QWebEngineScript_setRunsOnSubFrames");
 
 function  QWebEngineScript_equal(handle,other:QWebScriptH) return boolean;
 pragma Import(C,QWebEngineScript_equal, "QWebEngineScript_equal");
 
 function  QWebEngineScript_notEqual(handle,other: QWebScriptH) return boolean;                   
 pragma Import(C,QWebEngineScript_notEqual, "QWebEngineScript_notEqual");
 
 procedure QWebEngineScript_swap(handle,other:not null QWebScriptH);
 pragma Import(C,QWebEngineScript_swap, "QWebEngineScript_swap");
 
-------------------------------------------------------------
 function  QWebEngineScript_create(other:QWebScriptH) return QWebScriptH;

end;
