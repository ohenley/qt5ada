-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2016                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QVoice is

 type Gender is (Male,Female,Unknown);
 pragma convention(C,Gender);

 type Age is (Child,Teenager,Adult,Senior,Other);
 pragma convention(C,Age);
 
 function  QVoice_create return QVoiceH;
 pragma Import(C,QVoice_create, "QVoice_create");
 
 function  QVoice_create2(other:QVoiceH) return QVoiceH;
 pragma Import(C,QVoice_create2, "QVoice_create2");
 
 procedure QVoice_destroy(handle:not null QVoiceH);
 pragma Import(C,QVoice_destroy, "QVoice_destroy");
 
 function  QVoice_name(handle:not null QVoiceH) return QStringH;
 pragma Import(C,QVoice_name, "QVoice_name");
 
 function  QVoice_gender(handle:not null QVoiceH) return Gender;
 pragma Import(C,QVoice_gender, "QVoice_gender");
 
 function  QVoice_age(handle:not null QVoiceH) return Age;
 pragma Import(C,QVoice_age, "QVoice_age");
 
 function  QVoice_genderName(voiceGender:Gender) return QStringH;
 pragma Import(C,QVoice_genderName, "QVoice_genderName");
 
 function  QVoice_ageName(voiceAdge:Age) return QStringH;
 pragma Import(C,QVoice_ageName, "QVoice_ageName");
 
end;
