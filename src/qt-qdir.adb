--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2019                      บ
-- บ Copyright (C) 2012,2014,2019                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
with Qt.QString;           use Qt.QString;
with Qt.QStringList;       use Qt.QStringList;
with Qt.QFile;             use Qt.QFile;
with Qt.QtextStream;       use Qt.QtextStream;
with Qt.QDir;              use Qt.QDir;
with Qt.QIODevice;
with builtin; use builtin;
package body Qt.QDir is

 function  QDir_create(path:QStringH) return QDirH is
 begin
   return  QDir_create2(path);
 end;

 function  QDir_create( path:QStringH;nameFilter:QStringH; sort: SortFlag := NoSort; fltr: Filter := NoFilter ) return QDirH is
 begin 
   return  QDir_create3(path,nameFilter,sort,fltr);
 end;

 function  QDir_entryList(handle:QDirH;nameFilters:QStringListH; filters: Filter := NoFilter; sort: SortFlag := NoSort) return QStringListH is
 begin
   return  QDir_entryList2(handle,nameFilters,filters,sort);
 end;

 function  QDir_entryInfoList(handle:QDirH; nameFilters:QStringListH ;filters: Filter := NoFilter; sort: SortFlag := NoSort) return QFileInfoListH is
 begin
   return  QDir_entryInfoList2(handle, nameFilters,filters,sort);
 end;

 function  QDir_exists(handle:QDirH;name:QStringH) return boolean is
 begin
   return  QDir_exists2(handle,name);
 end;

 function  QDir_match(filter:QStringH;fileName:QStringH) return  boolean is
 begin
   return  QDir_match2(filter,fileName);
 end;

 function  QDir_currentDirPath return QStringH is
 begin
   return QDir_path(QDir_current);
 end;

 function  QDirIterator_create(path:QStringH;flags :IteratorFlags :=  NoIteratorFlags) return QIteratorH is
 begin
   return  QDirIterator_create2(path,flags);
 end;

 function  QDirIterator_create(path:QStringH;filters:Filter ;flags : IteratorFlags :=  NoIteratorFlags) return QIteratorH is
 begin
   return  QDirIterator_create3(path,filters,flags);
 end;

 function  QDirIterator_create(path:QStringH;nameFilters: QStringListH;filters : Filter :=  NoFilter;flags : IteratorFlags :=  NoIteratorFlags) return QIteratorH is
 begin
   return  QDirIterator_create4(path,nameFilters,filters,flags);
 end;

function QDir_find(handle:not null QDirH;fileFilter,text:QStringH) return QStringListH is
filter : QStringListH := QStringList_create;
files : QStringListH := QStringList_create;

function findFiles(files: QStringListH;text:QStringH) return QStringListH is
foundFiles : QStringListH:= QStringList_create;
fileName,line : QStringH;
file          : QFileH; 
input : QTextStreamH; 
begin
  QStringList_clear(foundFiles);    
  for i in 0 .. QStringList_count(files) - 1 loop  
    fileName := QStringList_at(files,i);
    file     := QFile_create(fileName);
    if QFile_open(file,Qt.QIODevice.QIODeviceReadOnly)
    then
      input := QTextStream_create(file);
      while not QTextStream_atEnd(input) loop
        line := QTextStream_readLine(input);
        if QString_contains(line,text, CaseInsensitive)  
        then
          QStringList_append(foundFiles,fileName);
          exit;
        end if;
      end loop;
    end if;
  end loop;
  return foundFiles;
end; 

it     : QIteratorH;
nextFl : QStringH;
 begin
   QStringList_clear(filter);
   QStringList_clear(files);
   if not QString_isEmpty(fileFilter)  
   then
     QStringList_append(filter,fileFilter);
   end if;

   it :=  QDirIterator_create(QDir_path(handle), filter, AllEntries or NoSymLinks or NoDotAndDotDot, Subdirectories);
   while QDirIterator_hasNext(it) loop
     nextFl := QDirIterator_next(it);
     QStringList_append(files,nextFl);
   end loop;
   if not QString_isEmpty(text)  
   then
     files := findFiles(files, text);
   end if;
   QStringList_sort(files);
   return files;
 end; 



end Qt.QDir;
