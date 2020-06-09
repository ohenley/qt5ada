--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2018                           บ
-- บ Copyright (C) 2018                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QUuid                is

 type QUuidVariant is new integer range -1 .. 7;
 VarUnknown : constant QUuidVariant := -1;
 NCS        : constant QUuidVariant :=  0; -- 0 - -
 DCE        : constant QUuidVariant :=  2; -- 1 0 -
 Microsoft  : constant QUuidVariant :=  6; -- 1 1 0
 Reserved   : constant QUuidVariant :=  7; -- 1 1 1

 type QUuidVersion is new integer range -1 .. 5;
 VerUnknown    : constant QUuidVersion :=-1;
 Time          : constant QUuidVersion := 1; -- 0 0 0 1
 EmbeddedPOSIX : constant QUuidVersion := 2; -- 0 0 1 0
 Md5           : constant QUuidVersion := 3; -- 0 0 1 1
 Name          : constant QUuidVersion := 3; -- 0 0 1 1
 Random        : constant QUuidVersion := 4; -- 0 1 0 0
 Sha1          : constant QUuidVersion := 5; -- 0 1 0 1

 type StringFormat is new integer range 0 .. 3;
 WithBraces    : constant StringFormat := 0;
 WithoutBraces : constant StringFormat := 1;
 Id128         : constant StringFormat := 3;


 function  QUuid_create(str:QStringH) return QUuidH;
 pragma Import(C,QUuid_create, "QUuid_create");
 
 function  QUuid_create2(str:zstring) return QUuidH;
 pragma Import(C,QUuid_create2, "QUuid_create2");
 
 function  QUuid_create3(str:QByteArrayH) return QUuidH;
 pragma Import(C,QUuid_create3, "QUuid_create3");
 
 function  QUuid_fromString(str:QStringViewH) return QUuidH;
 pragma Import(C,QUuid_fromString, "QUuid_fromString");
 
 function  QUuid_fromString2(str:QLatin1StringH) return QUuidH;
 pragma Import(C,QUuid_fromString2, "QUuid_fromString2");
 
 function  QUuid_createUuid return QUuidH;
 pragma Import(C,QUuid_createUuid, "QUuid_createUuid");
 
 function  QUuid_createUuidV5(handle:not null QUuidH;baseData: QByteArrayH) return QUuidH;
 pragma Import(C,QUuid_createUuidV5, "QUuid_createUuidV5");
 
 function  QUuid_createUuidV52(handle:not null QUuidH;baseData: QStringH) return QUuidH;
 pragma Import(C,QUuid_createUuidV52, "QUuid_createUuidV52");
 
 function  QUuid_fromRfc4122(arr:QByteArrayH) return QUuidH;
 pragma Import(C,QUuid_fromRfc4122, "QUuid_fromRfc4122");
 
 function  QUuid_toString(handle:not null QUuidH) return QStringH;
 pragma Import(C,QUuid_toString, "QUuid_toString");
 
 function  QUuid_toString2(handle:not null QUuidH;mode:StringFormat) return QStringH;
 pragma Import(C,QUuid_toString2, "QUuid_toString2");
 
 function  QUuid_toByteArray(handle:not null QUuidH)  return QByteArrayH;
 pragma Import(C,QUuid_toByteArray, "QUuid_toByteArray");
 
 function  QUuid_toByteArray2(handle:not null QUuidH;mode:StringFormat) return QByteArrayH;
 pragma Import(C,QUuid_toByteArray2, "QUuid_toByteArray2");
 
 function  QUuid_toRfc4122(handle:not null QUuidH) return QByteArrayH;
 pragma Import(C,QUuid_toRfc4122, "QUuid_toRfc4122");
 
 function  QUuid_isNull(handle:not null QUuidH) return boolean;
 pragma Import(C,QUuid_isNull, "QUuid_isNull");
 
 function  QUuid_variant(handle:not null QUuidH) return QUuidVariant;
 pragma Import(C,QUuid_variant, "QUuid_variant");
 
 function  QUuid_version(handle:not null QUuidH) return QUuidVersion;
 pragma Import(C,QUuid_version, "QUuid_version");
 
---------------------------------------------------------------
 function  QUuid_create(str:zstring) return QUuidH;
 function  QUuid_create(str:QByteArrayH) return QUuidH;
 function  QUuid_fromString(str:QLatin1StringH) return QUuidH;
 function  QUuid_createUuidV5(handle:not null QUuidH;baseData: QStringH) return QUuidH;
 function  QUuid_toString(handle:not null QUuidH;mode:StringFormat) return QStringH;
 function  QUuid_toByteArray(handle:not null QUuidH;mode:StringFormat) return QByteArrayH;
end;
