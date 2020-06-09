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

with builtin; use builtin;
with Qt.QString; use Qt.QString;
package Qt.QXmlStream  is

 type TokenType is (NoToken,Invalid,StartDocument,EndDocument,StartElement,EndElement,Characters,Comment,DTD,EntityReference,ProcessingInstruction);
 pragma Convention(C,TokenType);

 type ReadElementTextBehaviour is (ErrorOnUnexpectedElement,IncludeChildElements,SkipChildElement);
 pragma Convention(C,ReadElementTextBehaviour);

 type Error  is (NoError,UnexpectedElementError,CustomError,NotWellFormedError,PrematureEndOfDocumentError);
 pragma Convention(C,Error);

 function  QXmlStreamStringRef_create return QXmlStreamStringRefH;
 pragma Import(C,QXmlStreamStringRef_create, "QXmlStreamStringRef_create");
 
 function  QXmlStreamStringRef_create2(aString:QStringRefH) return QXmlStreamStringRefH;
 pragma Import(C,QXmlStreamStringRef_create2, "QXmlStreamStringRef_create2");
 
 function  QXmlStreamStringRef_create3( aString:QStringH) return QXmlStreamStringRefH;
 pragma Import(C,QXmlStreamStringRef_create3, "QXmlStreamStringRef_create3");
 
 procedure QXmlStreamStringRef_destroy(handle: not null QXmlStreamStringRefH);
 pragma Import(C,QXmlStreamStringRef_destroy, "QXmlStreamStringRef_destroy");
 
 procedure QXmlStreamStringRef_clear(handle: not null QXmlStreamStringRefH);
 pragma Import(C,QXmlStreamStringRef_clear, "QXmlStreamStringRef_clear");
 
 function  QXmlStreamStringRef_string(handle: not null QXmlStreamStringRefH) return QStringH;
 pragma Import(C,QXmlStreamStringRef_string, "QXmlStreamStringRef_string");
 
 function  QXmlStreamStringRef_position(handle: not null QXmlStreamStringRefH) return  integer;
 pragma Import(C,QXmlStreamStringRef_position, "QXmlStreamStringRef_position");
 
 function  QXmlStreamStringRef_size(handle: not null QXmlStreamStringRefH) return  integer;
 pragma Import(C,QXmlStreamStringRef_size, "QXmlStreamStringRef_size");
 
-------
 function  QXmlStreamAttribute_create return QXmlStreamAttributeH;
 pragma Import(C,QXmlStreamAttribute_create, "QXmlStreamAttribute_create");
 
 function  QXmlStreamAttribute_create2(qualifiedName,value: QStringH) return QXmlStreamAttributeH;
 pragma Import(C,QXmlStreamAttribute_create2, "QXmlStreamAttribute_create2");
 
 function  QXmlStreamAttribute_create3(namespaceUri,name,value:QStringH) return QXmlStreamAttributeH;
 pragma Import(C,QXmlStreamAttribute_create3, "QXmlStreamAttribute_create3");
 
 function  QXmlStreamAttribute_create4(attr:QXmlStreamAttributeH) return QXmlStreamAttributeH;
 pragma Import(C,QXmlStreamAttribute_create4, "QXmlStreamAttribute_create4");
 
 procedure QXmlStreamAttribute_destroy(handle: not null QXmlStreamAttributeH);
 pragma Import(C,QXmlStreamAttribute_destroy, "QXmlStreamAttribute_destroy");
 
 function  QXmlStreamAttribute_namespaceUri(handle: not null QXmlStreamAttributeH) return QStringRefH;
 pragma Import(C,QXmlStreamAttribute_namespaceUri, "QXmlStreamAttribute_namespaceUri");
 
 function  QXmlStreamAttribute_name(handle: not null QXmlStreamAttributeH) return QStringRefH;
 pragma Import(C,QXmlStreamAttribute_name, "QXmlStreamAttribute_name");
 
 function  QXmlStreamAttribute_qualifiedName(handle: not null QXmlStreamAttributeH) return QStringRefH;
 pragma Import(C,QXmlStreamAttribute_qualifiedName, "QXmlStreamAttribute_qualifiedName");
 
 function  QXmlStreamAttribute_prefix(handle: not null QXmlStreamAttributeH) return QStringRefH;
 pragma Import(C,QXmlStreamAttribute_prefix, "QXmlStreamAttribute_prefix");
 
 function  QXmlStreamAttribute_value(handle: not null QXmlStreamAttributeH) return QStringRefH;
 pragma Import(C,QXmlStreamAttribute_value, "QXmlStreamAttribute_value");
 
 function  QXmlStreamAttribute_isDefault(handle: not null QXmlStreamAttributeH) return boolean;
 pragma Import(C,QXmlStreamAttribute_isDefault, "QXmlStreamAttribute_isDefault");
 
 function  QXmlStreamAttribute_equal(handle: not null QXmlStreamAttributeH;other:QXmlStreamAttributeH) return boolean;
 pragma Import(C,QXmlStreamAttribute_equal, "QXmlStreamAttribute_equal");
 
 function  QXmlStreamAttribute_notequal(handle: not null QXmlStreamAttributeH;other:QXmlStreamAttributeH) return boolean;
 pragma Import(C,QXmlStreamAttribute_notequal, "QXmlStreamAttribute_notequal");
 
