--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2015,2019                 บ
-- บ Copyright (C) 2012,2014,2015,2019                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  
--   it under the terms of the GNU Library General Public License as       
--   published by the Free Software Foundation; either version 3 of the    
--   License; or (at your option) any later version.                       

with Interfaces.C; use Interfaces.C;
package Qt.QDir is

 subtype Filter   is quint;

 Dirs           : constant Filter := 16#001#;
 Files          : constant Filter := 16#002#;
 Drives         : constant Filter := 16#004#;
 NoSymLinks     : constant Filter := 16#008#;
 AllEntries     : constant Filter := Dirs or Files or Drives;
 TypeMask       : constant Filter := 16#00f#;
 Readable       : constant Filter := 16#010#;
 Writable       : constant Filter := 16#020#;
 Executable     : constant Filter := 16#040#;
 PermissionMask : constant Filter := 16#070#;
 Modified       : constant Filter := 16#080#;
 Hidden         : constant Filter := 16#100#;
 System         : constant Filter := 16#200#;
 AccessMask     : constant Filter := 16#3F0#;
 AllDirs        : constant Filter := 16#400#;
 CaseSensitive  : constant Filter := 16#800#;
 NoDot          : constant Filter := 16#2000#;
 NoDotDot       : constant Filter := 16#4000#;
 NoDotAndDotDot : constant Filter := NoDot + NoDotDot;
 NoFilter       : constant Filter := -1;
                   
 subtype SortFlag is integer;
 
 Name        : constant SortFlag  := 16#00#;
 Time        : constant SortFlag  := 16#01#;
 Size        : constant SortFlag  := 16#02#;
 Unsorted    : constant SortFlag  := 16#03#;
 SortByMask  : constant SortFlag  := 16#03#;
 DirsFirst   : constant SortFlag  := 16#04#;
 Reversed    : constant SortFlag  := 16#08#;
 IgnoreCase  : constant SortFlag  := 16#10#;
 DirsLast    : constant SortFlag  := 16#20#;
 LocaleAware : constant SortFlag  := 16#40#;
 ByType      : constant SortFlag  := 16#80#;
 NoSort      : constant SortFlag  := -1;  

 function  QDir_create(dir:QDirH) return QDirH;
 pragma Import(C,QDir_create, "QDir_create");
 
 procedure QDir_destroy(handle:QDirH);
 pragma Import(C,QDir_destroy, "QDir_destroy");
 
 function  QDir_create2(path:QStringH) return QDirH;
 pragma Import(C,QDir_create2, "QDir_create2");
 
 function  QDir_create3( path:QStringH;nameFilter:QStringH; sort: SortFlag := NoSort; fltr: Filter := NoFilter ) return QDirH;
 pragma Import(C,QDir_create3, "QDir_create3");
 
 procedure QDir_swap(handle:QDirH;otheDir:QDirH);
 pragma Import(C,QDir_swap, "QDir_swap");
 
 procedure QDir_setPath(handle:QDirH; path:QStringH);
 pragma Import(C,QDir_setPath, "QDir_setPath");
 
 function  QDir_path(handle:QDirH) return QStringH;
 pragma Import(C,QDir_path, "QDir_path");
 
 function  QDir_absolutePath(handle:QDirH) return QStringH;
 pragma Import(C,QDir_absolutePath, "QDir_absolutePath");
 
 function  QDir_canonicalPath(handle:QDirH) return QStringH;
 pragma Import(C,QDir_canonicalPath, "QDir_canonicalPath");
 
 procedure QDir_addResourceSearchPath(path:QStringH);
 pragma Import(C,QDir_addResourceSearchPath, "QDir_addResourceSearchPath");
 
 procedure QDir_setSearchPaths(prefix:QStringH;searchPaths:QStringListH);
 pragma Import(C,QDir_setSearchPaths, "QDir_setSearchPaths");
 
 procedure QDir_addSearchPath(prefix,path: QStringH);
 pragma Import(C,QDir_addSearchPath, "QDir_addSearchPath");
 
 function  QDir_searchPaths(prefix:QStringH) return QStringListH;
 pragma Import(C,QDir_searchPaths, "QDir_searchPaths");
 
 function  QDir_dirName(handle:QDirH) return QStringH;
 pragma Import(C,QDir_dirName, "QDir_dirName");
 
 function  QDir_filePath(handle:QDirH;fileName:QStringH ) return QStringH;
 pragma Import(C,QDir_filePath, "QDir_filePath");
 
 function  QDir_absoluteFilePath(handle:QDirH; fileName:QStringH) return QStringH;
 pragma Import(C,QDir_absoluteFilePath, "QDir_absoluteFilePath");
 
 function  QDir_relativeFilePath(handle:QDirH; fileName:QStringH) return QStringH;
 pragma Import(C,QDir_relativeFilePath, "QDir_relativeFilePath");
 
 function  QDir_toNativeSeparators(pathName:QStringH ) return QStringH;
 pragma Import(C,QDir_toNativeSeparators, "QDir_toNativeSeparators");
 
 function  QDir_fromNativeSeparators(pathName:QStringH) return QStringH;
 pragma Import(C,QDir_fromNativeSeparators, "QDir_fromNativeSeparators");
 
 function  QDir_cd(handle:QDirH; dirName:QStringH) return boolean;
 pragma Import(C,QDir_cd, "QDir_cd");
 
 function  QDir_cdUp(handle:QDirH) return boolean;
 pragma Import(C,QDir_cdUp, "QDir_cdUp");
 
 function  QDir_nameFilters(handle:QDirH) return QStringListH;
 pragma Import(C,QDir_nameFilters, "QDir_nameFilters");
 
 procedure QDir_setNameFilters(handle:QDirH; nameFilters:QStringListH);
 pragma Import(C,QDir_setNameFilters, "QDir_setNameFilters");
 
 function  QDir_filter(handle:QDirH) return integer;
 pragma Import(C,QDir_filter, "QDir_filter");
 
 procedure QDir_setFilter(handle:QDirH;filter:integer);
 pragma Import(C,QDir_setFilter, "QDir_setFilter");
 
 function  QDir_sorting(handle:QDirH) return integer;
 pragma Import(C,QDir_sorting, "QDir_sorting");
 
 procedure QDir_setSorting(handle:QDirH;sort:SortFlag);
 pragma Import(C,QDir_setSorting, "QDir_setSorting");
 
 function  QDir_count(handle:QDirH) return quint;
 pragma Import(C,QDir_count, "QDir_count");
 
 function  QDir_nameFiltersFromString(nameFilter:QStringH) return QStringListH;
 pragma Import(C,QDir_nameFiltersFromString, "QDir_nameFiltersFromString");
 
 function  QDir_entryList(handle:QDirH; filters: Filter := NoFilter; sort: SortFlag := NoSort) return QStringListH;
 pragma Import(C,QDir_entryList, "QDir_entryList");
 
 function  QDir_entryList2(handle:QDirH;nameFilters:QStringListH; filters: Filter := NoFilter; sort: SortFlag := NoSort) return QStringListH;
 pragma Import(C,QDir_entryList2, "QDir_entryList2");
 
 function  QDir_entryInfoList(handle:QDirH; filters: Filter := NoFilter; sort: SortFlag := NoSort) return QFileInfoListH;
 pragma Import(C,QDir_entryInfoList, "QDir_entryInfoList");
 
 function  QDir_entryInfoList2(handle:QDirH; nameFilters:QStringListH ;filters: Filter := NoFilter; sort: SortFlag := NoSort) return QFileInfoListH;
 pragma Import(C,QDir_entryInfoList2, "QDir_entryInfoList2");
 
 function  QDir_mkdir(handle:QDirH; dirName:QStringH) return boolean;
 pragma Import(C,QDir_mkdir, "QDir_mkdir");
 
 function  QDir_rmdir(handle:QDirH; dirName:QStringH) return boolean;
 pragma Import(C,QDir_rmdir, "QDir_rmdir");
 
 function  QDir_mkpath(handle:QDirH; dirPath:QStringH) return boolean;
 pragma Import(C,QDir_mkpath, "QDir_mkpath");
 
 function  QDir_rmpath(handle:QDirH; dirPath:QStringH) return boolean;
 pragma Import(C,QDir_rmpath, "QDir_rmpath");
 
 function  QDir_removeRecursively(handle:QDirH) return boolean;
 pragma Import(C,QDir_removeRecursively, "QDir_removeRecursively");
 
 function  QDir_isReadable(handle:QDirH) return boolean;
 pragma Import(C,QDir_isReadable, "QDir_isReadable");
 
 function  QDir_exists(handle:QDirH) return boolean;
 pragma Import(C,QDir_exists, "QDir_exists");
 
 function  QDir_isRoot(handle:QDirH) return boolean;
 pragma Import(C,QDir_isRoot, "QDir_isRoot");
 
 function  QDir_isRelativePath( path:QStringH) return boolean;
 pragma Import(C,QDir_isRelativePath, "QDir_isRelativePath");
 
 function  QDir_isAbsolutePath(path:QStringH) return boolean;
 pragma Import(C,QDir_isAbsolutePath, "QDir_isAbsolutePath");
 
 function  QDir_isRelative(handle:QDirH) return boolean;
 pragma Import(C,QDir_isRelative, "QDir_isRelative");
 
 function  QDir_isAbsolute(handle:QDirH) return boolean;
 pragma Import(C,QDir_isAbsolute, "QDir_isAbsolute");
 
 function  QDir_makeAbsolute(handle:QDirH) return boolean;
 pragma Import(C,QDir_makeAbsolute, "QDir_makeAbsolute");
 
 function  QDir_remove(handle:QDirH;fileName:QStringH) return boolean;
 pragma Import(C,QDir_remove, "QDir_remove");
 
 function  QDir_rename(handle:QDirH; oldName,newName:QStringH) return boolean;
 pragma Import(C,QDir_rename, "QDir_rename");
 
 function  QDir_exists2(handle:QDirH;name:QStringH) return boolean;
 pragma Import(C,QDir_exists2, "QDir_exists2");
 
 function  QDir_drives return QFileInfoListH;
 pragma Import(C,QDir_drives, "QDir_drives");
 
 function  QDir_separator return QCharH;
 pragma Import(C,QDir_separator, "QDir_separator");
 
 function  QDir_setCurrent(path:QStringH) return boolean;
 pragma Import(C,QDir_setCurrent, "QDir_setCurrent");
 
 function  QDir_current return QDirH;
 pragma Import(C,QDir_current, "QDir_current");
 
 function  QDir_currentPath return QStringH;
 pragma Import(C,QDir_currentPath, "QDir_currentPath");
 
 function  QDir_home return QDirH;
 pragma Import(C,QDir_home, "QDir_home");
 
 function  QDir_homePath return QStringH;
 pragma Import(C,QDir_homePath, "QDir_homePath");
 
 function  QDir_root return QDirH;
 pragma Import(C,QDir_root, "QDir_root");
 
 function  QDir_rootPath return QStringH;
 pragma Import(C,QDir_rootPath, "QDir_rootPath");
 
 function  QDir_temp return QDirH;
 pragma Import(C,QDir_temp, "QDir_temp");
 
 function  QDir_tempPath return QStringH;
 pragma Import(C,QDir_tempPath, "QDir_tempPath");
 
 function  QDir_match(filters:QStringListH;  fileName:QStringH) return boolean;
 pragma Import(C,QDir_match, "QDir_match");
 
 function  QDir_match2(filter:QStringH;fileName:QStringH) return  boolean;
 pragma Import(C,QDir_match2, "QDir_match2");
 
 function  QDir_cleanPath(path:QStringH) return QStringH;
 pragma Import(C,QDir_cleanPath, "QDir_cleanPath");
 
 procedure QDir_refresh(handle:QDirH);
 pragma Import(C,QDir_refresh, "QDir_refresh");

 function  QDir_listSeparator return QCharH;
 pragma Import(C,QDir_listSeparator, "QDir_listSeparator");
 
