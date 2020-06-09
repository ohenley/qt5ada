--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Interfaces.C;  use Interfaces.C;
with builtin; use builtin;
package Qt.QMessageBox          is

type QMessageBoxIcon is (QMessageBoxNoIcon,QMessageBoxInformation,QMessageBoxWarning,QMessageBoxCritical,QMessageBoxQuestion);

for  QMessageBoxIcon'size use cardinal'size;
for  QMessageBoxIcon use (QMessageBoxNoIcon => 0,
                          QMessageBoxInformation => 1,
                          QMessageBoxWarning => 2,
                          QMessageBoxCritical => 3,
                          QMessageBoxQuestion => 4 );

subtype  QMessageBoxButtonRole is cardinal;

QMessageBoxInvalidRole     : constant QMessageBoxButtonRole := 16#ffffffff#;
QMessageBoxAcceptRole      : constant QMessageBoxButtonRole := 0;
QMessageBoxRejectRole      : constant QMessageBoxButtonRole := 1;
QMessageBoxDestructiveRole : constant QMessageBoxButtonRole := 2;
QMessageBoxActionRole      : constant QMessageBoxButtonRole := 3;
QMessageBoxHelpRole        : constant QMessageBoxButtonRole := 4;
QMessageBoxYesRole         : constant QMessageBoxButtonRole := 5;
QMessageBoxNoRole          : constant QMessageBoxButtonRole := 6;
QMessageBoxResetRole       : constant QMessageBoxButtonRole := 7;
QMessageBoxApplyRole       : constant QMessageBoxButtonRole := 8;
QMessageBoxNRoles          : constant QMessageBoxButtonRole := 9;

subtype QMessageBoxStandardButton is cardinal;
subtype QMessageBoxStandardButtons is cardinal;

QMessageBoxNoButton        : constant QMessageBoxStandardButton  := 16#0#;
QMessageBoxOk              : constant QMessageBoxStandardButton  := 16#400#;
QMessageBoxSave            : constant QMessageBoxStandardButton  := 16#800#;
QMessageBoxSaveAll         : constant QMessageBoxStandardButton  := 16#1000#;
QMessageBoxOpen            : constant QMessageBoxStandardButton  := 16#2000#;
QMessageBoxYes             : constant QMessageBoxStandardButton  := 16#4000#;
QMessageBoxYesToAll        : constant QMessageBoxStandardButton  := 16#8000#;
QMessageBoxNo              : constant QMessageBoxStandardButton  := 16#10000#;
QMessageBoxNoToAll         : constant QMessageBoxStandardButton  := 16#20000#;
QMessageBoxAbort           : constant QMessageBoxStandardButton  := 16#40000#;
QMessageBoxRetry           : constant QMessageBoxStandardButton  := 16#80000#;
QMessageBoxIgnore          : constant QMessageBoxStandardButton  := 16#100000#;
QMessageBoxClose           : constant QMessageBoxStandardButton  := 16#200000#;
QMessageBoxCancel          : constant QMessageBoxStandardButton  := 16#400000#;
QMessageBoxDiscard         : constant QMessageBoxStandardButton  := 16#800000#;
QMessageBoxHelp            : constant QMessageBoxStandardButton  := 16#1000000#;
QMessageBoxApply           : constant QMessageBoxStandardButton  := 16#2000000#;
QMessageBoxReset           : constant QMessageBoxStandardButton  := 16#4000000#;
QMessageBoxRestoreDefaults : constant QMessageBoxStandardButton  := 16#8000000#;
QMessageBoxFirstButton     : constant QMessageBoxStandardButton  := 16#400#;
QMessageBoxLastButton      : constant QMessageBoxStandardButton  := 16#8000000#;
QMessageBoxYesAll          : constant QMessageBoxStandardButton  := 16#8000#;
QMessageBoxNoAll           : constant QMessageBoxStandardButton  := 16#20000#;
QMessageBoxDefault         : constant QMessageBoxStandardButton  := 16#100#;
QMessageBoxEscape          : constant QMessageBoxStandardButton  := 16#200#;
QMessageBoxFlagMask        : constant QMessageBoxStandardButton  := 16#300#;
QMessageBoxButtonMask      : constant QMessageBoxStandardButton  := 16#fffffcff#;

function QErrorMessage_create(parent :QWidgetH := null) return QErrorMessageH;
pragma Import(C,QErrorMessage_create,"QErrorMessage_create");

