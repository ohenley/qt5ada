--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QVariant; use Qt.QVariant;
with builtin; use builtin;
package Qt.QMeta is

type QMetaMethodAccess is (QMetaMethodPrivate, QMetaMethodProtected, QMetaMethodPublic);

type QMetaMethodMethodType is (QMetaMethodMethod, QMetaMethodSignal, QMetaMethodSlot);

type QMetaMethodAttributes is (QMetaMethodCompatibility,QMetaMethodCloned, QMetaMethodScriptable);

for QMetaMethodAttributes'size use cardinal'size;

for QMetaMethodAttributes use (
    QMetaMethodCompatibility  => 1,
    QMetaMethodCloned  => 2,
    QMetaMethodScriptable => 4 );

function QMetaMethod_create return  QMetaMethodH;   
pragma Import(C,QMetaMethod_create,"QMetaMethod_create");

procedure QMetaMethod_destroy(handle: not null  QMetaMethodH);   
pragma Import(C,QMetaMethod_destroy,"QMetaMethod_destroy");

-- function QMetaMethod_signature(handle: not null  QMetaMethodH) return string;   
-- pragma Import(C,QMetaMethod_signature,"QMetaMethod_signature");

function QMetaMethod_typeName(handle: not null  QMetaMethodH) return string;   
pragma Import(C,QMetaMethod_typeName,"QMetaMethod_typeName");

function QMetaMethod_tag(handle: not null  QMetaMethodH) return string;   
pragma Import(C,QMetaMethod_tag,"QMetaMethod_tag");

function QMetaMethod_access(handle: not null  QMetaMethodH) return  QMetaMethodAccess;   
pragma Import(C,QMetaMethod_access,"QMetaMethod_access");

function QMetaMethod_methodType(handle: not null  QMetaMethodH) return  QMetaMethodMethodType;   
pragma Import(C,QMetaMethod_methodType,"QMetaMethod_methodType");

function QMetaMethod_attributes(handle: not null  QMetaMethodH) return  Integer;   
pragma Import(C,QMetaMethod_attributes,"QMetaMethod_attributes");

function QMetaEnum_create return  QMetaEnumH;   
pragma Import(C,QMetaEnum_create,"QMetaEnum_create");

procedure QMetaEnum_destroy(handle: not null  QMetaEnumH);   
pragma Import(C,QMetaEnum_destroy,"QMetaEnum_destroy");

function QMetaEnum_name(handle: not null  QMetaEnumH) return string;   
pragma Import(C,QMetaEnum_name,"QMetaEnum_name");

function QMetaEnum_isFlag(handle: not null  QMetaEnumH) return  Boolean;   
pragma Import(C,QMetaEnum_isFlag,"QMetaEnum_isFlag");

function QMetaEnum_keyCount(handle: not null  QMetaEnumH) return  Integer;   
pragma Import(C,QMetaEnum_keyCount,"QMetaEnum_keyCount");

function QMetaEnum_key(handle: not null  QMetaEnumH; index: Integer) return string;   
pragma Import(C,QMetaEnum_key,"QMetaEnum_key");

function QMetaEnum_value(handle: not null  QMetaEnumH; index: Integer) return  Integer;   
pragma Import(C,QMetaEnum_value,"QMetaEnum_value");

function QMetaEnum_scope(handle: not null  QMetaEnumH) return string;   
pragma Import(C,QMetaEnum_scope,"QMetaEnum_scope");

function QMetaEnum_keyToValue(handle: not null  QMetaEnumH; key: zstring) return  Integer;   
pragma Import(C,QMetaEnum_keyToValue,"QMetaEnum_keyToValue");

function QMetaEnum_valueToKey(handle: not null  QMetaEnumH; value: Integer) return string;   
pragma Import(C,QMetaEnum_valueToKey,"QMetaEnum_valueToKey");

function QMetaEnum_keysToValue(handle: not null  QMetaEnumH; keys: zstring) return  Integer;   
pragma Import(C,QMetaEnum_keysToValue,"QMetaEnum_keysToValue");

function  QMetaEnum_valueToKeys(handle: not null  QMetaEnumH; value: Integer) return QByteArrayH;
pragma Import(C,QMetaEnum_valueToKeys,"QMetaEnum_valueToKeys");

function QMetaEnum_isValid(handle: not null  QMetaEnumH) return  Boolean;   
pragma Import(C,QMetaEnum_isValid,"QMetaEnum_isValid");

