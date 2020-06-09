--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2016,2019                 บ
-- บ Copyright (C) 2015,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString;                use Qt.QString;
with Qt.QUrl;                   use Qt.QUrl;
with Qt.QWebEngineDownloadItem; use Qt.QWebEngineDownloadItem;
with Qt.QMargins;               use Qt.QMargins;
with Qt.QPageLayout;            use Qt.QPageLayout;
with Qt.QPageSize;              use Qt.QPageSize;
package Qt.QWebEnginePage is

 type WebAction is (
        NoWebAction,Back,Forward,Stop,Reload,
        Cut,Copy,Paste,
        Undo,Redo,SelectAll,ReloadAndBypassCache,
        PasteAndMatchStyle,
        OpenLinkInThisWindow,OpenLinkInNewWindow,OpenLinkInNewTab,CopyLinkToClipboard,DownloadLinkToDisk,
        CopyImageToClipboard,CopyImageUrlToClipboard,DownloadImageToDisk,
        CopyMediaUrlToClipboard,ToggleMediaControls,ToggleMediaLoop,ToggleMediaPlayPause,ToggleMediaMute,DownloadMediaToDisk,
        InspectElement,ExitFullScreen,
        RequestClose                  ,
        Unselect                      ,
        SavePage                      ,
        OpenLinkInNewBackgroundTab    ,
        ViewSource                    ,

        ToggleBold                    ,
        ToggleItalic                  ,
        ToggleUnderline               ,
        ToggleStrikethrough           ,

        AlignLeft                     ,
        AlignCenter                   ,
        AlignRight                    ,
        AlignJustified                ,
        Indent                        ,
        Outdent                       ,
        InsertOrderedList             ,
        InsertUnorderedList           , 
        WebActionCount);
 pragma convention(C,WebAction);
 for WebAction use (
        NoWebAction             => - 1,
        Back                    =>   0,
        Forward                 =>   1,
        Stop                    =>   2,
        Reload                  =>   3,
        
        Cut                     =>   4,
        Copy                    =>   5,
        Paste                   =>   6,
        
        Undo                    =>   7,
        Redo                    =>   8,
        SelectAll               =>   9,
        ReloadAndBypassCache    =>  10,
        
        PasteAndMatchStyle      =>  11,
        
        OpenLinkInThisWindow    =>  12,
        OpenLinkInNewWindow     =>  13,
        OpenLinkInNewTab        =>  14,
        CopyLinkToClipboard     =>  15,
        DownloadLinkToDisk      =>  16,
        
        CopyImageToClipboard    =>  17,
        CopyImageUrlToClipboard =>  18,
        DownloadImageToDisk     =>  19,
        
        CopyMediaUrlToClipboard =>  20,
        ToggleMediaControls     =>  21,
        ToggleMediaLoop         =>  22,
        ToggleMediaPlayPause    =>  23,
        ToggleMediaMute         =>  24,
        DownloadMediaToDisk     =>  25,
       
        InspectElement          =>  26,
        ExitFullScreen          =>  27,
        RequestClose            =>  28,
        Unselect                =>  29,
        SavePage                =>  30,
        OpenLinkInNewBackgroundTab => 31,
        ViewSource              =>  32,

        ToggleBold              =>  33,
        ToggleItalic            =>  34,
        ToggleUnderline         =>  35,
        ToggleStrikethrough     =>  36,

        AlignLeft               =>  37,
        AlignCenter             =>  38,
        AlignRight              =>  39,
        AlignJustified          =>  40,
        Indent                  =>  41,
        Outdent                 =>  42,

        InsertOrderedList       =>  43,
        InsertUnorderedList     =>  44, 
        
        
        WebActionCount          =>  45);
        
 type FindFlag is (FindBackward,FindCaseSensitively);
 pragma convention(C,FindFlag);
 for FindFlag use (
      FindBackward => 1,
      FindCaseSensitively => 2);
      
 type WebWindowType is (WebBrowserWindow,WebBrowserTab,WebDialog);  
 pragma convention(C,WebWindowType);
 
 type PermissionPolicy is (PermissionUnknown,PermissionGrantedByUser,PermissionDeniedByUser);
 pragma convention(C,PermissionPolicy);
 
 type NavigationType is (NavigationTypeLinkClicked,NavigationTypeTyped,NavigationTypeFormSubmitted,NavigationTypeBackForward,NavigationTypeReload,NavigationTypeOther);     
 pragma convention(C,NavigationType);
 
 type Feature is (Notifications,Geolocation,MediaAudioCapture,MediaVideoCapture,MediaAudioVideoCapture,MouseLock);
 pragma convention(C,Feature);
    
 type FileSelectionMode is (FileSelectOpen,FileSelectOpenMultiple);
 pragma convention(C,FileSelectionMode);
    
 type JavaScriptConsoleMessageLevel is (InfoMessageLevel,WarningMessageLevel,ErrorMessageLevel);
 pragma convention(C,JavaScriptConsoleMessageLevel);
  
 type RenderProcessTerminationStatus is (NormalTerminationStatus,AbnormalTerminationStatus,CrashedTerminationStatus,KilledTerminationStatus);  
 pragma convention(C,RenderProcessTerminationStatus);
 
 function  QWebEnginePage_create(parent:QObjectH) return QWebPageH;
 pragma Import(C,QWebEnginePage_create, "QWebEnginePage_create");
 
 procedure QWebEnginePage_delete(handle:not null QWebPageH);
 pragma Import(C,QWebEnginePage_delete, "QWebEnginePage_delete");
 
 function  QWebEnginePage_hasSelection(handle:not null QWebPageH) return boolean;
 pragma Import(C,QWebEnginePage_hasSelection, "QWebEnginePage_hasSelection");
 
 function  QWebEnginePage_history(handle:not null QWebPageH) return QWebHistoryH;
 pragma Import(C,QWebEnginePage_history, "QWebEnginePage_history");
 
 procedure QWebEnginePage_setView(handle:not null QWebPageH;view:QWebViewH);
 pragma Import(C,QWebEnginePage_setView, "QWebEnginePage_setView");
 
 function  QWebEnginePage_view(handle:not null QWebPageH) return QWidgetH;
 pragma Import(C,QWebEnginePage_view, "QWebEnginePage_view");
 
 function  QWebEnginePage_selectedText(handle:not null QWebPageH) return QStringH;
 pragma Import(C,QWebEnginePage_selectedText, "QWebEnginePage_selectedText");
 
 function  QWebEnginePage_profile(handle:not null QWebPageH) return QWebProfileH;
 pragma Import(C,QWebEnginePage_profile, "QWebEnginePage_profile");
 
 function  QWebEnginePage_action(handle:not null QWebPageH;action:WebAction) return QActionH;
 pragma Import(C,QWebEnginePage_action, "QWebEnginePage_action");
 
 procedure QWebEnginePage_triggerAction(handle:not null QWebPageH;action:WebAction; checked : boolean := false);
 pragma Import(C,QWebEnginePage_triggerAction, "QWebEnginePage_triggerAction");
 
 function  QWebEnginePage_event(handle:not null QWebPageH;e:QEventH) return boolean;
 pragma Import(C,QWebEnginePage_event, "QWebEnginePage_event");
 
 procedure QWebEnginePage_findText(handle:not null QWebPageH;subString: QStringH; options : integer := 0);
 pragma Import(C,QWebEnginePage_findText, "QWebEnginePage_findText");
 
 function  QWebEnginePage_findText2(handle:not null QWebPageH;subString:QStringH; options : integer) return boolean;
 pragma Import(C,QWebEnginePage_findText2, "QWebEnginePage_findText2");
 
 function  QWebEnginePage_createStandardContextMenu(handle:not null QWebPageH) return QMenuH;
 pragma Import(C,QWebEnginePage_createStandardContextMenu, "QWebEnginePage_createStandardContextMenu");
 
 procedure QWebEnginePage_setFeaturePermission(handle:not null QWebPageH;securityOrigin:QUrlH;f: Feature; policy:PermissionPolicy);
 pragma Import(C,QWebEnginePage_setFeaturePermission, "QWebEnginePage_setFeaturePermission");
 
 procedure QWebEnginePage_load(handle:not null QWebPageH;url:QUrlH);
 pragma Import(C,QWebEnginePage_load, "QWebEnginePage_load");
 
 procedure QWebEnginePage_setHtml(handle:not null QWebPageH;html:QStringH; baseUrl: QUrlH := QUrl_create);
 pragma Import(C,QWebEnginePage_setHtml, "QWebEnginePage_setHtml");
 
 procedure QWebEnginePage_setContent(handle:not null QWebPageH;data:QByteArrayH;mimeType: QStringH := QString_create; baseUrl: QUrlH := QUrl_create);
 pragma Import(C,QWebEnginePage_setContent, "QWebEnginePage_setContent");
 
 function  QWebEnginePage_toHtml(handle:not null QWebPageH) return QStringH;
 pragma Import(C,QWebEnginePage_toHtml, "QWebEnginePage_toHtml");
 
 function  QWebEnginePage_toPlainText(handle:not null QWebPageH) return QStringH;
 pragma Import(C,QWebEnginePage_toPlainText, "QWebEnginePage_toPlainText");
 
 function  QWebEnginePage_title(handle:not null QWebPageH) return QStringH;
 pragma Import(C,QWebEnginePage_title, "QWebEnginePage_title");
 
 procedure QWebEnginePage_setUrl(handle:not null QWebPageH;url:QUrlH);
 pragma Import(C,QWebEnginePage_setUrl, "QWebEnginePage_setUrl");
 
 function  QWebEnginePage_url(handle:not null QWebPageH) return QUrlH;
 pragma Import(C,QWebEnginePage_url, "QWebEnginePage_url");
 
 function  QWebEnginePage_requestedUrl(handle:not null QWebPageH) return QUrlH;
 pragma Import(C,QWebEnginePage_requestedUrl, "QWebEnginePage_requestedUrl");
 
 function  QWebEnginePage_iconUrl(handle:not null QWebPageH) return QUrlH;
 pragma Import(C,QWebEnginePage_iconUrl, "QWebEnginePage_iconUrl");
 
 function  QWebEnginePage_zoomFactor(handle:not null QWebPageH) return qreal;
 pragma Import(C,QWebEnginePage_zoomFactor, "QWebEnginePage_zoomFactor");
 
 procedure QWebEnginePage_setZoomFactor(handle:not null QWebPageH; factor:qreal);
 pragma Import(C,QWebEnginePage_setZoomFactor, "QWebEnginePage_setZoomFactor");
 
 procedure QWebEnginePage_runJavaScript(handle:not null QWebPageH;scriptSource: QStringH);
 pragma Import(C,QWebEnginePage_runJavaScript, "QWebEnginePage_runJavaScript");
 
 function  QWebEnginePage_runJavaScript2(handle:not null QWebPageH;scriptSource:QStringH) return QVariantH;
 pragma Import(C,QWebEnginePage_runJavaScript2, "QWebEnginePage_runJavaScript2");
 
 function  QWebEnginePage_settings(handle:not null QWebPageH) return QWebSettingsH;
 pragma Import(C,QWebEnginePage_settings, "QWebEnginePage_settings");
 
 function  QWebEnginePage_webChannel(handle:not null QWebPageH) return QWebChannelH;
 pragma Import(C,QWebEnginePage_webChannel, "QWebEnginePage_webChannel");
 
 procedure QWebEnginePage_setWebChannel(handle:not null QWebPageH;channel:QWebChannelH);
 pragma Import(C,QWebEnginePage_setWebChannel, "QWebEnginePage_setWebChannel");
 
 function  QWebEnginePage_backgroundColor(handle:not null QWebPageH) return QColorH;
 pragma Import(C,QWebEnginePage_backgroundColor, "QWebEnginePage_backgroundColor");
 
 procedure QWebEnginePage_setBackgroundColor(handle:not null QWebPageH;color:QColorH);
 pragma Import(C,QWebEnginePage_setBackgroundColor, "QWebEnginePage_setBackgroundColor");
 
 function  QWebEnginePage_createWindow(handle:not null QWebPageH;winType:WebWindowType) return QWebPageH;
 pragma Import(C,QWebEnginePage_createWindow, "QWebEnginePage_createWindow");
 
 function  QWebEnginePage_chooseFiles(handle:not null QWebPageH;mode:FileSelectionMode; oldFiles,acceptedMimeTypes: QStringListH) return QStringListH;
 pragma Import(C,QWebEnginePage_chooseFiles, "QWebEnginePage_chooseFiles");
 
 procedure QWebEnginePage_javaScriptAlert(handle:not null QWebPageH;securityOrigin:QUrlH;msg: QStringH);
 pragma Import(C,QWebEnginePage_javaScriptAlert, "QWebEnginePage_javaScriptAlert");
 
 function  QWebEnginePage_javaScriptConfirm(handle:not null QWebPageH;securityOrigin:QUrlH;msg: QStringH) return boolean;
 pragma Import(C,QWebEnginePage_javaScriptConfirm, "QWebEnginePage_javaScriptConfirm");
 
 function  QWebEnginePage_javaScriptPrompt(handle:not null QWebPageH;securityOrigin:QUrlH;msg,defaultValue,result: QStringH ) return boolean;
 pragma Import(C,QWebEnginePage_javaScriptPrompt, "QWebEnginePage_javaScriptPrompt");
 
 procedure QWebEnginePage_javaScriptConsoleMessage(handle:not null QWebPageH;level:JavaScriptConsoleMessageLevel;message: QStringH;lineNumber:integer;sourceID: QStringH);
 pragma Import(C,QWebEnginePage_javaScriptConsoleMessage, "QWebEnginePage_javaScriptConsoleMessage");
 
 function  QWebEnginePage_certificateError(handle:not null QWebPageH; certificateError:QWebCertificateErrorH) return boolean;
 pragma Import(C,QWebEnginePage_certificateError, "QWebEnginePage_certificateError");
 
 function  QWebEnginePage_acceptNavigationRequest(handle:not null QWebPageH;url:QUrlH;navType: NavigationType;isMainFrame:boolean) return boolean;
 pragma Import(C,QWebEnginePage_acceptNavigationRequest, "QWebEnginePage_acceptNavigationRequest");
 
 function  QWebEnginePage_scripts(handle:not null QWebPageH) return QObjectListH;
 pragma Import(C,QWebEnginePage_scripts, "QWebEnginePage_scripts");
 type urlIntCallbackH is access procedure(url:QUrlH;p2:integer);
 pragma convention(C,urlIntCallbackH);
 
 type urlAuthenticatorCallbackH is access procedure(url:QUrlH;p2:QAuthenticatorH);
 pragma convention(C,urlAuthenticatorCallbackH);
 
 type urlAuthenticatorStringCallbackH is access procedure(url:QUrlH;p2:QAuthenticatorH;p3:QStringH);
 pragma convention(C,urlAuthenticatorStringCallbackH);

 type stringStringCallbackH is access procedure(s1,s2:QStringH);
 pragma convention(C,stringStringCallbackH);

 procedure QWebEnginePage_signal_slot_loadStarted(handle:QWebPageH; hook : voidCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_loadStarted, "QWebEnginePage_signal_slot_loadStarted");
 
 procedure QWebEnginePage_signal_slot_loadProgress(handle:QWebPageH; hook : intCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_loadProgress, "QWebEnginePage_signal_slot_loadProgress");
 
 procedure QWebEnginePage_signal_slot_loadFinished(handle:QWebPageH; hook : boolCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_loadFinished, "QWebEnginePage_signal_slot_loadFinished");
 
 procedure QWebEnginePage_signal_slot_linkHovered(handle:QWebPageH; hook: stringStringCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_linkHovered, "QWebEnginePage_signal_slot_linkHovered");
 
 procedure QWebEnginePage_signal_slot_selectionChanged(handle:QWebPageH; hook : voidCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_selectionChanged, "QWebEnginePage_signal_slot_selectionChanged");
 
 procedure QWebEnginePage_signal_slot_geometryChangeRequested(handle:QWebPageH; hook: QRectCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_geometryChangeRequested, "QWebEnginePage_signal_slot_geometryChangeRequested");
 
 procedure QWebEnginePage_signal_slot_windowCloseRequested(handle:QWebPageH; hook : voidCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_windowCloseRequested, "QWebEnginePage_signal_slot_windowCloseRequested");
 
 procedure QWebEnginePage_signal_slot_fullScreenRequested(handle:QWebPageH; hook : boolCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_fullScreenRequested, "QWebEnginePage_signal_slot_fullScreenRequested");
 
 procedure QWebEnginePage_signal_slot_titleChanged(handle:QWebPageH; hook: QStringCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_titleChanged, "QWebEnginePage_signal_slot_titleChanged");
 
 procedure QWebEnginePage_signal_slot_urlChanged(handle:QWebPageH; hook: QUrlCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_urlChanged, "QWebEnginePage_signal_slot_urlChanged");
 
 procedure QWebEnginePage_signal_slot_iconUrlChanged(handle:QWebPageH; hook: QUrlCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_iconUrlChanged, "QWebEnginePage_signal_slot_iconUrlChanged");
 
 procedure QWebEnginePage_signal_slot_featurePermissionRequested(handle:QWebPageH; hook: urlIntCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_featurePermissionRequested, "QWebEnginePage_signal_slot_featurePermissionRequested");
 
 procedure QWebEnginePage_signal_slot_featurePermissionCanceled(handle:QWebPageH; hook: urlIntCallbackH);  
 pragma Import(C,QWebEnginePage_signal_slot_featurePermissionCanceled, "QWebEnginePage_signal_slot_featurePermissionCanceled");
 
 procedure QWebEnginePage_signal_slot_authenticationRequired(handle:QWebPageH; hook: urlAuthenticatorCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_authenticationRequired, "QWebEnginePage_signal_slot_authenticationRequired");
 
 procedure QWebEnginePage_signal_slot_proxyAuthenticationRequired(handle:QWebPageH; hook: urlAuthenticatorStringCallbackH);             
 pragma Import(C,QWebEnginePage_signal_slot_proxyAuthenticationRequired, "QWebEnginePage_signal_slot_proxyAuthenticationRequired");
 
