-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2016,2017                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString; use Qt.QString;
package Qt.QUiLoader is

 type QUILoaderH is new QObjectH;

 function  QUiLoader_create(parent:QObjectH := null) return QUILoaderH;
 pragma Import(C,QUiLoader_create, "QUiLoader_create");
 
 procedure QUiLoader_destroy(handle:not null QUILoaderH);
 pragma Import(C,QUiLoader_destroy, "QUiLoader_destroy");
 
 function  QUiLoader_pluginPaths(handle:not null QUILoaderH) return QStringListH;
 pragma Import(C,QUiLoader_pluginPaths, "QUiLoader_pluginPaths");
 
 procedure QUiLoader_clearPluginPaths(handle:not null QUILoaderH);
 pragma Import(C,QUiLoader_clearPluginPaths, "QUiLoader_clearPluginPaths");
 
 procedure QUiLoader_addPluginPath(handle:not null QUILoaderH;path:QStringH);
 pragma Import(C,QUiLoader_addPluginPath, "QUiLoader_addPluginPath");
 
 function  QUiLoader_load(handle:not null QUILoaderH;device:QIODeviceH;parentWidget : QWidgetH := null) return QWidgetH;
 pragma Import(C,QUiLoader_load, "QUiLoader_load");
 
 function  QUiLoader_availableWidgets(handle:not null QUILoaderH) return QStringListH;
 pragma Import(C,QUiLoader_availableWidgets, "QUiLoader_availableWidgets");
 
 function  QUiLoader_availableLayouts(handle:not null QUILoaderH) return QStringListH;
 pragma Import(C,QUiLoader_availableLayouts, "QUiLoader_availableLayouts");
 
 function  QUiLoader_createWidget(handle:not null QUILoaderH;className:QStringH;parent : QWidgetH := null ;name : QStringH :=  QString_create) return QWidgetH;
 pragma Import(C,QUiLoader_createWidget, "QUiLoader_createWidget");
 
 function  QUiLoader_createLayout(handle:not null QUILoaderH;className:QStringH;parent : QObjectH := null ;name : QStringH :=  QString_create) return QLayoutH;
 pragma Import(C,QUiLoader_createLayout, "QUiLoader_createLayout");
 
 function  QUiLoader_createActionGroup(handle:not null QUILoaderH;parent :QObjectH := null ;name : QStringH := QString_create) return QActionGroupH;
 pragma Import(C,QUiLoader_createActionGroup, "QUiLoader_createActionGroup");
 
 function  QUiLoader_createAction(handle:not null QUILoaderH;parent :QObjectH := null;name : QStringH :=  QString_create) return QActionH;
 pragma Import(C,QUiLoader_createAction, "QUiLoader_createAction");
 
 procedure QUiLoader_setWorkingDirectory(handle:not null QUILoaderH;dir:QDirH);
 pragma Import(C,QUiLoader_setWorkingDirectory, "QUiLoader_setWorkingDirectory");
 
 function  QUiLoader_workingDirectory(handle:not null QUILoaderH) return QDirH;
 pragma Import(C,QUiLoader_workingDirectory, "QUiLoader_workingDirectory");
 
 procedure QUiLoader_setLanguageChangeEnabled(handle:not null QUILoaderH;enabled:boolean);
 pragma Import(C,QUiLoader_setLanguageChangeEnabled, "QUiLoader_setLanguageChangeEnabled");
 
 function  QUiLoader_isLanguageChangeEnabled(handle:not null QUILoaderH) return boolean;
 pragma Import(C,QUiLoader_isLanguageChangeEnabled, "QUiLoader_isLanguageChangeEnabled");
 
 procedure QUiLoader_setTranslationEnabled(handle:not null QUILoaderH;enabled:boolean);
 pragma Import(C,QUiLoader_setTranslationEnabled, "QUiLoader_setTranslationEnabled");
 
 function  QUiLoader_isTranslationEnabled(handle:not null QUILoaderH) return boolean;
 pragma Import(C,QUiLoader_isTranslationEnabled, "QUiLoader_isTranslationEnabled");
 
 function  QUiLoader_errorString(handle:not null QUILoaderH) return QStringH;
 pragma Import(C,QUiLoader_errorString, "QUiLoader_errorString");
 
 function  QUiLoader_loadFromFile(handle:not null QUiLoaderH;fileName:QStringH) return QWidgetH;
 pragma Import(C,QUiLoader_loadFromFile, "QUiLoader_loadFromFile");

end;
