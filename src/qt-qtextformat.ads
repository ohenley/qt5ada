--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QFont;  use Qt.QFont;
package Qt.QTextFormat is

 VariableLength   : constant := 0;
 FixedLength      : constant := 0;
 PercentageLength : constant := 0;

 function  QTextLength_create(typeLength:integer;value: qreal) return QTextLengthH ;
 pragma Import(C,QTextLength_create, "QTextLength_create");
 
 procedure QTextLength_destroy(handle: not null QTextLengthH);
 pragma Import(C,QTextLength_destroy, "QTextLength_destroy");
 
 function  QTextLength_type(handle: not null QTextLengthH) return integer;
 pragma Import(C,QTextLength_type, "QTextLength_type");
 
 function  QTextLength_value(handle: not null QTextLengthH; maximumLength:qreal) return qreal;
 pragma Import(C,QTextLength_value, "QTextLength_value");
 
 function  QTextLength_rawValue(handle: not null QTextLengthH) return qreal;
 pragma Import(C,QTextLength_rawValue, "QTextLength_rawValue");

--
--
-- Format Type

 InvalidFormat: constant := -1;
 BlockFormat  : constant := 1;
 CharFormat   : constant := 2;
 ListFormat   : constant := 3;
 TableFormat  : constant := 4;
 FrameFormat  : constant := 5;

