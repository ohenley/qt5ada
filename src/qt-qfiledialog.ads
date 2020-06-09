--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString; use Qt.QString;
with Qt.QStringList; use Qt.QStringList;
with Qt.QUrl; use Qt.QUrl;
with builtin; use builtin;
package Qt.QFileDialog          is

type QFileDialogViewMode is (QFileDialogDetail, QFileDialogList );
type QFileDialogFileMode is (QFileDialogAnyFile, QFileDialogExistingFile, QFileDialogDirectory, QFileDialogExistingFiles, QFileDialogDirectoryOnly );
type QFileDialogAcceptMode is (QFileDialogAcceptOpen, QFileDialogAcceptSave );
type QFileDialogDialogLabel is (QFileDialogLookIn, QFileDialogFileName, QFileDialogFileType, QFileDialogAccept, QFileDialogReject );

subtype QFileDialogOption is cardinal;
subtype QFileDialogOptions is cardinal;

QFileDialogShowDirsOnly         : constant QFileDialogOption := 16#01#;
QFileDialogDontResolveSymlinks  : constant QFileDialogOption := 16#02#;
QFileDialogDontConfirmOverwrite : constant QFileDialogOption := 16#04#;
QFileDialogDontUseSheet         : constant QFileDialogOption := 16#08#;
QFileDialogDontUseNativeDialog  : constant QFileDialogOption := 16#10#;

function QFileDialog_create(parent: QWidgetH := null; caption: QStringH := null; directory: QStringH := null; filter: QStringH := null) return QFileDialogH;
pragma Import(C,QFileDialog_create,"QFileDialog_create");

function QFileDialog_create2(parent: QWidgetH; f: QtWindowFlags) return  QFileDialogH;    
pragma Import(C,QFileDialog_create2,"QFileDialog_create2");

procedure QFileDialog_destroy(handle: not null  QFileDialogH);   
pragma Import(C,QFileDialog_destroy,"QFileDialog_destroy");

procedure QFileDialog_setDirectory(handle: not null  QFileDialogH; directory: QStringH);    
pragma Import(C,QFileDialog_setDirectory,"QFileDialog_setDirectory");

procedure QFileDialog_setDirectory2(handle: not null  QFileDialogH; directory: QDirH);
pragma Import(C,QFileDialog_setDirectory2,"QFileDialog_setDirectory2");

function  QFileDialog_directory(handle: not null  QFileDialogH) return QDirH;
pragma Import(C,QFileDialog_directory,"QFileDialog_directory");

procedure QFileDialog_selectFile(handle: not null  QFileDialogH; filename: QStringH);   
pragma Import(C,QFileDialog_selectFile,"QFileDialog_selectFile");

function  QFileDialog_selectedFiles(handle: not null  QFileDialogH) return QStringListH;
pragma Import(C,QFileDialog_selectedFiles,"QFileDialog_selectedFiles");

procedure QFileDialog_setFilter(handle: not null  QFileDialogH; filter: QStringH);   
pragma Import(C,QFileDialog_setFilter,"QFileDialog_setFilter");

procedure QFileDialog_setViewMode(handle: not null  QFileDialogH; mode: QFileDialogViewMode);   
pragma Import(C,QFileDialog_setViewMode,"QFileDialog_setViewMode");

function QFileDialog_viewMode(handle: not null  QFileDialogH) return  QFileDialogViewMode;   
pragma Import(C,QFileDialog_viewMode,"QFileDialog_viewMode");

procedure QFileDialog_setFileMode(handle: not null  QFileDialogH; mode: QFileDialogFileMode);   
pragma Import(C,QFileDialog_setFileMode,"QFileDialog_setFileMode");

function QFileDialog_fileMode(handle: not null  QFileDialogH) return  QFileDialogFileMode;   
pragma Import(C,QFileDialog_fileMode,"QFileDialog_fileMode");

procedure QFileDialog_setAcceptMode(handle: not null  QFileDialogH; mode: QFileDialogAcceptMode);   
pragma Import(C,QFileDialog_setAcceptMode,"QFileDialog_setAcceptMode");

function QFileDialog_acceptMode(handle: not null  QFileDialogH) return  QFileDialogAcceptMode;   
pragma Import(C,QFileDialog_acceptMode,"QFileDialog_acceptMode");

