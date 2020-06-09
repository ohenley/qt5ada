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

package body Qt.QPluginLoader is

 function  QPluginLoader_create(fileName:QStringH;parent:QObjectH := null) return QPluginLoaderH is
 begin
   return  QPluginLoader_create2(fileName,parent);
 end;

  procedure QPluginLoader_invokeProcedure(handle:not null QPluginLoaderH; Unit_Name: zstring) is
  ignored: void_Star;
  pragma Unreferenced (Ignored); 
  begin
   ignored := QPluginLoader_invokeFunction(handle,Unit_Name);
  end;

end Qt.QPluginLoader;
