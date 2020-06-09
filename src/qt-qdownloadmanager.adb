--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QDownloadManager is
 
 procedure QDownloadManager_append(handle:not null QNetworkAccessManagerH; urlList:QStringListH) is
 begin
  QDownloadManager_append2(handle,urlList);
 end;

 procedure QDownloadManager_downloadProgress(handle:not null QNetworkAccessManagerH) is
 value,maximum: qint64;
 begin
  value   := QDownloadManager_getValue(handle);
  maximum := QDownloadManager_getMaximum(handle);
  QDownloadManager_downloadProgress(handle,value,maximum);
 end;

end;
