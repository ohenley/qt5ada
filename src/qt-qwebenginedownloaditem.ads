--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2016                      บ
-- บ Copyright (C) 2015,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QWebEngineDownloaditem is

 type DownloadState is (DownloadRequested,DownloadInProgress,DownloadCompleted,DownloadCancelled,DownloadInterrupted);
 pragma convention(C,DownloadState); 
 
 type SavePageFormat is (UnknownSaveFormat,SingleHtmlSaveFormat,CompleteHtmlSaveFormat,MimeHtmlSaveFormat);
 pragma convention(C,SavePageFormat);
 for SavePageFormat use  (
     UnknownSaveFormat => -1,
     SingleHtmlSaveFormat => 0,
     CompleteHtmlSaveFormat => 1,
     MimeHtmlSaveFormat => 2);

 type DownloadType is (Attachment,DownloadAttribute,UserRequested,SavePage); 
 pragma convention(C,DownloadType);       

 function  QWebEngineDownloadItem_create return QWebDownloadItemH;
 pragma Import(C,QWebEngineDownloadItem_create, "QWebEngineDownloadItem_create");
 
 procedure QWebEngineDownloadItem_delete(handle:not null QWebDownloadItemH);
 pragma Import(C,QWebEngineDownloadItem_delete, "QWebEngineDownloadItem_delete");
 
 function  QWebEngineDownloadItem_id(handle:not null QWebDownloadItemH) return quint;
 pragma Import(C,QWebEngineDownloadItem_id, "QWebEngineDownloadItem_id");
 
 function  QWebEngineDownloadItem_state(handle:not null QWebDownloadItemH) return DownloadState;
 pragma Import(C,QWebEngineDownloadItem_state, "QWebEngineDownloadItem_state");
 
 function  QWebEngineDownloadItem_totalBytes(handle:not null QWebDownloadItemH) return qint64;
 pragma Import(C,QWebEngineDownloadItem_totalBytes, "QWebEngineDownloadItem_totalBytes");
 
 function  QWebEngineDownloadItem_receivedBytes(handle:not null QWebDownloadItemH) return qint64;
 pragma Import(C,QWebEngineDownloadItem_receivedBytes, "QWebEngineDownloadItem_receivedBytes");
 
 function  QWebEngineDownloadItem_url(handle:not null QWebDownloadItemH) return QUrlH;
 pragma Import(C,QWebEngineDownloadItem_url, "QWebEngineDownloadItem_url");
 
 function  QWebEngineDownloadItem_path(handle:not null QWebDownloadItemH) return QStringH;
 pragma Import(C,QWebEngineDownloadItem_path, "QWebEngineDownloadItem_path");
 
 procedure QWebEngineDownloadItem_setPath(handle:not null QWebDownloadItemH;path:QStringH);
 pragma Import(C,QWebEngineDownloadItem_setPath, "QWebEngineDownloadItem_setPath");
 
 function  QWebEngineDownloadItem_isFinished(handle:not null QWebDownloadItemH) return boolean;
 pragma Import(C,QWebEngineDownloadItem_isFinished, "QWebEngineDownloadItem_isFinished");
 
 procedure QWebEngineDownloadItem_accept(handle:not null QWebDownloadItemH);
 pragma Import(C,QWebEngineDownloadItem_accept, "QWebEngineDownloadItem_accept");
 
 procedure QWebEngineDownloadItem_cancel(handle:not null QWebDownloadItemH);
 pragma Import(C,QWebEngineDownloadItem_cancel, "QWebEngineDownloadItem_cancel");
 
 function  QWebEngineDownloadItem_mimeType(handle:not null QWebDownloadItemH) return QStringH;
 pragma Import(C,QWebEngineDownloadItem_mimeType, "QWebEngineDownloadItem_mimeType");
 
 function  QWebEngineDownloadItem_savePageFormat(handle:not null QWebDownloadItemH) return SavePageFormat;
 pragma Import(C,QWebEngineDownloadItem_savePageFormat, "QWebEngineDownloadItem_savePageFormat");
 
 procedure QWebEngineDownloadItem_setSavePageFormat(handle:not null QWebDownloadItemH;format:SavePageFormat);
 pragma Import(C,QWebEngineDownloadItem_setSavePageFormat, "QWebEngineDownloadItem_setSavePageFormat");
 
 function  QWebEngineDownloadItem_type(handle:not null QWebDownloadItemH) return DownloadType;
 pragma Import(C,QWebEngineDownloadItem_type, "QWebEngineDownloadItem_type");
 

 procedure QWebEngineDownloadItem_signal_slot_finished(handle:not null QWebDownloadItemH; hook: voidCallbackH);
 pragma Import(C,QWebEngineDownloadItem_signal_slot_finished, "QWebEngineDownloadItem_signal_slot_finished");
 
 procedure QWebEngineDownloadItem_signal_slot_stateChanged(handle:not null QWebDownloadItemH; hook: intCallbackH );
 pragma Import(C,QWebEngineDownloadItem_signal_slot_stateChanged, "QWebEngineDownloadItem_signal_slot_stateChanged");
 
 procedure QWebEngineDownloadItem_signal_slot_downloadProgress(handle:not null QWebDownloadItemH; hook: QInt64Int64CallbackH );
 pragma Import(C,QWebEngineDownloadItem_signal_slot_downloadProgress, "QWebEngineDownloadItem_signal_slot_downloadProgress");

end;
