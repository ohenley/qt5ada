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

package Qt.QPalette is

subtype  QPaletteColorGroup is cardinal;

QPaletteActive       : constant QPaletteColorGroup := 0;
QPaletteDisabled     : constant QPaletteColorGroup := 1;
QPaletteInactive     : constant QPaletteColorGroup := 2;
QPaletteNColorGroups : constant QPaletteColorGroup := 3;
QPaletteCurrent      : constant QPaletteColorGroup := 4;
QPaletteAll          : constant QPaletteColorGroup := 5;
QPaletteNormal       : constant QPaletteColorGroup := 0;

subtype  QPaletteColorRole is cardinal;

QPaletteWindowText      : constant QPaletteColorRole := 0;
QPaletteButton          : constant QPaletteColorRole := 1;
QPaletteLight           : constant QPaletteColorRole := 2;
QPaletteMidlight        : constant QPaletteColorRole := 3;
QPaletteDark            : constant QPaletteColorRole := 4;
QPaletteMid             : constant QPaletteColorRole := 5;
QPaletteText            : constant QPaletteColorRole := 6;
QPaletteBrightText      : constant QPaletteColorRole := 7;
QPaletteButtonText      : constant QPaletteColorRole := 8;
QPaletteBase            : constant QPaletteColorRole := 9;
QPaletteWindow          : constant QPaletteColorRole := 16#a#;
QPaletteShadow          : constant QPaletteColorRole := 16#b#;
QPaletteHighlight       : constant QPaletteColorRole := 16#c#;
QPaletteHighlightedText : constant QPaletteColorRole := 16#d#;
QPaletteLink            : constant QPaletteColorRole := 16#e#;
QPaletteLinkVisited     : constant QPaletteColorRole := 16#f#;
QPaletteAlternateBase   : constant QPaletteColorRole := 16#10#;
QPaletteNoRole          : constant QPaletteColorRole := 16#11#;
QPaletteToolTipBase     : constant QPaletteColorRole := 16#11#; 
QPaletteToolTipText     : constant QPaletteColorRole := 16#12#; 
QPaletteNColorRoles     : constant QPaletteColorRole := 16#13#; 
QPaletteForeground      : constant QPaletteColorRole := 0;
QPaletteBackground      : constant QPaletteColorRole := 16#a#;

function QPalette_create return  QPaletteH;    
pragma Import(C,QPalette_create,"QPalette_create");

procedure QPalette_destroy(handle: not null  QPaletteH);   
pragma Import(C,QPalette_destroy,"QPalette_destroy");

function QPalette_create2(button: QColorH) return  QPaletteH;
pragma Import(C,QPalette_create2,"QPalette_create2");

function QPalette_create3(button: QtGlobalColor) return  QPaletteH;
pragma Import(C,QPalette_create3,"QPalette_create3");

function QPalette_create4(button: QColorH; window: QColorH) return  QPaletteH;
pragma Import(C,QPalette_create4,"QPalette_create4");

function QPalette_create5(windowText: QBrushH; button: QBrushH; light: QBrushH; dark: QBrushH; mid: QBrushH; text: QBrushH; bright_text: QBrushH; base: QBrushH; window: QBrushH) return  QPaletteH;
pragma Import(C,QPalette_create5,"QPalette_create5");

function QPalette_create6(windowText: QColorH; window: QColorH; light: QColorH; dark: QColorH; mid: QColorH; text: QColorH; base: QColorH) return  QPaletteH;
pragma Import(C,QPalette_create6,"QPalette_create6");

function QPalette_create7(palette: QPaletteH) return  QPaletteH;
pragma Import(C,QPalette_create7,"QPalette_create7");

function QPalette_currentColorGroup(handle: not null  QPaletteH) return  QPaletteColorGroup;   
pragma Import(C,QPalette_currentColorGroup,"QPalette_currentColorGroup");

procedure QPalette_setCurrentColorGroup(handle: not null  QPaletteH; cg: QPaletteColorGroup);   
pragma Import(C,QPalette_setCurrentColorGroup,"QPalette_setCurrentColorGroup");

function QPalette_color(handle: not null  QPaletteH; cg: QPaletteColorGroup; cr: QPaletteColorRole) return  QColorH;    
pragma Import(C,QPalette_color,"QPalette_color");

function QPalette_brush(handle: not null  QPaletteH; cg: QPaletteColorGroup; cr: QPaletteColorRole) return  QBrushH;    
pragma Import(C,QPalette_brush,"QPalette_brush");

procedure QPalette_setColor(handle: not null  QPaletteH; cg: QPaletteColorGroup; cr: QPaletteColorRole; color: QColorH);    
pragma Import(C,QPalette_setColor,"QPalette_setColor");

procedure QPalette_setColor2(handle: not null  QPaletteH; cr: QPaletteColorRole; color: QColorH);
pragma Import(C,QPalette_setColor2,"QPalette_setColor2");

procedure QPalette_setBrush(handle: not null  QPaletteH; cr: QPaletteColorRole; brush: QBrushH);    
pragma Import(C,QPalette_setBrush,"QPalette_setBrush");