--                           PropertyId --------------------------------------------------

 ObjectIndex                      : constant := 0;

 -- paragraph and char
 CssFloat                         : constant := 16#0800#;
 LayoutDirection                  : constant := 16#0801#;

 OutlinePen                       : constant := 16#810#;
 BackgroundBrush                  : constant := 16#820#;
 ForegroundBrush                  : constant := 16#821#;

 -- ObjectSelectionBrush          : constant := 16#822#;
 BackgroundImageUrl               : constant := 16#823#;

 -- paragraph
 BlockAlignment                   : constant := 16#1010#;
 BlockTopMargin                   : constant := 16#1030#;
 BlockBottomMargin                : constant := 16#1031#;
 BlockLeftMargin                  : constant := 16#1032#;
 BlockRightMargin                 : constant := 16#1033#;
 TextIndent                       : constant := 16#1034#;
 TabPositions                     : constant := 16#1035#;
 BlockIndent                      : constant := 16#1040#;
 BlockNonBreakableLines           : constant := 16#1050#;
 BlockTrailingHorizontalRulerWidth: constant := 16#1060#;

 -- character properties
 FirstFontProperty                : constant := 16#1FE0#;
 FontCapitalization               : constant := 16#1FE0#;
 FontLetterSpacing                : constant := 16#1FE1#;
 FontWordSpacing                  : constant := 16#1FE2#;
 FontStyleHint                    : constant := 16#1FE3#;
 FontStyleStrategy                : constant := 16#1FE4#;
 FontKerning                      : constant := 16#1FE5#;
 FontFamily                       : constant := 16#2000#;
 FontPointSize                    : constant := 16#2001#;
 FontSizeAdjustment               : constant := 16#2002#;
 FontSizeIncrement                : constant := 16#2002#;-- old name, compat
 FontWeight                       : constant := 16#2003#;
 FontItalic                       : constant := 16#2004#;
 FontUnderline                    : constant := 16#2005#; -- deprecated, use TextUnderlineStyle instead
 FontOverline                     : constant := 16#2006#;
 FontStrikeOut                    : constant := 16#2007#;
 FontFixedPitch                   : constant := 16#2008#;
 FontPixelSize                    : constant := 16#2009#;
 LastFontProperty                 : constant := FontPixelSize;

 TextUnderlineColor               : constant := 16#2010#;
 TextVerticalAlignment            : constant := 16#2021#;
 TextOutline                      : constant := 16#2022#;
 TextUnderlineStyle               : constant := 16#2023#;
 TextToolTip                      : constant := 16#2024#;

 IsAnchor                         : constant := 16#2030#;
 AnchorHref                       : constant := 16#2031#;
 AnchorName                       : constant := 16#2032#;
 ObjectType                       : constant := 16#2f00#;

 -- list properties
 ListStyle                        : constant := 16#3000#;
 ListIndent                       : constant := 16#3001#;

 -- table and frame properties
 FrameBorder                      : constant := 16#4000#;
 FrameMargin                      : constant := 16#4001#;
 FramePadding                     : constant := 16#4002#;
 FrameWidth                       : constant := 16#4003#;
 FrameHeight                      : constant := 16#4004#;
 FrameTopMargin                   : constant := 16#4005#;
 FrameBottomMargin                : constant := 16#4006#;
 FrameLeftMargin                  : constant := 16#4007#;
 FrameRightMargin                 : constant := 16#4008#;
 FrameBorderBrush                 : constant := 16#4009#;
 FrameBorderStyle                 : constant := 16#4010#;

 TableColumns                     : constant := 16#4100#;
 TableColumnWidthConstraints      : constant := 16#4101#;
 TableCellSpacing                 : constant := 16#4102#;
 TableCellPadding                 : constant := 16#4103#;
 TableHeaderRowCount              : constant := 16#4104#;

 -- table cell properties
 TableCellRowSpan                 : constant := 16#4810#;
 TableCellColumnSpan              : constant := 16#4811#;

 TableCellTopPadding              : constant := 16#4812#;
 TableCellBottomPadding           : constant := 16#4813#;
 TableCellLeftPadding             : constant := 16#4814#;
 TableCellRightPadding            : constant := 16#4815#;

 -- image properties
 ImageName                        : constant := 16#5000#;
 ImageWidth                       : constant := 16#5010#;
 ImageHeight                      : constant := 16#5011#;

 -- selection properties
 FullWidthSelection               : constant := 16#06000#;

 -- page break properties
 PageBreakPolicy                  : constant := 16#7000#;

 UserProperty                     : constant := 16#100000#;

 -- Object Types
 NoObject                         : constant := 0;
 ImageObject                      : constant := 1;
 TableObject                      : constant := 2;
 TableCellObject                  : constant := 3;
 UserObject                       : constant := 16#1000#;

 --  PageBreakFlag 

 PageBreak_Auto                  : constant := 0;
 PageBreak_AlwaysBefore          : constant := 16#001#;
 PageBreak_AlwaysAfter           : constant := 16#010#;
        -- PageBreak_AlwaysInside: constant := 16#100#;

 UserFormat                      : constant := 100;

 type QTextFormatStyle is new integer range -8 .. 0;

 ListDisc       : constant QTextFormatStyle := -1;
 ListCircle     : constant QTextFormatStyle := -2;
 ListSquare     : constant QTextFormatStyle := -3;
 ListDecimal    : constant QTextFormatStyle := -4;
 ListLowerAlpha : constant QTextFormatStyle := -5;
 ListUpperAlpha : constant QTextFormatStyle := -6;
 ListLowerRoman : constant QTextFormatStyle := -7;
 ListUpperRoman : constant QTextFormatStyle := -8;
 ListStyleUnde  : constant QTextFormatStyle :=  0;

 function  QTextFormat_create return QTextFormatH;
 pragma Import(C,QTextFormat_create, "QTextFormat_create");
 
 procedure QTextFormat_destroy(handle: not null QTextFormatH);
 pragma Import(C,QTextFormat_destroy, "QTextFormat_destroy");
 
 function  QTextFormat_create2(formatType:integer) return QTextFormatH;
 pragma Import(C,QTextFormat_create2, "QTextFormat_create2");
 
 function  QTextFormat_create3(other:QTextFormatH) return QTextFormatH;
 pragma Import(C,QTextFormat_create3, "QTextFormat_create3");
 
 procedure QTextFormat_merge(handle: not null QTextFormatH;other:QTextFormatH);
 pragma Import(C,QTextFormat_merge, "QTextFormat_merge");
 
 function  QTextFormat_isValid(handle: not null QTextFormatH) return boolean;
 pragma Import(C,QTextFormat_isValid, "QTextFormat_isValid");
 
 function  QTextFormat_type(handle: not null QTextFormatH) return integer;
 pragma Import(C,QTextFormat_type, "QTextFormat_type");
 
 function  QTextFormat_objectIndex(handle: not null QTextFormatH) return integer;
 pragma Import(C,QTextFormat_objectIndex, "QTextFormat_objectIndex");
 
 procedure QTextFormat_setObjectIndex(handle: not null QTextFormatH;index:integer);
 pragma Import(C,QTextFormat_setObjectIndex, "QTextFormat_setObjectIndex");
 
 function  QTextFormat_property(handle: not null QTextFormatH;propertyId:integer) return QVariantH;
 pragma Import(C,QTextFormat_property, "QTextFormat_property");
 
 procedure QTextFormat_setProperty(handle: not null QTextFormatH;propertyId:integer; value: QVariantH);
 pragma Import(C,QTextFormat_setProperty, "QTextFormat_setProperty");
 
 procedure QTextFormat_clearProperty(handle: not null QTextFormatH;propertyId:integer);
 pragma Import(C,QTextFormat_clearProperty, "QTextFormat_clearProperty");
 
 function  QTextFormat_hasProperty(handle: not null QTextFormatH;propertyId:integer) return boolean;
 pragma Import(C,QTextFormat_hasProperty, "QTextFormat_hasProperty");
 
 function  QTextFormat_boolProperty(handle: not null QTextFormatH;propertyId:integer) return boolean;
 pragma Import(C,QTextFormat_boolProperty, "QTextFormat_boolProperty");
 
 function  QTextFormat_intProperty(handle: not null QTextFormatH;propertyId:integer) return integer;
 pragma Import(C,QTextFormat_intProperty, "QTextFormat_intProperty");
 
 function  QTextFormat_doubleProperty(handle: not null QTextFormatH;propertyId:integer) return qreal;
 pragma Import(C,QTextFormat_doubleProperty, "QTextFormat_doubleProperty");
 
 function  QTextFormat_stringProperty(handle: not null QTextFormatH;propertyId:integer) return QStringH;
 pragma Import(C,QTextFormat_stringProperty, "QTextFormat_stringProperty");
 
 function  QTextFormat_colorProperty(handle: not null QTextFormatH;propertyId:integer) return QColorH;
 pragma Import(C,QTextFormat_colorProperty, "QTextFormat_colorProperty");
 
 function  QTextFormat_penProperty(handle: not null QTextFormatH;propertyId:integer) return QPenH;
 pragma Import(C,QTextFormat_penProperty, "QTextFormat_penProperty");
 
 function  QTextFormat_brushProperty(handle: not null QTextFormatH;propertyId:integer) return QBrushH;
 pragma Import(C,QTextFormat_brushProperty, "QTextFormat_brushProperty");
 
 function  QTextFormat_lengthProperty(handle: not null QTextFormatH;propertyId:integer) return QTextLengthH;
 pragma Import(C,QTextFormat_lengthProperty, "QTextFormat_lengthProperty");
 
 function  QTextFormat_lengthVectorProperty(handle: not null QTextFormatH;propertyId:integer) return QObjectListH;
 pragma Import(C,QTextFormat_lengthVectorProperty, "QTextFormat_lengthVectorProperty");
 
 procedure QTextFormat_setProperty2(handle: not null QTextFormatH;propertyId:integer; lengths:QObjectListH);
 pragma Import(C,QTextFormat_setProperty2, "QTextFormat_setProperty2");
 
 function  QTextFormat_properties(handle: not null QTextFormatH) return void_Star;
 pragma Import(C,QTextFormat_properties, "QTextFormat_properties");
 
 function  QTextFormat_propertyCount(handle: not null QTextFormatH) return integer;
 pragma Import(C,QTextFormat_propertyCount, "QTextFormat_propertyCount");
 
 function  QTextFormat_isCharFormat(handle: not null QTextFormatH) return boolean;
 pragma Import(C,QTextFormat_isCharFormat, "QTextFormat_isCharFormat");
 
 function  QTextFormat_isBlockFormat(handle: not null QTextFormatH) return boolean;
 pragma Import(C,QTextFormat_isBlockFormat, "QTextFormat_isBlockFormat");
 
 function  QTextFormat_isListFormat(handle: not null QTextFormatH) return boolean;
 pragma Import(C,QTextFormat_isListFormat, "QTextFormat_isListFormat");
 
 function  QTextFormat_isFrameFormat(handle: not null QTextFormatH) return boolean;
 pragma Import(C,QTextFormat_isFrameFormat, "QTextFormat_isFrameFormat");
 
 function  QTextFormat_isImageFormat(handle: not null QTextFormatH) return boolean;
 pragma Import(C,QTextFormat_isImageFormat, "QTextFormat_isImageFormat");
 
 function  QTextFormat_isTableFormat(handle: not null QTextFormatH) return boolean;
 pragma Import(C,QTextFormat_isTableFormat, "QTextFormat_isTableFormat");
 
 function  QTextFormat_isTableCellFormat(handle: not null QTextFormatH) return boolean;
 pragma Import(C,QTextFormat_isTableCellFormat, "QTextFormat_isTableCellFormat");
 
 function  QTextFormat_toBlockFormat(handle: not null QTextFormatH) return QTextBlockFormatH;
 pragma Import(C,QTextFormat_toBlockFormat, "QTextFormat_toBlockFormat");
 
 function  QTextFormat_toCharFormat(handle: not null QTextFormatH) return QTextCharFormatH;
 pragma Import(C,QTextFormat_toCharFormat, "QTextFormat_toCharFormat");
 
 function  QTextFormat_toListFormat(handle: not null QTextFormatH) return QTextListFormatH;
 pragma Import(C,QTextFormat_toListFormat, "QTextFormat_toListFormat");
 
 function  QTextFormat_toTableFormat(handle: not null QTextFormatH) return QTextTableFormatH;
 pragma Import(C,QTextFormat_toTableFormat, "QTextFormat_toTableFormat");
 
 function  QTextFormat_toFrameFormat(handle: not null QTextFormatH) return QTextFrameFormatH;
 pragma Import(C,QTextFormat_toFrameFormat, "QTextFormat_toFrameFormat");
 
 function  QTextFormat_toImageFormat(handle: not null QTextFormatH) return QTextImageFormatH;
 pragma Import(C,QTextFormat_toImageFormat, "QTextFormat_toImageFormat");
 
 function  QTextFormat_toTableCellFormat(handle: not null QTextFormatH) return QTextTableCellFormatH;
 pragma Import(C,QTextFormat_toTableCellFormat, "QTextFormat_toTableCellFormat");
 
 procedure QTextFormat_setLayoutDirection(handle: not null QTextFormatH; direction:QtLayoutDirection);
 pragma Import(C,QTextFormat_setLayoutDirection, "QTextFormat_setLayoutDirection");
 
 function  QTextFormat_layoutDirection(handle: not null QTextFormatH) return QtLayoutDirection;
 pragma Import(C,QTextFormat_layoutDirection, "QTextFormat_layoutDirection");
 
 procedure QTextFormat_setBackground(handle: not null QTextFormatH; brush:QBrushH);
 pragma Import(C,QTextFormat_setBackground, "QTextFormat_setBackground");
 
 function  QTextFormat_background(handle: not null QTextFormatH) return QBrushH;
 pragma Import(C,QTextFormat_background, "QTextFormat_background");
 
 procedure QTextFormat_clearBackground(handle: not null QTextFormatH);
 pragma Import(C,QTextFormat_clearBackground, "QTextFormat_clearBackground");
 
 procedure QTextFormat_setForeground(handle: not null QTextFormatH; brush:QBrushH);
 pragma Import(C,QTextFormat_setForeground, "QTextFormat_setForeground");
 
 function  QTextFormat_foreground(handle: not null QTextFormatH) return QBrushH;
 pragma Import(C,QTextFormat_foreground, "QTextFormat_foreground");
 
 procedure QTextFormat_clearForeground(handle: not null QTextFormatH);
 pragma Import(C,QTextFormat_clearForeground, "QTextFormat_clearForeground");

 --
 --

 type VerticalAlignment is (AlignNormal,AlignSuperScript,AlignSubScript,AlignMiddle,AlignTop,AlignBottom);
 pragma Convention (C,VerticalAlignment);

 type UnderlineStyle is (NoUnderline,SingleUnderline,DashUnderline,DotLine,DashDotLine,DashDotDotLine,WaveUnderline,SpellCheckUnderline);
 pragma Convention (C,UnderlineStyle);

 function  QTextCharFormat_create return QTextCharFormatH ;
 pragma Import(C,QTextCharFormat_create, "QTextCharFormat_create");
 
 procedure QTextCharFormat_destroy(handle: not null QTextCharFormatH);
 pragma Import(C,QTextCharFormat_destroy, "QTextCharFormat_destroy");
 
 function  QTextCharFormat_isValid(handle: not null QTextCharFormatH) return boolean;
 pragma Import(C,QTextCharFormat_isValid, "QTextCharFormat_isValid");
 
 procedure QTextCharFormat_setFont(handle: not null QTextCharFormatH;font: QFontH);
 pragma Import(C,QTextCharFormat_setFont, "QTextCharFormat_setFont");
 
 function  QTextCharFormat_font(handle: not null QTextCharFormatH) return QFontH;
 pragma Import(C,QTextCharFormat_font, "QTextCharFormat_font");
 
 procedure QTextCharFormat_setFontFamily(handle: not null QTextCharFormatH; family :QStringH);
 pragma Import(C,QTextCharFormat_setFontFamily, "QTextCharFormat_setFontFamily");
 
 function  QTextCharFormat_fontFamily(handle: not null QTextCharFormatH) return QStringH;
 pragma Import(C,QTextCharFormat_fontFamily, "QTextCharFormat_fontFamily");
 
 procedure QTextCharFormat_setFontPointSize(handle: not null QTextCharFormatH;size:qreal);
 pragma Import(C,QTextCharFormat_setFontPointSize, "QTextCharFormat_setFontPointSize");
 
 function  QTextCharFormat_fontPointSize(handle: not null QTextCharFormatH) return qreal;
 pragma Import(C,QTextCharFormat_fontPointSize, "QTextCharFormat_fontPointSize");
 
 procedure QTextCharFormat_setFontWeight(handle: not null QTextCharFormatH; weight:QFontWeight);
 pragma Import(C,QTextCharFormat_setFontWeight, "QTextCharFormat_setFontWeight");
 
 function  QTextCharFormat_fontWeight(handle: not null QTextCharFormatH) return QFontWeight;
 pragma Import(C,QTextCharFormat_fontWeight, "QTextCharFormat_fontWeight");
 
 procedure QTextCharFormat_setFontItalic(handle: not null QTextCharFormatH; italic:boolean);
 pragma Import(C,QTextCharFormat_setFontItalic, "QTextCharFormat_setFontItalic");
 
 function  QTextCharFormat_fontItalic(handle: not null QTextCharFormatH) return boolean;
 pragma Import(C,QTextCharFormat_fontItalic, "QTextCharFormat_fontItalic");
 
 procedure QTextCharFormat_setFontCapitalization(handle: not null QTextCharFormatH; capitalization: Qt.QFont.QFontCapitalization);
 pragma Import(C,QTextCharFormat_setFontCapitalization, "QTextCharFormat_setFontCapitalization");
 
 function  QTextCharFormat_fontCapitalization(handle: not null QTextCharFormatH) return Qt.QFont.QFontCapitalization;
 pragma Import(C,QTextCharFormat_fontCapitalization, "QTextCharFormat_fontCapitalization");
 
 procedure QTextCharFormat_setFontLetterSpacing(handle: not null QTextCharFormatH; spacing:qreal);
 pragma Import(C,QTextCharFormat_setFontLetterSpacing, "QTextCharFormat_setFontLetterSpacing");
 
 function  QTextCharFormat_fontLetterSpacing(handle: not null QTextCharFormatH) return qreal;
 pragma Import(C,QTextCharFormat_fontLetterSpacing, "QTextCharFormat_fontLetterSpacing");
 
 procedure QTextCharFormat_setFontWordSpacing(handle: not null QTextCharFormatH; spacing:qreal);
 pragma Import(C,QTextCharFormat_setFontWordSpacing, "QTextCharFormat_setFontWordSpacing");
 
 function  QTextCharFormat_fontWordSpacing(handle: not null QTextCharFormatH) return qreal;
 pragma Import(C,QTextCharFormat_fontWordSpacing, "QTextCharFormat_fontWordSpacing");
 
 procedure QTextCharFormat_setFontUnderline(handle: not null QTextCharFormatH; underline:boolean);
 pragma Import(C,QTextCharFormat_setFontUnderline, "QTextCharFormat_setFontUnderline");
 
 function  QTextCharFormat_fontUnderline(handle: not null QTextCharFormatH) return boolean;
 pragma Import(C,QTextCharFormat_fontUnderline, "QTextCharFormat_fontUnderline");
 
 procedure QTextCharFormat_setFontOverline(handle: not null QTextCharFormatH; overline:boolean);
 pragma Import(C,QTextCharFormat_setFontOverline, "QTextCharFormat_setFontOverline");
 
 function  QTextCharFormat_fontOverline(handle: not null QTextCharFormatH) return boolean;
 pragma Import(C,QTextCharFormat_fontOverline, "QTextCharFormat_fontOverline");
 
 procedure QTextCharFormat_setFontStrikeOut(handle: not null QTextCharFormatH; strikeOut:boolean);
 pragma Import(C,QTextCharFormat_setFontStrikeOut, "QTextCharFormat_setFontStrikeOut");
 
 function  QTextCharFormat_fontStrikeOut(handle: not null QTextCharFormatH) return boolean;
 pragma Import(C,QTextCharFormat_fontStrikeOut, "QTextCharFormat_fontStrikeOut");
 
 procedure QTextCharFormat_setUnderlineColor(handle: not null QTextCharFormatH; color: QColorH);
 pragma Import(C,QTextCharFormat_setUnderlineColor, "QTextCharFormat_setUnderlineColor");
 
 function  QTextCharFormat_underlineColor(handle: not null QTextCharFormatH) return QColorH;
 pragma Import(C,QTextCharFormat_underlineColor, "QTextCharFormat_underlineColor");
 
 procedure QTextCharFormat_setFontFixedPitch(handle: not null QTextCharFormatH; fixedPitch:boolean);
 pragma Import(C,QTextCharFormat_setFontFixedPitch, "QTextCharFormat_setFontFixedPitch");
 
 function  QTextCharFormat_fontFixedPitch(handle: not null QTextCharFormatH) return boolean;
 pragma Import(C,QTextCharFormat_fontFixedPitch, "QTextCharFormat_fontFixedPitch");
 
 procedure QTextCharFormat_setFontStyleHint(handle: not null QTextCharFormatH; hinteger:Qt.QFont.QFontStyleHint;  strategy :Qt.QFont.QFontStyleStrategy := Qt.QFont.QFontPreferDefault);
 pragma Import(C,QTextCharFormat_setFontStyleHint, "QTextCharFormat_setFontStyleHint");
 
 procedure QTextCharFormat_setFontStyleStrategy(handle: not null QTextCharFormatH; strategy:Qt.QFont.QFontStyleStrategy);
 pragma Import(C,QTextCharFormat_setFontStyleStrategy, "QTextCharFormat_setFontStyleStrategy");
 
 function  QTextCharFormat_fontStyleHint(handle: not null QTextCharFormatH) return Qt.QFont.QFontStyleHint;
 pragma Import(C,QTextCharFormat_fontStyleHint, "QTextCharFormat_fontStyleHint");
 
 function  QTextCharFormat_fontStyleStrategy(handle: not null QTextCharFormatH) return Qt.QFont.QFontStyleStrategy;
 pragma Import(C,QTextCharFormat_fontStyleStrategy, "QTextCharFormat_fontStyleStrategy");
 
 procedure QTextCharFormat_setFontKerning(handle: not null QTextCharFormatH; enable:boolean);
 pragma Import(C,QTextCharFormat_setFontKerning, "QTextCharFormat_setFontKerning");
 
 function  QTextCharFormat_fontKerning(handle: not null QTextCharFormatH) return boolean;
 pragma Import(C,QTextCharFormat_fontKerning, "QTextCharFormat_fontKerning");
 
 procedure QTextCharFormat_setUnderlineStyle(handle: not null QTextCharFormatH; style:UnderlineStyle);
 pragma Import(C,QTextCharFormat_setUnderlineStyle, "QTextCharFormat_setUnderlineStyle");
 
 function  QTextCharFormat_underlineStyle(handle: not null QTextCharFormatH) return UnderlineStyle;
 pragma Import(C,QTextCharFormat_underlineStyle, "QTextCharFormat_underlineStyle");
 
 procedure QTextCharFormat_setVerticalAlignment(handle: not null QTextCharFormatH; alignment:VerticalAlignment);
 pragma Import(C,QTextCharFormat_setVerticalAlignment, "QTextCharFormat_setVerticalAlignment");
 
 function  QTextCharFormat_verticalAlignment(handle: not null QTextCharFormatH) return VerticalAlignment;
 pragma Import(C,QTextCharFormat_verticalAlignment, "QTextCharFormat_verticalAlignment");
 
 procedure QTextCharFormat_setTextOutline(handle: not null QTextCharFormatH;pen: QPenH);
 pragma Import(C,QTextCharFormat_setTextOutline, "QTextCharFormat_setTextOutline");
 
 function  QTextCharFormat_textOutline(handle: not null QTextCharFormatH) return QPenH;
 pragma Import(C,QTextCharFormat_textOutline, "QTextCharFormat_textOutline");
 
 procedure QTextCharFormat_setToolTip(handle: not null QTextCharFormatH; tip:QStringH);
 pragma Import(C,QTextCharFormat_setToolTip, "QTextCharFormat_setToolTip");
 
 function  QTextCharFormat_toolTip(handle: not null QTextCharFormatH) return QStringH;
 pragma Import(C,QTextCharFormat_toolTip, "QTextCharFormat_toolTip");
 
 procedure QTextCharFormat_setAnchor(handle: not null QTextCharFormatH; anchor:boolean);
 pragma Import(C,QTextCharFormat_setAnchor, "QTextCharFormat_setAnchor");
 
 function  QTextCharFormat_isAnchor(handle: not null QTextCharFormatH) return boolean;
 pragma Import(C,QTextCharFormat_isAnchor, "QTextCharFormat_isAnchor");
 
 procedure QTextCharFormat_setAnchorHref(handle: not null QTextCharFormatH; value:QStringH);
 pragma Import(C,QTextCharFormat_setAnchorHref, "QTextCharFormat_setAnchorHref");
 
 function  QTextCharFormat_anchorHref(handle: not null QTextCharFormatH) return QStringH;
 pragma Import(C,QTextCharFormat_anchorHref, "QTextCharFormat_anchorHref");
 
 procedure QTextCharFormat_setAnchorName(handle: not null QTextCharFormatH; name:QStringH);
 pragma Import(C,QTextCharFormat_setAnchorName, "QTextCharFormat_setAnchorName");
 
 function  QTextCharFormat_anchorName(handle: not null QTextCharFormatH) return QStringH;
 pragma Import(C,QTextCharFormat_anchorName, "QTextCharFormat_anchorName");
 
 procedure QTextCharFormat_setAnchorNames(handle: not null QTextCharFormatH; names:QStringListH);
 pragma Import(C,QTextCharFormat_setAnchorNames, "QTextCharFormat_setAnchorNames");
 
 function  QTextCharFormat_anchorNames(handle: not null QTextCharFormatH) return QStringListH;
 pragma Import(C,QTextCharFormat_anchorNames, "QTextCharFormat_anchorNames");
 
 procedure QTextCharFormat_setTableCellRowSpan(handle: not null QTextCharFormatH; tableCellRowSpan:integer);
 pragma Import(C,QTextCharFormat_setTableCellRowSpan, "QTextCharFormat_setTableCellRowSpan");
 
 function  QTextCharFormat_tableCellRowSpan(handle: not null QTextCharFormatH) return integer;
 pragma Import(C,QTextCharFormat_tableCellRowSpan, "QTextCharFormat_tableCellRowSpan");
 
 procedure QTextCharFormat_setTableCellColumnSpan(handle: not null QTextCharFormatH; tableCellColumnSpan:integer);
 pragma Import(C,QTextCharFormat_setTableCellColumnSpan, "QTextCharFormat_setTableCellColumnSpan");
 
 function  QTextCharFormat_tableCellColumnSpan(handle: not null QTextCharFormatH) return integer;
 pragma Import(C,QTextCharFormat_tableCellColumnSpan, "QTextCharFormat_tableCellColumnSpan");

 --
 --

 function  QTextBlockFormat_create return QTextBlockFormatH ;
 pragma Import(C,QTextBlockFormat_create, "QTextBlockFormat_create");
 
 procedure QTextBlockFormat_destroy(handle: not null QTextBlockFormatH);
 pragma Import(C,QTextBlockFormat_destroy, "QTextBlockFormat_destroy");
 
 function  QTextBlockFormat_isValid(handle: not null QTextBlockFormatH) return boolean;
 pragma Import(C,QTextBlockFormat_isValid, "QTextBlockFormat_isValid");
 
 procedure QTextBlockFormat_setAlignment(handle: not null QTextBlockFormatH; alignment:QtAlignment);
 pragma Import(C,QTextBlockFormat_setAlignment, "QTextBlockFormat_setAlignment");
 
 function  QTextBlockFormat_alignment(handle: not null QTextBlockFormatH) return QtAlignment;
 pragma Import(C,QTextBlockFormat_alignment, "QTextBlockFormat_alignment");
 
 procedure QTextBlockFormat_setTopMargin(handle: not null QTextBlockFormatH;margin:qreal);
 pragma Import(C,QTextBlockFormat_setTopMargin, "QTextBlockFormat_setTopMargin");
 
 function  QTextBlockFormat_topMargin(handle: not null QTextBlockFormatH) return qreal;
 pragma Import(C,QTextBlockFormat_topMargin, "QTextBlockFormat_topMargin");
 
 procedure QTextBlockFormat_setBottomMargin(handle: not null QTextBlockFormatH;margin:qreal);
 pragma Import(C,QTextBlockFormat_setBottomMargin, "QTextBlockFormat_setBottomMargin");
 
 function  QTextBlockFormat_bottomMargin(handle: not null QTextBlockFormatH) return qreal;
 pragma Import(C,QTextBlockFormat_bottomMargin, "QTextBlockFormat_bottomMargin");
 
 procedure QTextBlockFormat_setLeftMargin(handle: not null QTextBlockFormatH;margin:qreal);
 pragma Import(C,QTextBlockFormat_setLeftMargin, "QTextBlockFormat_setLeftMargin");
 
 function  QTextBlockFormat_leftMargin(handle: not null QTextBlockFormatH) return qreal;
 pragma Import(C,QTextBlockFormat_leftMargin, "QTextBlockFormat_leftMargin");
 
 procedure QTextBlockFormat_setRightMargin(handle: not null QTextBlockFormatH;margin:qreal);
 pragma Import(C,QTextBlockFormat_setRightMargin, "QTextBlockFormat_setRightMargin");
 
 function  QTextBlockFormat_rightMargin(handle: not null QTextBlockFormatH) return qreal;
 pragma Import(C,QTextBlockFormat_rightMargin, "QTextBlockFormat_rightMargin");
 
 procedure QTextBlockFormat_setTextIndent(handle: not null QTextBlockFormatH; textIndent:qreal);
 pragma Import(C,QTextBlockFormat_setTextIndent, "QTextBlockFormat_setTextIndent");
 
 function  QTextBlockFormat_textIndent(handle: not null QTextBlockFormatH) return qreal;
 pragma Import(C,QTextBlockFormat_textIndent, "QTextBlockFormat_textIndent");
 
 procedure QTextBlockFormat_setIndent(handle: not null QTextBlockFormatH; indent:integer);
 pragma Import(C,QTextBlockFormat_setIndent, "QTextBlockFormat_setIndent");
 
 function  QTextBlockFormat_indent(handle: not null QTextBlockFormatH) return integer;
 pragma Import(C,QTextBlockFormat_indent, "QTextBlockFormat_indent");
 
 procedure QTextBlockFormat_setNonBreakableLines(handle: not null QTextBlockFormatH; b:boolean);
 pragma Import(C,QTextBlockFormat_setNonBreakableLines, "QTextBlockFormat_setNonBreakableLines");
 
 function  QTextBlockFormat_nonBreakableLines(handle: not null QTextBlockFormatH) return boolean;
 pragma Import(C,QTextBlockFormat_nonBreakableLines, "QTextBlockFormat_nonBreakableLines");
 
 procedure QTextBlockFormat_setPageBreakPolicy(handle: not null QTextBlockFormatH;flags:QIntListH);
 pragma Import(C,QTextBlockFormat_setPageBreakPolicy, "QTextBlockFormat_setPageBreakPolicy");
 
 function  QTextBlockFormat_pageBreakPolicy(handle: not null QTextBlockFormatH) return QIntListH;
 pragma Import(C,QTextBlockFormat_pageBreakPolicy, "QTextBlockFormat_pageBreakPolicy");
 
 procedure QTextBlockFormat_setTabPositions(handle: not null QTextBlockFormatH; tabs: QIntListH);
 pragma Import(C,QTextBlockFormat_setTabPositions, "QTextBlockFormat_setTabPositions");
 
 function  QTextBlockFormat_tabPositions(handle: not null QTextBlockFormatH) return QIntListH;
 pragma Import(C,QTextBlockFormat_tabPositions, "QTextBlockFormat_tabPositions");

