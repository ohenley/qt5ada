--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2018                      บ
-- บ Copyright (C) 2015,2018                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QSysInfo is

 function  QSysInfo_buildCpuArchitecture return QStringH;
 pragma Import(C,QSysInfo_buildCpuArchitecture, "QSysInfo_buildCpuArchitecture");
 
 function  QSysInfo_currentCpuArchitecture return QStringH;
 pragma Import(C,QSysInfo_currentCpuArchitecture, "QSysInfo_currentCpuArchitecture");
 
 function  QSysInfo_buildAbi return QStringH;
 pragma Import(C,QSysInfo_buildAbi, "QSysInfo_buildAbi");
 
 function  QSysInfo_kernelType return QStringH;
 pragma Import(C,QSysInfo_kernelType, "QSysInfo_kernelType");
 
 function  QSysInfo_kernelVersion return QStringH;
 pragma Import(C,QSysInfo_kernelVersion, "QSysInfo_kernelVersion");
 
 function  QSysInfo_productType return QStringH;
 pragma Import(C,QSysInfo_productType, "QSysInfo_productType");
 
 function  QSysInfo_productVersion return QStringH;
 pragma Import(C,QSysInfo_productVersion, "QSysInfo_productVersion");
 
 function  QSysInfo_prettyProductName return QStringH;
 pragma Import(C,QSysInfo_prettyProductName, "QSysInfo_prettyProductName");
 
 function  QSysInfo_machineHostName return QStringH;
 pragma Import(C,QSysInfo_machineHostName, "QSysInfo_machineHostName");

 function  QSysInfo_machineUniqueId return QByteArrayH;
 pragma Import(C,QSysInfo_machineUniqueId, "QSysInfo_machineUniqueId");
 
 function  QSysInfo_bootUniqueId return QByteArrayH;
 pragma Import(C,QSysInfo_bootUniqueId, "QSysInfo_bootUniqueId");
 
end;