procedure QFileDialog_setReadOnly(handle: not null  QFileDialogH; enabled: Boolean);   
pragma Import(C,QFileDialog_setReadOnly,"QFileDialog_setReadOnly");

function QFileDialog_isReadOnly(handle: not null  QFileDialogH) return  Boolean;   
pragma Import(C,QFileDialog_isReadOnly,"QFileDialog_isReadOnly");

procedure QFileDialog_setResolveSymlinks(handle: not null  QFileDialogH; enabled: Boolean);   
pragma Import(C,QFileDialog_setResolveSymlinks,"QFileDialog_setResolveSymlinks");

function QFileDialog_resolveSymlinks(handle: not null  QFileDialogH) return  Boolean;   
pragma Import(C,QFileDialog_resolveSymlinks,"QFileDialog_resolveSymlinks");

function  QFileDialog_saveState(handle: not null  QFileDialogH) return QByteArrayH;
pragma Import(C,QFileDialog_saveState,"QFileDialog_saveState");

function QFileDialog_restoreState(handle: not null  QFileDialogH; state: QByteArrayH) return  Boolean;   
pragma Import(C,QFileDialog_restoreState,"QFileDialog_restoreState");

procedure QFileDialog_setConfirmOverwrite(handle: not null  QFileDialogH; enabled: Boolean);   
pragma Import(C,QFileDialog_setConfirmOverwrite,"QFileDialog_setConfirmOverwrite");

function QFileDialog_confirmOverwrite(handle: not null  QFileDialogH) return  Boolean;   
pragma Import(C,QFileDialog_confirmOverwrite,"QFileDialog_confirmOverwrite");

procedure QFileDialog_setDefaultSuffix(handle: not null  QFileDialogH; suffix: QStringH);   
pragma Import(C,QFileDialog_setDefaultSuffix,"QFileDialog_setDefaultSuffix");

function  QFileDialog_defaultSuffix(handle: not null  QFileDialogH) return QStringH;
pragma Import(C,QFileDialog_defaultSuffix,"QFileDialog_defaultSuffix");

procedure QFileDialog_setHistory(handle: not null  QFileDialogH; paths: QStringListH);   
pragma Import(C,QFileDialog_setHistory,"QFileDialog_setHistory");

function  QFileDialog_history(handle: not null  QFileDialogH) return QStringListH;
pragma Import(C,QFileDialog_history,"QFileDialog_history");

procedure QFileDialog_setItemDelegate(handle: not null  QFileDialogH; delegate: QAbstractItemDelegateH);   
pragma Import(C,QFileDialog_setItemDelegate,"QFileDialog_setItemDelegate");

function QFileDialog_itemDelegate(handle: not null  QFileDialogH) return  QAbstractItemDelegateH;   
pragma Import(C,QFileDialog_itemDelegate,"QFileDialog_itemDelegate");

procedure QFileDialog_setIconProvider(handle: not null  QFileDialogH; provider: QFileIconProviderH);   
pragma Import(C,QFileDialog_setIconProvider,"QFileDialog_setIconProvider");

function QFileDialog_iconProvider(handle: not null  QFileDialogH) return  QFileIconProviderH;   
pragma Import(C,QFileDialog_iconProvider,"QFileDialog_iconProvider");

procedure QFileDialog_setLabelText(handle: not null  QFileDialogH; label: QFileDialogDialogLabel; text: QStringH);   
pragma Import(C,QFileDialog_setLabelText,"QFileDialog_setLabelText");

function  QFileDialog_labelText(handle: not null  QFileDialogH; label: QFileDialogDialogLabel) return  QStringH;
pragma Import(C,QFileDialog_labelText,"QFileDialog_labelText");

procedure QFileDialog_setProxyModel(handle: not null  QFileDialogH; model: QAbstractProxyModelH);   
pragma Import(C,QFileDialog_setProxyModel,"QFileDialog_setProxyModel");

function QFileDialog_proxyModel(handle: not null  QFileDialogH) return  QAbstractProxyModelH;   
pragma Import(C,QFileDialog_proxyModel,"QFileDialog_proxyModel");