----
 function  QXmlStreamAttributes_create return QXmlStreamAttributesH;
 pragma Import(C,QXmlStreamAttributes_create, "QXmlStreamAttributes_create");
 
 procedure QXmlStreamAttributes_destroy(handle: not null QXmlStreamAttributesH);
 pragma Import(C,QXmlStreamAttributes_destroy, "QXmlStreamAttributes_destroy");
 
 function  QXmlStreamAttributes_value(handle: not null QXmlStreamAttributesH;namespaceUri,name: QStringH) return QStringRefH;
 pragma Import(C,QXmlStreamAttributes_value, "QXmlStreamAttributes_value");
 
 function  QXmlStreamAttributes_value2(handle: not null QXmlStreamAttributesH;namespaceUri,name:QLatin1StringH) return QStringRefH;
 pragma Import(C,QXmlStreamAttributes_value2, "QXmlStreamAttributes_value2");
 
 function  QXmlStreamAttributes_value3(handle: not null QXmlStreamAttributesH;qualifiedName:QStringH) return QStringRefH;
 pragma Import(C,QXmlStreamAttributes_value3, "QXmlStreamAttributes_value3");
 
 function  QXmlStreamAttributes_value4(handle: not null QXmlStreamAttributesH;qualifiedName:QLatin1StringH) return QStringRefH;
 pragma Import(C,QXmlStreamAttributes_value4, "QXmlStreamAttributes_value4");
 
 procedure QXmlStreamAttributes_append(handle: not null QXmlStreamAttributesH;qualifiedName,name: QStringH);
 pragma Import(C,QXmlStreamAttributes_append, "QXmlStreamAttributes_append");
 
 procedure QXmlStreamAttributes_append2(handle: not null QXmlStreamAttributesH;attribute:QXmlStreamAttributeH);
 pragma Import(C,QXmlStreamAttributes_append2, "QXmlStreamAttributes_append2");
 
 function  QXmlStreamAttributes_hasAttribute(handle: not null QXmlStreamAttributesH;qualifiedName:QStringH) return boolean;
 pragma Import(C,QXmlStreamAttributes_hasAttribute, "QXmlStreamAttributes_hasAttribute");
 
 function  QXmlStreamAttributes_hasAttribute2(handle: not null QXmlStreamAttributesH;qualifiedName:QLatin1StringH) return boolean;
 pragma Import(C,QXmlStreamAttributes_hasAttribute2, "QXmlStreamAttributes_hasAttribute2");
 
 function  QXmlStreamAttributes_hasAttribute3(handle: not null QXmlStreamAttributesH;namespaceUri,name: QStringH) return boolean;
 pragma Import(C,QXmlStreamAttributes_hasAttribute3, "QXmlStreamAttributes_hasAttribute3");

----
 function  QXmlStreamNamespaceDeclaration_create return QXmlStreamNamespaceDeclarationH;
 pragma Import(C,QXmlStreamNamespaceDeclaration_create, "QXmlStreamNamespaceDeclaration_create");
 
 function  QXmlStreamNamespaceDeclaration_create2(other:QXmlStreamNamespaceDeclarationH) return QXmlStreamNamespaceDeclarationH;
 pragma Import(C,QXmlStreamNamespaceDeclaration_create2, "QXmlStreamNamespaceDeclaration_create2");
 
 function  QXmlStreamNamespaceDeclaration_create3(prefix,namespaceUri:QStringH) return QXmlStreamNamespaceDeclarationH;
 pragma Import(C,QXmlStreamNamespaceDeclaration_create3, "QXmlStreamNamespaceDeclaration_create3");
 
 procedure QXmlStreamNamespaceDeclaration_destroy(handle: not null QXmlStreamNamespaceDeclarationH);
 pragma Import(C,QXmlStreamNamespaceDeclaration_destroy, "QXmlStreamNamespaceDeclaration_destroy");
 
 function  QXmlStreamNamespaceDeclaration_prefix(handle: not null QXmlStreamNamespaceDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamNamespaceDeclaration_prefix, "QXmlStreamNamespaceDeclaration_prefix");
 
 function  QXmlStreamNamespaceDeclaration_namespaceUri(handle: not null QXmlStreamNamespaceDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamNamespaceDeclaration_namespaceUri, "QXmlStreamNamespaceDeclaration_namespaceUri");
 
 function  QXmlStreamNamespaceDeclaration_equal(handle,other:QXmlStreamNamespaceDeclarationH) return boolean;
 pragma Import(C,QXmlStreamNamespaceDeclaration_equal, "QXmlStreamNamespaceDeclaration_equal");
 
 function  QXmlStreamNamespaceDeclaration_notequal(handle,other:QXmlStreamNamespaceDeclarationH) return boolean;
 pragma Import(C,QXmlStreamNamespaceDeclaration_notequal, "QXmlStreamNamespaceDeclaration_notequal");

