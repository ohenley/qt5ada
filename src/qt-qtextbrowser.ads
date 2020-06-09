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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QTextBrowser         is

function QTextBrowser_create(parent: QWidgetH := null) return QTextBrowserH;   
pragma Import(C,QTextBrowser_create,"QTextBrowser_create");

procedure QTextBrowser_destroy(handle: not null  QTextBrowserH);   
pragma Import(C,QTextBrowser_destroy,"QTextBrowser_destroy");

function  QTextBrowser_source(handle: not null  QTextBrowserH) return QUrlH;
pragma Import(C,QTextBrowser_source,"QTextBrowser_source");

function  QTextBrowser_searchPaths(handle: not null  QTextBrowserH) return QStringListH;
pragma Import(C,QTextBrowser_searchPaths,"QTextBrowser_searchPaths");

procedure QTextBrowser_setSearchPaths(handle: not null  QTextBrowserH; paths: QStringListH);   
pragma Import(C,QTextBrowser_setSearchPaths,"QTextBrowser_setSearchPaths");

function  QTextBrowser_loadResource(handle: not null  QTextBrowserH; qtype: Integer; name: QUrlH) return QVariantH;
pragma Import(C,QTextBrowser_loadResource,"QTextBrowser_loadResource");

function QTextBrowser_isBackwardAvailable(handle: not null  QTextBrowserH) return  Boolean;   
pragma Import(C,QTextBrowser_isBackwardAvailable,"QTextBrowser_isBackwardAvailable");

function QTextBrowser_isForwardAvailable(handle: not null  QTextBrowserH) return  Boolean;   
pragma Import(C,QTextBrowser_isForwardAvailable,"QTextBrowser_isForwardAvailable");

procedure QTextBrowser_clearHistory(handle: not null  QTextBrowserH);   
pragma Import(C,QTextBrowser_clearHistory,"QTextBrowser_clearHistory");

function QTextBrowser_openExternalLinks(handle: not null  QTextBrowserH) return  Boolean;   
pragma Import(C,QTextBrowser_openExternalLinks,"QTextBrowser_openExternalLinks");

procedure QTextBrowser_setOpenExternalLinks(handle: not null  QTextBrowserH; open: Boolean);   
pragma Import(C,QTextBrowser_setOpenExternalLinks,"QTextBrowser_setOpenExternalLinks");

function QTextBrowser_openLinks(handle: not null  QTextBrowserH) return  Boolean;   
pragma Import(C,QTextBrowser_openLinks,"QTextBrowser_openLinks");

procedure QTextBrowser_setOpenLinks(handle: not null  QTextBrowserH; open: Boolean);   
pragma Import(C,QTextBrowser_setOpenLinks,"QTextBrowser_setOpenLinks");

procedure QTextBrowser_setSource(handle: not null  QTextBrowserH; name: QUrlH);   
pragma Import(C,QTextBrowser_setSource,"QTextBrowser_setSource");

procedure QTextBrowser_backward(handle: not null  QTextBrowserH);   
pragma Import(C,QTextBrowser_backward,"QTextBrowser_backward");

procedure QTextBrowser_forward(handle: not null  QTextBrowserH);   
pragma Import(C,QTextBrowser_forward,"QTextBrowser_forward");

procedure QTextBrowser_home(handle: not null  QTextBrowserH);   
pragma Import(C,QTextBrowser_home,"QTextBrowser_home");

procedure QTextBrowser_reload(handle: not null  QTextBrowserH);   
pragma Import(C,QTextBrowser_reload,"QTextBrowser_reload");

 type QTextBrowser_backwardAvailableEvent is access procedure (p1: Boolean);
 pragma Convention(C,QTextBrowser_backwardAvailableEvent);

 type QTextBrowser_forwardAvailableEvent is access procedure (p1: Boolean);
 pragma Convention(C,QTextBrowser_forwardAvailableEvent);

 type QTextBrowser_sourceChangedEvent is access procedure (p1: QUrlH);
 pragma Convention(C, QTextBrowser_sourceChangedEvent);

 type QTextBrowser_highlightedEvent is access procedure (p1: QUrlH);
 pragma Convention(C, QTextBrowser_highlightedEvent);

 type QTextBrowser_highlighted2Event is access procedure (p1: QStringH);
 pragma Convention(C,QTextBrowser_highlighted2Event);

 type QTextBrowser_anchorClickedEvent is access procedure (p1: QUrlH);
 pragma Convention(C, QTextBrowser_anchorClickedEvent);
 
 procedure QTextBrowser_signal_slot_backwardAvailable(handle: not null QTextBrowserH; hook:QTextBrowser_backwardAvailableEvent);
 pragma Import(C,QTextBrowser_signal_slot_backwardAvailable, "QTextBrowser_signal_slot_backwardAvailable");
 
 procedure QTextBrowser_signal_slot_forwardAvailable(handle: not null QTextBrowserH; hook:QTextBrowser_forwardAvailableEvent);
 pragma Import(C,QTextBrowser_signal_slot_forwardAvailable, "QTextBrowser_signal_slot_forwardAvailable");
 
 procedure QTextBrowser_signal_slot_sourceChanged(handle: not null QTextBrowserH; hook:QTextBrowser_sourceChangedEvent);
 pragma Import(C,QTextBrowser_signal_slot_sourceChanged, "QTextBrowser_signal_slot_sourceChanged");
 
 procedure QTextBrowser_signal_slot_highlighted(handle: not null QTextBrowserH; hook:QTextBrowser_highlightedEvent);
 pragma Import(C,QTextBrowser_signal_slot_highlighted, "QTextBrowser_signal_slot_highlighted");
 
 procedure QTextBrowser_signal_slot_highlighted2(handle: not null QTextBrowserH; hook:QTextBrowser_highlighted2Event);
 pragma Import(C,QTextBrowser_signal_slot_highlighted2, "QTextBrowser_signal_slot_highlighted2");
 
 procedure QTextBrowser_signal_slot_anchorClicked(handle: not null QTextBrowserH; hook:QTextBrowser_anchorClickedEvent);
 pragma Import(C,QTextBrowser_signal_slot_anchorClicked, "QTextBrowser_signal_slot_anchorClicked");
 

end Qt.QTextBrowser;
