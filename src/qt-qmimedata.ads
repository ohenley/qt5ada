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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QMimeData            is

function QMimeData_create return  QMimeDataH;  
pragma Import(C,QMimeData_create,"QMimeData_create");

procedure QMimeData_destroy(handle: not null  QMimeDataH);  
pragma Import(C,QMimeData_destroy,"QMimeData_destroy");

function QMimeData_hasUrls(handle: not null  QMimeDataH) return  Boolean;  
pragma Import(C,QMimeData_hasUrls,"QMimeData_hasUrls");

function  QMimeData_text(handle: not null  QMimeDataH) return QStringH;
pragma Import(C,QMimeData_text,"QMimeData_text");

procedure QMimeData_setText(handle: not null  QMimeDataH; text: QStringH);  
pragma Import(C,QMimeData_setText,"QMimeData_setText");

function QMimeData_hasText(handle: not null  QMimeDataH) return  Boolean;  
pragma Import(C,QMimeData_hasText,"QMimeData_hasText");

function  QMimeData_html(handle: not null  QMimeDataH) return QStringH;
pragma Import(C,QMimeData_html,"QMimeData_html");

procedure QMimeData_setHtml(handle: not null  QMimeDataH; html: QStringH);  
pragma Import(C,QMimeData_setHtml,"QMimeData_setHtml");

function QMimeData_hasHtml(handle: not null  QMimeDataH) return  Boolean;  
pragma Import(C,QMimeData_hasHtml,"QMimeData_hasHtml");

function  QMimeData_imageData(handle: not null  QMimeDataH) return QVariantH;
pragma Import(C,QMimeData_imageData,"QMimeData_imageData");

procedure QMimeData_setImageData(handle: not null  QMimeDataH; image: QVariantH);  
pragma Import(C,QMimeData_setImageData,"QMimeData_setImageData");

function QMimeData_hasImage(handle: not null  QMimeDataH) return  Boolean;  
pragma Import(C,QMimeData_hasImage,"QMimeData_hasImage");

function  QMimeData_colorData(handle: not null  QMimeDataH) return QVariantH;
pragma Import(C,QMimeData_colorData,"QMimeData_colorData");

procedure QMimeData_setColorData(handle: not null  QMimeDataH; color: QVariantH);  
pragma Import(C,QMimeData_setColorData,"QMimeData_setColorData");

function QMimeData_hasColor(handle: not null  QMimeDataH) return  Boolean;  
pragma Import(C,QMimeData_hasColor,"QMimeData_hasColor");

function  QMimeData_data(handle: not null  QMimeDataH; mimetype: QStringH) return QByteArrayH;
pragma Import(C,QMimeData_data,"QMimeData_data");

procedure QMimeData_setData(handle: not null  QMimeDataH; mimetype: QStringH; data: QByteArrayH);  
pragma Import(C,QMimeData_setData,"QMimeData_setData");

function QMimeData_hasFormat(handle: not null  QMimeDataH; mimetype: QStringH) return  Boolean;  
pragma Import(C,QMimeData_hasFormat,"QMimeData_hasFormat");

function  QMimeData_formats(handle: not null  QMimeDataH) return QStringListH;
pragma Import(C,QMimeData_formats,"QMimeData_formats");

procedure QMimeData_clear(handle: not null  QMimeDataH);  
pragma Import(C,QMimeData_clear,"QMimeData_clear");

end Qt.QMimeData;
