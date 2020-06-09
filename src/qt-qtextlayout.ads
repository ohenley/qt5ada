--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QTextLayout  is

 type  Edge is ( Leading, Trailin);
 type  CursorPosition is ( CursorBetweenCharacters, CursorOnCharacte);
 type  CursorMode is (SkipCharacters, SkipWord);

 type R_FormatRange  is record
   start,length : integer;
   format : QTextCharFormatH;
 end record;
 type FormatRange  is access all R_FormatRange;

 function  QTextInlineObject_create return QTextInlineObjectH;
 pragma Import(c,QTextInlineObject_create, "QTextInlineObject_create");

 procedure QTextInlineObject_destroy(handle: not null  QTextInlineObjectH);
 pragma Import(c,QTextInlineObject_destroy, "QTextInlineObject_destroy");

 function  QTextInlineObject_isValid(handle: not null  QTextInlineObjectH) return  boolean;
 pragma Import(c,QTextInlineObject_isValid, "QTextInlineObject_isValid");

 function  QTextInlineObject_rect(handle: not null  QTextInlineObjectH) return  QRectFH;
 pragma Import(c,QTextInlineObject_rect, "QTextInlineObject_rect");

 function  QTextInlineObject_width(handle: not null  QTextInlineObjectH) return  float;
 pragma Import(c,QTextInlineObject_width, "QTextInlineObject_width");

 function  QTextInlineObject_ascent(handle: not null  QTextInlineObjectH) return  float;
 pragma Import(c,QTextInlineObject_ascent, "QTextInlineObject_ascent");

 function  QTextInlineObject_descent(handle: not null  QTextInlineObjectH) return  float;
 pragma Import(c,QTextInlineObject_descent, "QTextInlineObject_descent");

 function QTextInlineObject_height(handle: not null  QTextInlineObjectH) return  float;
 pragma Import(c,QTextInlineObject_height, "QTextInlineObject_height");

 function  QTextInlineObject_textDirection(handle: not null  QTextInlineObjectH) return  QLayoutDirectionH;
 pragma Import(c,QTextInlineObject_textDirection, "QTextInlineObject_textDirection");

 procedure QTextInlineObject_setWidth(handle: not null  QTextInlineObjectH;w: float);
 pragma Import(c,QTextInlineObject_setWidth, "QTextInlineObject_setWidth");

 procedure QTextInlineObject_setAscent(handle: not null  QTextInlineObjectH;a: float);
 pragma Import(c,QTextInlineObject_setAscent, "QTextInlineObject_setAscent");

 procedure QTextInlineObject_setDescent(handle: not null  QTextInlineObjectH;d: float);
 pragma Import(c,QTextInlineObject_setDescent, "QTextInlineObject_setDescent");

 function  QTextInlineObject_textPosition(handle: not null  QTextInlineObjectH) return  integer;
 pragma Import(c,QTextInlineObject_textPosition, "QTextInlineObject_textPosition");

 function  QTextInlineObject_formatIndex(handle: not null  QTextInlineObjectH) return  integer;
 pragma Import(c,QTextInlineObject_formatIndex, "QTextInlineObject_formatIndex");

 function  QTextInlineObject_format(handle: not null  QTextInlineObjectH) return  QTextFormatH;
 pragma Import(c,QTextInlineObject_format, "QTextInlineObject_format");

 function  QTextLayout_create return  QTextLayoutH;
 pragma Import(c,QTextLayout_create, "QTextLayout_create");

 procedure QTextLayout_destroy(handle: not null  QTextLayoutH);
 pragma Import(c,QTextLayout_destroy, "QTextLayout_destroy");

 function  QTextLayout_create2(text:QStringH) return  QTextLayoutH;
 pragma Import(c,QTextLayout_create2, "QTextLayout_create2");

 function  QTextLayout_create3(text:QStringH; font: QFontH; paintdevice: QPaintDeviceH) return  QTextLayoutH;
 pragma Import(c,QTextLayout_create3, "QTextLayout_create3");

 function  QTextLayout_create4(b: QTextBlockH) return  QTextLayoutH;
 pragma Import(c,QTextLayout_create4, "QTextLayout_create4");

 procedure QTextLayout_setFont(handle: not null  QTextLayoutH; f: QFontH);
 pragma Import(c,QTextLayout_setFont, "QTextLayout_setFont");

 function  QTextLayout_font(handle: not null  QTextLayoutH) return  QFontH;
 pragma Import(c,QTextLayout_font, "QTextLayout_font");

 procedure QTextLayout_setText(handle: not null  QTextLayoutH; str: QStringH);
 pragma Import(c,QTextLayout_setText, "QTextLayout_setText");

 function  QTextLayout_text(handle: not null  QTextLayoutH) return  QStringH;
 pragma Import(c,QTextLayout_text, "QTextLayout_text");

 procedure QTextLayout_setTextOption(handle: not null  QTextLayoutH; option:QTextOptionH);
 pragma Import(c,QTextLayout_setTextOption, "QTextLayout_setTextOption");

 function  QTextLayout_textOption(handle: not null  QTextLayoutH) return  QTextOptionH;
 pragma Import(c,QTextLayout_textOption, "QTextLayout_textOption");

 procedure QTextLayout_setPreeditArea(handle: not null  QTextLayoutH; position: integer; text:QStringH);
 pragma Import(c,QTextLayout_setPreeditArea, "QTextLayout_setPreeditArea");

 function  QTextLayout_preeditAreaPosition(handle: not null  QTextLayoutH) return  integer;
 pragma Import(c,QTextLayout_preeditAreaPosition, "QTextLayout_preeditAreaPosition");

 function  QTextLayout_preeditAreaText(handle: not null  QTextLayoutH) return  QStringH;
 pragma Import(c,QTextLayout_preeditAreaText, "QTextLayout_preeditAreaText");

 procedure QTextLayout_clearAdditionalFormats(handle: not null  QTextLayoutH);
 pragma Import(c,QTextLayout_clearAdditionalFormats, "QTextLayout_clearAdditionalFormats");

 procedure QTextLayout_setCacheEnabled(handle: not null  QTextLayoutH; enable: boolean);
 pragma Import(c,QTextLayout_setCacheEnabled, "QTextLayout_setCacheEnabled");

 function  QTextLayout_cacheEnabled(handle: not null  QTextLayoutH) return  boolean;
 pragma Import(c,QTextLayout_cacheEnabled, "QTextLayout_cacheEnabled");

 procedure QTextLayout_beginLayout(handle: not null  QTextLayoutH);
 pragma Import(c,QTextLayout_beginLayout, "QTextLayout_beginLayout");

 procedure QTextLayout_endLayout(handle: not null  QTextLayoutH);
 pragma Import(c,QTextLayout_endLayout, "QTextLayout_endLayout");

 procedure QTextLayout_clearLayout(handle: not null  QTextLayoutH);
 pragma Import(c,QTextLayout_clearLayout, "QTextLayout_clearLayout");

 function  QTextLayout_createLine(handle: not null  QTextLayoutH) return  QTextLineH;
 pragma Import(c,QTextLayout_createLine, "QTextLayout_createLine");

 function  QTextLayout_lineCount(handle: not null  QTextLayoutH) return  integer;
 pragma Import(c,QTextLayout_lineCount, "QTextLayout_lineCount");

 function  QTextLayout_lineAt(handle: not null  QTextLayoutH; i: integer) return  QTextLineH;
 pragma Import(c,QTextLayout_lineAt, "QTextLayout_lineAt");

 function  QTextLayout_lineForTextPosition(handle: not null  QTextLayoutH; pos: integer) return  QTextLineH;
 pragma Import(c,QTextLayout_lineForTextPosition, "QTextLayout_lineForTextPosition");

 function  QTextLayout_isValidCursorPosition(handle: not null  QTextLayoutH; pos: integer) return  boolean;
 pragma Import(c,QTextLayout_isValidCursorPosition, "QTextLayout_isValidCursorPosition");

 function  QTextLayout_nextCursorPosition(handle: not null  QTextLayoutH; oldPos: integer; mode: CursorMode) return  integer;
 pragma Import(c,QTextLayout_nextCursorPosition, "QTextLayout_nextCursorPosition");

 function  QTextLayout_previousCursorPosition(handle: not null  QTextLayoutH; oldPos: integer; mode: CursorMode) return  integer;
 pragma Import(c,QTextLayout_previousCursorPosition, "QTextLayout_previousCursorPosition");

 procedure QTextLayout_drawCursor(handle: not null  QTextLayoutH; painter: QPainterH;point: QPointFH; cursorPosition: integer);
 pragma Import(c,QTextLayout_drawCursor, "QTextLayout_drawCursor");

 procedure QTextLayout_drawCursor2(handle: not null  QTextLayoutH; painter: QPainterH; point: QPointFH; cursorPosition: integer; width:integer);
 pragma Import(c,QTextLayout_drawCursor2, "QTextLayout_drawCursor2");

 function  QTextLayout_position(handle: not null  QTextLayoutH) return  QPointFH;
 pragma Import(c,QTextLayout_position, "QTextLayout_position");

 procedure QTextLayout_setPosition(handle: not null  QTextLayoutH; p: QPointFH);
 pragma Import(c,QTextLayout_setPosition, "QTextLayout_setPosition");

 function  QTextLayout_boundingRect(handle: not null  QTextLayoutH) return  QRectFH;
 pragma Import(c,QTextLayout_boundingRect, "QTextLayout_boundingRect");

 function  QTextLayout_minimumWidth(handle: not null  QTextLayoutH) return  float;
 pragma Import(c,QTextLayout_minimumWidth, "QTextLayout_minimumWidth");

 function  QTextLayout_maximumWidth(handle: not null  QTextLayoutH) return  float;
 pragma Import(c,QTextLayout_maximumWidth, "QTextLayout_maximumWidth");

 procedure QTextLayout_setFlags(handle: not null  QTextLayoutH; flags: integer);
 pragma Import(c,QTextLayout_setFlags, "QTextLayout_setFlags");

 procedure QTextLayout_setFormats(handle:not null QTextLayoutH;overrides:QVectorH);
 pragma Import(C,QTextLayout_setFormats, "QTextLayout_setFormats");
 
 function  QTextLayout_formats(handle:not null QTextLayoutH) return QVectorH;
 pragma Import(C,QTextLayout_formats, "QTextLayout_formats");
 
 procedure QTextLayout_clearFormats(handle:not null QTextLayoutH);
 pragma Import(C,QTextLayout_clearFormats, "QTextLayout_clearFormats");

 function  QTextLine_create return  QTextLineH;
 pragma Import(c,QTextLine_create, "QTextLine_create");

 procedure QTextLine_destroy(handle: not null  QTextLineH);
 pragma Import(c,QTextLine_destroy, "QTextLine_destroy");

 function  QTextLine_isValid(handle: not null  QTextLineH) return  boolean;
 pragma Import(c,QTextLine_isValid, "QTextLine_isValid");

 function  QTextLine_rect(handle: not null  QTextLineH) return  QRectFH;
 pragma Import(c,QTextLine_rect, "QTextLine_rect");

 function  QTextLine_x(handle: not null  QTextLineH) return  float;
 pragma Import(c,QTextLine_x, "QTextLine_x");

 function  QTextLine_y(handle: not null  QTextLineH) return  float;
 pragma Import(c,QTextLine_y, "QTextLine_y");

 function  QTextLine_width(handle: not null  QTextLineH) return  float;
 pragma Import(c,QTextLine_width, "QTextLine_width");

 function  QTextLine_ascent(handle: not null  QTextLineH) return  float;
 pragma Import(c,QTextLine_ascent, "QTextLine_ascent");

 function  QTextLine_descent(handle: not null  QTextLineH) return  float;
 pragma Import(c,QTextLine_descent, "QTextLine_descent");

 function  QTextLine_height(handle: not null  QTextLineH) return  float;
 pragma Import(c,QTextLine_height, "QTextLine_height");

 function  QTextLine_naturalTextWidth(handle: not null  QTextLineH) return  float;
 pragma Import(c,QTextLine_naturalTextWidth, "QTextLine_naturalTextWidth");

 function  QTextLine_naturalTextRect(handle: not null  QTextLineH) return  QRectFH;
 pragma Import(c,QTextLine_naturalTextRect, "QTextLine_naturalTextRect");

 function  QTextLine_cursorToX(handle: not null  QTextLineH; cursorPos: integer; edges: Edge ) return  float;
 pragma Import(c,QTextLine_cursorToX, "QTextLine_cursorToX");

 function  QTextLine_cursorToX2(handle: not null  QTextLineH; cursorPos: integer; edges : Edge) return  float;
 pragma Import(c,QTextLine_cursorToX2, "QTextLine_cursorToX2");

 function  QTextLine_xToCursor(handle: not null  QTextLineH; x: float; cursorPos: CursorPosition) return  integer;
 pragma Import(c,QTextLine_xToCursor, "QTextLine_xToCursor");

 procedure QTextLine_setLineWidth(handle: not null  QTextLineH;width: float);
 pragma Import(c,QTextLine_setLineWidth, "QTextLine_setLineWidth");

 procedure QTextLine_setNumColumns(handle: not null  QTextLineH; columns:integer);
 pragma Import(c,QTextLine_setNumColumns, "QTextLine_setNumColumns");

 procedure QTextLine_setNumColumns2(handle: not null  QTextLineH; columns:integer;alignmentWidth: float);
 pragma Import(c,QTextLine_setNumColumns2, "QTextLine_setNumColumns2");

 procedure QTextLine_setPosition(handle: not null  QTextLineH; pos: QPointFH);
 pragma Import(c,QTextLine_setPosition, "QTextLine_setPosition");

 function  QTextLine_position(handle: not null  QTextLineH) return  QPointFH;
 pragma Import(c,QTextLine_position, "QTextLine_position");

 function  QTextLine_textStart(handle: not null  QTextLineH) return  integer;
 pragma Import(c,QTextLine_textStart, "QTextLine_textStart");

 function QTextLine_textLength(handle: not null  QTextLineH) return  integer;
 pragma Import(c,QTextLine_textLength, "QTextLine_textLength");

 function QTextLine_lineNumber(handle: not null  QTextLineH) return  integer;
 pragma Import(c,QTextLine_lineNumber, "QTextLine_lineNumber");

 ----------------------------------------------------------------------
 function  QTextLayout_create(text:QStringH) return  QTextLayoutH;
 function  QTextLayout_create(text:QStringH; font: QFontH; paintdevice: QPaintDeviceH) return  QTextLayoutH;
 function  QTextLayout_create(b: QTextBlockH) return  QTextLayoutH;
 procedure QTextLayout_drawCursor(handle: not null  QTextLayoutH; painter: QPainterH; point: QPointFH; cursorPosition: integer; width:integer);
 procedure QTextLine_setNumColumns(handle: not null  QTextLineH; columns:integer;alignmentWidth: float);

end   Qt.QTextLayout;
