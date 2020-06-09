--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt;      use Qt;
with builtin; use builtin;

package Qt.QWebEngineUrlScheme is

 type QWebUrlSchemeH     is new QObjectH;

 type Syntax is (HostPortAndUserInformation,HostAndPort,Host,Path);
 pragma convention(C,Syntax);


 subtype Flags is quint32;
 SecureScheme                 : constant Flags := 1;
 LocalScheme                  : constant Flags := 2;
 LocalAccessAllowed           : constant Flags := 4;
 NoAccessAllowed              : constant Flags := 8;
 ServiceWorkersAllowed        : constant Flags := 16#10#;
 ViewSourceAllowed            : constant Flags := 16#20#;
 ContentSecurityPolicyIgnored : constant Flags := 16#40#;
 CorsEnabled                  : constant Flags := 16#80#;

 function  QWebEngineUrlScheme_create return QWebUrlSchemeH;
 pragma Import(C,QWebEngineUrlScheme_create, "QWebEngineUrlScheme_create");
 
 function  QWebEngineUrlScheme_create2(name:QByteArrayH) return QWebUrlSchemeH;
 pragma Import(C,QWebEngineUrlScheme_create2, "QWebEngineUrlScheme_create2");
 
 function  QWebEngineUrlScheme_create3(that:QWebUrlSchemeH) return QWebUrlSchemeH;
 pragma Import(C,QWebEngineUrlScheme_create3, "QWebEngineUrlScheme_create3");
 
 function  QWebEngineUrlScheme_create4(name:zstring) return QWebUrlSchemeH;
 pragma Import(C,QWebEngineUrlScheme_create4, "QWebEngineUrlScheme_create4");
 
 procedure QWebEngineUrlScheme_destroy(handle:not null QWebUrlSchemeH);
 pragma Import(C,QWebEngineUrlScheme_destroy, "QWebEngineUrlScheme_destroy");
 
 function  QWebEngineUrlScheme_eq(handle:not null QWebUrlSchemeH;that:QWebUrlSchemeH) return boolean;
 pragma Import(C,QWebEngineUrlScheme_eq, "QWebEngineUrlScheme_eq");
 
 function  QWebEngineUrlScheme_ne(handle:not null QWebUrlSchemeH;that:QWebUrlSchemeH) return boolean;
 pragma Import(C,QWebEngineUrlScheme_ne, "QWebEngineUrlScheme_ne");
 
 function  QWebEngineUrlScheme_name(handle:not null QWebUrlSchemeH) return QByteArrayH;
 pragma Import(C,QWebEngineUrlScheme_name, "QWebEngineUrlScheme_name");
 
 function  QWebEngineUrlScheme_name2(handle:not null QWebUrlSchemeH) return zstring;
 pragma Import(C,QWebEngineUrlScheme_name2, "QWebEngineUrlScheme_name2");
 
 procedure QWebEngineUrlScheme_setName(handle:not null QWebUrlSchemeH;name:QByteArrayH);
 pragma Import(C,QWebEngineUrlScheme_setName, "QWebEngineUrlScheme_setName");
 
 procedure QWebEngineUrlScheme_setName2(handle:not null QWebUrlSchemeH;name:zstring);
 pragma Import(C,QWebEngineUrlScheme_setName2, "QWebEngineUrlScheme_setName2");
 
 function  QWebEngineUrlScheme_syntax(handle:not null QWebUrlSchemeH) return Syntax;
 pragma Import(C,QWebEngineUrlScheme_syntax, "QWebEngineUrlScheme_syntax");
 
 procedure QWebEngineUrlScheme_setSyntax(handle:not null QWebUrlSchemeH;sntx:Syntax);
 pragma Import(C,QWebEngineUrlScheme_setSyntax, "QWebEngineUrlScheme_setSyntax");
 
 function  QWebEngineUrlScheme_defaultPort(handle:not null QWebUrlSchemeH) return integer;
 pragma Import(C,QWebEngineUrlScheme_defaultPort, "QWebEngineUrlScheme_defaultPort");
 
 procedure QWebEngineUrlScheme_setDefaultPort(handle:not null QWebUrlSchemeH;port:integer);
 pragma Import(C,QWebEngineUrlScheme_setDefaultPort, "QWebEngineUrlScheme_setDefaultPort");
 
 function  QWebEngineUrlScheme_flags(handle:not null QWebUrlSchemeH) return Flags;
 pragma Import(C,QWebEngineUrlScheme_flags, "QWebEngineUrlScheme_flags");
 
 procedure QWebEngineUrlScheme_setFlags(handle:not null QWebUrlSchemeH;flgs:Flags);
 pragma Import(C,QWebEngineUrlScheme_setFlags, "QWebEngineUrlScheme_setFlags");
 
 procedure QWebEngineUrlScheme_registerScheme(scheme:QWebUrlSchemeH);
 pragma Import(C,QWebEngineUrlScheme_registerScheme, "QWebEngineUrlScheme_registerScheme");
 
 function  QWebEngineUrlScheme_schemeByName(name:QByteArrayH) return QWebUrlSchemeH;
 pragma Import(C,QWebEngineUrlScheme_schemeByName, "QWebEngineUrlScheme_schemeByName");

---------------------------------------------------
 function  QWebEngineUrlScheme_create(name:QByteArrayH) return QWebUrlSchemeH;
 function  QWebEngineUrlScheme_create(that:QWebUrlSchemeH) return QWebUrlSchemeH;
 function  QWebEngineUrlScheme_create(name:zstring) return QWebUrlSchemeH;
 function  QWebEngineUrlScheme_name(handle:not null QWebUrlSchemeH) return zstring;
 procedure QWebEngineUrlScheme_setName(handle:not null QWebUrlSchemeH;name:zstring);

end;
