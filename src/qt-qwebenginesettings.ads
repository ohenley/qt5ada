--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QWebEngineSettings is

 type FontFamily is (StandardFont,FixedFont,SerifFont,SansSerifFont,CursiveFont,FantasyFont);
 pragma convention(C,FontFamily);

 type WebAttribute is (AutoLoadImages,JavascriptEnabled,JavascriptCanOpenWindows,JavascriptCanAccessClipboard,
        LinksIncludedInFocusChain,LocalStorageEnabled,LocalContentCanAccessRemoteUrls,XSSAuditingEnabled,
        SpatialNavigationEnabled,LocalContentCanAccessFileUrls,HyperlinkAuditingEnabled,
        ScrollAnimatorEnabled,ErrorPageEnabled,PluginsEnabled, FullScreenSupportEnabled);
 pragma convention(C,WebAttribute);
    
 type FontSize is (MinimumFontSize,MinimumLogicalFontSize,DefaultFontSize,DefaultFixedFontSize);
 pragma convention(C,FontSize);
      
 procedure QtWebEngine_initialize;
 pragma Import(C,QtWebEngine_initialize, "QtWebEngine_initialize");

 function  QWebSettings_defaultSettings return QWebSettingsH;
 pragma Import(C,QWebSettings_defaultSettings, "QWebSettings_defaultSettings");
 
 procedure QWebEngineSettings_setFontFamily(handle:not null QWebSettingsH;which: FontFamily;family: QStringH);
 pragma Import(C,QWebEngineSettings_setFontFamily, "QWebEngineSettings_setFontFamily");
 
 function  QWebEngineSettings_fontFamily(handle:not null QWebSettingsH;which: FontFamily) return QStringH;
 pragma Import(C,QWebEngineSettings_fontFamily, "QWebEngineSettings_fontFamily");
 
 procedure QWebEngineSettings_resetFontFamily(handle:not null QWebSettingsH;which: FontFamily);
 pragma Import(C,QWebEngineSettings_resetFontFamily, "QWebEngineSettings_resetFontFamily");
 
 procedure QWebEngineSettings_setFontSize(handle:not null QWebSettingsH;tp: FontSize;size:integer);
 pragma Import(C,QWebEngineSettings_setFontSize, "QWebEngineSettings_setFontSize");
 
 function  QWebEngineSettings_fontSize(handle:not null QWebSettingsH;tp: FontSize) return integer;
 pragma Import(C,QWebEngineSettings_fontSize, "QWebEngineSettings_fontSize");
 
 procedure QWebEngineSettings_resetFontSize(handle:not null QWebSettingsH;tp: FontSize);
 pragma Import(C,QWebEngineSettings_resetFontSize, "QWebEngineSettings_resetFontSize");
 
 procedure QWebEngineSettings_setAttribute(handle:not null QWebSettingsH;attr: WebAttribute;on: boolean);
 pragma Import(C,QWebEngineSettings_setAttribute, "QWebEngineSettings_setAttribute");
 
 function  QWebEngineSettings_testAttribute(handle:not null QWebSettingsH;attr: WebAttribute) return boolean;
 pragma Import(C,QWebEngineSettings_testAttribute, "QWebEngineSettings_testAttribute");
 
 procedure QWebEngineSettings_resetAttribute(handle:not null QWebSettingsH;attr: WebAttribute);
 pragma Import(C,QWebEngineSettings_resetAttribute, "QWebEngineSettings_resetAttribute");
 
 procedure QWebEngineSettings_setDefaultTextEncoding(handle:not null QWebSettingsH;encoding:QStringH);
 pragma Import(C,QWebEngineSettings_setDefaultTextEncoding, "QWebEngineSettings_setDefaultTextEncoding");
 
 function  QWebEngineSettings_defaultTextEncoding(handle:not null QWebSettingsH) return QStringH;
 pragma Import(C,QWebEngineSettings_defaultTextEncoding, "QWebEngineSettings_defaultTextEncoding");
 

end;