--
--
 function  QTextListFormat_create return QTextListFormatH ;
 pragma Import(C,QTextListFormat_create, "QTextListFormat_create");
 
 procedure QTextListFormat_destroy(handle: not null QTextListFormatH);
 pragma Import(C,QTextListFormat_destroy, "QTextListFormat_destroy");
 
 function  QTextListFormat_isValid(handle: not null QTextListFormatH) return boolean;
 pragma Import(C,QTextListFormat_isValid, "QTextListFormat_isValid");
 
 procedure QTextListFormat_setStyle(handle: not null QTextListFormatH; style:QTextFormatStyle);
 pragma Import(C,QTextListFormat_setStyle, "QTextListFormat_setStyle");

 function  QTextListFormat_style(handle: not null QTextListFormatH) return QTextFormatStyle;
 pragma Import(C,QTextListFormat_style, "QTextListFormat_style");
 
 procedure QTextListFormat_setIndent(handle: not null QTextListFormatH;indent:integer);
 pragma Import(C,QTextListFormat_setIndent, "QTextListFormat_setIndent");
 
 function  QTextListFormat_indent(handle: not null QTextListFormatH) return integer;
 pragma Import(C,QTextListFormat_indent, "QTextListFormat_indent");

--
--
 function  QTextImageFormat_create return QTextImageFormatH;
 pragma Import(C,QTextImageFormat_create, "QTextImageFormat_create");
 
 procedure QTextImageFormat_destroy(handle: not null QTextImageFormatH);
 pragma Import(C,QTextImageFormat_destroy, "QTextImageFormat_destroy");
 
 function  QTextImageFormat_isValid(handle: not null QTextImageFormatH) return boolean;
 pragma Import(C,QTextImageFormat_isValid, "QTextImageFormat_isValid");
 
 procedure QTextImageFormat_setName(handle: not null QTextImageFormatH; name:QStringH);
 pragma Import(C,QTextImageFormat_setName, "QTextImageFormat_setName");
 
 function  QTextImageFormat_name(handle: not null QTextImageFormatH) return QStringH;
 pragma Import(C,QTextImageFormat_name, "QTextImageFormat_name");
 
 procedure QTextImageFormat_setWidth(handle: not null QTextImageFormatH; width:float);
 pragma Import(C,QTextImageFormat_setWidth, "QTextImageFormat_setWidth");
 
 function  QTextImageFormat_width(handle: not null QTextImageFormatH) return float;
 pragma Import(C,QTextImageFormat_width, "QTextImageFormat_width");
 
 procedure QTextImageFormat_setHeight(handle: not null QTextImageFormatH; height:float);
 pragma Import(C,QTextImageFormat_setHeight, "QTextImageFormat_setHeight");
 
 function  QTextImageFormat_height(handle: not null QTextImageFormatH) return float;
 pragma Import(C,QTextImageFormat_height, "QTextImageFormat_height");

