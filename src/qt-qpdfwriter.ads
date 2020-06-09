--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QPageSize;      use  Qt.QPageSize;
with Qt.QPageLayout;    use  Qt.QPageLayout;
package Qt.QPdfWriter  is

 type Margins is record 
   left,right,top,bottom: qreal;
 end record; 
 pragma convention(C,Margins);

 function  QPdfWriter_create(fileName:QStringH) return QPdfWriterH;
 pragma Import(C,QPdfWriter_create, "QPdfWriter_create");
 
 function  QPdfWriter_create2(device:QIODeviceH) return QPdfWriterH;
 pragma Import(C,QPdfWriter_create2, "QPdfWriter_create2");
 
 procedure QPdfWriter_delete(handle:not null QPdfWriterH);
 pragma Import(C,QPdfWriter_delete, "QPdfWriter_delete");
 
 function  QPdfWriter_title(handle:not null QPdfWriterH) return QStringH;
 pragma Import(C,QPdfWriter_title, "QPdfWriter_title");
 
 procedure QPdfWriter_setTitle(handle:not null QPdfWriterH;title:QStringH);
 pragma Import(C,QPdfWriter_setTitle, "QPdfWriter_setTitle");
 
 function  QPdfWriter_creator(handle:not null QPdfWriterH) return QStringH;
 pragma Import(C,QPdfWriter_creator, "QPdfWriter_creator");
 
 procedure QPdfWriter_setCreator(handle:not null QPdfWriterH; creator:QStringH);
 pragma Import(C,QPdfWriter_setCreator, "QPdfWriter_setCreator");
 
 function  QPdfWriter_newPage(handle:not null QPdfWriterH) return boolean;
 pragma Import(C,QPdfWriter_newPage, "QPdfWriter_newPage");
 
 procedure QPdfWriter_setResolution(handle:not null QPdfWriterH;resolution:integer);
 pragma Import(C,QPdfWriter_setResolution, "QPdfWriter_setResolution");
 
 function  QPdfWriter_resolution(handle:not null QPdfWriterH) return integer;
 pragma Import(C,QPdfWriter_resolution, "QPdfWriter_resolution");
 
 function  QPdfWriter_setPageLayout(handle:not null QPdfWriterH;pageLayout:QPageLayoutH) return boolean;
 pragma Import(C,QPdfWriter_setPageLayout, "QPdfWriter_setPageLayout");
 
 function  QPdfWriter_setPageSize(handle:not null QPdfWriterH; pageSize:QPageSizeH) return boolean;
 pragma Import(C,QPdfWriter_setPageSize, "QPdfWriter_setPageSize");
 
 procedure QPdfWriter_setPageSize2(handle:not null QPdfWriterH;size:Qt.QPageSize.PageSizeId);
 pragma Import(C,QPdfWriter_setPageSize2, "QPdfWriter_setPageSize2");
 
 function  QPdfWriter_setPageOrientation(handle:not null QPdfWriterH;orient:Qt.QPageLayout.Orientation) return boolean;
 pragma Import(C,QPdfWriter_setPageOrientation, "QPdfWriter_setPageOrientation");
 
 function  QPdfWriter_setPageMargins(handle:not null QPdfWriterH;margins:QMarginsFH) return boolean;
 pragma Import(C,QPdfWriter_setPageMargins, "QPdfWriter_setPageMargins");
 
 function  QPdfWriter_setPageMargins2(handle:not null QPdfWriterH; margins:QMarginsFH; units:Qt.QPageLayout.Unit) return boolean;
 pragma Import(C,QPdfWriter_setPageMargins2, "QPdfWriter_setPageMargins2");
 
 function  QPdfWriter_pageLayout(handle:not null QPdfWriterH) return QPageLayoutH;
 pragma Import(C,QPdfWriter_pageLayout, "QPdfWriter_pageLayout");
 
 procedure QPdfWriter_setPageSizeMM(handle:not null QPdfWriterH; size:QSizeFH);
 pragma Import(C,QPdfWriter_setPageSizeMM, "QPdfWriter_setPageSizeMM");
 
 procedure QPdfWriter_setMargins(handle:not null QPdfWriterH;m:Margins);
 pragma Import(C,QPdfWriter_setMargins, "QPdfWriter_setMargins");
-----------------------------------------------------------------------
 function  QPdfWriter_create(device:QIODeviceH) return QPdfWriterH;
 procedure QPdfWriter_setPageSize(handle:not null QPdfWriterH;size:Qt.QPageSize.PageSizeId);

end;