---------------
 function  QXmlStreamNotationDeclaration_create return QXmlStreamNotationDeclarationH;
 pragma Import(C,QXmlStreamNotationDeclaration_create, "QXmlStreamNotationDeclaration_create");
 
 function  QXmlStreamNotationDeclaration_create2(other:QXmlStreamNotationDeclarationH) return QXmlStreamNotationDeclarationH;
 pragma Import(C,QXmlStreamNotationDeclaration_create2, "QXmlStreamNotationDeclaration_create2");
 
 procedure QXmlStreamNotationDeclaration_destroy(handle: not null QXmlStreamNotationDeclarationH);
 pragma Import(C,QXmlStreamNotationDeclaration_destroy, "QXmlStreamNotationDeclaration_destroy");
 
 function  QXmlStreamNotationDeclaration_name(handle: not null QXmlStreamNotationDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamNotationDeclaration_name, "QXmlStreamNotationDeclaration_name");
 
 function  QXmlStreamNotationDeclaration_systemId(handle: not null QXmlStreamNotationDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamNotationDeclaration_systemId, "QXmlStreamNotationDeclaration_systemId");
 
 function  QXmlStreamNotationDeclaration_publicId(handle: not null QXmlStreamNotationDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamNotationDeclaration_publicId, "QXmlStreamNotationDeclaration_publicId");
 
 function  QXmlStreamNotationDeclaration_equal(handle,other:QXmlStreamNotationDeclarationH) return boolean;
 pragma Import(C,QXmlStreamNotationDeclaration_equal, "QXmlStreamNotationDeclaration_equal");
 
 function  QXmlStreamNotationDeclaration_notequal(handle,other:QXmlStreamNotationDeclarationH) return boolean;
 pragma Import(C,QXmlStreamNotationDeclaration_notequal, "QXmlStreamNotationDeclaration_notequal");
 

----------
 function  QXmlStreamEntityDeclaration_create return QXmlStreamEntityDeclarationH;
 pragma Import(C,QXmlStreamEntityDeclaration_create, "QXmlStreamEntityDeclaration_create");
 
 function  QXmlStreamEntityDeclaration_create2(other:QXmlStreamEntityDeclarationH) return QXmlStreamEntityDeclarationH;
 pragma Import(C,QXmlStreamEntityDeclaration_create2, "QXmlStreamEntityDeclaration_create2");
 
 procedure QXmlStreamEntityDeclaration_destroy(handle: not null QXmlStreamEntityDeclarationH);
 pragma Import(C,QXmlStreamEntityDeclaration_destroy, "QXmlStreamEntityDeclaration_destroy");
 
 function  QXmlStreamEntityDeclaration_name(handle: not null QXmlStreamEntityDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamEntityDeclaration_name, "QXmlStreamEntityDeclaration_name");
 
 function  QXmlStreamEntityDeclaration_notationName(handle: not null QXmlStreamEntityDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamEntityDeclaration_notationName, "QXmlStreamEntityDeclaration_notationName");
 
 function  QXmlStreamEntityDeclaration_systemId(handle: not null QXmlStreamEntityDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamEntityDeclaration_systemId, "QXmlStreamEntityDeclaration_systemId");
 
 function  QXmlStreamEntityDeclaration_publicId(handle: not null QXmlStreamEntityDeclarationH) return QStringRefH;
 pragma Import(C,QXmlStreamEntityDeclaration_publicId, "QXmlStreamEntityDeclaration_publicId");
 
 function  QXmlStreamEntityDeclaration_equal(handle,other:QXmlStreamEntityDeclarationH) return boolean;
 pragma Import(C,QXmlStreamEntityDeclaration_equal, "QXmlStreamEntityDeclaration_equal");
 
 function  QXmlStreamEntityDeclaration_notequal(handle,other:QXmlStreamEntityDeclarationH) return boolean;
 pragma Import(C,QXmlStreamEntityDeclaration_notequal, "QXmlStreamEntityDeclaration_notequal");
 
------
 procedure QXmlStreamEntityResolver_destroy(handle: not null QXmlStreamEntityResolverH);
 pragma Import(C,QXmlStreamEntityResolver_destroy, "QXmlStreamEntityResolver_destroy");
 
 function  QXmlStreamEntityResolver_resolveEntity(handle: not null QXmlStreamEntityResolverH;publicId,systemId:QStringH) return QStringH;
 pragma Import(C,QXmlStreamEntityResolver_resolveEntity, "QXmlStreamEntityResolver_resolveEntity");
 
 function  QXmlStreamEntityResolver_resolveUndeclaredEntity(handle: not null QXmlStreamEntityResolverH;name:QStringH) return QStringH;
 pragma Import(C,QXmlStreamEntityResolver_resolveUndeclaredEntity, "QXmlStreamEntityResolver_resolveUndeclaredEntity");

