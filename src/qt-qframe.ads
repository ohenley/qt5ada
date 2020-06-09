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

package Qt.QFrame               is

 FRAME_NoFrame        : constant :=  0;
 FRAME_Box            : constant :=  16#0001#;
 FRAME_Panel          : constant :=  16#0002#;
 FRAME_WinPanel       : constant :=  16#0003#;
 FRAME_HLine          : constant :=  16#0004#;
 FRAME_VLine          : constant :=  16#0005#;
 FRAME_StyledPanel    : constant :=  16#0006#;
 FRAME_PopupPanel     : constant :=  16#0007#;
 FRAME_MenuBarPanel   : constant :=  16#0008#;
 FRAME_ToolBarPanel   : constant :=  16#0009#;
 FRAME_MShape         : constant :=  16#000f#;
 FRAME_Plain          : constant :=  16#0010#;
 FRAME_Raised         : constant :=  16#0020#;
 FRAME_Sunken         : constant :=  16#0030#;
 FRAME_MShadow        : constant :=  16#00f0#;

 subtype QFrameShape  is quint;

 QFrameNoFrame     : constant QFrameShape :=  0;
 QFrameBox         : constant QFrameShape :=  1;
 QFramePanel       : constant QFrameShape :=  2;
 QFrameWinPanel    : constant QFrameShape :=  3;
 QFrameHLine       : constant QFrameShape :=  4;
 QFrameVLine       : constant QFrameShape :=  5;
 QFrameStyledPanel : constant QFrameShape :=  6;

 subtype  QFrameShadow is quint;
 QFramePlain       : constant QFrameShadow  :=  16#0010#;
 QFrameRaised      : constant QFrameShadow  :=  16#0020#;
 QFrameSunken      : constant QFrameShadow  :=  16#0030#;

  subtype  QFrameStyleMask is quint;

  QFrameShape_Mask  : QFrameStyleMask  :=  16#000f#;
  QFrameShadow_Mask : QFrameStyleMask  :=  16#00f0#;

function QFrame_create(parent: QWidgetH := null; f: QtWindowFlags := 0) return QFrameH;   
pragma Import(C,QFrame_create,"QFrame_create");

procedure QFrame_destroy(handle: not null  QFrameH);   
pragma Import(C,QFrame_destroy,"QFrame_destroy");

function QFrame_frameStyle(handle: not null  QFrameH) return  Integer;   
pragma Import(C,QFrame_frameStyle,"QFrame_frameStyle");

procedure QFrame_setFrameStyle(handle: not null  QFrameH; style : quint);
pragma Import(C,QFrame_setFrameStyle,"QFrame_setFrameStyle");

function QFrame_frameWidth(handle: not null  QFrameH) return  Integer;   
pragma Import(C,QFrame_frameWidth,"QFrame_frameWidth");

function  QFrame_sizeHint(handle: not null  QFrameH) return QSizeH;
pragma Import(C,QFrame_sizeHint,"QFrame_sizeHint");

function QFrame_frameShape(handle: not null  QFrameH) return  QFrameShape;   
pragma Import(C,QFrame_frameShape,"QFrame_frameShape");

procedure QFrame_setFrameShape(handle: not null  QFrameH; shape: QFrameShape);
pragma Import(C,QFrame_setFrameShape,"QFrame_setFrameShape");

function QFrame_frameShadow(handle: not null  QFrameH) return  QFrameShadow;   
pragma Import(C,QFrame_frameShadow,"QFrame_frameShadow");

procedure QFrame_setFrameShadow(handle: not null  QFrameH; shadow : QFrameShadow);
pragma Import(C,QFrame_setFrameShadow,"QFrame_setFrameShadow");

function QFrame_lineWidth(handle: not null  QFrameH) return  Integer;   
pragma Import(C,QFrame_lineWidth,"QFrame_lineWidth");

procedure QFrame_setLineWidth(handle: not null  QFrameH; p1: Integer);   
pragma Import(C,QFrame_setLineWidth,"QFrame_setLineWidth");

function QFrame_midLineWidth(handle: not null  QFrameH) return  Integer;   
pragma Import(C,QFrame_midLineWidth,"QFrame_midLineWidth");

procedure QFrame_setMidLineWidth(handle: not null  QFrameH; p1: Integer);   
pragma Import(C,QFrame_setMidLineWidth,"QFrame_setMidLineWidth");

function  QFrame_frameRect(handle: not null  QFrameH) return QRectH;
pragma Import(C,QFrame_frameRect,"QFrame_frameRect");

procedure QFrame_setFrameRect(handle: not null  QFrameH; p1: QRectH);   
pragma Import(C,QFrame_setFrameRect,"QFrame_setFrameRect");

procedure  QFrame_drawFrame(handle: not null  QFrameH; painter:  QPainterH) ;
pragma Import(C,QFrame_drawFrame,"QFrame_drawFrame");

end Qt.QFrame;
