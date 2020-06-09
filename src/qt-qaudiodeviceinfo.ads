--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAudio;
package Qt.QAudioDeviceInfo is

 function  QAudioDeviceInfo_create return QAudioDeviceInfoH ;
 pragma Import(C,QAudioDeviceInfo_create, "QAudioDeviceInfo_create");
 
 function  QAudioDeviceInfo_create2(otherDeviceInfo: not null QAudioDeviceInfoH) return QAudioDeviceInfoH ;
 pragma Import(C,QAudioDeviceInfo_create2, "QAudioDeviceInfo_create2");
 
 procedure QAudioDeviceInfo_destroy(handle: not null QAudioDeviceInfoH);
 pragma Import(C,QAudioDeviceInfo_destroy, "QAudioDeviceInfo_destroy");
 
 function  QAudioDeviceInfo_isNull(handle: not null QAudioDeviceInfoH) return boolean;
 pragma Import(C,QAudioDeviceInfo_isNull, "QAudioDeviceInfo_isNull");
 
 function  QAudioDeviceInfo_deviceName(handle: not null QAudioDeviceInfoH) return QStringH;
 pragma Import(C,QAudioDeviceInfo_deviceName, "QAudioDeviceInfo_deviceName");
 
 function  QAudioDeviceInfo_isFormatSupported(handle: not null QAudioDeviceInfoH;format:QAudioFormatH) return boolean;
 pragma Import(C,QAudioDeviceInfo_isFormatSupported, "QAudioDeviceInfo_isFormatSupported");
 
 function  QAudioDeviceInfo_preferredFormat(handle: not null QAudioDeviceInfoH) return QAudioFormatH;
 pragma Import(C,QAudioDeviceInfo_preferredFormat, "QAudioDeviceInfo_preferredFormat");
 
 function  QAudioDeviceInfo_nearestFormat(handle: not null QAudioDeviceInfoH; format:QAudioFormatH) return QAudioFormatH;
 pragma Import(C,QAudioDeviceInfo_nearestFormat, "QAudioDeviceInfo_nearestFormat");
 
 function  QAudioDeviceInfo_supportedCodecs(handle: not null QAudioDeviceInfoH) return QStringListH;
 pragma Import(C,QAudioDeviceInfo_supportedCodecs, "QAudioDeviceInfo_supportedCodecs");
 
 function  QAudioDeviceInfo_supportedSampleRates(handle: not null QAudioDeviceInfoH) return QIntListH;
 pragma Import(C,QAudioDeviceInfo_supportedSampleRates, "QAudioDeviceInfo_supportedSampleRates");
 
 function  QAudioDeviceInfo_supportedChannelCounts(handle: not null QAudioDeviceInfoH) return QIntListH;
 pragma Import(C,QAudioDeviceInfo_supportedChannelCounts, "QAudioDeviceInfo_supportedChannelCounts");
 
 function  QAudioDeviceInfo_supportedSampleSizes(handle: not null QAudioDeviceInfoH) return QIntListH;
 pragma Import(C,QAudioDeviceInfo_supportedSampleSizes, "QAudioDeviceInfo_supportedSampleSizes");
 
 function  QAudioDeviceInfo_supportedByteOrders(handle: not null QAudioDeviceInfoH) return QObjectListH;
 pragma Import(C,QAudioDeviceInfo_supportedByteOrders, "QAudioDeviceInfo_supportedByteOrders");
 
 function  QAudioDeviceInfo_supportedSampleTypes(handle: not null QAudioDeviceInfoH) return QObjectListH;
 pragma Import(C,QAudioDeviceInfo_supportedSampleTypes, "QAudioDeviceInfo_supportedSampleTypes");
 
 function  QAudioDeviceInfo_defaultInputDevice return QAudioDeviceInfoH;
 pragma Import(C,QAudioDeviceInfo_defaultInputDevice, "QAudioDeviceInfo_defaultInputDevice");
 
 function  QAudioDeviceInfo_defaultOutputDevice return QAudioDeviceInfoH;
 pragma Import(C,QAudioDeviceInfo_defaultOutputDevice, "QAudioDeviceInfo_defaultOutputDevice");
 
 function  QAudioDeviceInfo_availableDevices(md:Qt.QAudio.Mode) return QObjectListH;
 pragma Import(C,QAudioDeviceInfo_availableDevices, "QAudioDeviceInfo_availableDevices");
---------------------------------------------------------------------------------------------------
 function  QAudioDeviceInfo_create(otherDeviceInfo: not null QAudioDeviceInfoH) return QAudioDeviceInfoH ;
end; 
