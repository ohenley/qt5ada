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

with Qt.QAbstractItemModel; use Qt.QAbstractItemModel;
with Qt.QPdfView; use Qt.QPdfView;
with Qt.QNamespace;
package Qt.QPdfBookmarkModel is

 type QHashH is new QObjectH;
 type QPdfBookmarkModelH is new QAbstractItemModelH; 
 type StructureMode is (TreeMode,ListMode);
 pragma convention(C,StructureMode);

 subtype Role is integer;
 TitleRole      : constant Role := Qt.QNamespace.DisplayRole;
 LevelRole      : constant Role := Qt.QNamespace.UserRole;
 PageNumberRole : constant Role := 2;

 function  QPdfBookmarkModel_create(parent:QObjectH := null) return QPdfBookmarkModelH;
 pragma Import(C,QPdfBookmarkModel_create, "QPdfBookmarkModel_create");
 
 function  QPdfBookmarkModel_document(handle:not null QPdfBookmarkModelH) return QPdfDocumentH;
 pragma Import(C,QPdfBookmarkModel_document, "QPdfBookmarkModel_document");
 
 procedure QPdfBookmarkModel_setDocument(handle:not null QPdfBookmarkModelH;document:QPdfDocumentH);
 pragma Import(C,QPdfBookmarkModel_setDocument, "QPdfBookmarkModel_setDocument");
 
 function  QPdfBookmarkModel_structureMode(handle:not null QPdfBookmarkModelH) return StructureMode;
 pragma Import(C,QPdfBookmarkModel_structureMode, "QPdfBookmarkModel_structureMode");
 
 procedure QPdfBookmarkModel_setStructureMode(handle:not null QPdfBookmarkModelH;mode:StructureMode);
 pragma Import(C,QPdfBookmarkModel_setStructureMode, "QPdfBookmarkModel_setStructureMode");
 
 function  QPdfBookmarkModel_data(handle:not null QPdfBookmarkModelH;index: QModelIndexH;role: integer) return QVariantH;
 pragma Import(C,QPdfBookmarkModel_data, "QPdfBookmarkModel_data");
 
 function  QPdfBookmarkModel_index(handle:not null QPdfBookmarkModelH;row:integer;column: integer;parent : QModelIndexH := QModelIndex_create) return QModelIndexH;
 pragma Import(C,QPdfBookmarkModel_index, "QPdfBookmarkModel_index");
 
 function  QPdfBookmarkModel_parent(handle:not null QPdfBookmarkModelH;index:QModelIndexH)  return QModelIndexH;
 pragma Import(C,QPdfBookmarkModel_parent, "QPdfBookmarkModel_parent");
 
 function  QPdfBookmarkModel_rowCount(handle:not null QPdfBookmarkModelH;parent : QModelIndexH := QModelIndex_create) return integer;
 pragma Import(C,QPdfBookmarkModel_rowCount, "QPdfBookmarkModel_rowCount");
 
 function  QPdfBookmarkModel_columnCount(handle:not null QPdfBookmarkModelH;parent :QModelIndexH :=  QModelIndex_create) return integer;
 pragma Import(C,QPdfBookmarkModel_columnCount, "QPdfBookmarkModel_columnCount");
 
 function  QPdfBookmarkModel_roleNames(handle:not null QPdfBookmarkModelH) return QHashH;
 pragma Import(C,QPdfBookmarkModel_roleNames, "QPdfBookmarkModel_roleNames");
 
 function  QPdfBookmarkModel_roleNameAt(handle:not null QHashH;index:integer) return QStringH;
 pragma Import(C,QPdfBookmarkModel_roleNameAt, "QPdfBookmarkModel_roleNameAt");
 
  procedure QPdfBookmarkModel_signal_slot_documentChanged(handle:not null QPdfBookmarkModelH;hook:documentCallbackH);
 pragma Import(C,QPdfBookmarkModel_signal_slot_documentChanged, "QPdfBookmarkModel_signal_slot_documentChanged");
 
 procedure QPdfBookmarkModel_signal_slot_structureModeChanged(handle:not null QPdfBookmarkModelH;hook:intCallbackH);
 pragma Import(C,QPdfBookmarkModel_signal_slot_structureModeChanged, "QPdfBookmarkModel_signal_slot_structureModeChanged");
 
end;
