--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QStringList; use Qt.QStringList;
with Qt.QIntList;    use Qt.QIntList;
with Qt.QString;     use Qt.QString;    
with Qt.QComboBox;   use Qt.QComboBox;
with Qt.QVariant;    use Qt.QVariant;  
package body Qt.QMediaRecorder is

 function  QMediaRecorder_supportedAudioSampleRates(handle: not null QMediaRecorderH;settings:QAudioEncoderSettingsH;continuous:pboolean) return QIntListH is
 begin
   return  QMediaRecorder_supportedAudioSampleRates2(handle,settings,continuous);
 end;

 function  QMediaRecorder_supportedResolutions(handle: not null QMediaRecorderH; settings:QVideoEncoderSettingsH;continuous:pboolean) return QListH is
 begin
   return  QMediaRecorder_supportedResolutions2(handle, settings,continuous);
 end;

 procedure QMediaRecorder_signal_slot_availabilityChanged(handle: not null QMediaRecorderH; hook:IntProc) is
 begin
  QMediaRecorder_signal_slot_availabilityChanged2(handle, hook);
 end;

 function  QMediaRecorder_supportedFrameRates(handle: not null QMediaRecorderH;settings:QVideoEncoderSettingsH;continuous:pboolean) return QListH is
 begin
   return  QMediaRecorder_supportedFrameRates2(handle,settings,continuous);
 end;

 procedure QMediaRecorder_setEncodingSettings(handle: not null QMediaRecorderH; audioSettings:QAudioEncoderSettingsH;videoSettings:QVideoEncoderSettingsH; containerMimeType:QStringH := QString_create) is
 begin
  QMediaRecorder_setEncodingSettings2(handle,audioSettings,videoSettings,containerMimeType);
 end;

 procedure QMediaRecorder_signal_slot_metaDataChanged(handle: not null QMediaRecorderH; hook:voidProc) is
 begin
  QMediaRecorder_signal_slot_metaDataChanged2(handle,hook);
 end;
 
 function  QMediaRecorder_audioCodecBox(handle: not null QMediaRecorderH) return QComboBoxH is 
 audioCodecBox : QComboBoxH := QComboBox_create;
 list           : QStringListH := QStringList_create;
 count          : integer;
 name           : QStringH;
 begin
   -- audio codecs
   QComboBox_addItem(audioCodecBox,s2qs("Default"), QVariant_create(s2qs("")));
   list := QMediaRecorder_supportedAudioCodecs(handle); 
   count := QStringList_count(list);
   for i in 0 .. count - 1 loop
     name := QStringList_at(list,i);
     QComboBox_addItem(audioCodecBox,name, QVariant_create(name));
   end loop;
   return audioCodecBox;
 end;

 function  QMediaRecorder_containerBox(handle: not null QMediaRecorderH) return QComboBoxH is 
 containerBox   : QComboBoxH := QComboBox_create;
 list           : QStringListH := QStringList_create;
 count          : integer;
 name           : QStringH;
 begin
 -- containers
   QComboBox_addItem(containerBox,s2qs("Default"), QVariant_create(s2qs("")));
   list := QMediaRecorder_supportedContainers(handle);
   count := QStringList_count(list);
   for i in 0 .. count - 1 loop
     name := QStringList_at(list,i);
     QComboBox_addItem(containerBox,name, QVariant_create(name));
   end loop;
   return containerBox;
 end;
 
 function  QMediaRecorder_sampleRateBox(handle: not null QMediaRecorderH) return QComboBoxH is 
 sampleRateBox  : QComboBoxH := QComboBox_create;
 intList        : QIntListH := QIntList_create;
 count,rate     : integer;
 begin
 -- sample rate
   QComboBox_addItem(sampleRateBox,s2qs("Default"), QVariant_create(integer(0)));
   intList := QMediaRecorder_supportedAudioSampleRates(handle);
   count := QIntList_count(intList);
   for i in 0 .. count - 1 loop
     rate := QIntList_at(intList,i);
     QComboBox_addItem(sampleRateBox,QString_number(rate), QVariant_create(rate));
   end loop;
   return sampleRateBox;
 end;

end;