--------------------------------------------------------------------------
 function  QWebEnginePage_findText(handle:not null QWebPageH;subString:QStringH; options : integer) return boolean;
 function  QWebEnginePage_runJavaScript(handle:not null QWebPageH;scriptSource:QStringH) return  QVariantH;

-----------------------------------------------------------------------
 function  QWebEnginePage_create2(profile:QWebProfileH;parent:QObjectH) return QWebPageH;
 pragma Import(C,QWebEnginePage_create2, "QWebEnginePage_create2");
 
 procedure QWebEnginePage_replaceMisspelledWord(handle:not null QWebPageH;replacement: QStringH);
 pragma Import(C,QWebEnginePage_replaceMisspelledWord, "QWebEnginePage_replaceMisspelledWord");
 
 function  QWebEnginePage_scrollPosition(handle:not null QWebPageH) return QPointFH;
 pragma Import(C,QWebEnginePage_scrollPosition, "QWebEnginePage_scrollPosition");
 
 function  QWebEnginePage_contentsSize(handle:not null QWebPageH) return QSizeFH;
 pragma Import(C,QWebEnginePage_contentsSize, "QWebEnginePage_contentsSize");
 
 procedure QWebEnginePage_setWebChannel2(handle:not null QWebPageH;c:QWebChannelH;worldId: quint);
 pragma Import(C,QWebEnginePage_setWebChannel2, "QWebEnginePage_setWebChannel2");
 
 procedure QWebEnginePage_save(handle:not null QWebPageH;filePath: QStringH;format: Qt.QWebEngineDownloadItem.SavePageFormat := MimeHtmlSaveFormat);
 pragma Import(C,QWebEnginePage_save, "QWebEnginePage_save");
 
 function  QWebEnginePage_isAudioMuted(handle:not null QWebPageH) return boolean;
 pragma Import(C,QWebEnginePage_isAudioMuted, "QWebEnginePage_isAudioMuted");
 
 procedure QWebEnginePage_setAudioMuted(handle:not null QWebPageH;muted:boolean);
 pragma Import(C,QWebEnginePage_setAudioMuted, "QWebEnginePage_setAudioMuted");
 
 function  QWebEnginePage_recentlyAudible(handle:not null QWebPageH) return boolean;
 pragma Import(C,QWebEnginePage_recentlyAudible, "QWebEnginePage_recentlyAudible");
 
 procedure QWebEnginePage_printToPdf(handle:not null QWebPageH;filePath: QStringH;layout: QPageLayoutH := QPageLayout_create(QPageSize_create(Qt.QPageSize.A4),Qt.QPageLayout.Portrait,QMarginsF_create));
 pragma Import(C,QWebEnginePage_printToPdf, "QWebEnginePage_printToPdf");
 
 procedure QWebEnginePage_printToPdf2(handle:not null QWebPageH;resultCallback:void_Star;layout:QPageLayoutH := QPageLayout_create(QPageSize_create(Qt.QPageSize.A4),Qt.QPageLayout.Portrait,QMarginsF_create));     
 pragma Import(C,QWebEnginePage_printToPdf2, "QWebEnginePage_printToPdf2");
 
 procedure QWebEnginePage_print(handle:not null QWebPageH;printer:QPrinterH;resultCallback: void_Star);
 pragma Import(C,QWebEnginePage_print, "QWebEnginePage_print");
 
 function  QWebEnginePage_contextMenuData(handle:not null QWebPageH) return QWebDataH;
 pragma Import(C,QWebEnginePage_contextMenuData, "QWebEnginePage_contextMenuData");

 function  QWebEnginePage_icon(handle:not null QWebPageH) return QIconH;
 pragma Import(C,QWebEnginePage_icon, "QWebEnginePage_icon");
 
 type intIntCallbackH is access procedure(x,y:integer);
 pragma convention (C,intIntCallbackH);
 
 type pointFCallbackH is access procedure(point:QPointFH);
 pragma convention(C,pointFCallbackH); 

 type sizeFCallbackH is access procedure(size:QSizeFH);
 pragma convention(C,sizeFCallbackH); 

 procedure QWebEnginePage_signal_slot_renderProcessTerminated(handle:not null QWebPageH;callback:intIntCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_renderProcessTerminated, "QWebEnginePage_signal_slot_renderProcessTerminated");
 
 procedure QWebEnginePage_signal_slot_scrollPositionChanged(handle:not null QWebPageH; callback:pointFCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_scrollPositionChanged, "QWebEnginePage_signal_slot_scrollPositionChanged");
 
 procedure QWebEnginePage_signal_slot_contentsSizeChanged(handle:not null QWebPageH;callback:sizeFCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_contentsSizeChanged, "QWebEnginePage_signal_slot_contentsSizeChanged");
 
 procedure QWebEnginePage_signal_slot_audioMutedChanged(handle:not null QWebPageH;callback:boolCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_audioMutedChanged, "QWebEnginePage_signal_slot_audioMutedChanged");
 
 procedure QWebEnginePage_signal_slot_recentlyAudibleChanged(handle:not null QWebPageH;callback:boolCallbackH);
 pragma Import(C,QWebEnginePage_signal_slot_recentlyAudibleChanged, "QWebEnginePage_signal_slot_recentlyAudibleChanged");
 
