--
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

package  Qt.QWebEngineContextMenuData  is

 type MediaType is (MediaTypeNone,MediaTypeImage,MediaTypeVideo,MediaTypeAudio,MediaTypeCanvas,MediaTypeFile,MediaTypePlugin); 
 pragma convention(C,MediaType);

 function  QWebEngineContextMenuData_create return QWebDataH;
 pragma Import(C,QWebEngineContextMenuData_create, "QWebEngineContextMenuData_create");
 
 function  QWebEngineContextMenuData_create2(other:QWebDataH) return QWebDataH;
 pragma Import(C,QWebEngineContextMenuData_create2, "QWebEngineContextMenuData_create2");
 
 procedure QWebEngineContextMenuData_destroy(handle:not null QWebDataH);
 pragma Import(C,QWebEngineContextMenuData_destroy, "QWebEngineContextMenuData_destroy");
 
 function  QWebEngineContextMenuData_isValid(handle:not null QWebDataH) return boolean;
 pragma Import(C,QWebEngineContextMenuData_isValid, "QWebEngineContextMenuData_isValid");
 
 function  QWebEngineContextMenuData_position(handle:not null QWebDataH) return QPointH;
 pragma Import(C,QWebEngineContextMenuData_position, "QWebEngineContextMenuData_position");
 
 function  QWebEngineContextMenuData_selectedText(handle:not null QWebDataH) return QStringH;
 pragma Import(C,QWebEngineContextMenuData_selectedText, "QWebEngineContextMenuData_selectedText");
 
 function  QWebEngineContextMenuData_linkText(handle:not null QWebDataH) return QStringH;
 pragma Import(C,QWebEngineContextMenuData_linkText, "QWebEngineContextMenuData_linkText");
 
 function  QWebEngineContextMenuData_linkUrl(handle:not null QWebDataH) return QUrlH;
 pragma Import(C,QWebEngineContextMenuData_linkUrl, "QWebEngineContextMenuData_linkUrl");
 
 function  QWebEngineContextMenuData_mediaUrl(handle:not null QWebDataH) return QUrlH;
 pragma Import(C,QWebEngineContextMenuData_mediaUrl, "QWebEngineContextMenuData_mediaUrl");
 
 function  QWebEngineContextMenuData_mediaType(handle:not null QWebDataH) return MediaType;
 pragma Import(C,QWebEngineContextMenuData_mediaType, "QWebEngineContextMenuData_mediaType");
 
 function  QWebEngineContextMenuData_isContentEditable(handle:not null QWebDataH) return boolean;
 pragma Import(C,QWebEngineContextMenuData_isContentEditable, "QWebEngineContextMenuData_isContentEditable");
 
 function  QWebEngineContextMenuData_misspelledWord(handle:not null QWebDataH) return QStringH;
 pragma Import(C,QWebEngineContextMenuData_misspelledWord, "QWebEngineContextMenuData_misspelledWord");
 
 function  QWebEngineContextMenuData_spellCheckerSuggestions(handle:not null QWebDataH) return QStringListH;
 pragma Import(C,QWebEngineContextMenuData_spellCheckerSuggestions, "QWebEngineContextMenuData_spellCheckerSuggestions");
 
end;