procedure QErrorMessage_destroy(handle: not null  QErrorMessageH);
pragma Import(C,QErrorMessage_destroy,"QErrorMessage_destroy");

function QMessageBox_create(parent: QWidgetH := null) return QMessageBoxH;
pragma Import(C,QMessageBox_create,"QMessageBox_create");
procedure QMessageBox_destroy(handle: not null  QMessageBoxH);   
pragma Import(C,QMessageBox_destroy,"QMessageBox_destroy");
function QMessageBox_create2(icon: QMessageBoxIcon; title: QStringH; text: QStringH; buttons: QMessageBoxStandardButtons := QMessageBoxNoButton; parent: QWidgetH := null; f: QtWindowFlags := QtDialog or QtMSWindowsFixedSizeDialogHint) return QMessageBoxH;
pragma Import(C,QMessageBox_create2,"QMessageBox_create2");
procedure QMessageBox_addButton(handle: not null  QMessageBoxH; button: QAbstractButtonH; role: QMessageBoxButtonRole);    
pragma Import(C,QMessageBox_addButton,"QMessageBox_addButton");
function QMessageBox_addButton2(handle: not null  QMessageBoxH; text: QStringH; role: QMessageBoxButtonRole) return  QPushButtonH;
pragma Import(C,QMessageBox_addButton2,"QMessageBox_addButton2");
function QMessageBox_addButton3(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton) return  QPushButtonH;
pragma Import(C,QMessageBox_addButton3,"QMessageBox_addButton3");
procedure QMessageBox_removeButton(handle: not null  QMessageBoxH; button: QAbstractButtonH);   
pragma Import(C,QMessageBox_removeButton,"QMessageBox_removeButton");
procedure QMessageBox_setStandardButtons(handle: not null  QMessageBoxH; buttons: QMessageBoxStandardButtons);   
pragma Import(C,QMessageBox_setStandardButtons,"QMessageBox_setStandardButtons");
function QMessageBox_standardButtons(handle: not null  QMessageBoxH) return  QMessageBoxStandardButtons;   
pragma Import(C,QMessageBox_standardButtons,"QMessageBox_standardButtons");
function QMessageBox_standardButton(handle: not null  QMessageBoxH; button: QAbstractButtonH) return  QMessageBoxStandardButton;   
pragma Import(C,QMessageBox_standardButton,"QMessageBox_standardButton");
function QMessageBox_button(handle: not null  QMessageBoxH; which: QMessageBoxStandardButton) return  QAbstractButtonH;   
pragma Import(C,QMessageBox_button,"QMessageBox_button");
function QMessageBox_defaultButton(handle: not null  QMessageBoxH) return  QPushButtonH;   
pragma Import(C,QMessageBox_defaultButton,"QMessageBox_defaultButton");
procedure QMessageBox_setDefaultButton(handle: not null  QMessageBoxH; button: QPushButtonH);    
pragma Import(C,QMessageBox_setDefaultButton,"QMessageBox_setDefaultButton");
procedure QMessageBox_setDefaultButton2(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton);
pragma Import(C,QMessageBox_setDefaultButton2,"QMessageBox_setDefaultButton2");
function QMessageBox_escapeButton(handle: not null  QMessageBoxH) return  QAbstractButtonH;   
pragma Import(C,QMessageBox_escapeButton,"QMessageBox_escapeButton");
procedure QMessageBox_setEscapeButton(handle: not null  QMessageBoxH; button: QAbstractButtonH);    
pragma Import(C,QMessageBox_setEscapeButton,"QMessageBox_setEscapeButton");
procedure QMessageBox_setEscapeButton2(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton);
pragma Import(C,QMessageBox_setEscapeButton2,"QMessageBox_setEscapeButton2");
function QMessageBox_clickedButton(handle: not null  QMessageBoxH) return  QAbstractButtonH;   
pragma Import(C,QMessageBox_clickedButton,"QMessageBox_clickedButton");
function  QMessageBox_text(handle: not null  QMessageBoxH) return QStringH;
pragma Import(C,QMessageBox_text,"QMessageBox_text");
procedure QMessageBox_setText(handle: not null  QMessageBoxH; text: QStringH);   
pragma Import(C,QMessageBox_setText,"QMessageBox_setText");
function QMessageBox_icon(handle: not null  QMessageBoxH) return  QMessageBoxIcon;   
pragma Import(C,QMessageBox_icon,"QMessageBox_icon");
procedure QMessageBox_setIcon(handle: not null  QMessageBoxH; p1: QMessageBoxIcon);   
pragma Import(C,QMessageBox_setIcon,"QMessageBox_setIcon");
function  QMessageBox_iconPixmap(handle: not null  QMessageBoxH) return QPixmapH;
pragma Import(C,QMessageBox_iconPixmap,"QMessageBox_iconPixmap");
procedure QMessageBox_setIconPixmap(handle: not null  QMessageBoxH; pixmap: QPixmapH);   
pragma Import(C,QMessageBox_setIconPixmap,"QMessageBox_setIconPixmap");
function QMessageBox_textFormat(handle: not null  QMessageBoxH) return  QtTextFormat;   
pragma Import(C,QMessageBox_textFormat,"QMessageBox_textFormat");
procedure QMessageBox_setTextFormat(handle: not null  QMessageBoxH; format: QtTextFormat);   
pragma Import(C,QMessageBox_setTextFormat,"QMessageBox_setTextFormat");
function QMessageBox_information(parent: QWidgetH; title: QStringH; text: QStringH; buttons: QMessageBoxStandardButtons := QMessageBoxOk; defaultButton: QMessageBoxStandardButton := QMessageBoxNoButton) return QMessageBoxStandardButton;    
pragma Import(C,QMessageBox_information,"QMessageBox_information");
function QMessageBox_question(parent: QWidgetH; title: QStringH; text: QStringH; buttons: QMessageBoxStandardButtons := QMessageBoxOk; defaultButton: QMessageBoxStandardButton := QMessageBoxNoButton) return QMessageBoxStandardButton;    
pragma Import(C,QMessageBox_question,"QMessageBox_question");
function QMessageBox_warning(parent: QWidgetH; title: QStringH; text: QStringH; buttons: QMessageBoxStandardButtons := QMessageBoxOk; defaultButton: QMessageBoxStandardButton := QMessageBoxNoButton) return QMessageBoxStandardButton;    
pragma Import(C,QMessageBox_warning,"QMessageBox_warning");
function QMessageBox_critical(parent: QWidgetH; title: QStringH; text: QStringH; buttons: QMessageBoxStandardButtons := QMessageBoxOk; defaultButton: QMessageBoxStandardButton := QMessageBoxNoButton) return QMessageBoxStandardButton;    
pragma Import(C,QMessageBox_critical,"QMessageBox_critical");
procedure QMessageBox_about(parent: QWidgetH; title: QStringH; text: QStringH);   
pragma Import(C,QMessageBox_about,"QMessageBox_about");
procedure QMessageBox_aboutQt(parent: QWidgetH; title: QStringH := null);   
pragma Import(C,QMessageBox_aboutQt,"QMessageBox_aboutQt");
function  QMessageBox_sizeHint(handle: not null  QMessageBoxH) return QSizeH;
pragma Import(C,QMessageBox_sizeHint,"QMessageBox_sizeHint");
function QMessageBox_create3(title: QStringH; text: QStringH; icon: QMessageBoxIcon; button0: Integer; button1: Integer; button2: Integer; parent: QWidgetH := null; f: QtWindowFlags := QtDialog or QtMSWindowsFixedSizeDialogHint) return QMessageBoxH;
pragma Import(C,QMessageBox_create3,"QMessageBox_create3");
function QMessageBox_information3(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer;
pragma Import(C,QMessageBox_information3,"QMessageBox_information3");
function QMessageBox_question3(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer;
pragma Import(C,QMessageBox_question3,"QMessageBox_question3");
function QMessageBox_warning3(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer;
pragma Import(C,QMessageBox_warning3,"QMessageBox_warning3");
function QMessageBox_critical3(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer;
pragma Import(C,QMessageBox_critical3,"QMessageBox_critical3");
function  QMessageBox_buttonText(handle: not null  QMessageBoxH;button: Integer)  return QStringH;
pragma Import(C,QMessageBox_buttonText,"QMessageBox_buttonText");
procedure QMessageBox_setButtonText(handle: not null  QMessageBoxH; button: Integer; text: QStringH);   
pragma Import(C,QMessageBox_setButtonText,"QMessageBox_setButtonText");
function  QMessageBox_informativeText(handle: not null  QMessageBoxH) return QStringH;
pragma Import(C,QMessageBox_informativeText,"QMessageBox_informativeText");
procedure QMessageBox_setInformativeText(handle: not null  QMessageBoxH; text: QStringH);   
pragma Import(C,QMessageBox_setInformativeText,"QMessageBox_setInformativeText");
function  QMessageBox_detailedText(handle: not null  QMessageBoxH) return  QStringH;
pragma Import(C,QMessageBox_detailedText,"QMessageBox_detailedText");
procedure QMessageBox_setDetailedText(handle: not null  QMessageBoxH; text: QStringH);   
pragma Import(C,QMessageBox_setDetailedText,"QMessageBox_setDetailedText");
procedure QMessageBox_setWindowTitle(handle: not null  QMessageBoxH; title: QStringH);   
pragma Import(C,QMessageBox_setWindowTitle,"QMessageBox_setWindowTitle");
procedure QMessageBox_setWindowModality(handle: not null  QMessageBoxH; windowModality: QtWindowModality);   
pragma Import(C,QMessageBox_setWindowModality,"QMessageBox_setWindowModality");
function  QMessageBox_standardIcon(icon: QMessageBoxIcon) return QPixmapH;
pragma Import(C,QMessageBox_standardIcon,"QMessageBox_standardIcon");

function  QMessageBox_exec(handle: not null  QMessageBoxH) return integer;
pragma Import(C,QMessageBox_exec,"QMessageBox_exec");

procedure  QErrorMessage_ShowMessage(handle: not null  QErrorMessageH; message: QStringH);
pragma Import(C,QErrorMessage_ShowMessage ,"QErrorMessage_ShowMessage");

procedure  QErrorMessage_ShowMessage2(handle: not null  QErrorMessageH; message: QStringH; mtype: QStringH);
pragma Import(C,QErrorMessage_ShowMessage2 ,"QErrorMessage_ShowMessage2");

 procedure QMessageBox_open(handle:not null QMessageBoxH;receiver:QObjectH;member:zstring);
 pragma Import(C,QMessageBox_open, "QMessageBox_open");
 
 function  QMessageBox_buttons(handle:not null QMessageBoxH) return QObjectListH;
 pragma Import(C,QMessageBox_buttons, "QMessageBox_buttons");
 
 function  QMessageBox_buttonRole(handle:not null QMessageBoxH;button:QAbstractButtonH) return QMessageBoxButtonRole;
 pragma Import(C,QMessageBox_buttonRole, "QMessageBox_buttonRole");
 
 procedure QMessageBox_setCheckBox(handle:not null QMessageBoxH;cb:QCheckBoxH);
 pragma Import(C,QMessageBox_setCheckBox, "QMessageBox_setCheckBox");
 
 function  QMessageBox_checkBox(handle:not null QMessageBoxH) return QCheckBoxH;
 pragma Import(C,QMessageBox_checkBox, "QMessageBox_checkBox");

-----------------------------------------------------------------------
function QMessageBox_create(icon: QMessageBoxIcon; title: QStringH; text: QStringH; buttons: QMessageBoxStandardButtons := QMessageBoxNoButton; parent: QWidgetH := null; f: QtWindowFlags := QtDialog or QtMSWindowsFixedSizeDialogHint) return QMessageBoxH;
function QMessageBox_create(title: QStringH; text: QStringH; icon: QMessageBoxIcon; button0: Integer; button1: Integer; button2: Integer; parent: QWidgetH := null; f: QtWindowFlags := QtDialog or QtMSWindowsFixedSizeDialogHint) return QMessageBoxH;
function QMessageBox_addButton(handle: not null  QMessageBoxH; text: QStringH; role: QMessageBoxButtonRole) return  QPushButtonH;
function QMessageBox_addButton(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton) return  QPushButtonH;
procedure QMessageBox_setDefaultButton(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton);
procedure QMessageBox_setEscapeButton(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton);

function QMessageBox_information(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer;
function QMessageBox_question(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer;
function QMessageBox_warning(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer;
function QMessageBox_critical(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer;

procedure  QErrorMessage_ShowMessage(handle: not null  QErrorMessageH; message: QStringH; mtype: QStringH);

function  CriticalInformation(title,text:QStringH; parent: QWidgetH := window) return integer;
procedure HelpInformation(title,text:QStringH;parent: QWidgetH := window);

end Qt.QMessageBox;