function QPalette_isBrushSet(handle: not null  QPaletteH; cg: QPaletteColorGroup; cr: QPaletteColorRole) return  Boolean;   
pragma Import(C,QPalette_isBrushSet,"QPalette_isBrushSet");

procedure QPalette_setBrush2(handle: not null  QPaletteH; cg: QPaletteColorGroup; cr: QPaletteColorRole; brush: QBrushH);
pragma Import(C,QPalette_setBrush2,"QPalette_setBrush2");

procedure QPalette_setColorGroup(handle: not null  QPaletteH; cr: QPaletteColorGroup; windowText: QBrushH; button: QBrushH; light: QBrushH; dark: QBrushH; mid: QBrushH; text: QBrushH; bright_text: QBrushH; base: QBrushH; window: QBrushH);   
pragma Import(C,QPalette_setColorGroup,"QPalette_setColorGroup");

function QPalette_isEqual(handle: not null  QPaletteH; cr1: QPaletteColorGroup; cr2: QPaletteColorGroup) return  Boolean;   
pragma Import(C,QPalette_isEqual,"QPalette_isEqual");

function QPalette_color2(handle: not null  QPaletteH; cr: QPaletteColorRole) return  QColorH;
pragma Import(C,QPalette_color2,"QPalette_color2");

function QPalette_brush2(handle: not null  QPaletteH; cr: QPaletteColorRole) return  QBrushH;
pragma Import(C,QPalette_brush2,"QPalette_brush2");

function QPalette_foreground(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_foreground,"QPalette_foreground");

function QPalette_windowText(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_windowText,"QPalette_windowText");

function QPalette_button(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_button,"QPalette_button");

function QPalette_light(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_light,"QPalette_light");

function QPalette_dark(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_dark,"QPalette_dark");

function QPalette_mid(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_mid,"QPalette_mid");

function QPalette_text(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_text,"QPalette_text");

function QPalette_base(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_base,"QPalette_base");

function QPalette_alternateBase(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_alternateBase,"QPalette_alternateBase");

function QPalette_background(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_background,"QPalette_background");

function QPalette_window(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_window,"QPalette_window");

function QPalette_midlight(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_midlight,"QPalette_midlight");

function QPalette_brightText(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_brightText,"QPalette_brightText");

function QPalette_buttonText(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_buttonText,"QPalette_buttonText");

function QPalette_shadow(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_shadow,"QPalette_shadow");

function QPalette_highlight(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_highlight,"QPalette_highlight");

function QPalette_highlightedText(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_highlightedText,"QPalette_highlightedText");

function QPalette_link(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_link,"QPalette_link");

function QPalette_linkVisited(handle: not null  QPaletteH) return  QBrushH;   
pragma Import(C,QPalette_linkVisited,"QPalette_linkVisited");

function QPalette_cacheKey(handle: not null  QPaletteH) return  int64;   
pragma Import(C,QPalette_cacheKey,"QPalette_cacheKey");

function  QPalette_resolve(handle: not null  QPaletteH; p1: QPaletteH) return QPaletteH;
pragma Import(C,QPalette_resolve,"QPalette_resolve");

function QPalette_resolve2(handle: not null  QPaletteH) return  LongWord;
pragma Import(C,QPalette_resolve2,"QPalette_resolve2");

procedure QPalette_resolve3(handle: not null  QPaletteH; mask: LongWord);
pragma Import(C,QPalette_resolve3,"QPalette_resolve3");

function QPalette_isCopyOf(handle: not null  QPaletteH; p: QPaletteH) return   Boolean;
pragma Import(C,QPalette_isCopyOf,"QPalette_isCopyOf");
-----------------------------------------------------------------------------------------------------------
function QPalette_create(button: QColorH) return  QPaletteH;
function QPalette_create(button: QtGlobalColor) return  QPaletteH;
function QPalette_create(button: QColorH; window: QColorH) return  QPaletteH;
function QPalette_create(windowText: QBrushH; button: QBrushH; light: QBrushH; dark: QBrushH; mid: QBrushH; text: QBrushH; bright_text: QBrushH; base: QBrushH; window: QBrushH) return  QPaletteH;
function QPalette_create(windowText: QColorH; window: QColorH; light: QColorH; dark: QColorH; mid: QColorH; text: QColorH; base: QColorH) return  QPaletteH;
function QPalette_create(palette: QPaletteH) return  QPaletteH;

procedure QPalette_setColor(handle: not null  QPaletteH; cr: QPaletteColorRole; color: QColorH);
procedure QPalette_setBrush(handle: not null  QPaletteH; cg: QPaletteColorGroup; cr: QPaletteColorRole; brush: QBrushH);
function QPalette_color(handle: not null  QPaletteH; cr: QPaletteColorRole) return  QColorH;
function QPalette_brush(handle: not null  QPaletteH; cr: QPaletteColorRole) return  QBrushH;
function QPalette_resolve(handle: not null  QPaletteH) return  LongWord;
procedure QPalette_resolve(handle: not null  QPaletteH; mask: LongWord);


end Qt.QPalette;
