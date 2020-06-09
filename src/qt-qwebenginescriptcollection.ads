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

package Qt.QWebEngineScriptCollection is

 procedure QWebEngineScriptCollection_delete(handle:not null QWebScriptCollectionH);
 pragma Import(C,QWebEngineScriptCollection_delete, "QWebEngineScriptCollection_delete");
 
 function  QWebEngineScriptCollection_isEmpty(handle:not null QWebScriptCollectionH) return boolean;
 pragma Import(C,QWebEngineScriptCollection_isEmpty, "QWebEngineScriptCollection_isEmpty");
 
 function  QWebEngineScriptCollection_count(handle:not null QWebScriptCollectionH) return integer;
 pragma Import(C,QWebEngineScriptCollection_count, "QWebEngineScriptCollection_count");
 
 function  QWebEngineScriptCollection_size(handle:not null QWebScriptCollectionH) return integer;
 pragma Import(C,QWebEngineScriptCollection_size, "QWebEngineScriptCollection_size");
 
 function  QWebEngineScriptCollection_contains(handle:not null QWebScriptCollectionH;value:QWebScriptH) return boolean;
 pragma Import(C,QWebEngineScriptCollection_contains, "QWebEngineScriptCollection_contains");
 
 function  QWebEngineScriptCollection_findScript(handle:not null QWebScriptCollectionH;name:QStringH) return QWebScriptH;
 pragma Import(C,QWebEngineScriptCollection_findScript, "QWebEngineScriptCollection_findScript");
 
 function  QWebEngineScriptCollection_findScripts(handle:not null QWebScriptCollectionH;name:QStringH) return QObjectListH;
 pragma Import(C,QWebEngineScriptCollection_findScripts, "QWebEngineScriptCollection_findScripts");
 
 procedure QWebEngineScriptCollection_insert(handle:not null QWebScriptCollectionH;script:QWebScriptH);
 pragma Import(C,QWebEngineScriptCollection_insert, "QWebEngineScriptCollection_insert");
 
 procedure QWebEngineScriptCollection_insert2(handle:not null QWebScriptCollectionH;list:QObjectListH);
 pragma Import(C,QWebEngineScriptCollection_insert2, "QWebEngineScriptCollection_insert2");
 
 function  QWebEngineScriptCollection_remove(handle:not null QWebScriptCollectionH;script:QWebScriptH) return boolean;
 pragma Import(C,QWebEngineScriptCollection_remove, "QWebEngineScriptCollection_remove");
 
 procedure QWebEngineScriptCollection_clear(handle:not null QWebScriptCollectionH);
 pragma Import(C,QWebEngineScriptCollection_clear, "QWebEngineScriptCollection_clear");
 
 function  QWebEngineScriptCollection_toList(handle:not null QWebScriptCollectionH) return QObjectListH;
 pragma Import(C,QWebEngineScriptCollection_toList, "QWebEngineScriptCollection_toList");
 
---------------------------------------------------------------------
 procedure QWebEngineScriptCollection_insert(handle:not null QWebScriptCollectionH;list:QObjectListH);

end;