function QMetaProperty_create return  QMetaPropertyH;   
pragma Import(C,QMetaProperty_create,"QMetaProperty_create");

procedure QMetaProperty_destroy(handle: not null  QMetaPropertyH);   
pragma Import(C,QMetaProperty_destroy,"QMetaProperty_destroy");

function QMetaProperty_name(handle: not null  QMetaPropertyH) return string;   
pragma Import(C,QMetaProperty_name,"QMetaProperty_name");

function QMetaProperty_typeName(handle: not null  QMetaPropertyH) return string;   
pragma Import(C,QMetaProperty_typeName,"QMetaProperty_typeName");

function QMetaProperty_type(handle: not null  QMetaPropertyH) return  QVariantType;   
pragma Import(C,QMetaProperty_type,"QMetaProperty_type");

function QMetaProperty_userType(handle: not null  QMetaPropertyH) return  Integer;   
pragma Import(C,QMetaProperty_userType,"QMetaProperty_userType");

function QMetaProperty_isReadable(handle: not null  QMetaPropertyH) return  Boolean;   
pragma Import(C,QMetaProperty_isReadable,"QMetaProperty_isReadable");

function QMetaProperty_isWritable(handle: not null  QMetaPropertyH) return  Boolean;   
pragma Import(C,QMetaProperty_isWritable,"QMetaProperty_isWritable");

function QMetaProperty_isResettable(handle: not null  QMetaPropertyH) return  Boolean;   
pragma Import(C,QMetaProperty_isResettable,"QMetaProperty_isResettable");

function QMetaProperty_isDesignable(handle: not null  QMetaPropertyH; obj: QObjectH := null) return Boolean;
pragma Import(C,QMetaProperty_isDesignable,"QMetaProperty_isDesignable");

function QMetaProperty_isScriptable(handle: not null  QMetaPropertyH; obj: QObjectH := null) return Boolean;   
pragma Import(C,QMetaProperty_isScriptable,"QMetaProperty_isScriptable");

function QMetaProperty_isStored(handle: not null  QMetaPropertyH; obj: QObjectH := null) return Boolean;   
pragma Import(C,QMetaProperty_isStored,"QMetaProperty_isStored");

function QMetaProperty_isEditable(handle: not null  QMetaPropertyH; obj: QObjectH := null) return Boolean;   
pragma Import(C,QMetaProperty_isEditable,"QMetaProperty_isEditable");

function QMetaProperty_isUser(handle: not null  QMetaPropertyH; obj: QObjectH := null) return Boolean;   
pragma Import(C,QMetaProperty_isUser,"QMetaProperty_isUser");

function QMetaProperty_isFlagType(handle: not null  QMetaPropertyH) return  Boolean;   
pragma Import(C,QMetaProperty_isFlagType,"QMetaProperty_isFlagType");

function QMetaProperty_isEnumType(handle: not null  QMetaPropertyH) return  Boolean;   
pragma Import(C,QMetaProperty_isEnumType,"QMetaProperty_isEnumType");

function  QMetaProperty_enumerator(handle: not null  QMetaPropertyH) return QMetaEnumH;
pragma Import(C,QMetaProperty_enumerator,"QMetaProperty_enumerator");

function  QMetaProperty_read(handle: not null  QMetaPropertyH; obj: QObjectH) return QVariantH;
pragma Import(C,QMetaProperty_read,"QMetaProperty_read");

function QMetaProperty_write(handle: not null  QMetaPropertyH; obj: QObjectH; value: QVariantH) return  Boolean;   
pragma Import(C,QMetaProperty_write,"QMetaProperty_write");

function QMetaProperty_reset(handle: not null  QMetaPropertyH; obj: QObjectH) return  Boolean;   
pragma Import(C,QMetaProperty_reset,"QMetaProperty_reset");

function QMetaProperty_hasStdCppSet(handle: not null  QMetaPropertyH) return  Boolean;   
pragma Import(C,QMetaProperty_hasStdCppSet,"QMetaProperty_hasStdCppSet");

function QMetaProperty_isValid(handle: not null  QMetaPropertyH) return  Boolean;   
pragma Import(C,QMetaProperty_isValid,"QMetaProperty_isValid");

function QMetaClassInfo_create return  QMetaClassInfoH;   
pragma Import(C,QMetaClassInfo_create,"QMetaClassInfo_create");

