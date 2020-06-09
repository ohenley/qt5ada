--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QWebElement   is

 function  QWebElement_create(other:QWebElementH) return QWebElementH is
 begin
  return  QWebElement_create2(other);
 end;

 procedure QWebElement_appendInside(handle: not null QWebElementH; element:QWebElementH) is
 begin
  QWebElement_appendInside2(handle, element);
 end;

 procedure QWebElement_prependInside(handle: not null QWebElementH;element:QWebElementH) is
 begin
   QWebElement_prependInside2(handle,element);
 end;

 procedure QWebElement_appendOutside(handle: not null QWebElementH;element:QWebElementH) is
 begin
   QWebElement_appendOutside2(handle,element);
 end;

 procedure QWebElement_prependOutside(handle: not null QWebElementH;element:QWebElementH) is
 begin
   QWebElement_prependOutside2(handle,element);
 end;

 procedure QWebElement_encloseContentsWith(handle: not null QWebElementH;element:QWebElementH) is
 begin
   QWebElement_encloseContentsWith2(handle,element);
 end;

 procedure QWebElement_encloseWith(handle: not null QWebElementH;element:QWebElementH) is
 begin
   QWebElement_encloseWith2(handle,element);
 end;

 procedure QWebElement_replace(handle: not null QWebElementH;element:QWebElementH) is
 begin
   QWebElement_replace2(handle,element);
 end;

 function  QWebElementCollection_create( contextElement:QWebElementH; query:QStringH) return QWebElementCollectionH is
 begin
   return  QWebElementCollection_create2(contextElement, query);
 end;

 function  QWebElementCollection_create(other:QWebElementCollectionH) return QWebElementCollectionH is
 begin
   return  QWebElementCollection_create3(other);
 end;

end Qt.QWebElement;
