--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014 ,2015,2019           บ
-- บ Copyright (C) 2012,2014,2015,2019                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QStringList is

function QStringList_create return  QStringListH;    
pragma Import(C,QStringList_create,"QStringList_create");

procedure QStringList_destroy(handle: not null  QStringListH);   
pragma Import(C,QStringList_destroy,"QStringList_destroy");

function QStringList_create2(i: QStringH) return  QStringListH;
pragma Import(C,QStringList_create2,"QStringList_create2");

function QStringList_create3(l: QStringListH) return  QStringListH;
pragma Import(C,QStringList_create3,"QStringList_create3");

procedure QStringList_sort(handle: not null  QStringListH);   
pragma Import(C,QStringList_sort,"QStringList_sort");

function  QStringList_join(handle: not null  QStringListH; sep: QStringH) return  QStringH;
pragma Import(C,QStringList_join,"QStringList_join");

function  QStringList_filter(handle: not null  QStringListH; str: QStringH; cs: QtCaseSensitivity := QtCaseSensitive) return QStringListH;
pragma Import(C,QStringList_filter,"QStringList_filter");

function  QStringList_filter2(handle: not null  QStringListH; rx: QRegExpH) return QStringListH;
pragma Import(C,QStringList_filter2,"QStringList_filter2");

function QStringList_contains(handle: not null  QStringListH; str: QStringH; cs: QtCaseSensitivity := QtCaseSensitive) return Boolean;   
pragma Import(C,QStringList_contains,"QStringList_contains");

function QStringList_replaceInStrings(handle: not null  QStringListH; before: QStringH; after: QStringH; cs: QtCaseSensitivity := QtCaseSensitive) return QStringListH; 
pragma Import(C,QStringList_replaceInStrings,"QStringList_replaceInStrings");

function QStringList_replaceInStrings2(handle: not null  QStringListH; rx: QRegExpH; after: QStringH) return  QStringListH;
pragma Import(C,QStringList_replaceInStrings2,"QStringList_replaceInStrings2");

function QStringList_indexOf(handle: not null  QStringListH; rx: QRegExpH; from: Integer := 0) return Integer;   
pragma Import(C,QStringList_indexOf,"QStringList_indexOf");

function QStringList_lastIndexOf(handle: not null  QStringListH; rx: QRegExpH; from: Integer := -1) return Integer;   
pragma Import(C,QStringList_lastIndexOf,"QStringList_lastIndexOf");

function  QStringList_size(handle: not null  QStringListH) return integer;
pragma Import(C,QStringList_size ,"QStringList_size");

function  QStringList_isEmpty(handle: not null  QStringListH) return boolean;
pragma Import(C,QStringList_isEmpty ,"QStringList_isEmpty");

procedure QStringList_clear(handle: not null  QStringListH);
pragma Import(C,QStringList_clear ,"QStringList_clear");

function  QStringList_at(handle: not null  QStringListH; i: integer) return QStringH;
pragma Import(C,QStringList_at ,"QStringList_at");

procedure QStringList_append(handle: not null  QStringListH; s: QStringH);
pragma Import(C,QStringList_append ,"QStringList_append");

procedure QStringList_prepend(handle: not null  QStringListH; s: QStringH);
pragma Import(C,QStringList_prepend ,"QStringList_prepend");

procedure QStringList_insert(handle: not null  QStringListH; i: integer; s: QStringH);
pragma Import(C,QStringList_insert ,"QStringList_insert");

procedure QStringList_replace(handle: not null  QStringListH; i: integer; s: QStringH);
pragma Import(C,QStringList_replace ,"QStringList_replace");

procedure QStringList_removeAt(handle: not null  QStringListH; i: integer);
pragma Import(C,QStringList_removeAt ,"QStringList_removeAt");

function  QStringList_removeAll(handle: not null  QStringListH; s: QStringH) return integer;
pragma Import(C,QStringList_removeAll ,"QStringList_removeAll");

function  QStringList_takeAt(handle: not null  QStringListH; i: integer) return QStringH;
pragma Import(C,QStringList_takeAt ,"QStringList_takeAt");

function  QStringList_takeFirst(handle: not null  QStringListH) return QStringH;
pragma Import(C,QStringList_takeFirst ,"QStringList_takeFirst");

function  QStringList_takeLast(handle: not null  QStringListH) return QStringH;
pragma Import(C,QStringList_takeLast ,"QStringList_takeLast");

procedure QStringList_move(handle: not null  QStringListH; from, to : integer);
pragma Import(C,QStringList_move ,"QStringList_move");

procedure QStringList_swap(handle: not null  QStringListH; i,j: integer);
pragma Import(C,QStringList_swap ,"QStringList_swap");

function  QStringList_count(handle: not null  QStringListH) return integer;
pragma Import(C,QStringList_count ,"QStringList_count");