----------------------------------------------------------------------
 function  QWebEnginePage_create(profile:QWebProfileH;parent:QObjectH) return QWebPageH;
 procedure QWebEnginePage_setWebChannel(handle:not null QWebPageH;c:QWebChannelH;worldId: quint);
 procedure QWebEnginePage_printToPdf(handle:not null QWebPageH;resultCallback:void_Star;layout:QPageLayoutH := QPageLayout_create(QPageSize_create(Qt.QPageSize.A4),Qt.QPageLayout.Portrait,QMarginsF_create));     

 procedure QWebEnginePage_load2(handle:not null QWebPageH;request: QRequestH);
 pragma Import(C,QWebEnginePage_load2, "QWebEnginePage_load2");
 
 procedure QWebEnginePage_download(handle:not null QWebPageH;url: QUrlH;fileName : QStringH :=  QString_create);
 pragma Import(C,QWebEnginePage_download, "QWebEnginePage_download");
 
 procedure QWebEnginePage_runJavaScript4(handle:not null QWebPageH;scriptSource:QStringH;worldId: quint32);
 pragma Import(C,QWebEnginePage_runJavaScript4, "QWebEnginePage_runJavaScript4");
 
 procedure QWebEnginePage_setInspectedPage(handle:not null QWebPageH;page:QWebPageH);
 pragma Import(C,QWebEnginePage_setInspectedPage, "QWebEnginePage_setInspectedPage");
 
 function  QWebEnginePage_inspectedPage(handle:not null QWebPageH) return QWebPageH;
 pragma Import(C,QWebEnginePage_inspectedPage, "QWebEnginePage_inspectedPage");
 
 procedure QWebEnginePage_setDevToolsPage(handle:not null QWebPageH;page:QWebPageH);
 pragma Import(C,QWebEnginePage_setDevToolsPage, "QWebEnginePage_setDevToolsPage");
 
 function  QWebEnginePage_devToolsPage(handle:not null QWebPageH) return QWebPageH;
 pragma Import(C,QWebEnginePage_devToolsPage, "QWebEnginePage_devToolsPage");
 
 procedure QWebEnginePage_setUrlRequestInterceptor(handle:not null QWebPageH;interceptor:QWebUrlRequestInterceptorH);
 pragma Import(C,QWebEnginePage_setUrlRequestInterceptor, "QWebEnginePage_setUrlRequestInterceptor");
 
 function  QWebEnginePage_isVisible(handle:not null QWebPageH) return boolean;
 pragma Import(C,QWebEnginePage_isVisible, "QWebEnginePage_isVisible");
 
 procedure QWebEnginePage_setVisible(handle:not null QWebPageH;visible:boolean);
 pragma Import(C,QWebEnginePage_setVisible, "QWebEnginePage_setVisible");
 
 procedure QWebEnginePage_load(handle:not null QWebPageH;request: QRequestH);
 procedure QWebEnginePage_runJavaScript(handle:not null QWebPageH;scriptSource:QStringH;worldId: quint32);

type iconCallbackH is access procedure(icon:QIconH);
 pragma convention(C,iconCallbackH);

 procedure QWebEnginePage_signal_slot_iconChanged(handle:not null QWebPageH;hook:iconCallBackH);
 pragma Import(C,QWebEnginePage_signal_slot_iconChanged, "QWebEnginePage_signal_slot_iconChanged");
 


end;
