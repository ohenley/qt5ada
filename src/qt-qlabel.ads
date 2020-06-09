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

package Qt.QLabel               is

function QLabel_create(parent: QWidgetH := null; f: QtWindowFlags := 0) return QLabelH;    
pragma Import(C,QLabel_create,"QLabel_create");

procedure QLabel_destroy(handle: not null  QLabelH);   
pragma Import(C,QLabel_destroy,"QLabel_destroy");

function QLabel_create2(text: QStringH; parent: QWidgetH := null; f: QtWindowFlags := 0) return QLabelH;
pragma Import(C,QLabel_create2,"QLabel_create2");

function  QLabel_text(handle: not null  QLabelH) return QStringH;
pragma Import(C,QLabel_text,"QLabel_text");

function QLabel_pixmap(handle: not null  QLabelH) return  QPixmapH;   
pragma Import(C,QLabel_pixmap,"QLabel_pixmap");

function QLabel_picture(handle: not null  QLabelH) return  QPictureH;   
pragma Import(C,QLabel_picture,"QLabel_picture");

function QLabel_movie(handle: not null  QLabelH) return  QMovieH;   
pragma Import(C,QLabel_movie,"QLabel_movie");

function QLabel_textFormat(handle: not null  QLabelH) return  QtTextFormat;   
pragma Import(C,QLabel_textFormat,"QLabel_textFormat");

procedure QLabel_setTextFormat(handle: not null  QLabelH; p1: QtTextFormat);   
pragma Import(C,QLabel_setTextFormat,"QLabel_setTextFormat");

function QLabel_alignment(handle: not null  QLabelH) return  QtAlignment;   
pragma Import(C,QLabel_alignment,"QLabel_alignment");

procedure QLabel_setAlignment(handle: not null  QLabelH; p1: QtAlignment);   
pragma Import(C,QLabel_setAlignment,"QLabel_setAlignment");

procedure QLabel_setWordWrap(handle: not null  QLabelH; on: Boolean);   
pragma Import(C,QLabel_setWordWrap,"QLabel_setWordWrap");

function QLabel_wordWrap(handle: not null  QLabelH) return  Boolean;   
pragma Import(C,QLabel_wordWrap,"QLabel_wordWrap");

function QLabel_indent(handle: not null  QLabelH) return  Integer;   
pragma Import(C,QLabel_indent,"QLabel_indent");

procedure QLabel_setIndent(handle: not null  QLabelH; p1: Integer);   
pragma Import(C,QLabel_setIndent,"QLabel_setIndent");

function QLabel_margin(handle: not null  QLabelH) return  Integer;   
pragma Import(C,QLabel_margin,"QLabel_margin");

procedure QLabel_setMargin(handle: not null  QLabelH; p1: Integer);   
pragma Import(C,QLabel_setMargin,"QLabel_setMargin");

function QLabel_hasScaledContents(handle: not null  QLabelH) return  Boolean;   
pragma Import(C,QLabel_hasScaledContents,"QLabel_hasScaledContents");

procedure QLabel_setScaledContents(handle: not null  QLabelH; p1: Boolean);   
pragma Import(C,QLabel_setScaledContents,"QLabel_setScaledContents");

function  QLabel_sizeHint(handle: not null  QLabelH) return  QSizeH;
pragma Import(C,QLabel_sizeHint,"QLabel_sizeHint");

function  QLabel_minimumSizeHint(handle: not null  QLabelH) return  QSizeH;
pragma Import(C,QLabel_minimumSizeHint,"QLabel_minimumSizeHint");

procedure QLabel_setBuddy(handle: not null  QLabelH; p1: QWidgetH);   
pragma Import(C,QLabel_setBuddy,"QLabel_setBuddy");

function QLabel_buddy(handle: not null  QLabelH) return  QWidgetH;   
pragma Import(C,QLabel_buddy,"QLabel_buddy");

function QLabel_heightForWidth(handle: not null  QLabelH; p1: Integer) return  Integer;   
pragma Import(C,QLabel_heightForWidth,"QLabel_heightForWidth");

function QLabel_openExternalLinks(handle: not null  QLabelH) return  Boolean;   
pragma Import(C,QLabel_openExternalLinks,"QLabel_openExternalLinks");

procedure QLabel_setOpenExternalLinks(handle: not null  QLabelH; open: Boolean);   
pragma Import(C,QLabel_setOpenExternalLinks,"QLabel_setOpenExternalLinks");

procedure QLabel_setTextInteractionFlags(handle: not null  QLabelH; flags: QtTextInteractionFlags);   
pragma Import(C,QLabel_setTextInteractionFlags,"QLabel_setTextInteractionFlags");

function QLabel_textInteractionFlags(handle: not null  QLabelH) return  QtTextInteractionFlags;   
pragma Import(C,QLabel_textInteractionFlags,"QLabel_textInteractionFlags");

procedure QLabel_setText(handle: not null  QLabelH; p1: QStringH);   
pragma Import(C,QLabel_setText,"QLabel_setText");

procedure QLabel_setPixmap(handle: not null  QLabelH; p1: QPixmapH);   
pragma Import(C,QLabel_setPixmap,"QLabel_setPixmap");

procedure QLabel_setPicture(handle: not null  QLabelH; p1: QPictureH);   
pragma Import(C,QLabel_setPicture,"QLabel_setPicture");

procedure QLabel_setMovie(handle: not null  QLabelH; movie: QMovieH);   
pragma Import(C,QLabel_setMovie,"QLabel_setMovie");

procedure QLabel_setNum(handle: not null  QLabelH; p1: Integer);    
pragma Import(C,QLabel_setNum,"QLabel_setNum");

procedure QLabel_setNum2(handle: not null  QLabelH; p1: Double);
pragma Import(C,QLabel_setNum2,"QLabel_setNum2");

procedure QLabel_clear(handle: not null  QLabelH);   
pragma Import(C,QLabel_clear,"QLabel_clear");

type QLabel_linkActivatedEvent is access procedure (link: QStringH);
pragma Convention(C,QLabel_linkActivatedEvent);

type QLabel_linkHoveredEvent is access procedure (link: QStringH);
pragma Convention(C,QLabel_linkHoveredEvent);
 
 procedure QLabel_signal_slot_linkActivated(handle: not null QLabelH; hook:QLabel_linkActivatedEvent);
 pragma Import(C,QLabel_signal_slot_linkActivated, "QLabel_signal_slot_linkActivated");
 
 procedure QLabel_signal_slot_linkHovered(handle: not null QLabelH; hook:QLabel_linkHoveredEvent);
 pragma Import(C,QLabel_signal_slot_linkHovered, "QLabel_signal_slot_linkHovered");
----------------------------------------------------------------------
function QLabel_create(text: QStringH; parent: QWidgetH := null; f: QtWindowFlags := 0) return QLabelH;
procedure QLabel_setNum(handle: not null  QLabelH; p1: Double);

end Qt.QLabel;