function  QStringList_value(handle: not null  QStringListH; i: integer) return QStringH;
pragma Import(C,QStringList_value ,"QStringList_value");

 function  QStringList_first(handle:not null QStringListH)  return QStringH;
 pragma Import(C,QStringList_first, "QStringList_first");
 
 function  QStringList_last(handle:not null QStringListH) return QStringH;
 pragma Import(C,QStringList_last, "QStringList_last");
 
 procedure QStringList_detachShared(handle:not null QStringListH);
 pragma Import(C,QStringList_detachShared, "QStringList_detachShared");
 
 function  QStringList_isDetached(handle:not null QStringListH) return boolean;
 pragma Import(C,QStringList_isDetached, "QStringList_isDetached");
 
 function  QStringList_isSharedWith(handle:not null QStringListH;other: QStringListH) return boolean;
 pragma Import(C,QStringList_isSharedWith, "QStringList_isSharedWith");
 
 function  QStringList_length(handle:not null QStringListH) return integer;
 pragma Import(C,QStringList_length, "QStringList_length");
 
 procedure QStringList_removeFirst(handle:not null QStringListH);
 pragma Import(C,QStringList_removeFirst, "QStringList_removeFirst");
 
 procedure QStringList_removeLast(handle:not null QStringListH);
 pragma Import(C,QStringList_removeLast, "QStringList_removeLast");
 
 function  QStringList_startsWith(handle:not null QStringListH;value: QStringH)  return boolean;
 pragma Import(C,QStringList_startsWith, "QStringList_startsWith");
 
 function  QStringList_endsWith(handle:not null QStringListH;value: QStringH)  return boolean;
 pragma Import(C,QStringList_endsWith, "QStringList_endsWith");
 
 function  QStringList_mid(handle:not null QStringListH;pos:integer;length : integer :=  -1) return QStringListH;
 pragma Import(C,QStringList_mid, "QStringList_mid");
 
 function  QStringList_value2(handle:not null QStringListH;i:integer;defaultValue:  QStringH) return QStringH;
 pragma Import(C,QStringList_value2, "QStringList_value2");
 
 procedure QStringList_push_back(handle:not null QStringListH;value: QStringH);
 pragma Import(C,QStringList_push_back, "QStringList_push_back");
 
 procedure QStringList_push_front(handle:not null QStringListH;value: QStringH);
 pragma Import(C,QStringList_push_front, "QStringList_push_front");
 
 function  QStringList_front(handle:not null QStringListH)  return QStringH;
 pragma Import(C,QStringList_front, "QStringList_front");
 
 function  QStringList_back(handle:not null QStringListH) return QStringH;
 pragma Import(C,QStringList_back, "QStringList_back");
 
 procedure QStringList_pop_front(handle:not null QStringListH);
 pragma Import(C,QStringList_pop_front, "QStringList_pop_front");
 
 procedure QStringList_pop_back(handle:not null QStringListH);
 pragma Import(C,QStringList_pop_back, "QStringList_pop_back");
 
 function  QStringList_empty(handle:not null QStringListH)  return boolean;
 pragma Import(C,QStringList_empty, "QStringList_empty");
 
 function  QStringList_toVector(handle:not null QStringListH) return QVectorH;
 pragma Import(C,QStringList_toVector, "QStringList_toVector");
 
 function  QStringList_toSet(handle:not null QStringListH) return QSetH;
 pragma Import(C,QStringList_toSet, "QStringList_toSet");
 
 function  QStringList_fromVector(vector:QVectorH) return QStringListH;
 pragma Import(C,QStringList_fromVector, "QStringList_fromVector");
 
 function  QStringList_fromSet( set:QSetH) return QStringListH;
 pragma Import(C,QStringList_fromSet, "QStringList_fromSet");

 function  QStringList_indexOf2(handle:not null QStringListH; str: zstring;from : integer :=  0) return integer;
 pragma Import(C,QStringList_indexOf2, "QStringList_indexOf2");
 
 function  QStringList_indexOf3(handle:not null QStringListH;str: QStringH;from : integer :=  0) return integer;
 pragma Import(C,QStringList_indexOf3, "QStringList_indexOf3");
 
 function  QStringList_lastIndexOf2(handle:not null QStringListH;str: zstring;from : integer :=  -1) return integer;
 pragma Import(C,QStringList_lastIndexOf2, "QStringList_lastIndexOf2");
 
 function  QStringList_lastIndexOf3(handle:not null QStringListH;str: QStringH;from : integer :=  -1) return integer;
 pragma Import(C,QStringList_lastIndexOf3, "QStringList_lastIndexOf3");
 

-----------------------------------------------------------------------------------------------------------
function QStringList_create(i: QStringH) return  QStringListH;
function QStringList_create(l: QStringListH) return  QStringListH;
function  QStringList_filter(handle: not null  QStringListH; rx: QRegExpH) return QStringListH;
function QStringList_replaceInStrings(handle: not null  QStringListH; rx: QRegExpH; after: QStringH) return  QStringListH;
function  "+"(handle: not null  QStringListH; s: QStringH) return QStringListH;
function  QStringList_value(handle:not null QStringListH;i:integer;defaultValue:  QStringH) return QStringH;

function  QStringList_indexOf(handle:not null QStringListH;str: zstring;from : integer :=  0) return integer;
 function  QStringList_indexOf(handle:not null QStringListH;str: QStringH;from : integer :=  0) return integer;
 function  QStringList_lastIndexOf(handle:not null QStringListH;str: zstring;from : integer :=  -1) return integer;
 function  QStringList_lastIndexOf(handle:not null QStringListH;str: QStringH;from : integer :=  -1) return integer;

end Qt.QStringList;
