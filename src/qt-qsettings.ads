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

with Qt.QVariant;  use Qt.QVariant;
with Qt.QString ;  use Qt.QString;

package Qt.QSettings is

 type QSettingsStatus is (NoError,AccessError,FormatError);
 pragma Convention(C,QSettingsStatus);

 type QSettingsFormat is (NativeFormat,IniFormat,CustomFormat1,CustomFormat2,CustomFormat3,CustomFormat4,CustomFormat5,CustomFormat6,CustomFormat7,CustomFormat8,CustomFormat9,CustomFormat10,CustomFormat11,CustomFormat12,CustomFormat13,CustomFormat14,InvalidFormat,CustomFormat15,CustomFormat16);
 pragma Convention(C,QSettingsFormat);

 type QSettingsScope is (UserScope,SystemScope);
 pragma Convention(C,QSettingsScope);

 function  QSettings_create(organization:QStringH;app: QStringH := s2qs("");parent: QObjectH := null) return QSettingsH;
 pragma Import(C,QSettings_create, "QSettings_create");
 
 function  QSettings_create2(scope:QSettingsScope; organization:QStringH;app: QStringH := s2qs(""); parent: QObjectH := null) return QSettingsH;
 pragma Import(C,QSettings_create2, "QSettings_create2");
 
 function  QSettings_create3(format:QSettingsFormat; scope:QSettingsScope; organization:QStringH; app:QStringH := s2qs("");parent: QObjectH := null) return QSettingsH;
 pragma Import(C,QSettings_create3, "QSettings_create3");
 
 function  QSettings_create4(fileName:QStringH;format: QSettingsFormat;parent: QObjectH := null) return QSettingsH;
 pragma Import(C,QSettings_create4, "QSettings_create4");
 
 function  QSettings_create5(parent:QObjectH := null) return QSettingsH;
 pragma Import(C,QSettings_create5, "QSettings_create5");
 
 procedure QSettings_destroy(handle: not null QSettingsH);
 pragma Import(C,QSettings_destroy, "QSettings_destroy");
 
 procedure QSettings_clear(handle: not null QSettingsH);
 pragma Import(C,QSettings_clear, "QSettings_clear");
 
 procedure QSettings_sync(handle: not null QSettingsH);
 pragma Import(C,QSettings_sync, "QSettings_sync");
 
 function  QSettings_status(handle: not null QSettingsH) return QSettingsStatus;
 pragma Import(C,QSettings_status, "QSettings_status");
 
 procedure QSettings_beginGroup(handle: not null QSettingsH; prefix:QstringH);
 pragma Import(C,QSettings_beginGroup, "QSettings_beginGroup");
 
 procedure QSettings_endGroup(handle: not null QSettingsH);
 pragma Import(C,QSettings_endGroup, "QSettings_endGroup");
 
 function  QSettings_group(handle: not null QSettingsH) return QStringH;
 pragma Import(C,QSettings_group, "QSettings_group");
 
 function  QSettings_beginReadArray(handle: not null QSettingsH; prefix:QstringH) return integer;
 pragma Import(C,QSettings_beginReadArray, "QSettings_beginReadArray");
 
 procedure QSettings_beginWriteArray(handle: not null QSettingsH; prefix:QstringH; size : integer := -1);
 pragma Import(C,QSettings_beginWriteArray, "QSettings_beginWriteArray");
 
 procedure QSettings_endArray(handle: not null QSettingsH);
 pragma Import(C,QSettings_endArray, "QSettings_endArray");
 
 procedure QSettings_setArrayIndex(handle: not null QSettingsH;index: integer);
 pragma Import(C,QSettings_setArrayIndex, "QSettings_setArrayIndex");
 
 function  QSettings_allKeys(handle: not null QSettingsH) return QStringListH;
 pragma Import(C,QSettings_allKeys, "QSettings_allKeys");
 
 function  QSettings_childKeys(handle: not null QSettingsH) return QStringListH;
 pragma Import(C,QSettings_childKeys, "QSettings_childKeys");
 
 function  QSettings_childGroups(handle: not null QSettingsH) return QStringListH;
 pragma Import(C,QSettings_childGroups, "QSettings_childGroups");
 
 function  QSettings_isWritable(handle: not null QSettingsH) return boolean;
 pragma Import(C,QSettings_isWritable, "QSettings_isWritable");
 
 procedure QSettings_setValue(handle: not null QSettingsH; key:QstringH; value: QVariantH);
 pragma Import(C,QSettings_setValue, "QSettings_setValue");
 
 function  QSettings_value(handle: not null QSettingsH; key:QstringH;defaultValue: QVariantH := QVariant_create) return QVariantH;
 pragma Import(C,QSettings_value, "QSettings_value");
 
 procedure QSettings_remove(handle: not null QSettingsH; key:QstringH);
 pragma Import(C,QSettings_remove, "QSettings_remove");
 
 function  QSettings_contains(handle: not null QSettingsH; key:QstringH) return boolean;
 pragma Import(C,QSettings_contains, "QSettings_contains");
 
 procedure QSettings_setFallbacksEnabled(handle: not null QSettingsH;b:boolean);
 pragma Import(C,QSettings_setFallbacksEnabled, "QSettings_setFallbacksEnabled");
 
 function  QSettings_fallbacksEnabled(handle: not null QSettingsH) return boolean;
 pragma Import(C,QSettings_fallbacksEnabled, "QSettings_fallbacksEnabled");
 
 function  QSettings_fileName(handle: not null QSettingsH) return QStringH;
 pragma Import(C,QSettings_fileName, "QSettings_fileName");
 
 function  QSettings_format(handle: not null QSettingsH) return QSettingsFormat;
 pragma Import(C,QSettings_format, "QSettings_format");
 
 function  QSettings_scope(handle: not null QSettingsH) return QSettingsScope;
 pragma Import(C,QSettings_scope, "QSettings_scope");
 
 function  QSettings_organizationName(handle: not null QSettingsH) return QStringH;
 pragma Import(C,QSettings_organizationName, "QSettings_organizationName");
 
 function  QSettings_applicationName(handle: not null QSettingsH) return QStringH;
 pragma Import(C,QSettings_applicationName, "QSettings_applicationName");
 
 procedure QSettings_setDefaultFormat(format:QSettingsFormat);
 pragma Import(C,QSettings_setDefaultFormat, "QSettings_setDefaultFormat");
 
 function  QSettings_defaultFormat return QSettingsFormat;
 pragma Import(C,QSettings_defaultFormat, "QSettings_defaultFormat");
 
 procedure QSettings_setPath(format:QSettingsFormat;scope: QSettingsScope;path: QStringH);
 pragma Import(C,QSettings_setPath, "QSettings_setPath");
 
------------------------------------------------------------------------------------------------------------------
 function  QSettings_create(scope:QSettingsScope; organization:QStringH;app: QStringH := s2qs(""); parent: QObjectH := null) return QSettingsH;
 function  QSettings_create(format:QSettingsFormat; scope:QSettingsScope; organization:QStringH; app:QStringH := s2qs("");parent: QObjectH := null) return QSettingsH;
 function  QSettings_create(fileName:QStringH;format: QSettingsFormat;parent: QObjectH := null) return QSettingsH;
 function  QSettings_create(parent:QObjectH := null) return QSettingsH;
end Qt.QSettings;