---
---
  type QTextFrameFormatPosition is (InFlow,FloatLeft,FloatRight);
  pragma Convention(C,QTextFrameFormatPosition);

  type QTextFrameFormatBorderStyle is (BorderStyle_None,BorderStyle_Dotted,BorderStyle_Dashed,BorderStyle_Solid,BorderStyle_Double,
        BorderStyle_DotDash,BorderStyle_DotDotDash,BorderStyle_Groove,BorderStyle_Ridge,BorderStyle_Inset,BorderStyle_Outset);
  pragma Convention(C,QTextFrameFormatBorderStyle);

 function  QTextFrameFormat_create return QTextFrameFormatH ;
 pragma Import(C,QTextFrameFormat_create, "QTextFrameFormat_create");
 
 procedure QTextFrameFormat_destroy(handle: not null QTextFrameFormatH);
 pragma Import(C,QTextFrameFormat_destroy, "QTextFrameFormat_destroy");
 
 function  QTextFrameFormat_isValid(handle: not null QTextFrameFormatH) return boolean;
 pragma Import(C,QTextFrameFormat_isValid, "QTextFrameFormat_isValid");
 
 procedure QTextFrameFormat_setPosition(handle: not null QTextFrameFormatH;f: QTextFrameFormatPosition);
 pragma Import(C,QTextFrameFormat_setPosition, "QTextFrameFormat_setPosition");
 
 function  QTextFrameFormat_position(handle: not null QTextFrameFormatH) return QTextFrameFormatPosition;
 pragma Import(C,QTextFrameFormat_position, "QTextFrameFormat_position");
 
 procedure QTextFrameFormat_setBorder(handle: not null QTextFrameFormatH; border:float);
 pragma Import(C,QTextFrameFormat_setBorder, "QTextFrameFormat_setBorder");
 
 function  QTextFrameFormat_border(handle: not null QTextFrameFormatH) return float;
 pragma Import(C,QTextFrameFormat_border, "QTextFrameFormat_border");
 
 procedure QTextFrameFormat_setBorderBrush(handle: not null QTextFrameFormatH;brush:QBrushH);
 pragma Import(C,QTextFrameFormat_setBorderBrush, "QTextFrameFormat_setBorderBrush");
 
 function  QTextFrameFormat_borderBrush(handle: not null QTextFrameFormatH) return QBrushH;
 pragma Import(C,QTextFrameFormat_borderBrush, "QTextFrameFormat_borderBrush");
 
 procedure QTextFrameFormat_setBorderStyle(handle: not null QTextFrameFormatH;style:QTextFrameFormatBorderStyle);
 pragma Import(C,QTextFrameFormat_setBorderStyle, "QTextFrameFormat_setBorderStyle");
 
 function  QTextFrameFormat_borderStyle(handle: not null QTextFrameFormatH) return QTextFrameFormatBorderStyle;
 pragma Import(C,QTextFrameFormat_borderStyle, "QTextFrameFormat_borderStyle");
 
 procedure QTextFrameFormat_setMargin(handle: not null QTextFrameFormatH;margin:float);
 pragma Import(C,QTextFrameFormat_setMargin, "QTextFrameFormat_setMargin");
 
 function  QTextFrameFormat_margin(handle: not null QTextFrameFormatH) return float;
 pragma Import(C,QTextFrameFormat_margin, "QTextFrameFormat_margin");
 
 procedure QTextFrameFormat_setTopMargin(handle: not null QTextFrameFormatH;margin:float);
 pragma Import(C,QTextFrameFormat_setTopMargin, "QTextFrameFormat_setTopMargin");
 
 function  QTextFrameFormat_topMargin(handle: not null QTextFrameFormatH) return float;
 pragma Import(C,QTextFrameFormat_topMargin, "QTextFrameFormat_topMargin");
 
 procedure QTextFrameFormat_setBottomMargin(handle: not null QTextFrameFormatH;margin:float);
 pragma Import(C,QTextFrameFormat_setBottomMargin, "QTextFrameFormat_setBottomMargin");
 
 function  QTextFrameFormat_bottomMargin(handle: not null QTextFrameFormatH) return float;
 pragma Import(C,QTextFrameFormat_bottomMargin, "QTextFrameFormat_bottomMargin");
 
 procedure QTextFrameFormat_setLeftMargin(handle: not null QTextFrameFormatH;margin:float);
 pragma Import(C,QTextFrameFormat_setLeftMargin, "QTextFrameFormat_setLeftMargin");
 
 function  QTextFrameFormat_leftMargin(handle: not null QTextFrameFormatH) return float;
 pragma Import(C,QTextFrameFormat_leftMargin, "QTextFrameFormat_leftMargin");
 
 procedure QTextFrameFormat_setRightMargin(handle: not null QTextFrameFormatH;margin:float);
 pragma Import(C,QTextFrameFormat_setRightMargin, "QTextFrameFormat_setRightMargin");
 
 function  QTextFrameFormat_rightMargin(handle: not null QTextFrameFormatH) return float;
 pragma Import(C,QTextFrameFormat_rightMargin, "QTextFrameFormat_rightMargin");
 
 procedure QTextFrameFormat_setPadding(handle: not null QTextFrameFormatH;padding:float);
 pragma Import(C,QTextFrameFormat_setPadding, "QTextFrameFormat_setPadding");
 
 function  QTextFrameFormat_padding(handle: not null QTextFrameFormatH) return float;
 pragma Import(C,QTextFrameFormat_padding, "QTextFrameFormat_padding");
 
 procedure QTextFrameFormat_setWidth(handle: not null QTextFrameFormatH; width:float);
 pragma Import(C,QTextFrameFormat_setWidth, "QTextFrameFormat_setWidth");
 
 procedure QTextFrameFormat_setWidth2(handle: not null QTextFrameFormatH; length:QTextLengthH);
 pragma Import(C,QTextFrameFormat_setWidth2, "QTextFrameFormat_setWidth2");
 
 function  QTextFrameFormat_width(handle: not null QTextFrameFormatH) return QTextLengthH;
 pragma Import(C,QTextFrameFormat_width, "QTextFrameFormat_width");
 
 procedure QTextFrameFormat_setHeight(handle: not null QTextFrameFormatH;height:float);
 pragma Import(C,QTextFrameFormat_setHeight, "QTextFrameFormat_setHeight");
 
 procedure QTextFrameFormat_setHeight2(handle: not null QTextFrameFormatH; height:QTextLengthH);
 pragma Import(C,QTextFrameFormat_setHeight2, "QTextFrameFormat_setHeight2");
 
 function  QTextFrameFormat_height(handle: not null QTextFrameFormatH) return QTextLengthH;
 pragma Import(C,QTextFrameFormat_height, "QTextFrameFormat_height");
 
 procedure QTextFrameFormat_setPageBreakPolicy(handle: not null QTextFrameFormatH; flags:quint);
 pragma Import(C,QTextFrameFormat_setPageBreakPolicy, "QTextFrameFormat_setPageBreakPolicy");
 
 function  QTextFrameFormat_pageBreakPolicy(handle: not null QTextFrameFormatH) return QIntListH;
 pragma Import(C,QTextFrameFormat_pageBreakPolicy, "QTextFrameFormat_pageBreakPolicy");

