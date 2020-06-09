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
with Qt.QString;     use Qt.QString;    
with Qt.QComboBox;   use Qt.QComboBox;
with Qt.QVariant;    use Qt.QVariant;  
package body Qt.QAudioRecorder is
 
 function  QAudioRecorder_audioDeviceBox(handle: not null QAudioRecorderH) return QComboBoxH is
 audioDeviceBox : QComboBoxH := QComboBox_create;
 list           : QStringListH := QStringList_create;
 count          : integer;
 name           : QStringH;
 begin
 -- audio devices
    QComboBox_addItem(audioDeviceBox,s2qs("Default"), QVariant_create(s2qs("default")));
    list := QAudioRecorder_audioInputs(handle); 
    count := QStringList_count(list);
    for i in 0 .. count - 1 loop
      name := QStringList_at(list,i);
      QComboBox_addItem(audioDeviceBox,name, QVariant_create(name));
    end loop;
    return audioDeviceBox;
 end;

end;