-----------------------------------------------------------------
 function  QDir_create(path:QStringH) return QDirH;
 function  QDir_create( path:QStringH;nameFilter:QStringH; sort: SortFlag := NoSort; fltr: Filter := NoFilter ) return QDirH;
 function  QDir_entryList(handle:QDirH;nameFilters:QStringListH; filters: Filter := NoFilter; sort: SortFlag := NoSort) return QStringListH;
 function  QDir_entryInfoList(handle:QDirH; nameFilters:QStringListH ;filters: Filter := NoFilter; sort: SortFlag := NoSort) return QFileInfoListH;
 function  QDir_exists(handle:QDirH;name:QStringH) return boolean;
 function  QDir_match(filter:QStringH;fileName:QStringH) return  boolean;
 function  QDir_currentDirPath return QStringH;
 function QDir_find(handle:not null QDirH;fileFilter,text:QStringH) return QStringListH;
-------------------------------------------------------
 subtype IteratorFlags  is quint; 
 NoIteratorFlags : constant IteratorFlags := 0;
 FollowSymlinks  : constant IteratorFlags := 1;
 Subdirectories  : constant IteratorFlags := 2;

 function  QDirIterator_create(dir:QDirH;flags : IteratorFlags :=  NoIteratorFlags) return QIteratorH;
 pragma Import(C,QDirIterator_create, "QDirIterator_create");
 
 function  QDirIterator_create2(path:QStringH;flags :IteratorFlags :=  NoIteratorFlags) return QIteratorH;
 pragma Import(C,QDirIterator_create2, "QDirIterator_create2");
 
 function  QDirIterator_create3(path:QStringH;filters:Filter ;flags : IteratorFlags :=  NoIteratorFlags) return QIteratorH;
 pragma Import(C,QDirIterator_create3, "QDirIterator_create3");
 
 function  QDirIterator_create4(path:QStringH;nameFilters: QStringListH;filters : Filter :=  NoFilter;flags : IteratorFlags :=  NoIteratorFlags) return QIteratorH;
 pragma Import(C,QDirIterator_create4, "QDirIterator_create4");
 
 procedure QDirIterator_destroy(handle:not null QIteratorH);
 pragma Import(C,QDirIterator_destroy, "QDirIterator_destroy");
 
 function  QDirIterator_next(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QDirIterator_next, "QDirIterator_next");
 
 function  QDirIterator_hasNext(handle:not null QIteratorH) return boolean;
 pragma Import(C,QDirIterator_hasNext, "QDirIterator_hasNext");
 
 function  QDirIterator_fileName(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QDirIterator_fileName, "QDirIterator_fileName");
 
 function  QDirIterator_filePath(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QDirIterator_filePath, "QDirIterator_filePath");
 
 function  QDirIterator_fileInfo(handle:not null QIteratorH) return QFileInfoH;
 pragma Import(C,QDirIterator_fileInfo, "QDirIterator_fileInfo");
 
 function  QDirIterator_path(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QDirIterator_path, "QDirIterator_path");
 
 function  QDirIterator_create(path:QStringH;flags :IteratorFlags :=  NoIteratorFlags) return QIteratorH;
 function  QDirIterator_create(path:QStringH;filters:Filter ;flags : IteratorFlags :=  NoIteratorFlags) return QIteratorH;
 function  QDirIterator_create(path:QStringH;nameFilters: QStringListH;filters : Filter :=  NoFilter;flags : IteratorFlags :=  NoIteratorFlags) return QIteratorH;

end;
