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
package Qt.QLlmLanguage is

type QLanguageH is new QObjectH;

 function  QLlmLanguage_create return QLanguageH;
 pragma Import(C,QLlmLanguage_create, "QLlmLanguage_create");
 
 procedure QLlmLanguage_destroy(handle:not null QLanguageH);
 pragma Import(C,QLlmLanguage_destroy, "QLlmLanguage_destroy");
 
 function  QLlmLanguage_languageISOCode(handle:not null QLanguageH) return QStringH;
 pragma Import(C,QLlmLanguage_languageISOCode, "QLlmLanguage_languageISOCode");
 
 function  QLlmLanguage_countryISOCode(handle:not null QLanguageH) return QStringH;
 pragma Import(C,QLlmLanguage_countryISOCode, "QLlmLanguage_countryISOCode");
 
 function  QLlmLanguage_nativeNameWithCountry(handle:not null QLanguageH) return QStringH;
 pragma Import(C,QLlmLanguage_nativeNameWithCountry, "QLlmLanguage_nativeNameWithCountry");
 
 function  QLlmLanguage_englishNameWithCountry(handle:not null QLanguageH) return QStringH;
 pragma Import(C,QLlmLanguage_englishNameWithCountry, "QLlmLanguage_englishNameWithCountry");
 
 function  QLlmLanguage_qmFile(handle:not null QLanguageH) return QStringH;
 pragma Import(C,QLlmLanguage_qmFile, "QLlmLanguage_qmFile");
 
 function  QLlmLanguage_languageQtFlag(handle:not null QLanguageH) return QLocaleLanguage;
 pragma Import(C,QLlmLanguage_languageQtFlag, "QLlmLanguage_languageQtFlag");
 
 function  QLlmLanguage_countryQtFlag(handle:not null QLanguageH) return QLocaleCountry;
 pragma Import(C,QLlmLanguage_countryQtFlag, "QLlmLanguage_countryQtFlag");
 
 procedure QLlmLanguage_setQAppDefaultLanguage(handle:not null QLanguageH);
 pragma Import(C,QLlmLanguage_setQAppDefaultLanguage, "QLlmLanguage_setQAppDefaultLanguage");
 
 function  QLlmLanguage_set(handle:not null QLanguageH;languageQtFlag:QLocaleLanguage;countryQtFlag : QLocaleCountry :=  Qt.QLocale.AnyCountry;sReturnErrMsg : QStringH :=  null) return boolean;
 pragma Import(C,QLlmLanguage_set, "QLlmLanguage_set");
 
 function  QLlmLanguage_set2(handle:not null QLanguageH;locale:QLocaleH;sReturnErrMsg : QStringH :=  null) return boolean;
 pragma Import(C,QLlmLanguage_set2, "QLlmLanguage_set2");
 
 function  QLlmLanguage_setQmFileProperties(handle:not null QLanguageH;sQmFileName:QStringH;sReturnErrMsg : QStringH :=  null) return boolean;
 pragma Import(C,QLlmLanguage_setQmFileProperties, "QLlmLanguage_setQmFileProperties");
 
 function  QLlmLanguage_setLanguageScriptCountryCodeProperties(handle:not null QLanguageH;sLanguageScriptCountryCode:QStringH;sReturnErrMsg : QStringH :=  null) return boolean;
 pragma Import(C,QLlmLanguage_setLanguageScriptCountryCodeProperties, "QLlmLanguage_setLanguageScriptCountryCodeProperties");
 
 function  QLlmLanguage_isRealizableBy(handle:not null QLanguageH;candidateLanguage:QLanguageH) return boolean;
 pragma Import(C,QLlmLanguage_isRealizableBy, "QLlmLanguage_isRealizableBy");
 
 function  QLlmLanguage_readCodesFromLanguageScriptCountryCode(sLanguageScriptCountryCode:QStringH ;sRetLanguageCode:QStringH;sRetScriptCode: QStringH;sRetCountryCode: QStringH;sReturnErrMsg : QStringH :=  null) return boolean;
 pragma Import(C,QLlmLanguage_readCodesFromLanguageScriptCountryCode, "QLlmLanguage_readCodesFromLanguageScriptCountryCode");
 
 function  QLlmLanguage_isValidAssociation(sLanguageCode:QStringH;sCountryCode:QStringH;retLanguageQtFlag :in out QLocaleLanguage;retCountryQtFlag : in out QLocaleCountry;sRetNativeLanguageName: QStringH) return boolean;
 pragma Import(C,QLlmLanguage_isValidAssociation, "QLlmLanguage_isValidAssociation");
 
 function  QLlmLanguage_set(handle:not null QLanguageH;locale:QLocaleH;sReturnErrMsg : QStringH :=  null) return boolean;

end;