-----
 function  QXmlStreamEntityDeclarations_create return QXmlStreamEntityDeclarationsH;
 pragma Import(C,QXmlStreamEntityDeclarations_create, "QXmlStreamEntityDeclarations_create");
 
-----
 procedure QXmlStreamEntityDeclarations_destroy(handle: not null QXmlStreamEntityDeclarationsH);
 pragma Import(C,QXmlStreamEntityDeclarations_destroy, "QXmlStreamEntityDeclarations_destroy");
 
 function  QXmlStreamReader_create return QXmlStreamReaderH;
 pragma Import(C,QXmlStreamReader_create, "QXmlStreamReader_create");
 
 function  QXmlStreamReader_create2(device:QIODeviceH) return QXmlStreamReaderH;
 pragma Import(C,QXmlStreamReader_create2, "QXmlStreamReader_create2");
 
 function  QXmlStreamReader_create3(data:QByteArrayH) return QXmlStreamReaderH;
 pragma Import(C,QXmlStreamReader_create3, "QXmlStreamReader_create3");
 
 function  QXmlStreamReader_create4(data:QStringH) return QXmlStreamReaderH;
 pragma Import(C,QXmlStreamReader_create4, "QXmlStreamReader_create4");
 
 function  QXmlStreamReader_create5(data:zstring) return QXmlStreamReaderH;
 pragma Import(C,QXmlStreamReader_create5, "QXmlStreamReader_create5");
 
 procedure QXmlStreamReader_destroy(handle: not null QXmlStreamReaderH);
 pragma Import(C,QXmlStreamReader_destroy, "QXmlStreamReader_destroy");
 
 procedure QXmlStreamReader_setDevice(handle: not null QXmlStreamReaderH;device:QIODeviceH);
 pragma Import(C,QXmlStreamReader_setDevice, "QXmlStreamReader_setDevice");
 
 function  QXmlStreamReader_device(handle: not null QXmlStreamReaderH) return QIODeviceH;
 pragma Import(C,QXmlStreamReader_device, "QXmlStreamReader_device");
 
 procedure QXmlStreamReader_addData(handle: not null QXmlStreamReaderH; data:QByteArrayH);
 pragma Import(C,QXmlStreamReader_addData, "QXmlStreamReader_addData");
 
 procedure QXmlStreamReader_addData2(handle: not null QXmlStreamReaderH;data:QStringH);
 pragma Import(C,QXmlStreamReader_addData2, "QXmlStreamReader_addData2");
 
 procedure QXmlStreamReader_addData3(handle: not null QXmlStreamReaderH;data:zstring);
 pragma Import(C,QXmlStreamReader_addData3, "QXmlStreamReader_addData3");
 
 procedure QXmlStreamReader_clear(handle: not null QXmlStreamReaderH);
 pragma Import(C,QXmlStreamReader_clear, "QXmlStreamReader_clear");
 
 function  QXmlStreamReader_atEnd(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_atEnd, "QXmlStreamReader_atEnd");
 
 function  QXmlStreamReader_readNext(handle: not null QXmlStreamReaderH) return TokenType;
 pragma Import(C,QXmlStreamReader_readNext, "QXmlStreamReader_readNext");
 
 function  QXmlStreamReader_readNextStartElement(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_readNextStartElement, "QXmlStreamReader_readNextStartElement");
 
 procedure QXmlStreamReader_skipCurrentElement(handle: not null QXmlStreamReaderH);
 pragma Import(C,QXmlStreamReader_skipCurrentElement, "QXmlStreamReader_skipCurrentElement");
 
 function  QXmlStreamReader_tokenType(handle: not null QXmlStreamReaderH) return TokenType;
 pragma Import(C,QXmlStreamReader_tokenType, "QXmlStreamReader_tokenType");
 
 function  QXmlStreamReader_tokenString(handle: not null QXmlStreamReaderH) return QStringH;
 pragma Import(C,QXmlStreamReader_tokenString, "QXmlStreamReader_tokenString");
 
 procedure QXmlStreamReader_setNamespaceProcessing(handle: not null QXmlStreamReaderH;flag:boolean);
 pragma Import(C,QXmlStreamReader_setNamespaceProcessing, "QXmlStreamReader_setNamespaceProcessing");
 
 function  QXmlStreamReader_namespaceProcessing(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_namespaceProcessing, "QXmlStreamReader_namespaceProcessing");
 
 function  QXmlStreamReader_isStartDocument(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isStartDocument, "QXmlStreamReader_isStartDocument");
 
 function  QXmlStreamReader_isEndDocument(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isEndDocument, "QXmlStreamReader_isEndDocument");
 
 function  QXmlStreamReader_isStartElement(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isStartElement, "QXmlStreamReader_isStartElement");
 
 function  QXmlStreamReader_isEndElement(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isEndElement, "QXmlStreamReader_isEndElement");
 
 function  QXmlStreamReader_isCharacters(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isCharacters, "QXmlStreamReader_isCharacters");
 
 function  QXmlStreamReader_isWhitespace(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isWhitespace, "QXmlStreamReader_isWhitespace");
 
 function  QXmlStreamReader_isCDATA(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isCDATA, "QXmlStreamReader_isCDATA");
 
 function  QXmlStreamReader_isComment(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isComment, "QXmlStreamReader_isComment");
 
 function  QXmlStreamReader_isDTD(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isDTD, "QXmlStreamReader_isDTD");
 
 function  QXmlStreamReader_isEntityReference(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isEntityReference, "QXmlStreamReader_isEntityReference");
 
 function  QXmlStreamReader_isProcessingInstruction(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isProcessingInstruction, "QXmlStreamReader_isProcessingInstruction");
 
 function  QXmlStreamReader_isStandaloneDocument(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_isStandaloneDocument, "QXmlStreamReader_isStandaloneDocument");
 
 function  QXmlStreamReader_documentVersion(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_documentVersion, "QXmlStreamReader_documentVersion");
 
 function  QXmlStreamReader_documentEncoding(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_documentEncoding, "QXmlStreamReader_documentEncoding");
 
 function  QXmlStreamReader_lineNumber(handle: not null QXmlStreamReaderH) return qint64;
 pragma Import(C,QXmlStreamReader_lineNumber, "QXmlStreamReader_lineNumber");
 
 function  QXmlStreamReader_columnNumber(handle: not null QXmlStreamReaderH) return qint64;
 pragma Import(C,QXmlStreamReader_columnNumber, "QXmlStreamReader_columnNumber");
 
 function  QXmlStreamReader_characterOffset(handle: not null QXmlStreamReaderH) return qint64;
 pragma Import(C,QXmlStreamReader_characterOffset, "QXmlStreamReader_characterOffset");

 function  QXmlStreamReader_attributes(handle: not null QXmlStreamReaderH) return QXmlStreamAttributesH;
 pragma Import(C,QXmlStreamReader_attributes, "QXmlStreamReader_attributes");
 
 function  QXmlStreamReader_readElementText(handle: not null QXmlStreamReaderH;behavior:ReadElementTextBehaviour) return QStringH;
 pragma Import(C,QXmlStreamReader_readElementText, "QXmlStreamReader_readElementText");
 
 function  QXmlStreamReader_readElementText2(handle: not null QXmlStreamReaderH) return QStringH;
 pragma Import(C,QXmlStreamReader_readElementText2, "QXmlStreamReader_readElementText2");
 
 function  QXmlStreamReader_name(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_name, "QXmlStreamReader_name");
 
 function  QXmlStreamReader_namespaceUri(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_namespaceUri, "QXmlStreamReader_namespaceUri");
 
 function  QXmlStreamReader_qualifiedName(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_qualifiedName, "QXmlStreamReader_qualifiedName");
 
 function  QXmlStreamReader_prefix(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_prefix, "QXmlStreamReader_prefix");
 
 function  QXmlStreamReader_processingInstructionTarget(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_processingInstructionTarget, "QXmlStreamReader_processingInstructionTarget");
 
 function  QXmlStreamReader_processingInstructionData(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_processingInstructionData, "QXmlStreamReader_processingInstructionData");
 
 function  QXmlStreamReader_text(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_text, "QXmlStreamReader_text");
 
 function  QXmlStreamReader_namespaceDeclarations(handle: not null QXmlStreamReaderH) return QXmlStreamNamespaceDeclarationsH;
 pragma Import(C,QXmlStreamReader_namespaceDeclarations, "QXmlStreamReader_namespaceDeclarations");
 
 procedure QXmlStreamReader_addExtraNamespaceDeclaration(handle: not null QXmlStreamReaderH;extraNamespaceDeclaraction:QXmlStreamNamespaceDeclarationH);
 pragma Import(C,QXmlStreamReader_addExtraNamespaceDeclaration, "QXmlStreamReader_addExtraNamespaceDeclaration");
 
 procedure QXmlStreamReader_addExtraNamespaceDeclarations(handle: not null QXmlStreamReaderH;extraNamespaceDeclaractions:QXmlStreamNamespaceDeclarationsH);
 pragma Import(C,QXmlStreamReader_addExtraNamespaceDeclarations, "QXmlStreamReader_addExtraNamespaceDeclarations");
 
 function  QXmlStreamReader_notationDeclarations(handle: not null QXmlStreamReaderH) return QXmlStreamNotationDeclarationsH;
 pragma Import(C,QXmlStreamReader_notationDeclarations, "QXmlStreamReader_notationDeclarations");
 
 function  QXmlStreamReader_entityDeclarations(handle: not null QXmlStreamReaderH) return QXmlStreamEntityDeclarationsH;
 pragma Import(C,QXmlStreamReader_entityDeclarations, "QXmlStreamReader_entityDeclarations");
 
 function  QXmlStreamReader_dtdName(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_dtdName, "QXmlStreamReader_dtdName");
 
 function  QXmlStreamReader_dtdPublicId(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_dtdPublicId, "QXmlStreamReader_dtdPublicId");
 
 function  QXmlStreamReader_dtdSystemId(handle: not null QXmlStreamReaderH) return QStringRefH;
 pragma Import(C,QXmlStreamReader_dtdSystemId, "QXmlStreamReader_dtdSystemId");
 
 procedure QXmlStreamReader_raiseError(handle: not null QXmlStreamReaderH;message :QStringH := s2qs(""));
 pragma Import(C,QXmlStreamReader_raiseError, "QXmlStreamReader_raiseError");
 
 function  QXmlStreamReader_errorString(handle: not null QXmlStreamReaderH) return QStringH;
 pragma Import(C,QXmlStreamReader_errorString, "QXmlStreamReader_errorString");
 
 function  QXmlStreamReader_error(handle: not null QXmlStreamReaderH) return Error;
 pragma Import(C,QXmlStreamReader_error, "QXmlStreamReader_error");
 
 function  QXmlStreamReader_hasError(handle: not null QXmlStreamReaderH) return boolean;
 pragma Import(C,QXmlStreamReader_hasError, "QXmlStreamReader_hasError");
 
 procedure QXmlStreamReader_setEntityResolver(handle: not null QXmlStreamReaderH;resolver:QXmlStreamEntityResolverH);
 pragma Import(C,QXmlStreamReader_setEntityResolver, "QXmlStreamReader_setEntityResolver");
 
 function  QXmlStreamReader_entityResolver(handle: not null QXmlStreamReaderH) return QXmlStreamEntityResolverH;
 pragma Import(C,QXmlStreamReader_entityResolver, "QXmlStreamReader_entityResolver");

