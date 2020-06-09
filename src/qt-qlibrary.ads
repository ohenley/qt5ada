--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QLibrary is


 ResolveAllSymbolsHint     : constant  := 1;
 ExportExternalSymbolsHint : constant  := 2;
 LoadArchiveMemberHint     : constant  := 4;

 function  QLibrary_create(parent:QObjectH := null) return QLibraryH;
 pragma Import(C,QLibrary_create, "QLibrary_create");
 
 function  QLibrary_create2(fileName:QStringH;parent:QObjectH := null) return QLibraryH;
 pragma Import(C,QLibrary_create2, "QLibrary_create2");
 
 function  QLibrary_create3( fileName:QStringH; verNum:integer;parent:QObjectH := null) return QLibraryH;
 pragma Import(C,QLibrary_create3, "QLibrary_create3");
 
 function  QLibrary_create4( fileName,version:QStringH ;parent:QObjectH := null) return QLibraryH;
 pragma Import(C,QLibrary_create4, "QLibrary_create4");
 
 procedure QLibrary_destroy(handle: not null QLibraryH);
 pragma Import(C,QLibrary_destroy, "QLibrary_destroy");
 
 function  QLibrary_load(handle: not null QLibraryH) return boolean;
 pragma Import(C,QLibrary_load, "QLibrary_load");
 
 function  QLibrary_unload(handle: not null QLibraryH) return boolean;
 pragma Import(C,QLibrary_unload, "QLibrary_unload");
 
 function  QLibrary_isLoaded(handle: not null QLibraryH) return boolean;
 pragma Import(C,QLibrary_isLoaded, "QLibrary_isLoaded");
 
 procedure QLibrary_setFileName(handle: not null QLibraryH;fileName:QStringH);
 pragma Import(C,QLibrary_setFileName, "QLibrary_setFileName");
 
 function  QLibrary_fileName(handle: not null QLibraryH) return QStringH;
 pragma Import(C,QLibrary_fileName, "QLibrary_fileName");
 
 function  QLibrary_errorString(handle: not null QLibraryH) return QStringH;
 pragma Import(C,QLibrary_errorString, "QLibrary_errorString");
 
 procedure QLibrary_setLoadHints(handle: not null QLibraryH; loadHints:QIntListH);
 pragma Import(C,QLibrary_setLoadHints, "QLibrary_setLoadHints");
 
 function  QLibrary_loadHints(handle: not null QLibraryH) return QIntListH;
 pragma Import(C,QLibrary_loadHints, "QLibrary_loadHints");

 function  QLibrary_resolve(handle: not null QLibraryH; symbol:zstring) return void_Star;
 pragma Import(C,QLibrary_resolve, "QLibrary_resolve");
 
 function  QLibrary_resolve2(handle: not null QLibraryH;fileName:QStringH; symbol:zstring) return void_Star;
 pragma Import(C,QLibrary_resolve2, "QLibrary_resolve2");
 
 function  QLibrary_resolve3(handle: not null QLibraryH;fileName:QStringH; verNum:integer; symbol:zstring) return void_Star;
 pragma Import(C,QLibrary_resolve3, "QLibrary_resolve3");
 
 function  QLibrary_resolve4(handle: not null QLibraryH;fileName,version:QStringH; symbol:zstring) return void_Star;
 pragma Import(C,QLibrary_resolve4, "QLibrary_resolve4");
 
 function  QLibrary_isLibrary(handle: not null QLibraryH;fileName:QStringH) return boolean;
 pragma Import(C,QLibrary_isLibrary, "QLibrary_isLibrary");
 
 procedure QLibrary_setFileNameAndVersion(handle: not null QLibraryH;fileName:QStringH; verNum:integer);
 pragma Import(C,QLibrary_setFileNameAndVersion, "QLibrary_setFileNameAndVersion");
 
 procedure QLibrary_setFileNameAndVersion2(handle: not null QLibraryH;fileName,version:QStringH);
 pragma Import(C,QLibrary_setFileNameAndVersion2, "QLibrary_setFileNameAndVersion2");
 
-----------------------------------------------------------------------------------------------------
 function  QLibrary_create(fileName:QStringH;parent:QObjectH := null) return QLibraryH;
 function  QLibrary_create( fileName:QStringH; verNum:integer;parent:QObjectH := null) return QLibraryH;
 function  QLibrary_create( fileName,version:QStringH ;parent:QObjectH := null) return QLibraryH;
 function  QLibrary_resolve(handle: not null QLibraryH;fileName:QStringH; symbol:zstring) return void_Star;
 function  QLibrary_resolve(handle: not null QLibraryH;fileName:QStringH; verNum:integer; symbol:zstring) return void_Star;
 function  QLibrary_resolve(handle: not null QLibraryH;fileName,version:QStringH; symbol:zstring) return void_Star;
 procedure QLibrary_setFileNameAndVersion(handle: not null QLibraryH;fileName,version:QStringH);

end Qt.QLibrary;
