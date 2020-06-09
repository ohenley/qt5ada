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

with Qt;  use Qt;
with Qt.QLocale;  use Qt.QLocale;
with builtin; use builtin;
package Qt.QLlmLocaleLanguageManager is

type QLanguageManagerH is new QObjectH; 

 function  QLlmLocaleLanguageManager_create return QLanguageManagerH;
 pragma Import(C,QLlmLocaleLanguageManager_create, "QLlmLocaleLanguageManager_create");
 
 procedure QLlmLocaleLanguageManager_destroy(handle:not null QLanguageManagerH);
 pragma Import(C,QLlmLocaleLanguageManager_destroy, "QLlmLocaleLanguageManager_destroy");
 
 function  QLlmLocaleLanguageManager_analyseAvailableLanguages(handle:not null QLanguageManagerH;sReturnErrMsg :QStringH :=  null) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_analyseAvailableLanguages, "QLlmLocaleLanguageManager_analyseAvailableLanguages");
 
 procedure QLlmLocaleLanguageManager_setQmFilesDirectory(handle:not null QLanguageManagerH;sQmFilesDirectory:QStringH);
 pragma Import(C,QLlmLocaleLanguageManager_setQmFilesDirectory, "QLlmLocaleLanguageManager_setQmFilesDirectory");
 
 function  QLlmLocaleLanguageManager_isUsable(handle:not null QLanguageManagerH) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_isUsable, "QLlmLocaleLanguageManager_isUsable");
 
 function  QLlmLocaleLanguageManager_currentLanguageNativeName(handle:not null QLanguageManagerH) return QStringH;
 pragma Import(C,QLlmLocaleLanguageManager_currentLanguageNativeName, "QLlmLocaleLanguageManager_currentLanguageNativeName");
 
 function  QLlmLocaleLanguageManager_languageNameNativeList(handle:not null QLanguageManagerH;bIntegrateSystemLanguageFlag:boolean) return QStringListH;
 pragma Import(C,QLlmLocaleLanguageManager_languageNameNativeList, "QLlmLocaleLanguageManager_languageNameNativeList");
 
 function  QLlmLocaleLanguageManager_translateAppToLanguage(handle:not null QLanguageManagerH;sLanguageNativeOrEnglishNameWithCountry:QStringH;sReturnErrMsg : QStringH :=  null) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_translateAppToLanguage, "QLlmLocaleLanguageManager_translateAppToLanguage");
 
 function  QLlmLocaleLanguageManager_sourceLanguageNativeName(handle:not null QLanguageManagerH) return QStringH;
 pragma Import(C,QLlmLocaleLanguageManager_sourceLanguageNativeName, "QLlmLocaleLanguageManager_sourceLanguageNativeName");
 
 function  QLlmLocaleLanguageManager_setSourceLanguage(handle:not null QLanguageManagerH;languageQtFlag:QLocaleLanguage;countryQtFlag : QLocaleCountry :=  Qt.QLocale.AnyCountry;sReturnErrMsg : QStringH :=  null) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_setSourceLanguage, "QLlmLocaleLanguageManager_setSourceLanguage");
 
 procedure QLlmLocaleLanguageManager_setSourceLanguageFromQAppLocalSettings(handle:not null QLanguageManagerH);
 pragma Import(C,QLlmLocaleLanguageManager_setSourceLanguageFromQAppLocalSettings, "QLlmLocaleLanguageManager_setSourceLanguageFromQAppLocalSettings");
 
 function  QLlmLocaleLanguageManager_systemLanguageNativeName(handle:not null QLanguageManagerH) return QStringH;
 pragma Import(C,QLlmLocaleLanguageManager_systemLanguageNativeName, "QLlmLocaleLanguageManager_systemLanguageNativeName");
 
 function  QLlmLocaleLanguageManager_isSystemLanguageAvailable(handle:not null QLanguageManagerH) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_isSystemLanguageAvailable, "QLlmLocaleLanguageManager_isSystemLanguageAvailable");
 
 function  QLlmLocaleLanguageManager_isSystemLanguageChosenByUser(handle:not null QLanguageManagerH) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_isSystemLanguageChosenByUser, "QLlmLocaleLanguageManager_isSystemLanguageChosenByUser");
 
 function  QLlmLocaleLanguageManager_translateAppToSystemLanguage(handle:not null QLanguageManagerH;sReturnErrMsg :QStringH :=  null) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_translateAppToSystemLanguage, "QLlmLocaleLanguageManager_translateAppToSystemLanguage");
 
 procedure QLlmLocaleLanguageManager_setSettings(handle:not null QLanguageManagerH;settings:QSettingsH);
 pragma Import(C,QLlmLocaleLanguageManager_setSettings, "QLlmLocaleLanguageManager_setSettings");
 
 procedure QLlmLocaleLanguageManager_setKeySettingsTranslateLanguage(handle:not null QLanguageManagerH;sKey:QStringH);
 pragma Import(C,QLlmLocaleLanguageManager_setKeySettingsTranslateLanguage, "QLlmLocaleLanguageManager_setKeySettingsTranslateLanguage");
 
 function  QLlmLocaleLanguageManager_translateAppToUserSettingsLanguage(handle:not null QLanguageManagerH;sReturnErrMsg :QStringH :=  null) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_translateAppToUserSettingsLanguage, "QLlmLocaleLanguageManager_translateAppToUserSettingsLanguage");

 function  QLlmLocaleLanguageManager_configureLanguageManager(languageManager:not null QLanguageManagerH;qmfolder: QStringH; SETTINGS_KEY_LOCALE_LANGUAGE : zstring := s2zs("Locale/Language")) return boolean;
 pragma Import(C,QLlmLocaleLanguageManager_configureLanguageManager, "QLlmLocaleLanguageManager_configureLanguageManager");
 

end;