function  QFileDialog_getOpenFileName(parent: QWidgetH := null; caption: QStringH := s2qs("Open File"); dir: QStringH := s2qs("."); filter: QStringH := s2qs("All Files (*)"); selectedFilter: QStringH := s2qs(""); options: QFileDialogOptions := 0) return QStringH;
pragma Import(C,QFileDialog_getOpenFileName,"QFileDialog_getOpenFileName");

function  QFileDialog_getSaveFileName(parent: QWidgetH := null; caption: QStringH := s2qs("Save As ..."); dir: QStringH := s2qs("."); filter: QStringH := s2qs(""); selectedFilter: QStringH := s2qs(""); options: QFileDialogOptions := 0) return  QStringH;
pragma Import(C,QFileDialog_getSaveFileName,"QFileDialog_getSaveFileName");

function  QFileDialog_getExistingDirectory(parent: QWidgetH := null; caption: QStringH := s2qs("Directory"); dir: QStringH := s2qs("."); options: QFileDialogOptions := QFileDialogShowDirsOnly) return QStringH;
pragma Import(C,QFileDialog_getExistingDirectory,"QFileDialog_getExistingDirectory");
----------------------------------------------------------------------
 procedure QFileDialog_setDirectoryUrl(handle: not null QFileDialogH; directory:QUrlH);
 pragma Import(C,QFileDialog_setDirectoryUrl, "QFileDialog_setDirectoryUrl");
 
 function  QFileDialog_directoryUrl(handle: not null QFileDialogH) return QUrlH;
 pragma Import(C,QFileDialog_directoryUrl, "QFileDialog_directoryUrl");
 
 procedure QFileDialog_selectUrl(handle: not null QFileDialogH;url:QUrlH);
 pragma Import(C,QFileDialog_selectUrl, "QFileDialog_selectUrl");
 
 function  QFileDialog_selectedUrls(handle: not null QFileDialogH) return QStringListH;
 pragma Import(C,QFileDialog_selectedUrls, "QFileDialog_selectedUrls");
 
 procedure QFileDialog_setNameFilterDetailsVisible(handle: not null QFileDialogH; enabled:boolean);
 pragma Import(C,QFileDialog_setNameFilterDetailsVisible, "QFileDialog_setNameFilterDetailsVisible");
 
 function  QFileDialog_isNameFilterDetailsVisible(handle: not null QFileDialogH) return boolean;
 pragma Import(C,QFileDialog_isNameFilterDetailsVisible, "QFileDialog_isNameFilterDetailsVisible");
 
 procedure QFileDialog_setNameFilter(handle: not null QFileDialogH;filter:QStringH);
 pragma Import(C,QFileDialog_setNameFilter, "QFileDialog_setNameFilter");
 
 procedure QFileDialog_setNameFilters(handle: not null QFileDialogH;filters:QStringListH);
 pragma Import(C,QFileDialog_setNameFilters, "QFileDialog_setNameFilters");
 
 function  QFileDialog_nameFilters(handle: not null QFileDialogH) return QStringListH;
 pragma Import(C,QFileDialog_nameFilters, "QFileDialog_nameFilters");
 
 procedure QFileDialog_selectNameFilter(handle: not null QFileDialogH;filter:QStringH);
 pragma Import(C,QFileDialog_selectNameFilter, "QFileDialog_selectNameFilter");
 
 function  QFileDialog_selectedNameFilter(handle: not null QFileDialogH) return QStringH;
 pragma Import(C,QFileDialog_selectedNameFilter, "QFileDialog_selectedNameFilter");
 
 procedure QFileDialog_setMimeTypeFilters(handle: not null QFileDialogH;filters:QStringListH);
 pragma Import(C,QFileDialog_setMimeTypeFilters, "QFileDialog_setMimeTypeFilters");
 
 function  QFileDialog_mimeTypeFilters(handle: not null QFileDialogH) return QStringListH;
 pragma Import(C,QFileDialog_mimeTypeFilters, "QFileDialog_mimeTypeFilters");
 
 procedure QFileDialog_selectMimeTypeFilter(handle: not null QFileDialogH;filter:QStringH);
 pragma Import(C,QFileDialog_selectMimeTypeFilter, "QFileDialog_selectMimeTypeFilter");
 
 function  QFileDialog_filter(handle: not null QFileDialogH) return integer;
 pragma Import(C,QFileDialog_filter, "QFileDialog_filter");
 
 procedure QFileDialog_setFilter2(handle: not null QFileDialogH; filters:integer);
 pragma Import(C,QFileDialog_setFilter2, "QFileDialog_setFilter2");
 
 procedure QFileDialog_setSidebarUrls(handle: not null QFileDialogH;urls:QStringListH);
 pragma Import(C,QFileDialog_setSidebarUrls, "QFileDialog_setSidebarUrls");
 
 function  QFileDialog_sidebarUrls(handle: not null QFileDialogH) return QStringListH;
 pragma Import(C,QFileDialog_sidebarUrls, "QFileDialog_sidebarUrls");
 
 procedure QFileDialog_setOption(handle: not null QFileDialogH;opt:QFileDialogOption; on:boolean := true);
 pragma Import(C,QFileDialog_setOption, "QFileDialog_setOption");
 
 function  QFileDialog_testOption(handle: not null QFileDialogH;opt:QFileDialogOption) return boolean;
 pragma Import(C,QFileDialog_testOption, "QFileDialog_testOption");
 
 procedure QFileDialog_setOptions(handle: not null QFileDialogH;options:integer);
 pragma Import(C,QFileDialog_setOptions, "QFileDialog_setOptions");
 
 function  QFileDialog_options(handle: not null QFileDialogH) return integer;
 pragma Import(C,QFileDialog_options, "QFileDialog_options");
 
 procedure QFileDialog_open(handle: not null QFileDialogH;receiver:QObjectH; member:zstring);
 pragma Import(C,QFileDialog_open, "QFileDialog_open");
 
 procedure QFileDialog_setVisible(handle: not null QFileDialogH; visible:boolean);
 pragma Import(C,QFileDialog_setVisible, "QFileDialog_setVisible");
 
 function  QFileDialog_getOpenFileUrl(parent:QWidgetH := null;caption:QStringH := QString_create;dir:QUrlH := QUrl_create;filter:QStringH := QString_create; selectedFilter:QStringH := null; options:integer := 0; supportedSchemes:QStringListH := QStringList_create) return QUrlH;
 pragma Import(C,QFileDialog_getOpenFileUrl, "QFileDialog_getOpenFileUrl");
 
 function  QFileDialog_getSaveFileUrl(parent:QWidgetH := null;caption:QStringH := QString_create;dir:QUrlH := QUrl_create;filter:QStringH := QString_create; selectedFilter:QStringH := null; options:integer := 0; supportedSchemes:QStringListH := QStringList_create) return QUrlH;
 pragma Import(C,QFileDialog_getSaveFileUrl, "QFileDialog_getSaveFileUrl");
 
 function  QFileDialog_getExistingDirectoryUrl(parent:QWidgetH := null;caption:QStringH := QString_create;dir:QUrlH := QUrl_create;options: integer := 1; supportedSchemes:QStringListH := QStringList_create) return QUrlH;
 pragma Import(C,QFileDialog_getExistingDirectoryUrl, "QFileDialog_getExistingDirectoryUrl");
 
 function  QFileDialog_getOpenFileUrls(parent:QWidgetH := null;caption:QStringH := QString_create;dir:QUrlH := QUrl_create;filter:QStringH := QString_create; selectedFilter:QStringH := null; options:integer := 0; supportedSchemes:QStringListH := QStringList_create) return QStringListH;
 pragma Import(C,QFileDialog_getOpenFileUrls, "QFileDialog_getOpenFileUrls");