----
----
 function  QTextTableFormat_create return QTextTableFormatH ;
 pragma Import(C,QTextTableFormat_create, "QTextTableFormat_create");
 
 procedure QTextTableFormat_destroy(handle: not null QTextTableFormatH);
 pragma Import(C,QTextTableFormat_destroy, "QTextTableFormat_destroy");
 
 function  QTextTableFormat_isValid(handle: not null QTextTableFormatH) return boolean;
 pragma Import(C,QTextTableFormat_isValid, "QTextTableFormat_isValid");
 
 function  QTextTableFormat_columns(handle: not null QTextTableFormatH) return integer;
 pragma Import(C,QTextTableFormat_columns, "QTextTableFormat_columns");
 
 procedure QTextTableFormat_setColumns(handle: not null QTextTableFormatH; columns:integer);
 pragma Import(C,QTextTableFormat_setColumns, "QTextTableFormat_setColumns");
 
 procedure QTextTableFormat_setColumnWidthConstraints(handle: not null QTextTableFormatH; constraints:QObjectVectorH);
 pragma Import(C,QTextTableFormat_setColumnWidthConstraints, "QTextTableFormat_setColumnWidthConstraints");
 
 function  QTextTableFormat_columnWidthConstraints(handle: not null QTextTableFormatH) return QObjectVectorH;
 pragma Import(C,QTextTableFormat_columnWidthConstraints, "QTextTableFormat_columnWidthConstraints");
 
 procedure QTextTableFormat_clearColumnWidthConstraints(handle: not null QTextTableFormatH);
 pragma Import(C,QTextTableFormat_clearColumnWidthConstraints, "QTextTableFormat_clearColumnWidthConstraints");
 
 function  QTextTableFormat_cellSpacing(handle: not null QTextTableFormatH) return float;
 pragma Import(C,QTextTableFormat_cellSpacing, "QTextTableFormat_cellSpacing");
 
 procedure QTextTableFormat_setCellSpacing(handle: not null QTextTableFormatH; spacing:float);
 pragma Import(C,QTextTableFormat_setCellSpacing, "QTextTableFormat_setCellSpacing");
 
 function  QTextTableFormat_cellPadding(handle: not null QTextTableFormatH) return float;
 pragma Import(C,QTextTableFormat_cellPadding, "QTextTableFormat_cellPadding");
 
 procedure QTextTableFormat_setCellPadding(handle: not null QTextTableFormatH; padding:float);
 pragma Import(C,QTextTableFormat_setCellPadding, "QTextTableFormat_setCellPadding");
 
 procedure QTextTableFormat_setAlignment(handle: not null QTextTableFormatH; alignment:QtAlignment);
 pragma Import(C,QTextTableFormat_setAlignment, "QTextTableFormat_setAlignment");
 
 function  QTextTableFormat_alignment(handle: not null QTextTableFormatH) return QIntListH;
 pragma Import(C,QTextTableFormat_alignment, "QTextTableFormat_alignment");
 
 procedure QTextTableFormat_setHeaderRowCount(handle: not null QTextTableFormatH; count:integer);
 pragma Import(C,QTextTableFormat_setHeaderRowCount, "QTextTableFormat_setHeaderRowCount");
 
 function  QTextTableFormat_headerRowCount(handle: not null QTextTableFormatH) return integer;
 pragma Import(C,QTextTableFormat_headerRowCount, "QTextTableFormat_headerRowCount");
 
