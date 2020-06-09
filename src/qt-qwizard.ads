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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QWizard  is

 WizardButtonBackButton       : constant :=  0;
 WizardButtonNextButton       : constant :=  1;
 WizardButtonCommitButton     : constant :=  2;
 WizardButtonFinishButton     : constant :=  3;
 WizardButtonCancelButton     : constant :=  4;
 WizardButtonHelpButton       : constant :=  5;
 WizardButtonCustomButton1    : constant :=  6;
 WizardButtonCustomButton2    : constant :=  7;
 WizardButtonCustomButton3    : constant :=  8;
 WizardButtonStretch          : constant :=  9;
 WizardButtonNoButton         : constant := -1;
 WizardButtonNStandardButtons : constant :=  6;
 WizardButtonNButtons         : constant :=  9;

 WizardWatermarkPixmap        : constant := 0;
 WizardLogoPixmap             : constant := 1;
 WizardBannerPixmap           : constant := 2;
 WizardBackgroundPixmap       : constant := 3;
 WizardNPixmaps               : constant := 4;

 WizardClassicStyle           : constant := 0;
 WizardModernStyle            : constant := 1;
 WizardMacStyle               : constant := 2;
 WizardAeroStyle              : constant := 3;
 WizardNStyles                : constant := 4;

 WizardOptionIndependentPages             : constant :=  16#00000001#;
 WizardOptionIgnoreSubTitles              : constant :=  16#00000002#;
 WizardOptionExtendedWatermarkPixmap      : constant :=  16#00000004#;
 WizardOptionNoDefaultButton              : constant :=  16#00000008#;
 WizardOptionNoBackButtonOnStartPage      : constant :=  16#00000010#;
 WizardOptionNoBackButtonOnLastPage       : constant :=  16#00000020#;
 WizardOptionDisabledBackButtonOnLastPage : constant :=  16#00000040#;
 WizardOptionHaveNextButtonOnLastPage     : constant :=  16#00000080#;
 WizardOptionHaveFinishButtonOnEarlyPages : constant :=  16#00000100#;
 WizardOptionNoCancelButton               : constant :=  16#00000200#;
 WizardOptionCancelButtonOnLeft           : constant :=  16#00000400#;
 WizardOptionHaveHelpButton               : constant :=  16#00000800#;
 WizardOptionHelpButtonOnRight            : constant :=  16#00001000#;
 WizardOptionHaveCustomButton1            : constant :=  16#00002000#;
 WizardOptionHaveCustomButton2            : constant :=  16#00004000#;
 WizardOptionHaveCustomButton3            : constant :=  16#00008000#;

 function  QWizard_create (parent:QWidgetH := null; flags: QtWindowFlags := 0) return QWizardH;
 pragma Import(C,QWizard_create,"QWizard_create");

 procedure QWizard_destroy(handle: not null  QWizardH);
 pragma Import(C,QWizard_destroy,"QWizard_destroy");

 function  QWizard_button(handle: not null  QWizardH; which: integer) return QAbstractButtonH;
 pragma Import(C,QWizard_button,"QWizard_button");

 function  QWizard_pixmap(handle: not null  QWizardH; which: integer) return QPixmapH;
 pragma Import(C,QWizard_pixmap,"QWizard_pixmap");

 function  QWizard_buttonText(handle: not null  QWizardH ; which: integer) return QStringH;
 pragma Import(C,QWizard_buttonText,"QWizard_buttonText");

 function  QWizard_currentPage(handle: not null  QWizardH) return  QWizardPageH;
 pragma Import(C,QWizard_currentPage,"QWizard_currentPage");

 function  QWizard_page(handle: not null  QWizardH;id:integer) return  QWizardPageH;
 pragma Import(C,QWizard_page,"QWizard_page");

 function  QWizard_testOption(handle: not null  QWizardH ;option: integer) return  boolean;
 pragma Import(C,QWizard_testOption,"QWizard_testOption");

 function  QWizard_validateCurrentPage(handle: not null  QWizardH) return  boolean;
 pragma Import(C,QWizard_validateCurrentPage,"QWizard_validateCurrentPage");

 function  QWizard_subTitleFormat(handle: not null  QWizardH) return integer;
 pragma Import(C,QWizard_subTitleFormat,"QWizard_subTitleFormat");

 function  QWizard_titleFormat(handle: not null  QWizardH) return integer;
 pragma Import(C,QWizard_titleFormat,"QWizard_titleFormat");

 function  QWizard_wizardStyle(handle: not null  QWizardH) return  integer;
 pragma Import(C,QWizard_wizardStyle,"QWizard_wizardStyle");

 function  QWizard_currentId(handle: not null  QWizardH) return  integer;
 pragma Import(C,QWizard_currentId,"QWizard_currentId");

 function  QWizard_startId(handle: not null  QWizardH) return  integer;
 pragma Import(C,QWizard_startId,"QWizard_startId");

 procedure QWizard_removePage(handle: not null  QWizardH;id:integer);
 pragma Import(C,QWizard_removePage,"QWizard_removePage");

 procedure QWizard_setButton(handle: not null  QWizardH; which: integer; button: QAbstractButtonH);
 pragma Import(C,QWizard_setButton,"QWizard_setButton");

 procedure QWizard_setButtonText(handle: not null  QWizardH ; which: integer; text:QStringH);
 pragma Import(C,QWizard_setButtonText,"QWizard_setButtonText");

 procedure QWizard_setDefaultProperty(handle: not null  QWizardH;  className, property, changedSignal: zstring);
 pragma Import(C,QWizard_setDefaultProperty,"QWizard_setDefaultProperty");

 procedure QWizard_setField(handle: not null  QWizardH; name:QStringH; value: QVariantH);
 pragma Import(C,QWizard_setField,"QWizard_setField");

 procedure QWizard_setOption(handle: not null  QWizardH ; option: integer; on: boolean := true);
 pragma Import(C,QWizard_setOption,"QWizard_setOption");

 procedure QWizard_setOptions(handle: not null  QWizardH ;options: integer);
 pragma Import(C,QWizard_setOptions,"QWizard_setOptions");

 procedure QWizard_setPage(handle: not null  QWizardH;id:integer; page: QWizardPageH);
 pragma Import(C,QWizard_setPage,"QWizard_setPage");

 procedure QWizard_setPixmap(handle: not null  QWizardH; which: integer; pixmap: QPixmapH);
 pragma Import(C,QWizard_setPixmap,"QWizard_setPixmap");

 procedure QWizard_setStartId(handle: not null  QWizardH;id:integer);
 pragma Import(C,QWizard_setStartId,"QWizard_setStartId");

 procedure QWizard_setSubTitleFormat(handle: not null  QWizardH ;format: integer);
 pragma Import(C,QWizard_setSubTitleFormat,"QWizard_setSubTitleFormat");

 procedure QWizard_setTitleFormat(handle: not null  QWizardH; format: integer);
 pragma Import(C,QWizard_setTitleFormat,"QWizard_setTitleFormat");

 procedure QWizard_setVisible(handle: not null  QWizardH;visible:boolean);
 pragma Import(C,QWizard_setVisible,"QWizard_setVisible");

 procedure QWizard_setWizardStyle(handle: not null  QWizardH ;style: integer);
 pragma Import(C,QWizard_setWizardStyle,"QWizard_setWizardStyle");

 function  QWizard_sizeHint(handle: not null  QWizardH) return QSizeH;
 pragma Import(C,QWizard_sizeHint,"QWizard_sizeHint");

 function  QWizard_field(handle: not null  QWizardH; name:QStringH) return QVariantH;
 pragma Import(C,QWizard_field,"QWizard_field");

 function  QWizard_hasVisitedPage(handle: not null  QWizardH;id:integer) return boolean;
 pragma Import(C,QWizard_hasVisitedPage,"QWizard_hasVisitedPage");

 function  QWizard_addPage(handle: not null  QWizardH;page: QWizardPageH) return integer;
 pragma Import(C,QWizard_addPage,"QWizard_addPage");

 function  QWizard_nextId(handle: not null  QWizardH) return integer;
 pragma Import(C,QWizard_nextId,"QWizard_nextId");

 function  QWizardPage_create(parent:QWidgetH := null) return QWizardPageH;
 pragma Import(C,QWizardPage_create,"QWizardPage_create");

 function  QWizardPage_pixmap(handle: not null  QWizardPageH; which: integer) return QPixmapH;
 pragma Import(C,QWizardPage_pixmap,"QWizardPage_pixmap");

 function  QWizardPage_buttonText(handle: not null  QWizardPageH; which: integer) return QStringH;
 pragma Import(C,QWizardPage_buttonText,"QWizardPage_buttonText");

 function  QWizardPage_subTitle(handle: not null  QWizardPageH) return QStringH;
 pragma Import(C,QWizardPage_subTitle,"QWizardPage_subTitle");

 function  QWizardPage_title(handle: not null  QWizardPageH) return QStringH;
 pragma Import(C,QWizardPage_title,"QWizardPage_title");

 function  QWizardPage_isCommitPage(handle: not null  QWizardPageH) return boolean;
 pragma Import(C,QWizardPage_isCommitPage,"QWizardPage_isCommitPage");

 function  QWizardPage_isFinalPage(handle: not null  QWizardPageH) return boolean;
 pragma Import(C,QWizardPage_isFinalPage,"QWizardPage_isFinalPage");

 procedure QWizardPage_setButtonText(handle: not null  QWizardPageH; which: integer;  text:QStringH);
 pragma Import(C,QWizardPage_setButtonText,"QWizardPage_setButtonText");

 procedure QWizardPage_setCommitPage(handle: not null  QWizardPageH; commitPage: boolean);
 pragma Import(C,QWizardPage_setCommitPage,"QWizardPage_setCommitPage");

 procedure QWizardPage_setFinalPage(handle: not null  QWizardPageH; finalPage: boolean);
 pragma Import(C,QWizardPage_setFinalPage,"QWizardPage_setFinalPage");

 procedure QWizardPage_setPixmap(handle: not null  QWizardPageH; which: integer; pixmap: QPixmapH);
 pragma Import(C,QWizardPage_setPixmap,"QWizardPage_setPixmap");

 procedure QWizardPage_setSubTitle(handle: not null  QWizardPageH; subTitle: QStringH);
 pragma Import(C,QWizardPage_setSubTitle,"QWizardPage_setSubTitle");

 procedure QWizardPage_setTitle(handle: not null  QWizardPageH; title: QStringH);
 pragma Import(C,QWizardPage_setTitle,"QWizardPage_setTitle");

 function  QWizardPage_isComplete(handle: not null  QWizardPageH) return boolean;
 pragma Import(C,QWizardPage_isComplete,"QWizardPage_isComplete");

 function  QWizardPage_validatePage(handle: not null  QWizardPageH) return boolean;
 pragma Import(C,QWizardPage_validatePage,"QWizardPage_validatePage");

 function  QWizardPage_nextId(handle: not null  QWizardPageH) return integer;
 pragma Import(C,QWizardPage_nextId,"QWizardPage_nextId");

 procedure QWizardPage_cleanupPage(handle: not null  QWizardPageH);
 pragma Import(C,QWizardPage_cleanupPage,"QWizardPage_cleanupPage");

 procedure QWizardPage_initializePage(handle: not null  QWizardPageH);
 pragma Import(C,QWizardPage_initializePage,"QWizardPage_initializePage");

end  Qt.QWizard;
