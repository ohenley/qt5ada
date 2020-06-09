--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt4 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2011                           บ
-- บ Copyright (C) 2011                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QXmlStream  is

 function  QXmlStreamStringRef_create(aString:QStringRefH) return QXmlStreamStringRefH is
 begin
  return  QXmlStreamStringRef_create2(aString);
 end;

 function  QXmlStreamStringRef_create(aString:QStringH)    return QXmlStreamStringRefH is
 begin
  return  QXmlStreamStringRef_create3(aString);
 end;

 function  QXmlStreamAttribute_create(qualifiedName,value: QStringH) return QXmlStreamAttributeH is
 begin
  return  QXmlStreamAttribute_create2(qualifiedName,value);
 end;

 function  QXmlStreamAttribute_create(namespaceUri,name,value:QStringH) return QXmlStreamAttributeH is
 begin
   return  QXmlStreamAttribute_create3(namespaceUri,name,value);
 end;

 function  QXmlStreamAttribute_create(attr:QXmlStreamAttributeH) return QXmlStreamAttributeH is
 begin
  return QXmlStreamAttribute_create4(attr);
 end;

 function  QXmlStreamAttributes_value(handle: not null QXmlStreamAttributesH;namespaceUri,name:QLatin1StringH) return QStringRefH is
 begin
   return  QXmlStreamAttributes_value2(handle,namespaceUri,name);
 end;

 function  QXmlStreamAttributes_value(handle: not null QXmlStreamAttributesH;qualifiedName:QStringH) return QStringRefH is
 begin
   return  QXmlStreamAttributes_value3(handle,qualifiedName);
 end;

 function  QXmlStreamAttributes_value(handle: not null QXmlStreamAttributesH;qualifiedName:QLatin1StringH) return QStringRefH is
 begin
   return  QXmlStreamAttributes_value4(handle,qualifiedName);
 end;

 procedure QXmlStreamAttributes_append(handle: not null QXmlStreamAttributesH;attribute:QXmlStreamAttributeH) is
 begin
  QXmlStreamAttributes_append2(handle,attribute);
 end;

 function  QXmlStreamNamespaceDeclaration_create(other:QXmlStreamNamespaceDeclarationH) return QXmlStreamNamespaceDeclarationH is
 begin
   return  QXmlStreamNamespaceDeclaration_create2(other);
 end;

 function  QXmlStreamNamespaceDeclaration_create(prefix,namespaceUri:QStringH) return QXmlStreamNamespaceDeclarationH is
 begin
   return  QXmlStreamNamespaceDeclaration_create3(prefix,namespaceUri);
 end;

function  QXmlStreamNotationDeclaration_create(other:QXmlStreamNotationDeclarationH) return QXmlStreamNotationDeclarationH is
begin
  return  QXmlStreamNotationDeclaration_create2(other);
end;

function  QXmlStreamEntityDeclaration_create(other:QXmlStreamEntityDeclarationH) return QXmlStreamEntityDeclarationH is
begin
  return  QXmlStreamEntityDeclaration_create2(other);
end;

 function  QXmlStreamReader_create(device:QIODeviceH) return QXmlStreamReaderH is
 begin
   return  QXmlStreamReader_create2(device);
 end;

 function  QXmlStreamReader_create(data:QByteArrayH) return QXmlStreamReaderH is
 begin
   return  QXmlStreamReader_create3(data);
 end;

 function  QXmlStreamReader_create(data:QStringH) return QXmlStreamReaderH is
 begin
   return  QXmlStreamReader_create4(data);
 end;

 function  QXmlStreamReader_create(data:zstring) return QXmlStreamReaderH is
 begin
   return  QXmlStreamReader_create5(data);
 end;

 procedure QXmlStreamReader_addData(handle: not null QXmlStreamReaderH;data:QStringH) is
 begin
   QXmlStreamReader_addData2(handle,data);
 end;

 procedure QXmlStreamReader_addData(handle: not null QXmlStreamReaderH;data:zstring) is
 begin
   QXmlStreamReader_addData3(handle,data);
 end;

 function  QXmlStreamReader_readElementText(handle: not null QXmlStreamReaderH) return QStringH is
 begin
   return  QXmlStreamReader_readElementText2(handle);
 end;

 function  QXmlStreamWriter_create(device:QIODeviceH) return QXmlStreamWriterH is
 begin
   return  QXmlStreamWriter_create2(device);
 end;

 function  QXmlStreamWriter_create(data:QByteArrayH) return QXmlStreamWriterH is
 begin
   return  QXmlStreamWriter_create3(data);
 end;

 function  QXmlStreamWriter_create(data:QStringH) return QXmlStreamWriterH is
 begin
   return  QXmlStreamWriter_create4(data);
 end;

 procedure QXmlStreamWriter_writeAttribute(handle: not null QXmlStreamWriterH;namespaceUri,name,value:QStringH) is
 begin
   QXmlStreamWriter_writeAttribute2(handle,namespaceUri,name,value);
 end;

 procedure QXmlStreamWriter_writeAttribute(handle: not null QXmlStreamWriterH;attribute:QXmlStreamAttributeH) is
 begin
    QXmlStreamWriter_writeAttribute3(handle,attribute);
 end;

 procedure QXmlStreamWriter_writeEmptyElement(handle: not null QXmlStreamWriterH; namespaceUri,name:QStringH) is
 begin
   QXmlStreamWriter_writeEmptyElement2(handle, namespaceUri,name);
 end;

 procedure QXmlStreamWriter_writeTextElement(handle: not null QXmlStreamWriterH;namespaceUri,name,text:QStringH) is
 begin
    QXmlStreamWriter_writeTextElement2(handle,namespaceUri,name,text);
 end;

 procedure QXmlStreamWriter_writeStartDocument(handle: not null QXmlStreamWriterH;version:QStringH) is
 begin
   QXmlStreamWriter_writeStartDocument2(handle,version);
 end;

 procedure QXmlStreamWriter_writeStartDocument(handle: not null QXmlStreamWriterH;version:QStringH; standalone :boolean) is
 begin
   QXmlStreamWriter_writeStartDocument3(handle,version, standalone);
 end;

 procedure QXmlStreamWriter_writeStartElement(handle: not null QXmlStreamWriterH; namespaceUri,name:QStringH) is
 begin
   QXmlStreamWriter_writeStartElement2(handle, namespaceUri,name);
 end;

end Qt.QXmlStream;
