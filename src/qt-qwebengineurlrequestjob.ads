--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QWebEngineUrlRequestJob is

 type Error is (NoError,UrlNotFound,UrlInvalid,RequestAborted,RequestDenied,RequestFailed);
 pragma convention(C,Error);
     
 procedure QWebEngineUrlRequestJob_delete(handle:not null QWebUrlRequestJobH);
 pragma Import(C,QWebEngineUrlRequestJob_delete, "QWebEngineUrlRequestJob_delete");
 
 function  QWebEngineUrlRequestJob_requestUrl(handle:not null QWebUrlRequestJobH) return QUrlH;
 pragma Import(C,QWebEngineUrlRequestJob_requestUrl, "QWebEngineUrlRequestJob_requestUrl");
 
 
end;
