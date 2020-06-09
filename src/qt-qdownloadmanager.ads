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

package Qt.QDownloadManager is

 function  QDownloadManager_create(parent:QObjectH := null) return QNetworkAccessManagerH;
 pragma Import(C,QDownloadManager_create, "QDownloadManager_create");
 
 procedure QDownloadManager_delete(handle:not null QNetworkAccessManagerH);
 pragma Import(C,QDownloadManager_delete, "QDownloadManager_delete");
 
 procedure QDownloadManager_append(handle:not null QNetworkAccessManagerH;url:QUrlH);
 pragma Import(C,QDownloadManager_append, "QDownloadManager_append");
 
 procedure QDownloadManager_append2(handle:not null QNetworkAccessManagerH; urlList:QStringListH);
 pragma Import(C,QDownloadManager_append2, "QDownloadManager_append2");
 
 function  QDownloadManager_saveFileName(handle:not null QNetworkAccessManagerH;url:QUrlH) return QStringH;
 pragma Import(C,QDownloadManager_saveFileName, "QDownloadManager_saveFileName");
 
 procedure QDownloadManager_startNextDownload(handle:not null QNetworkAccessManagerH);
 pragma Import(C,QDownloadManager_startNextDownload, "QDownloadManager_startNextDownload");
 
 procedure QDownloadManager_downloadProgress(handle:not null QNetworkAccessManagerH;bytesReceived,bytesTotal:qint64);
 pragma Import(C,QDownloadManager_downloadProgress, "QDownloadManager_downloadProgress");
 
 procedure QDownloadManager_downloadFinished(handle:not null QNetworkAccessManagerH);
 pragma Import(C,QDownloadManager_downloadFinished, "QDownloadManager_downloadFinished");
 
 procedure QDownloadManager_downloadReadyRead(handle:not null QNetworkAccessManagerH);
 pragma Import(C,QDownloadManager_downloadReadyRead, "QDownloadManager_downloadReadyRead");
 
 function  QDownloadManager_getPercent(handle:not null QNetworkAccessManagerH) return integer;
 pragma Import(C,QDownloadManager_getPercent, "QDownloadManager_getPercent");
 
 function  QDownloadManager_getIteration(handle:not null QNetworkAccessManagerH) return integer;
 pragma Import(C,QDownloadManager_getIteration, "QDownloadManager_getIteration");
 
 function  QDownloadManager_getValue(handle:not null QNetworkAccessManagerH) return qint64;
 pragma Import(C,QDownloadManager_getValue, "QDownloadManager_getValue");
 
 function  QDownloadManager_getMaximum(handle:not null QNetworkAccessManagerH) return qint64;
 pragma Import(C,QDownloadManager_getMaximum, "QDownloadManager_getMaximum");
 
 function  QDownloadManager_getMessage(handle:not null QNetworkAccessManagerH) return QStringH;
 pragma Import(C,QDownloadManager_getMessage, "QDownloadManager_getMessage");
 
 procedure QDownloadManager_signal_slot_finished(handle:not null QNetworkAccessManagerH; hook: voidCallbackH);
 pragma Import(C,QDownloadManager_signal_slot_finished, "QDownloadManager_signal_slot_finished");

------------------------------------------------------------------------
 procedure QDownloadManager_append(handle:not null QNetworkAccessManagerH; urlList:QStringListH);
 procedure QDownloadManager_downloadProgress(handle:not null QNetworkAccessManagerH);

end;
