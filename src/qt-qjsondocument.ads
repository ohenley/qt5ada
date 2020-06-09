-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QJsonDocument is

 type ParseError is (
        NoError,UnterminatedObject,MissingNameSeparator,UnterminatedArray,
        MissingValueSeparator,IllegalValue,TerminationByNumber,IllegalNumber,
        IllegalEscapeSequence,IllegalUTF8String,UnterminatedString,
        MissingObject,DeepNesting,DocumentTooLarge,GarbageAtEn);
 pragma convention(C,ParseError);

 type DataValidation is (Validate,BypassValidatio);
 pragma convention(C,DataValidation);

 type JsonFormat is (Indented,Compac);
 pragma convention(C,JsonFormat);

 function  QJsonParseError_errorString(handle:not null QJsonParseErrorH) return QStringH;
 pragma Import(C,QJsonParseError_errorString, "QJsonParseError_errorString");
 
 function  QJsonParseError_offset(handle:not null QJsonParseErrorH) return integer;
 pragma Import(C,QJsonParseError_offset, "QJsonParseError_offset");
 
 function  QJsonParseError_error(handle:not null QJsonParseErrorH)return ParseError;
 pragma Import(C,QJsonParseError_error, "QJsonParseError_error");
 
 function  QJsonDocument_create return QJsonDocumentH;
 pragma Import(C,QJsonDocument_create, "QJsonDocument_create");
 
 function  QJsonDocument_create2(object:QJsonObjectH) return QJsonDocumentH;
 pragma Import(C,QJsonDocument_create2, "QJsonDocument_create2");
 
 function  QJsonDocument_create3(arr:QJsonArrayH) return QJsonDocumentH;
 pragma Import(C,QJsonDocument_create3, "QJsonDocument_create3");
 
 function  QJsonDocument_create4(other:QJsonDocumentH) return QJsonDocumentH;
 pragma Import(C,QJsonDocument_create4, "QJsonDocument_create4");
 
 procedure QJsonDocument_destroy(handle:not null QJsonDocumentH);
 pragma Import(C,QJsonDocument_destroy, "QJsonDocument_destroy");
 
 function  QJsonDocument_rawData(handle:not null QJsonDocumentH;size:in out integer) return builtin.zstring;
 pragma Import(C,QJsonDocument_rawData, "QJsonDocument_rawData");
 
 function  QJsonDocument_toBinaryData(handle:not null QJsonDocumentH) return QByteArrayH;
 pragma Import(C,QJsonDocument_toBinaryData, "QJsonDocument_toBinaryData");
 
 function  QJsonDocument_toVariant(handle:not null QJsonDocumentH) return QVariantH;
 pragma Import(C,QJsonDocument_toVariant, "QJsonDocument_toVariant");
 
 function  QJsonDocument_toJson(handle:not null QJsonDocumentH;format :JsonFormat :=  Indented) return QByteArrayH;
 pragma Import(C,QJsonDocument_toJson, "QJsonDocument_toJson");
 
 function  QJsonDocument_isEmpty(handle:not null QJsonDocumentH) return boolean;
 pragma Import(C,QJsonDocument_isEmpty, "QJsonDocument_isEmpty");
 
 function  QJsonDocument_isArray(handle:not null QJsonDocumentH) return boolean;
 pragma Import(C,QJsonDocument_isArray, "QJsonDocument_isArray");
 
 function  QJsonDocument_isObject(handle:not null QJsonDocumentH) return boolean;
 pragma Import(C,QJsonDocument_isObject, "QJsonDocument_isObject");
 
 function  QJsonDocument_object(handle:not null QJsonDocumentH) return QJsonObjectH;
 pragma Import(C,QJsonDocument_object, "QJsonDocument_object");
 
 function  QJsonDocument_array(handle:not null QJsonDocumentH) return QJsonArrayH;
 pragma Import(C,QJsonDocument_array, "QJsonDocument_array");
 
 procedure QJsonDocument_setObject(handle:not null QJsonDocumentH;object:QJsonObjectH);
 pragma Import(C,QJsonDocument_setObject, "QJsonDocument_setObject");
 
 procedure QJsonDocument_setArray(handle:not null QJsonDocumentH;arr:QJsonArrayH);
 pragma Import(C,QJsonDocument_setArray, "QJsonDocument_setArray");
 
 function  QJsonDocument_isNull(handle:not null QJsonDocumentH) return boolean;
 pragma Import(C,QJsonDocument_isNull, "QJsonDocument_isNull");
 
 function  QJsonDocument_equal(handle:not null QJsonDocumentH;other:QJsonDocumentH) return boolean;
 pragma Import(C,QJsonDocument_equal, "QJsonDocument_equal");
 
 function  QJsonDocument_notequal(handle:not null QJsonDocumentH;other:QJsonDocumentH) return boolean;
 pragma Import(C,QJsonDocument_notequal, "QJsonDocument_notequal");
 
 function  QJsonDocument_fromRawData(data:builtin.zstring;size: integer;validation : DataValidation :=  Validate) return QJsonDocumentH;
 pragma Import(C,QJsonDocument_fromRawData, "QJsonDocument_fromRawData");
 
 function  QJsonDocument_fromBinaryData(data:QByteArrayH;validation  : DataValidation :=  Validate) return QJsonDocumentH;
 pragma Import(C,QJsonDocument_fromBinaryData, "QJsonDocument_fromBinaryData");
 
 function  QJsonDocument_fromVariant(variant:QVariantH) return QJsonDocumentH;
 pragma Import(C,QJsonDocument_fromVariant, "QJsonDocument_fromVariant");
 
 function  QJsonDocument_fromJson(json:QByteArrayH;error : QJsonParseErrorH :=  null) return QJsonDocumentH;
 pragma Import(C,QJsonDocument_fromJson, "QJsonDocument_fromJson");
 
 function  QJsonDocument_create(object:QJsonObjectH) return QJsonDocumentH;
 function  QJsonDocument_create(arr:QJsonArrayH) return QJsonDocumentH;
 function  QJsonDocument_create(other:QJsonDocumentH) return QJsonDocumentH;

end;