procedure QMetaClassInfo_destroy(handle: not null  QMetaClassInfoH);   
pragma Import(C,QMetaClassInfo_destroy,"QMetaClassInfo_destroy");

function QMetaClassInfo_name(handle: not null  QMetaClassInfoH) return string;   
pragma Import(C,QMetaClassInfo_name,"QMetaClassInfo_name");

function QMetaClassInfo_value(handle: not null  QMetaClassInfoH) return string;   
pragma Import(C,QMetaClassInfo_value,"QMetaClassInfo_value");

-------------------------- 2017 ------------------------------------
 function  QMetaMethod_name(handle:not null QMetaMethodH) return QByteArrayH;
 pragma Import(C,QMetaMethod_name, "QMetaMethod_name");
 
 function  QMetaMethod_returnType(handle:not null QMetaMethodH) return integer;
 pragma Import(C,QMetaMethod_returnType, "QMetaMethod_returnType");
 
 function  QMetaMethod_parameterCount(handle:not null QMetaMethodH) return integer;
 pragma Import(C,QMetaMethod_parameterCount, "QMetaMethod_parameterCount");
 
 function  QMetaMethod_parameterType(handle:not null QMetaMethodH;index: integer) return integer;
 pragma Import(C,QMetaMethod_parameterType, "QMetaMethod_parameterType");
 
 procedure QMetaMethod_getParameterTypes(handle:not null QMetaMethodH;types: pinteger);
 pragma Import(C,QMetaMethod_getParameterTypes, "QMetaMethod_getParameterTypes");
 
 function  QMetaMethod_methodIndex(handle:not null QMetaMethodH) return integer;
 pragma Import(C,QMetaMethod_methodIndex, "QMetaMethod_methodIndex");
 
 function  QMetaMethod_revision(handle:not null QMetaMethodH) return integer;
 pragma Import(C,QMetaMethod_revision, "QMetaMethod_revision");
 
 function  QMetaMethod_enclosingMetaObject(handle:not null QMetaMethodH) return  QMetaObjectH;
 pragma Import(C,QMetaMethod_enclosingMetaObject, "QMetaMethod_enclosingMetaObject");
 
 function  QMetaMethod_isValid(handle:not null QMetaMethodH) return boolean;
 pragma Import(C,QMetaMethod_isValid, "QMetaMethod_isValid");
 
 function  QMetaEnum_enclosingMetaObject(handle:not null QMetaEnumH) return QMetaObjectH;
 pragma Import(C,QMetaEnum_enclosingMetaObject, "QMetaEnum_enclosingMetaObject");
 
 function  QMetaProperty_propertyIndex(handle:not null QMetaPropertyH) return integer;
 pragma Import(C,QMetaProperty_propertyIndex, "QMetaProperty_propertyIndex");
 
 function  QMetaProperty_isConstant(handle:not null QMetaPropertyH) return boolean;
 pragma Import(C,QMetaProperty_isConstant, "QMetaProperty_isConstant");
 
 function  QMetaProperty_isFinal(handle:not null QMetaPropertyH) return boolean;
 pragma Import(C,QMetaProperty_isFinal, "QMetaProperty_isFinal");
 
 function  QMetaProperty_hasNotifySignal(handle:not null QMetaPropertyH) return boolean;
 pragma Import(C,QMetaProperty_hasNotifySignal, "QMetaProperty_hasNotifySignal");
 
 function  QMetaProperty_notifySignal(handle:not null QMetaPropertyH) return QMetaMethodH;
 pragma Import(C,QMetaProperty_notifySignal, "QMetaProperty_notifySignal");
 
 function  QMetaProperty_notifySignalIndex(handle:not null QMetaPropertyH) return integer;
 pragma Import(C,QMetaProperty_notifySignalIndex, "QMetaProperty_notifySignalIndex");
 
 function  QMetaProperty_revision(handle:not null QMetaPropertyH) return integer;
 pragma Import(C,QMetaProperty_revision, "QMetaProperty_revision");
 
 function  QMetaProperty_enclosingMetaObject(handle:not null QMetaPropertyH) return QMetaObjectH;
 pragma Import(C,QMetaProperty_enclosingMetaObject, "QMetaProperty_enclosingMetaObject");
 
 function  QMetaClassInfo_enclosingMetaObject(handle:not null QMetaClassInfoH) return QMetaObjectH;
 pragma Import(C,QMetaClassInfo_enclosingMetaObject, "QMetaClassInfo_enclosingMetaObject");
 

end Qt.QMeta;