-------------
 function  QXmlStreamWriter_create return QXmlStreamWriterH;
 pragma Import(C,QXmlStreamWriter_create, "QXmlStreamWriter_create");
 
 function  QXmlStreamWriter_create2(device:QIODeviceH) return QXmlStreamWriterH;
 pragma Import(C,QXmlStreamWriter_create2, "QXmlStreamWriter_create2");
 
 function  QXmlStreamWriter_create3(data:QByteArrayH) return QXmlStreamWriterH;
 pragma Import(C,QXmlStreamWriter_create3, "QXmlStreamWriter_create3");
 
 function  QXmlStreamWriter_create4(data:QStringH) return QXmlStreamWriterH;
 pragma Import(C,QXmlStreamWriter_create4, "QXmlStreamWriter_create4");
 
 procedure QXmlStreamWriter_QXmlStreamWriter_destroy(handle: not null QXmlStreamWriterH);
 pragma Import(C,QXmlStreamWriter_QXmlStreamWriter_destroy, "QXmlStreamWriter_QXmlStreamWriter_destroy");
 
 procedure QXmlStreamWriter_QXmlStreamWriter_setDevice(handle: not null QXmlStreamWriterH;device:QIODeviceH);
 pragma Import(C,QXmlStreamWriter_QXmlStreamWriter_setDevice, "QXmlStreamWriter_QXmlStreamWriter_setDevice");
 
 function  QXmlStreamWriter_device(handle: not null QXmlStreamWriterH) return QIODeviceH;
 pragma Import(C,QXmlStreamWriter_device, "QXmlStreamWriter_device");
 
 procedure QXmlStreamWriter_setAutoFormatting(handle: not null QXmlStreamWriterH;flag:boolean);
 pragma Import(C,QXmlStreamWriter_setAutoFormatting, "QXmlStreamWriter_setAutoFormatting");
 
 function  QXmlStreamWriter_autoFormatting(handle: not null QXmlStreamWriterH) return boolean;
 pragma Import(C,QXmlStreamWriter_autoFormatting, "QXmlStreamWriter_autoFormatting");
 
 procedure QXmlStreamWriter_setAutoFormattingIndent(handle: not null QXmlStreamWriterH;spacesOrTabs:integer);
 pragma Import(C,QXmlStreamWriter_setAutoFormattingIndent, "QXmlStreamWriter_setAutoFormattingIndent");
 
 function  QXmlStreamWriter_autoFormattingIndent(handle: not null QXmlStreamWriterH) return integer;
 pragma Import(C,QXmlStreamWriter_autoFormattingIndent, "QXmlStreamWriter_autoFormattingIndent");
 
 procedure QXmlStreamWriter_writeAttribute(handle: not null QXmlStreamWriterH; qualifiedName,value: QStringH);
 pragma Import(C,QXmlStreamWriter_writeAttribute, "QXmlStreamWriter_writeAttribute");
 
 procedure QXmlStreamWriter_writeAttribute2(handle: not null QXmlStreamWriterH;namespaceUri,name,value:QStringH);
 pragma Import(C,QXmlStreamWriter_writeAttribute2, "QXmlStreamWriter_writeAttribute2");
 
 procedure QXmlStreamWriter_writeAttribute3(handle: not null QXmlStreamWriterH;attribute:QXmlStreamAttributeH);
 pragma Import(C,QXmlStreamWriter_writeAttribute3, "QXmlStreamWriter_writeAttribute3");
 
 procedure QXmlStreamWriter_writeAttributes(handle: not null QXmlStreamWriterH;attributes:QXmlStreamAttributesH);
 pragma Import(C,QXmlStreamWriter_writeAttributes, "QXmlStreamWriter_writeAttributes");
 
 procedure QXmlStreamWriter_writeCDATA(handle: not null QXmlStreamWriterH;text:QStringH);
 pragma Import(C,QXmlStreamWriter_writeCDATA, "QXmlStreamWriter_writeCDATA");
 
 procedure QXmlStreamWriter_writeCharacters(handle: not null QXmlStreamWriterH;text:QStringH);
 pragma Import(C,QXmlStreamWriter_writeCharacters, "QXmlStreamWriter_writeCharacters");
 
 procedure QXmlStreamWriter_writeComment(handle: not null QXmlStreamWriterH;text:QStringH);
 pragma Import(C,QXmlStreamWriter_writeComment, "QXmlStreamWriter_writeComment");
 
 procedure QXmlStreamWriter_writeDTD(handle: not null QXmlStreamWriterH;dtd:QStringH);
 pragma Import(C,QXmlStreamWriter_writeDTD, "QXmlStreamWriter_writeDTD");
 
 procedure QXmlStreamWriter_writeEmptyElement(handle: not null QXmlStreamWriterH; qualifiedName:QStringH);
 pragma Import(C,QXmlStreamWriter_writeEmptyElement, "QXmlStreamWriter_writeEmptyElement");
 
 procedure QXmlStreamWriter_writeEmptyElement2(handle: not null QXmlStreamWriterH; namespaceUri,name:QStringH);
 pragma Import(C,QXmlStreamWriter_writeEmptyElement2, "QXmlStreamWriter_writeEmptyElement2");
 
 procedure QXmlStreamWriter_writeTextElement(handle: not null QXmlStreamWriterH;qualifiedName,text: QStringH);
 pragma Import(C,QXmlStreamWriter_writeTextElement, "QXmlStreamWriter_writeTextElement");
 
 procedure QXmlStreamWriter_writeTextElement2(handle: not null QXmlStreamWriterH;namespaceUri,name,text:QStringH);
 pragma Import(C,QXmlStreamWriter_writeTextElement2, "QXmlStreamWriter_writeTextElement2");
 
 procedure QXmlStreamWriter_writeEndDocument(handle: not null QXmlStreamWriterH);
 pragma Import(C,QXmlStreamWriter_writeEndDocument, "QXmlStreamWriter_writeEndDocument");
 
 procedure QXmlStreamWriter_writeEndElement(handle: not null QXmlStreamWriterH);
 pragma Import(C,QXmlStreamWriter_writeEndElement, "QXmlStreamWriter_writeEndElement");
 
 procedure QXmlStreamWriter_writeEntityReference(handle: not null QXmlStreamWriterH;name:QStringH);
 pragma Import(C,QXmlStreamWriter_writeEntityReference, "QXmlStreamWriter_writeEntityReference");
 
 procedure QXmlStreamWriter_writeNamespace(handle: not null QXmlStreamWriterH; namespaceUri,prefix:QStringH);
 pragma Import(C,QXmlStreamWriter_writeNamespace, "QXmlStreamWriter_writeNamespace");
 
 procedure QXmlStreamWriter_writeDefaultNamespace(handle: not null QXmlStreamWriterH;namespaceUri:QStringH);
 pragma Import(C,QXmlStreamWriter_writeDefaultNamespace, "QXmlStreamWriter_writeDefaultNamespace");
 
 procedure QXmlStreamWriter_writeProcessingInstruction(handle: not null QXmlStreamWriterH; target,data:QStringH);
 pragma Import(C,QXmlStreamWriter_writeProcessingInstruction, "QXmlStreamWriter_writeProcessingInstruction");
 
 procedure QXmlStreamWriter_writeStartDocument(handle: not null QXmlStreamWriterH);
 pragma Import(C,QXmlStreamWriter_writeStartDocument, "QXmlStreamWriter_writeStartDocument");
 
 procedure QXmlStreamWriter_writeStartDocument2(handle: not null QXmlStreamWriterH;version:QStringH);
 pragma Import(C,QXmlStreamWriter_writeStartDocument2, "QXmlStreamWriter_writeStartDocument2");
 
 procedure QXmlStreamWriter_writeStartDocument3(handle: not null QXmlStreamWriterH;version:QStringH; standalone :boolean);
 pragma Import(C,QXmlStreamWriter_writeStartDocument3, "QXmlStreamWriter_writeStartDocument3");
 
 procedure QXmlStreamWriter_writeStartElement(handle: not null QXmlStreamWriterH;qualifiedName:QStringH );
 pragma Import(C,QXmlStreamWriter_writeStartElement, "QXmlStreamWriter_writeStartElement");
 
 procedure QXmlStreamWriter_writeStartElement2(handle: not null QXmlStreamWriterH; namespaceUri,name:QStringH);
 pragma Import(C,QXmlStreamWriter_writeStartElement2, "QXmlStreamWriter_writeStartElement2");

