--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QStringList; use Qt.QStringList;
package Qt.QStandardPaths is

type StandardLocation is (
        DesktopLocation,
        DocumentsLocation,
        FontsLocation,
        ApplicationsLocation,
        MusicLocation,
        MoviesLocation,
        PicturesLocation,
        TempLocation,
        HomeLocation,
        DataLocation,           -- AppLocalDataLocation
        CacheLocation,
        GenericDataLocation,
        RuntimeLocation,
        ConfigLocation,
        DownloadLocation,
        GenericCacheLocation,
        GenericConfigLocation,
        AppDataLocation,
        AppConfigLocation);
 pragma convention(C,StandardLocation);

 type LocateOption is (LocateFile, LocateDirectory);
 pragma convention(C,LocateOption);

 function  QStandardPaths_writableLocation(locationType:StandardLocation) return QStringH;
 pragma Import(C,QStandardPaths_writableLocation, "QStandardPaths_writableLocation");
 
 function  QStandardPaths_locate(locationType:StandardLocation;fileName: QStringH;options : LocateOption :=  LocateFile) return QStringH;
 pragma Import(C,QStandardPaths_locate, "QStandardPaths_locate");
 
 function  QStandardPaths_findExecutable(executableName:QStringH;paths : QStringListH :=  QStringList_create) return QStringH;
 pragma Import(C,QStandardPaths_findExecutable, "QStandardPaths_findExecutable");
 
 function  QStandardPaths_standardLocations(locationType:StandardLocation) return QStringListH;
 pragma Import(C,QStandardPaths_standardLocations, "QStandardPaths_standardLocations");
 
 function  QStandardPaths_locateAll(locationType:StandardLocation;fileName:QStringH;options : LocateOption :=  LocateFile) return QStringListH;
 pragma Import(C,QStandardPaths_locateAll, "QStandardPaths_locateAll");
 
 procedure QStandardPaths_setTestModeEnabled(testMode:boolean);
 pragma Import(C,QStandardPaths_setTestModeEnabled, "QStandardPaths_setTestModeEnabled");
 
 function  QStandardPaths_isTestModeEnabled return boolean;
 pragma Import(C,QStandardPaths_isTestModeEnabled, "QStandardPaths_isTestModeEnabled");

end;
