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

package Qt.QAuthenticator   is

 function  QAuthenticator_create return QAuthenticatorH;
 pragma Import(C, QAuthenticator_create ,"QAuthenticator_create");

 procedure QAuthenticator_destroy(handle: not null  QAuthenticatorH);
 pragma Import(C, QAuthenticator_destroy ,"QAuthenticator_destroy");

 function  QAuthenticator_create2(authenticator: QAuthenticatorH) return QAuthenticatorH;
 pragma Import(C, QAuthenticator_create2 ,"QAuthenticator_create2");

 function  QAuthenticator_user(handle: not null  QAuthenticatorH) return QStringH;
 pragma Import(C, QAuthenticator_user  ,"QAuthenticator_user");

 procedure QAuthenticator_setUser(handle: not null  QAuthenticatorH; user: QStringH);
 pragma Import(C, QAuthenticator_setUser  ,"QAuthenticator_setUser");

 function  QAuthenticator_password(handle: not null  QAuthenticatorH) return QStringH;
 pragma Import(C, QAuthenticator_password  ,"QAuthenticator_password");

 procedure QAuthenticator_setPassword(handle: not null  QAuthenticatorH; password: QStringH);
 pragma Import(C, QAuthenticator_setPassword ,"QAuthenticator_setPassword");

 function  QAuthenticator_realm(handle: not null  QAuthenticatorH) return QStringH;
 pragma Import(C, QAuthenticator_realm ,"QAuthenticator_realm");

 function  QAuthenticator_isNull(handle: not null  QAuthenticatorH) return boolean;
 pragma Import(C, QAuthenticator_isNull  ,"QAuthenticator_isNull");

 procedure QAuthenticator_detach(handle: not null  QAuthenticatorH);
 pragma Import(C, QAuthenticator_detach  ,"QAuthenticator_detach");

 function  QAuthenticator_create(authenticator: QAuthenticatorH) return QAuthenticatorH;

end Qt.QAuthenticator;
