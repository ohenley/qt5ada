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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QWebDownloadManager  is

 type RemovePolicy is (Never,ExitDownload,SuccessFullDownload); 
 pragma convention(C,RemovePolicy);

 function  QWebDownloadManager_create(parent:QWidgetH := null) return QWebDownloadManagerH;
 pragma Import(C,QWebDownloadManager_create, "QWebDownloadManager_create");
 
 procedure QWebDownloadManager_delete(handle:not null QWebDownloadManagerH);
 pragma Import(C,QWebDownloadManager_delete, "QWebDownloadManager_delete");
 
 function  QWebDownloadManager_activeDownloads(handle:not null QWebDownloadManagerH) return integer;
 pragma Import(C,QWebDownloadManager_activeDownloads, "QWebDownloadManager_activeDownloads");
 
 function  QWebDownloadManager_removePolicy(handle:not null QWebDownloadManagerH) return RemovePolicy;
 pragma Import(C,QWebDownloadManager_removePolicy, "QWebDownloadManager_removePolicy");
 
 procedure QWebDownloadManager_setRemovePolicy(handle:not null QWebDownloadManagerH;policy:RemovePolicy);
 pragma Import(C,QWebDownloadManager_setRemovePolicy, "QWebDownloadManager_setRemovePolicy");
 
 procedure QWebDownloadManager_download(handle:not null QWebDownloadManagerH;download:QWebDownloadItemH);
 pragma Import(C,QWebDownloadManager_download, "QWebDownloadManager_download");
 
 procedure QWebDownloadManager_cleanup(handle:not null QWebDownloadManagerH);
 pragma Import(C,QWebDownloadManager_cleanup, "QWebDownloadManager_cleanup");
 

end;
