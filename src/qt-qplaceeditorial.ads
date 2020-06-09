-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QPlaceEditorial is

 function  QPlaceEditorial_create return QPlaceEditorialH;
 pragma Import(C,QPlaceEditorial_create, "QPlaceEditorial_create");
 
 function  QPlaceEditorial_create2(othrEditorial:QPlaceContentH) return QPlaceEditorialH;
 pragma Import(C,QPlaceEditorial_create2, "QPlaceEditorial_create2");
 
 procedure QPlaceEditorial_delete(handle:not null QPlaceEditorialH);
 pragma Import(C,QPlaceEditorial_delete, "QPlaceEditorial_delete");
 
 function  QPlaceEditorial_text(handle:not null QPlaceEditorialH) return QStringH;
 pragma Import(C,QPlaceEditorial_text, "QPlaceEditorial_text");
 
 function  QPlaceEditorial_title(handle:not null QPlaceEditorialH) return QStringH;
 pragma Import(C,QPlaceEditorial_title, "QPlaceEditorial_title");
 
 function  QPlaceEditorial_language(handle:not null QPlaceEditorialH) return QStringH;
 pragma Import(C,QPlaceEditorial_language, "QPlaceEditorial_language");
 
 procedure QPlaceEditorial_setText(handle:not null QPlaceEditorialH;text:QStringH);
 pragma Import(C,QPlaceEditorial_setText, "QPlaceEditorial_setText");
 
 procedure QPlaceEditorial_setTitle(handle:not null QPlaceEditorialH;title:QStringH);
 pragma Import(C,QPlaceEditorial_setTitle, "QPlaceEditorial_setTitle");
 
 procedure QPlaceEditorial_setLanguage(handle:not null QPlaceEditorialH;language:QStringH);
 pragma Import(C,QPlaceEditorial_setLanguage, "QPlaceEditorial_setLanguage");

end; 
