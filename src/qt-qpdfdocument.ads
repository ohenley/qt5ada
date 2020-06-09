-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2020                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPdfPageRenderer; use Qt.QPdfPageRenderer;
package Qt.QPdfDocument is

 type Status is (Nul,Loading,Ready,Unloading,Error);
 pragma convention(C,Status);

 type DocumentError is (NoError,UnknownError,DataNotYetAvailableError,FileNotFoundError,
        InvalidFileFormatError,IncorrectPasswordError,UnsupportedSecuritySchemeError);
 pragma convention(C,DocumentError);

 type MetaDataField is (Title,Subject,Author,Keywords,
        Producer,Creator,CreationDate,ModificationDate);
 pragma convention(C,MetaDataField);

 function  QPdfDocument_create(parent:QObjectH := null) return QPdfDocumentH;
 pragma Import(C,QPdfDocument_create, "QPdfDocument_create");
 
 procedure QPdfDocument_destroy(handle:not null QPdfDocumentH);
 pragma Import(C,QPdfDocument_destroy, "QPdfDocument_destroy");
 
 function  QPdfDocument_load(handle:not null QPdfDocumentH;fileName:QStringH) return DocumentError;
 pragma Import(C,QPdfDocument_load, "QPdfDocument_load");
 
 procedure QPdfDocument_load2(handle:not null QPdfDocumentH;device:QIODeviceH);
 pragma Import(C,QPdfDocument_load2, "QPdfDocument_load2");
 
 function  QPdfDocument_status(handle:not null QPdfDocumentH) return Status;
 pragma Import(C,QPdfDocument_status, "QPdfDocument_status");
 
 procedure QPdfDocument_setPassword(handle:not null QPdfDocumentH;password:QStringH);
 pragma Import(C,QPdfDocument_setPassword, "QPdfDocument_setPassword");
 
 function  QPdfDocument_password(handle:not null QPdfDocumentH) return QStringH;
 pragma Import(C,QPdfDocument_password, "QPdfDocument_password");
 
 function  QPdfDocument_metaData(handle:not null QPdfDocumentH;field:MetaDataField) return QVariantH;
 pragma Import(C,QPdfDocument_metaData, "QPdfDocument_metaData");
 
 function  QPdfDocument_error(handle:not null QPdfDocumentH) return DocumentError;
 pragma Import(C,QPdfDocument_error, "QPdfDocument_error");
 
 procedure QPdfDocument_close(handle:not null QPdfDocumentH);
 pragma Import(C,QPdfDocument_close, "QPdfDocument_close");
 
 function  QPdfDocument_pageCount(handle:not null QPdfDocumentH) return integer;
 pragma Import(C,QPdfDocument_pageCount, "QPdfDocument_pageCount");
 
 function  QPdfDocument_pageSize(handle:not null QPdfDocumentH;page:integer) return QSizeFH;
 pragma Import(C,QPdfDocument_pageSize, "QPdfDocument_pageSize");
 
 function  QPdfDocument_render(handle:not null QPdfDocumentH;page:integer;imageSize: QSizeH;options : QPdfDocumentRenderOptionsH :=  QPdfDocumentRenderOptions_create) return QImageH;
 pragma Import(C,QPdfDocument_render, "QPdfDocument_render");

 procedure QPdfDocument_signal_slot_passwordChanged(handle:not null QPdfDocumentH;hook:voidCallbackH);
 pragma Import(C,QPdfDocument_signal_slot_passwordChanged, "QPdfDocument_signal_slot_passwordChanged");
 
 procedure QPdfDocument_signal_slot_passwordRequired(handle:not null QPdfDocumentH;hook:voidCallbackH);
 pragma Import(C,QPdfDocument_signal_slot_passwordRequired, "QPdfDocument_signal_slot_passwordRequired");
 
 procedure QPdfDocument_signal_slot_statusChanged(handle:not null QPdfDocumentH;hook:intCallbackH);
 pragma Import(C,QPdfDocument_signal_slot_statusChanged, "QPdfDocument_signal_slot_statusChanged");
 
 procedure QPdfDocument_signal_slot_pageCountChanged(handle:not null QPdfDocumentH;hook:intCallbackH);
 pragma Import(C,QPdfDocument_signal_slot_pageCountChanged, "QPdfDocument_signal_slot_pageCountChanged");
 
 procedure QPdfDocument_load(handle:not null QPdfDocumentH;device:QIODeviceH);

end;
