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

package Qt.QToolTip             is

procedure QToolTip_showText(pos: QPointH; text: QStringH; w: QWidgetH := null);    
pragma Import(C,QToolTip_showText,"QToolTip_showText");

procedure QToolTip_showText2(pos: QPointH; text: QStringH; w: QWidgetH; rect: QRectH);
pragma Import(C,QToolTip_showText2,"QToolTip_showText2");

procedure QToolTip_hideText;   
pragma Import(C,QToolTip_hideText,"QToolTip_hideText");

function  QToolTip_palette return QPaletteH;
pragma Import(C,QToolTip_palette,"QToolTip_palette");

procedure QToolTip_setPalette(p1: QPaletteH);   
pragma Import(C,QToolTip_setPalette,"QToolTip_setPalette");

function  QToolTip_font return QFontH;
pragma Import(C,QToolTip_font,"QToolTip_font");

procedure QToolTip_setFont(p1: QFontH);   
pragma Import(C,QToolTip_setFont,"QToolTip_setFont");

---------------------------------------------------------------
procedure QToolTip_showText(pos: QPointH; text: QStringH; w: QWidgetH; rect: QRectH);

end Qt.QToolTip;