function  QFileDialog_getOpenFileNames(parent: QWidgetH := null; caption: QStringH := s2qs("Open Files"); dir: QStringH := s2qs("."); filter: QStringH := s2qs("All Files (*)"); selectedFilter: QStringH := s2qs(""); options: QFileDialogOptions := 0) return QStringListH;
pragma Import(C,QFileDialog_getOpenFileNames,"QFileDialog_getOpenFileNames");

type QFileDialog_filesSelectedEvent     is access procedure(list:QStringListH);
pragma Convention(C, QFileDialog_filesSelectedEvent);

type QFileDialog_urlsSelectedEvent     is access procedure(list:QStringListH);
pragma Convention(C, QFileDialog_urlsSelectedEvent);

type QFileDialog_fileSelectedEvent     is access procedure(str:QStringH);
pragma Convention(C, QFileDialog_fileSelectedEvent);

type QFileDialog_urlSelectedEvent     is access procedure(url:QUrlH);
pragma Convention(C, QFileDialog_urlSelectedEvent);

type QFileDialog_currentChangedEvent     is access procedure(str:QStringH);
pragma Convention(C,QFileDialog_currentChangedEvent);

type QFileDialog_currentUrlChangedEvent     is access procedure(url:QUrlH);
pragma Convention(C,QFileDialog_currentUrlChangedEvent);