-----------------------------------------------------------------------------------------------------
 function  QXmlStreamStringRef_create(aString:QStringRefH) return QXmlStreamStringRefH;
 function  QXmlStreamStringRef_create(aString:QStringH)    return QXmlStreamStringRefH;

 function  QXmlStreamAttribute_create(qualifiedName,value: QStringH) return QXmlStreamAttributeH;
 function  QXmlStreamAttribute_create(namespaceUri,name,value:QStringH) return QXmlStreamAttributeH;
 function  QXmlStreamAttribute_create(attr:QXmlStreamAttributeH) return QXmlStreamAttributeH;

 function  QXmlStreamAttributes_value(handle: not null QXmlStreamAttributesH;namespaceUri,name:QLatin1StringH) return QStringRefH;
 function  QXmlStreamAttributes_value(handle: not null QXmlStreamAttributesH;qualifiedName:QStringH) return QStringRefH;
 function  QXmlStreamAttributes_value(handle: not null QXmlStreamAttributesH;qualifiedName:QLatin1StringH) return QStringRefH;
 procedure QXmlStreamAttributes_append(handle: not null QXmlStreamAttributesH;attribute:QXmlStreamAttributeH);

 function  QXmlStreamNamespaceDeclaration_create(other:QXmlStreamNamespaceDeclarationH) return QXmlStreamNamespaceDeclarationH;
 function  QXmlStreamNamespaceDeclaration_create(prefix,namespaceUri:QStringH) return QXmlStreamNamespaceDeclarationH;

 function  QXmlStreamNotationDeclaration_create(other:QXmlStreamNotationDeclarationH) return QXmlStreamNotationDeclarationH;
 function  QXmlStreamEntityDeclaration_create(other:QXmlStreamEntityDeclarationH) return QXmlStreamEntityDeclarationH;

 function  QXmlStreamReader_create(device:QIODeviceH) return QXmlStreamReaderH;
 function  QXmlStreamReader_create(data:QByteArrayH) return QXmlStreamReaderH;
 function  QXmlStreamReader_create(data:QStringH) return QXmlStreamReaderH;
 function  QXmlStreamReader_create(data:zstring) return QXmlStreamReaderH;
 procedure QXmlStreamReader_addData(handle: not null QXmlStreamReaderH;data:QStringH);
 procedure QXmlStreamReader_addData(handle: not null QXmlStreamReaderH;data:zstring);
 function  QXmlStreamReader_readElementText(handle: not null QXmlStreamReaderH) return QStringH;

 function  QXmlStreamWriter_create(device:QIODeviceH) return QXmlStreamWriterH;
 function  QXmlStreamWriter_create(data:QByteArrayH) return QXmlStreamWriterH;
 function  QXmlStreamWriter_create(data:QStringH) return QXmlStreamWriterH;
 procedure QXmlStreamWriter_writeAttribute(handle: not null QXmlStreamWriterH;namespaceUri,name,value:QStringH);
 procedure QXmlStreamWriter_writeAttribute(handle: not null QXmlStreamWriterH;attribute:QXmlStreamAttributeH);
 procedure QXmlStreamWriter_writeEmptyElement(handle: not null QXmlStreamWriterH; namespaceUri,name:QStringH);
 procedure QXmlStreamWriter_writeTextElement(handle: not null QXmlStreamWriterH;namespaceUri,name,text:QStringH);
 procedure QXmlStreamWriter_writeStartDocument(handle: not null QXmlStreamWriterH;version:QStringH);
 procedure QXmlStreamWriter_writeStartDocument(handle: not null QXmlStreamWriterH;version:QStringH; standalone :boolean);
 procedure QXmlStreamWriter_writeStartElement(handle: not null QXmlStreamWriterH; namespaceUri,name:QStringH);

end Qt.QXmlStream;