-----
-----
 function  QTextTableCellFormat_create return QTextTableCellFormatH ;
 pragma Import(C,QTextTableCellFormat_create, "QTextTableCellFormat_create");
 
 procedure QTextTableCellFormat_destroy(handle: not null QTextTableCellFormatH);
 pragma Import(C,QTextTableCellFormat_destroy, "QTextTableCellFormat_destroy");
 
 function  QTextTableCellFormat_isValid(handle: not null QTextTableCellFormatH) return boolean;
 pragma Import(C,QTextTableCellFormat_isValid, "QTextTableCellFormat_isValid");
 
 procedure QTextTableCellFormat_setTopPadding(handle: not null QTextTableCellFormatH;padding:float);
 pragma Import(C,QTextTableCellFormat_setTopPadding, "QTextTableCellFormat_setTopPadding");
 
 function  QTextTableCellFormat_topPadding(handle: not null QTextTableCellFormatH) return float;
 pragma Import(C,QTextTableCellFormat_topPadding, "QTextTableCellFormat_topPadding");
 
 procedure QTextTableCellFormat_setBottomPadding(handle: not null QTextTableCellFormatH;padding:float);
 pragma Import(C,QTextTableCellFormat_setBottomPadding, "QTextTableCellFormat_setBottomPadding");
 
 function  QTextTableCellFormat_bottomPadding(handle: not null QTextTableCellFormatH) return float;
 pragma Import(C,QTextTableCellFormat_bottomPadding, "QTextTableCellFormat_bottomPadding");
 
 procedure QTextTableCellFormat_setLeftPadding(handle: not null QTextTableCellFormatH;padding:float);
 pragma Import(C,QTextTableCellFormat_setLeftPadding, "QTextTableCellFormat_setLeftPadding");
 
 function  QTextTableCellFormat_leftPadding(handle: not null QTextTableCellFormatH) return float;
 pragma Import(C,QTextTableCellFormat_leftPadding, "QTextTableCellFormat_leftPadding");
 
 procedure QTextTableCellFormat_setRightPadding(handle: not null QTextTableCellFormatH;padding:float);
 pragma Import(C,QTextTableCellFormat_setRightPadding, "QTextTableCellFormat_setRightPadding");
 
 function  QTextTableCellFormat_rightPadding(handle: not null QTextTableCellFormatH) return float;
 pragma Import(C,QTextTableCellFormat_rightPadding, "QTextTableCellFormat_rightPadding");
 
 procedure QTextTableCellFormat_setPadding(handle: not null QTextTableCellFormatH;padding:float);
 pragma Import(C,QTextTableCellFormat_setPadding, "QTextTableCellFormat_setPadding");

-------------------------------------------------------------------------------------------------------
 function  QTextFormat_create(formatType:integer) return QTextFormatH;
 function  QTextFormat_create(other:QTextFormatH) return QTextFormatH;
 procedure QTextFormat_setProperty(handle: not null QTextFormatH;propertyId:integer; lengths:QObjectListH);

 procedure QTextFrameFormat_setWidth(handle: not null QTextFrameFormatH; length:QTextLengthH);
 procedure QTextFrameFormat_setHeight(handle: not null QTextFrameFormatH; height:QTextLengthH);

end Qt.QTextFormat;
