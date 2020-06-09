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

package Qt.QTextList is

 function  QTextList_create(doc:QTextDocumentH) return QTextListH;
 pragma Import(C,QTextList_create, "QTextList_create");
 
 procedure QTextList_destroy(handle: not null QTextListH);
 pragma Import(C,QTextList_destroy, "QTextList_destroy");
 
 function  QTextList_count(handle: not null QTextListH) return integer;
 pragma Import(C,QTextList_count, "QTextList_count");
 
 function  QTextList_isEmpty(handle: not null QTextListH) return boolean;
 pragma Import(C,QTextList_isEmpty, "QTextList_isEmpty");
 
 function  QTextList_item(handle: not null QTextListH;item:integer) return QTextBlockH;
 pragma Import(C,QTextList_item, "QTextList_item");
 
 function  QTextList_itemNumber(handle: not null QTextListH; block: QTextBlockH) return integer;
 pragma Import(C,QTextList_itemNumber, "QTextList_itemNumber");
 
 function  QTextList_itemText(handle: not null QTextListH;block:QTextBlockH) return QStringH;
 pragma Import(C,QTextList_itemText, "QTextList_itemText");
 
 procedure QTextList_removeItem(handle: not null QTextListH; item:integer);
 pragma Import(C,QTextList_removeItem, "QTextList_removeItem");
 
 procedure QTextList_remove2(handle: not null QTextListH; block:QTextBlockH);
 pragma Import(C,QTextList_remove2, "QTextList_remove2");
 
 procedure QTextList_add(handle: not null QTextListH; block:QTextBlockH);
 pragma Import(C,QTextList_add, "QTextList_add");
 
 procedure QTextList_setFormat(handle: not null QTextListH; format:QTextListFormatH);
 pragma Import(C,QTextList_setFormat, "QTextList_setFormat");
 
 function  QTextList_format(handle: not null QTextListH) return QTextListFormatH;
 pragma Import(C,QTextList_format, "QTextList_format");
 
-----------------------------------------------------------------------------------------------------
 procedure QTextList_remove(handle: not null QTextListH; block:QTextBlockH);
end Qt.QTextList;
