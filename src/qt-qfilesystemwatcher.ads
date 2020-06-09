--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QFileSystemWatcher  is

 function  QFileSystemWatcher_create(parent:QObjectH := null) return QFileSystemWatcherH;
 pragma Import(c,QFileSystemWatcher_create, "QFileSystemWatcher_create");

 procedure QFileSystemWatcher_destroy(handle: not null  QFileSystemWatcherH);
 pragma Import(c,QFileSystemWatcher_destroy, "QFileSystemWatcher_destroy");

 function  QFileSystemWatcher_create2(paths: QStringListH; parent:QObjectH) return QFileSystemWatcherH;
 pragma Import(c,QFileSystemWatcher_create2, "QFileSystemWatcher_create2");

 procedure QFileSystemWatcher_addPath(handle: not null  QFileSystemWatcherH; file: QStringH);
 pragma Import(c,QFileSystemWatcher_addPath, "QFileSystemWatcher_addPath");

 procedure QFileSystemWatcher_addPaths(handle: not null  QFileSystemWatcherH; files: QStringListH);
 pragma Import(c,QFileSystemWatcher_addPaths, "QFileSystemWatcher_addPaths");

 procedure QFileSystemWatcher_removePath(handle: not null  QFileSystemWatcherH; file: QStringH);
 pragma Import(c,QFileSystemWatcher_removePath, "QFileSystemWatcher_removePath");

 procedure QFileSystemWatcher_removePaths(handle: not null  QFileSystemWatcherH; files: QStringListH);
 pragma Import(c,QFileSystemWatcher_removePaths, "QFileSystemWatcher_removePaths");

 function  QFileSystemWatcher_files(handle: not null  QFileSystemWatcherH) return QStringListH;
 pragma Import(c,QFileSystemWatcher_files, "QFileSystemWatcher_files");

 function QFileSystemWatcher_directories(handle: not null  QFileSystemWatcherH) return QStringListH;
 pragma Import(c,QFileSystemWatcher_directories, "QFileSystemWatcher_directories");

 type  QFileSystemWatcher_fileChangedEvent is access procedure(file: QStringH);
 pragma Convention(C,QFileSystemWatcher_fileChangedEvent);

 type  QFileSystemWatcher_directoryChangedEvent is access procedure(directory: QStringH);
 pragma Convention(C,QFileSystemWatcher_directoryChangedEvent);
 
 procedure QFileSystemWatcher_signal_slot_fileChanged(handle: not null QFileSystemWatcherH; hook:QFileSystemWatcher_fileChangedEvent);
 pragma Import(C,QFileSystemWatcher_signal_slot_fileChanged, "QFileSystemWatcher_signal_slot_fileChanged");
 
 procedure QFileSystemWatcher_signal_slot_directoryChanged(handle: not null QFileSystemWatcherH; hook:QFileSystemWatcher_directoryChangedEvent);
 pragma Import(C,QFileSystemWatcher_signal_slot_directoryChanged, "QFileSystemWatcher_signal_slot_directoryChanged");
 
-----------------------------------------------------------------------------------------------------------
 function  QFileSystemWatcher_create(paths: QStringListH; parent:QObjectH) return QFileSystemWatcherH;

end     Qt.QFileSystemWatcher;
