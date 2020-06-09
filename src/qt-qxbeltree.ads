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

package Qt.QXbelTree  is

 function   QXbelTree_create(parent:QWidgetH) return QTreeWidgetH;
 pragma Import(C,QXbelTree_create,"QXbelTree_create");

 procedure QXbelTree_destroy(handle: not null QTreeWidgetH);
 pragma Import(C,QXbelTree_destroy,"QXbelTree_destroy");

 function  QXbelTree_read(handle: not null QTreeWidgetH;device: QIODeviceH) return  boolean;
 pragma Import(C,QXbelTree_read,"QXbelTree_read");

 function  QXbelTree_write(handle: not null QTreeWidgetH;device: QIODeviceH) return boolean;
 pragma Import(C,QXbelTree_write,"QXbelTree_write");

 function  QXbelHandler_create( treeWidget: QTreeWidgetH) return  QTreeWidgetH;
 pragma Import(C,QXbelHandler_create,"QXbelHandler_create");

 procedure QXbelHandler_destroy(handle: not null QTreeWidgetH);
 pragma Import(C,QXbelHandler_destroy,"QXbelHandler_destroy");

 function  QXbelHandler_errorString(handle: not null QTreeWidgetH) return QStringH;
 pragma Import(C,QXbelHandler_errorString,"QXbelHandler_errorString");

 function  QXbelHandler_characters(handle: not null QTreeWidgetH; str:QStringH) return boolean;
 pragma Import(C,QXbelHandler_characters,"QXbelHandler_characters");

 function  QXbelHandler_endElement(handle: not null QTreeWidgetH;namespaceURI, localName, qName: QStringH) return boolean;
 pragma Import(C,QXbelHandler_endElement,"QXbelHandler_endElement");

 function  QXbelHandler_fatalError(handle: not null QTreeWidgetH; except: QXmlParseExceptionH) return boolean;
 pragma Import(C,QXbelHandler_fatalError,"QXbelHandler_fatalError");

 function  QXbelHandler_startElement(handle: not null QTreeWidgetH;namespaceURI,localName, qName: QStringH; attributes: QXmlAttributesH) return boolean;
 pragma Import(C,QXbelHandler_startElement,"QXbelHandler_startElement");

 function  QXbelGenerator_create(treeWidget: QTreeWidgetH) return  QTreeWidgetH;
 pragma Import(C,QXbelGenerator_create,"QXbelGenerator_create");

 procedure QXbelGenerator_destroy(handle: not null QTreeWidgetH);
 pragma Import(C,QXbelGenerator_destroy,"QXbelGenerator_destroy");

 function  QXbelGenerator_write(handle: not null QTreeWidgetH; device: QIODeviceH) return  boolean;
 pragma Import(C,QXbelGenerator_write,"QXbelGenerator_write");


end Qt.QXbelTree;