type QFileDialog_directoryEnteredEvent     is access procedure(str:QStringH);
pragma Convention(C,QFileDialog_directoryEnteredEvent);

type QFileDialog_directoryUrlEnteredEvent     is access procedure(url:QUrlH);
pragma Convention(C,QFileDialog_directoryUrlEnteredEvent);


type QFileDialog_filterSelectedEvent     is access procedure(str:QStringH);
pragma Convention(C,QFileDialog_filterSelectedEvent);
 
 procedure QFileDialog_signal_slot_filesSelected(handle: not null QFileDialogH; hook:QFileDialog_filesSelectedEvent);
 pragma Import(C,QFileDialog_signal_slot_filesSelected, "QFileDialog_signal_slot_filesSelected");
 
 procedure QFileDialog_signal_slot_currentChanged(handle: not null QFileDialogH; hook:QFileDialog_currentChangedEvent);
 pragma Import(C,QFileDialog_signal_slot_currentChanged, "QFileDialog_signal_slot_currentChanged");
 
 procedure QFileDialog_signal_slot_directoryEntered(handle: not null QFileDialogH; hook:QFileDialog_directoryEnteredEvent);
 pragma Import(C,QFileDialog_signal_slot_directoryEntered, "QFileDialog_signal_slot_directoryEntered");
 
 procedure QFileDialog_signal_slot_filterSelected(handle: not null QFileDialogH; hook:QFileDialog_filterSelectedEvent);
 pragma Import(C,QFileDialog_signal_slot_filterSelected, "QFileDialog_signal_slot_filterSelected");
 
  procedure QFileDialog_signal_slot_fileSelected(handle: not null QFileDialogH;hook: QFileDialog_fileSelectedEvent);
 pragma Import(C,QFileDialog_signal_slot_fileSelected, "QFileDialog_signal_slot_fileSelected");
 
 procedure QFileDialog_signal_slot_urlSelected(handle: not null QFileDialogH;hook: QFileDialog_urlSelectedEvent);
 pragma Import(C,QFileDialog_signal_slot_urlSelected, "QFileDialog_signal_slot_urlSelected");
 
 procedure QFileDialog_signal_slot_urlsSelected(handle: not null QFileDialogH;hook: QFileDialog_fileSelectedEvent);
 pragma Import(C,QFileDialog_signal_slot_urlsSelected, "QFileDialog_signal_slot_urlsSelected");
 
 procedure QFileDialog_signal_slot_currentUrlChanged(handle: not null QFileDialogH;hook: QFileDialog_currentUrlChangedEvent);
 pragma Import(C,QFileDialog_signal_slot_currentUrlChanged, "QFileDialog_signal_slot_currentUrlChanged");
 
 procedure QFileDialog_signal_slot_directoryUrlEntered(handle: not null QFileDialogH;hook: QFileDialog_directoryUrlEnteredEvent);
 pragma Import(C,QFileDialog_signal_slot_directoryUrlEntered, "QFileDialog_signal_slot_directoryUrlEntered");
 
-------------------------------------------------------------------
function QFileDialog_create(parent: QWidgetH; f: QtWindowFlags) return  QFileDialogH;    
procedure QFileDialog_setDirectory(handle: not null  QFileDialogH; directory: QDirH);
procedure QFileDialog_setFilter(handle: not null QFileDialogH; filters:integer);

end Qt.QFileDialog;
