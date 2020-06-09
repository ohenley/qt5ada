--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2016,2018                 บ
-- บ Copyright (C) 2012,2016,2018                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QFont                is

type QFontStyle is (QFontStyleNormal, QFontStyleItalic, QFontStyleOblique );
pragma Convention(C,QFontStyle);

type FontHintingPreference is (
        PreferDefaultHinting,PreferNoHinting,PreferVerticalHinting,PreferFullHinting);
pragma Convention(C,FontHintingPreference);         
      
type  QFontStyleStrategy is (
    QFontPreferDefault,
    QFontPreferBitmap ,
    QFontPreferDevice ,
    QFontPreferOutline,
    QFontForceOutline ,
    QFontPreferMatch  ,
    QFontPreferQuality,
    QFontPreferAntialias,
    QFontNoAntialias,
    QFontOpenGLCompatible,
    QFontNoFontMerging );
pragma Convention(C,QFontStyleStrategy);

for QFontStyleStrategy use  (
    QFontPreferDefault => 16#0001#,
    QFontPreferBitmap => 16#0002#,
    QFontPreferDevice => 16#0004#,
    QFontPreferOutline => 16#0008#,
    QFontForceOutline => 16#0010#,
    QFontPreferMatch => 16#0020#,
    QFontPreferQuality => 16#0040#,
    QFontPreferAntialias => 16#0080#,
    QFontNoAntialias => 16#0100#,
    QFontOpenGLCompatible => 16#0200#,
    QFontNoFontMerging => 16#8000#);

type  QFontWeight is (QFontLight,QFontNormal,QFontDemiBold,QFontBold,QFontBlack);
pragma Convention(C,QFontWeight);

for QFontWeight use (
    QFontLight => 25,
    QFontNormal => 50,
    QFontDemiBold => 63,
    QFontBold => 75,
    QFontBlack => 87 );

type QFontStretch is  (QFontUltraCondensed,QFontExtraCondensed,
                       QFontCondensed,QFontSemiCondensed,QFontUnstretched,
                       QFontSemiExpanded,QFontExpanded,QFontExtraExpanded,
                       QFontUltraExpanded);
pragma Convention(C,QFontStretch);

for  QFontStretch use   (
    QFontUltraCondensed => 50,
    QFontExtraCondensed => 62,
    QFontCondensed => 75,
    QFontSemiCondensed => 87,
    QFontUnstretched => 100,
    QFontSemiExpanded => 112,
    QFontExpanded => 125,
    QFontExtraExpanded => 150,
    QFontUltraExpanded => 200 );

type QFontCapitalization is (MixedCase,AllUppercase,AllLowercase,SmallCaps,Capitalize);
pragma Convention(C,QFontCapitalization);

type QFontSpacingType is (PercentageSpacing,AbsoluteSpacing);
pragma Convention(C,QFontSpacingType);

type QFontResolveProperties is (FamilyResolved,SizeResolved,StyleHintResolved,StyleStrategyResolved,
        WeightResolved,StyleResolved,UnderlineResolved,OverlineResolved,StrikeOutResolved,FixedPitchResolved,StretchResolved,
        KerningResolved,CapitalizationResolved,LetterSpacingResolved,WordSpacingResolved,AllPropertiesResolved);
pragma Convention(C,QFontResolveProperties);

for QFontResolveProperties use (
        FamilyResolved         => 16#0001#,
        SizeResolved           => 16#0002#,
        StyleHintResolved      => 16#0004#,
        StyleStrategyResolved  => 16#0008#,
        WeightResolved         => 16#0010#,
        StyleResolved          => 16#0020#,
        UnderlineResolved      => 16#0040#,
        OverlineResolved       => 16#0080#,
        StrikeOutResolved      => 16#0100#,
        FixedPitchResolved     => 16#0200#,
        StretchResolved        => 16#0400#,
        KerningResolved        => 16#0800#,
        CapitalizationResolved => 16#1000#,
        LetterSpacingResolved  => 16#2000#,
        WordSpacingResolved    => 16#4000#,
        AllPropertiesResolved  => 16#7fff#
    );


subtype  QFontStyleHint is cardinal;

QFontHelvetica  : constant QFontStyleHint := 0;
QFontSansSerif  : constant QFontStyleHint := 0;
QFontTimes      : constant QFontStyleHint := 1;
QFontSerif      : constant QFontStyleHint := 1;
QFontCourier    : constant QFontStyleHint := 2;
QFontTypeWriter : constant QFontStyleHint := 2;
QFontOldEnglish : constant QFontStyleHint := 3;
QFontDecorative : constant QFontStyleHint := 3;
QFontSystem     : constant QFontStyleHint := 4;
QFontAnyStyle   : constant QFontStyleHint := 5;

function QFont_create return  QFontH;    
pragma Import(C,QFont_create,"QFont_create");

procedure QFont_destroy(handle: not null  QFontH);   
pragma Import(C,QFont_destroy,"QFont_destroy");

function QFont_create2(family: QStringH; pointSize: Integer := -1; weight: Integer := -1; italic: Boolean := False) return QFontH;
pragma Import(C,QFont_create2,"QFont_create2");

function QFont_create3(p1: QFontH; pd: QPaintDeviceH) return  QFontH;
pragma Import(C,QFont_create3,"QFont_create3");

function QFont_create4(p1: QFontH) return  QFontH;
pragma Import(C,QFont_create4,"QFont_create4");

function  QFont_family(handle: not null  QFontH) return QStringH;
pragma Import(C,QFont_family,"QFont_family");

procedure QFont_setFamily(handle: not null  QFontH; p1: QStringH);   
pragma Import(C,QFont_setFamily,"QFont_setFamily");

function QFont_pointSize(handle: not null  QFontH) return  Integer;   
pragma Import(C,QFont_pointSize,"QFont_pointSize");

procedure QFont_setPointSize(handle: not null  QFontH; p1: Integer);   
pragma Import(C,QFont_setPointSize,"QFont_setPointSize");

function QFont_pointSizeF(handle: not null  QFontH) return  Double;   
pragma Import(C,QFont_pointSizeF,"QFont_pointSizeF");

procedure QFont_setPointSizeF(handle: not null  QFontH; p1: Double);   
pragma Import(C,QFont_setPointSizeF,"QFont_setPointSizeF");

function QFont_pixelSize(handle: not null  QFontH) return  Integer;   
pragma Import(C,QFont_pixelSize,"QFont_pixelSize");

procedure QFont_setPixelSize(handle: not null  QFontH; p1: Integer);   
pragma Import(C,QFont_setPixelSize,"QFont_setPixelSize");

function QFont_weight(handle: not null  QFontH) return  Integer;   
pragma Import(C,QFont_weight,"QFont_weight");

procedure QFont_setWeight(handle: not null  QFontH; p1: Integer);   
pragma Import(C,QFont_setWeight,"QFont_setWeight");

function QFont_bold(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_bold,"QFont_bold");

procedure QFont_setBold(handle: not null  QFontH; p1: Boolean);   
pragma Import(C,QFont_setBold,"QFont_setBold");

procedure QFont_setStyle(handle: not null  QFontH; style: QFontStyle);   
pragma Import(C,QFont_setStyle,"QFont_setStyle");

function QFont_style(handle: not null  QFontH) return  QFontStyle;   
pragma Import(C,QFont_style,"QFont_style");

function QFont_italic(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_italic,"QFont_italic");

procedure QFont_setItalic(handle: not null  QFontH; b: Boolean);   
pragma Import(C,QFont_setItalic,"QFont_setItalic");

function QFont_underline(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_underline,"QFont_underline");

procedure QFont_setUnderline(handle: not null  QFontH; p1: Boolean);   
pragma Import(C,QFont_setUnderline,"QFont_setUnderline");

function QFont_overline(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_overline,"QFont_overline");

procedure QFont_setOverline(handle: not null  QFontH; p1: Boolean);   
pragma Import(C,QFont_setOverline,"QFont_setOverline");

function QFont_strikeOut(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_strikeOut,"QFont_strikeOut");

procedure QFont_setStrikeOut(handle: not null  QFontH; p1: Boolean);   
pragma Import(C,QFont_setStrikeOut,"QFont_setStrikeOut");

function QFont_fixedPitch(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_fixedPitch,"QFont_fixedPitch");

procedure QFont_setFixedPitch(handle: not null  QFontH; p1: Boolean);   
pragma Import(C,QFont_setFixedPitch,"QFont_setFixedPitch");

function QFont_kerning(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_kerning,"QFont_kerning");

procedure QFont_setKerning(handle: not null  QFontH; p1: Boolean);   
pragma Import(C,QFont_setKerning,"QFont_setKerning");

function QFont_styleHint(handle: not null  QFontH) return  QFontStyleHint;   
pragma Import(C,QFont_styleHint,"QFont_styleHint");

function QFont_styleStrategy(handle: not null  QFontH) return  QFontStyleStrategy;   
pragma Import(C,QFont_styleStrategy,"QFont_styleStrategy");

procedure QFont_setStyleHint(handle: not null  QFontH; p1: QFontStyleHint; p2: QFontStyleStrategy := QFontPreferDefault);
pragma Import(C,QFont_setStyleHint,"QFont_setStyleHint");

procedure QFont_setStyleStrategy(handle: not null  QFontH; s: QFontStyleStrategy);   
pragma Import(C,QFont_setStyleStrategy,"QFont_setStyleStrategy");

function QFont_stretch(handle: not null  QFontH) return  Integer;   
pragma Import(C,QFont_stretch,"QFont_stretch");

procedure QFont_setStretch(handle: not null  QFontH; p1: Integer);   
pragma Import(C,QFont_setStretch,"QFont_setStretch");

function QFont_rawMode(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_rawMode,"QFont_rawMode");

procedure QFont_setRawMode(handle: not null  QFontH; p1: Boolean);   
pragma Import(C,QFont_setRawMode,"QFont_setRawMode");

function QFont_exactMatch(handle: not null  QFontH) return  Boolean;   
pragma Import(C,QFont_exactMatch,"QFont_exactMatch");

function QFont_isCopyOf(handle: not null  QFontH; p1: QFontH) return  Boolean;   
pragma Import(C,QFont_isCopyOf,"QFont_isCopyOf");

procedure QFont_setRawName(handle: not null  QFontH; p1: QStringH);   
pragma Import(C,QFont_setRawName,"QFont_setRawName");

function  QFont_rawName(handle: not null  QFontH) return QStringH;
pragma Import(C,QFont_rawName,"QFont_rawName");

function  QFont_key(handle: not null  QFontH) return QStringH;
pragma Import(C,QFont_key,"QFont_key");

function  QFont_toString(handle: not null  QFontH) return  QStringH;
pragma Import(C,QFont_toString,"QFont_toString");

function QFont_fromString(handle: not null  QFontH; p1: QStringH) return  Boolean;   
pragma Import(C,QFont_fromString,"QFont_fromString");

function  QFont_substitute(p1: QStringH) return QStringH;
pragma Import(C,QFont_substitute,"QFont_substitute");

function  QFont_substitutes(p1: QStringH) return QStringListH;
pragma Import(C,QFont_substitutes,"QFont_substitutes");

function  QFont_substitutions return QStringListH;
pragma Import(C,QFont_substitutions,"QFont_substitutions");

procedure QFont_insertSubstitution(p1: QStringH; p2: QStringH);   
pragma Import(C,QFont_insertSubstitution,"QFont_insertSubstitution");

procedure QFont_insertSubstitutions(p1: QStringH; p2: QStringListH);   
pragma Import(C,QFont_insertSubstitutions,"QFont_insertSubstitutions");

--procedure QFont_removeSubstitution(p1: QStringH);   
--pragma Import(C,QFont_removeSubstitution,"QFont_removeSubstitution");

procedure QFont_initialize;   
pragma Import(C,QFont_initialize,"QFont_initialize");

procedure QFont_cleanup;   
pragma Import(C,QFont_cleanup,"QFont_cleanup");

procedure QFont_cacheStatistics;   
pragma Import(C,QFont_cacheStatistics,"QFont_cacheStatistics");

function  QFont_defaultFamily(handle: not null  QFontH) return QStringH;
pragma Import(C,QFont_defaultFamily,"QFont_defaultFamily");

function  QFont_lastResortFamily(handle: not null  QFontH) return QStringH;
pragma Import(C,QFont_lastResortFamily,"QFont_lastResortFamily");

function  QFont_lastResortFont(handle: not null  QFontH) return  QStringH;
pragma Import(C,QFont_lastResortFont,"QFont_lastResortFont");

function  QFont_resolve(handle: not null  QFontH; p1: QFontH) return QFontH;
pragma Import(C,QFont_resolve,"QFont_resolve");

function QFont_resolve2(handle: not null  QFontH) return  LongWord;
pragma Import(C,QFont_resolve2,"QFont_resolve2");

procedure QFont_resolve3(handle: not null  QFontH; mask: LongWord);
pragma Import(C,QFont_resolve3,"QFont_resolve3");

subtype  QFontDatabaseWritingSystem is cardinal; 

QFontDatabaseAny        : constant QFontDatabaseWritingSystem := 0;
QFontDatabaseLatin      : constant QFontDatabaseWritingSystem := 1;
QFontDatabaseGreek      : constant QFontDatabaseWritingSystem := 2;
QFontDatabaseCyrillic   : constant QFontDatabaseWritingSystem := 3;
QFontDatabaseArmenian   : constant QFontDatabaseWritingSystem := 4;
QFontDatabaseHebrew     : constant QFontDatabaseWritingSystem := 5;
QFontDatabaseArabic     : constant QFontDatabaseWritingSystem := 6;
QFontDatabaseSyriac     : constant QFontDatabaseWritingSystem := 7;
QFontDatabaseThaana     : constant QFontDatabaseWritingSystem := 8;
QFontDatabaseDevanagari : constant QFontDatabaseWritingSystem := 9;
QFontDatabaseBengali    : constant QFontDatabaseWritingSystem := 10;
QFontDatabaseGurmukhi   : constant QFontDatabaseWritingSystem := 11;
QFontDatabaseGujarati   : constant QFontDatabaseWritingSystem := 12;
QFontDatabaseOriya      : constant QFontDatabaseWritingSystem := 13;
QFontDatabaseTamil      : constant QFontDatabaseWritingSystem := 14;
QFontDatabaseTelugu     : constant QFontDatabaseWritingSystem := 15;
QFontDatabaseKannada    : constant QFontDatabaseWritingSystem := 16;
QFontDatabaseMalayalam  : constant QFontDatabaseWritingSystem := 17;
QFontDatabaseSinhala    : constant QFontDatabaseWritingSystem := 18;
QFontDatabaseThai       : constant QFontDatabaseWritingSystem := 19;
QFontDatabaseLao        : constant QFontDatabaseWritingSystem := 20;
QFontDatabaseTibetan    : constant QFontDatabaseWritingSystem := 21;
QFontDatabaseMyanmar    : constant QFontDatabaseWritingSystem := 22;
QFontDatabaseGeorgian   : constant QFontDatabaseWritingSystem := 23;
QFontDatabaseKhmer      : constant QFontDatabaseWritingSystem := 24;
QFontDatabaseSimplifiedChinese : constant QFontDatabaseWritingSystem := 25;
QFontDatabaseTraditionalChinese : constant QFontDatabaseWritingSystem := 26;
QFontDatabaseJapanese   : constant QFontDatabaseWritingSystem := 27;
QFontDatabaseKorean     : constant QFontDatabaseWritingSystem := 28;
QFontDatabaseVietnamese : constant QFontDatabaseWritingSystem := 29;
QFontDatabaseSymbol     : constant QFontDatabaseWritingSystem := 30;
QFontDatabaseOther      : constant QFontDatabaseWritingSystem := 30;
QFontDatabaseOgham      : constant QFontDatabaseWritingSystem := 31;
QFontDatabaseRunic      : constant QFontDatabaseWritingSystem := 32;
QFontDatabaseWritingSystemsCount : constant QFontDatabaseWritingSystem := 33;

 function  QFontDatabase_standardSizes return QIntListH;
 pragma Import(C,QFontDatabase_standardSizes,"QFontDatabase_standardSizes");

 function QFontDatabase_create return  QFontDatabaseH;   
 pragma Import(C,QFontDatabase_create,"QFontDatabase_create");

 procedure QFontDatabase_destroy(handle: not null  QFontDatabaseH);   
 pragma Import(C,QFontDatabase_destroy,"QFontDatabase_destroy");

 function  QFontDatabase_writingSystems(handle: not null  QFontDatabaseH) return  QObjectListH;
 pragma Import(C,QFontDatabase_writingSystems,"QFontDatabase_writingSystems");

 function  QFontDatabase_writingSystems2(handle: not null  QFontDatabaseH; family: QStringH) return QObjectListH;
 pragma Import(C,QFontDatabase_writingSystems2,"QFontDatabase_writingSystems2");

 function  QFontDatabase_families(handle: not null  QFontDatabaseH; writingSystem: QFontDatabaseWritingSystem := QFontDatabaseAny) return QStringListH;
 pragma Import(C,QFontDatabase_families,"QFontDatabase_families");

 function  QFontDatabase_styles(handle: not null  QFontDatabaseH; family: QStringH) return QStringListH;
 pragma Import(C,QFontDatabase_styles,"QFontDatabase_styles");

 function  QFontDatabase_pointSizes(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH := null) return QIntListH;
 pragma Import(C,QFontDatabase_pointSizes,"QFontDatabase_pointSizes");

 function  QFontDatabase_smoothSizes(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH) return QIntListH;
 pragma Import(C,QFontDatabase_smoothSizes,"QFontDatabase_smoothSizes");

 function  QFontDatabase_styleString(handle: not null  QFontDatabaseH; font: QFontH) return  QStringH;
 pragma Import(C,QFontDatabase_styleString,"QFontDatabase_styleString");

 function  QFontDatabase_styleString2(handle: not null  QFontDatabaseH; fontInfo: QFontInfoH) return  QStringH;
 pragma Import(C,QFontDatabase_styleString2,"QFontDatabase_styleString2");

 function  QFontDatabase_font(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH; pointSize: Integer) return QFontH;
 pragma Import(C,QFontDatabase_font,"QFontDatabase_font");

 function QFontDatabase_isBitmapScalable(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH := null) return Boolean;   
 pragma Import(C,QFontDatabase_isBitmapScalable,"QFontDatabase_isBitmapScalable");

 function QFontDatabase_isSmoothlyScalable(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH := null) return Boolean;   
 pragma Import(C,QFontDatabase_isSmoothlyScalable,"QFontDatabase_isSmoothlyScalable");

 function QFontDatabase_isScalable(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH := null) return Boolean;   
 pragma Import(C,QFontDatabase_isScalable,"QFontDatabase_isScalable");

 function QFontDatabase_isFixedPitch(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH := null) return Boolean;   
 pragma Import(C,QFontDatabase_isFixedPitch,"QFontDatabase_isFixedPitch");

 function QFontDatabase_italic(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH) return  Boolean;   
 pragma Import(C,QFontDatabase_italic,"QFontDatabase_italic");

 function QFontDatabase_bold(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH) return  Boolean;   
 pragma Import(C,QFontDatabase_bold,"QFontDatabase_bold");

 function QFontDatabase_weight(handle: not null  QFontDatabaseH; family: QStringH; style: QStringH) return  Integer;   
 pragma Import(C,QFontDatabase_weight,"QFontDatabase_weight");

 function  QFontDatabase_writingSystemName(writingSystem: QFontDatabaseWritingSystem) return QStringH;
 pragma Import(C,QFontDatabase_writingSystemName,"QFontDatabase_writingSystemName");

 function  QFontDatabase_writingSystemSample(writingSystem: QFontDatabaseWritingSystem) return QStringH;
 pragma Import(C,QFontDatabase_writingSystemSample,"QFontDatabase_writingSystemSample");

 function QFontDatabase_addApplicationFont(fileName: QStringH) return  Integer;   
 pragma Import(C,QFontDatabase_addApplicationFont,"QFontDatabase_addApplicationFont");

 function QFontDatabase_addApplicationFontFromData(fontData: QByteArrayH) return  Integer;   
 pragma Import(C,QFontDatabase_addApplicationFontFromData,"QFontDatabase_addApplicationFontFromData");

 function  QFontDatabase_applicationFontFamilies(id: Integer) return QStringListH;
 pragma Import(C,QFontDatabase_applicationFontFamilies,"QFontDatabase_applicationFontFamilies");

 function QFontDatabase_removeApplicationFont(id: Integer) return  Boolean;   
 pragma Import(C,QFontDatabase_removeApplicationFont,"QFontDatabase_removeApplicationFont");

 function QFontDatabase_removeAllApplicationFonts return  Boolean;   
 pragma Import(C,QFontDatabase_removeAllApplicationFonts,"QFontDatabase_removeAllApplicationFonts");
 
 function QFontMetrics_create(p1: QFontH) return  QFontMetricsH;    
 pragma Import(C,QFontMetrics_create,"QFontMetrics_create");

 procedure QFontMetrics_destroy(handle: not null  QFontMetricsH);   
 pragma Import(C,QFontMetrics_destroy,"QFontMetrics_destroy");

 function QFontMetrics_create2(p1: QFontH; pd: QPaintDeviceH) return  QFontMetricsH;
 pragma Import(C,QFontMetrics_create2,"QFontMetrics_create2");

 function QFontMetrics_create3(p1: QFontMetricsH) return  QFontMetricsH;
 pragma Import(C,QFontMetrics_create3,"QFontMetrics_create3");

 function QFontMetrics_ascent(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_ascent,"QFontMetrics_ascent");

 function QFontMetrics_descent(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_descent,"QFontMetrics_descent");

 function QFontMetrics_height(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_height,"QFontMetrics_height");
 
 function QFontMetrics_capHeight(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_capHeight,"QFontMetrics_capHeight");
 
 function QFontMetrics_leading(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_leading,"QFontMetrics_leading");

 function QFontMetrics_lineSpacing(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_lineSpacing,"QFontMetrics_lineSpacing");

 function QFontMetrics_minLeftBearing(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_minLeftBearing,"QFontMetrics_minLeftBearing");

 function QFontMetrics_minRightBearing(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_minRightBearing,"QFontMetrics_minRightBearing");

 function QFontMetrics_maxWidth(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_maxWidth,"QFontMetrics_maxWidth");

 function QFontMetrics_xHeight(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_xHeight,"QFontMetrics_xHeight");

 function QFontMetrics_averageCharWidth(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_averageCharWidth,"QFontMetrics_averageCharWidth");

 function QFontMetrics_inFont(handle: not null  QFontMetricsH; p1: QCharH) return  Boolean;   
 pragma Import(C,QFontMetrics_inFont,"QFontMetrics_inFont");

 function QFontMetrics_leftBearing(handle: not null  QFontMetricsH; p1: QCharH) return  Integer;   
 pragma Import(C,QFontMetrics_leftBearing,"QFontMetrics_leftBearing");

 function QFontMetrics_rightBearing(handle: not null  QFontMetricsH; p1: QCharH) return  Integer;   
 pragma Import(C,QFontMetrics_rightBearing,"QFontMetrics_rightBearing");

 function QFontMetrics_width(handle: not null  QFontMetricsH; p1: QStringH; len: Integer := -1) return Integer;    
 pragma Import(C,QFontMetrics_width,"QFontMetrics_width");

 function QFontMetrics_width2(handle: not null  QFontMetricsH; p1: QCharH) return  Integer;
 pragma Import(C,QFontMetrics_width2,"QFontMetrics_width2");

 function QFontMetrics_charWidth(handle: not null  QFontMetricsH; str: QStringH; pos: Integer) return  Integer;   
 pragma Import(C,QFontMetrics_charWidth,"QFontMetrics_charWidth");

 function  QFontMetrics_boundingRect(handle: not null  QFontMetricsH; p1: QCharH) return QRectH;
 pragma Import(C,QFontMetrics_boundingRect,"QFontMetrics_boundingRect");

 function  QFontMetrics_boundingRect2(handle: not null  QFontMetricsH; text: QStringH) return QRectH;
 pragma Import(C,QFontMetrics_boundingRect2,"QFontMetrics_boundingRect2");

 function  QFontMetrics_boundingRect3(handle: not null  QFontMetricsH; r: QRectH; flags: Integer; text: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QRectH;
 pragma Import(C,QFontMetrics_boundingRect3,"QFontMetrics_boundingRect3");

 function  QFontMetrics_boundingRect4(handle: not null  QFontMetricsH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QRectH;
 pragma Import(C,QFontMetrics_boundingRect4,"QFontMetrics_boundingRect4");

 function  QFontMetrics_size(handle: not null  QFontMetricsH; flags: Integer; str: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QSizeH;
 pragma Import(C,QFontMetrics_size,"QFontMetrics_size");

 function  QFontMetrics_tightBoundingRect(handle: not null  QFontMetricsH; text: QStringH) return QRectH;
 pragma Import(C,QFontMetrics_tightBoundingRect,"QFontMetrics_tightBoundingRect");

 function  QFontMetrics_elidedText(handle: not null  QFontMetricsH; text: QStringH; mode: QtTextElideMode; width: Integer; flags: Integer := 0) return  QStringH;
 pragma Import(C,QFontMetrics_elidedText,"QFontMetrics_elidedText");

 function QFontMetrics_underlinePos(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_underlinePos,"QFontMetrics_underlinePos");

 function QFontMetrics_overlinePos(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_overlinePos,"QFontMetrics_overlinePos");

 function QFontMetrics_strikeOutPos(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_strikeOutPos,"QFontMetrics_strikeOutPos");

 function QFontMetrics_lineWidth(handle: not null  QFontMetricsH) return  Integer;   
 pragma Import(C,QFontMetrics_lineWidth,"QFontMetrics_lineWidth");
 
 function QFontMetricsF_create(p1: QFontH) return  QFontMetricsFH;    
 pragma Import(C,QFontMetricsF_create,"QFontMetricsF_create");

 procedure QFontMetricsF_destroy(handle: not null  QFontMetricsFH);   
 pragma Import(C,QFontMetricsF_destroy,"QFontMetricsF_destroy");

 function QFontMetricsF_create2(p1: QFontH; pd: QPaintDeviceH) return  QFontMetricsFH;
 pragma Import(C,QFontMetricsF_create2,"QFontMetricsF_create2");

 function QFontMetricsF_create4(p1: QFontMetricsFH) return  QFontMetricsFH;
 pragma Import(C,QFontMetricsF_create4,"QFontMetricsF_create4");

 function QFontMetricsF_ascent(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_ascent,"QFontMetricsF_ascent");

 function QFontMetricsF_descent(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_descent,"QFontMetricsF_descent");

 function QFontMetricsF_height(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_height,"QFontMetricsF_height");
 
 procedure QFontMetrics_swap(handle:not null QFontMetricsH;otherFM:QFontMetricsH);
 pragma Import(C,QFontMetrics_swap, "QFontMetrics_swap");
 
 function  QFontMetrics_inFontUcs4(handle:not null QFontMetricsH;ucs4:quint) return boolean;
 pragma Import(C,QFontMetrics_inFontUcs4, "QFontMetrics_inFontUcs4");
 
 function  QFontMetrics_horizontalAdvance(handle:not null QFontMetricsH;str:QStringH;len : integer :=  -1) return integer;
 pragma Import(C,QFontMetrics_horizontalAdvance, "QFontMetrics_horizontalAdvance");
 
 function  QFontMetrics_horizontalAdvance2(handle:not null QFontMetricsH;c:QCharH) return integer;
 pragma Import(C,QFontMetrics_horizontalAdvance2, "QFontMetrics_horizontalAdvance2");
 
 procedure QFontMetricsF_swap(handle:not null QFontMetricsFH;otherFM:QFontMetricsFH);
 pragma Import(C,QFontMetricsF_swap, "QFontMetricsF_swap");
 
 function  QFontMetricsF_inFontUcs4(handle:not null QFontMetricsFH;ucs4:quint) return boolean;
 pragma Import(C,QFontMetricsF_inFontUcs4, "QFontMetricsF_inFontUcs4");
 
 function  QFontMetricsF_horizontalAdvance(handle:not null QFontMetricsFH;str:QStringH;len : integer :=  -1) return qreal;
 pragma Import(C,QFontMetricsF_horizontalAdvance, "QFontMetricsF_horizontalAdvance");
 
 function  QFontMetricsF_horizontalAdvance2(handle:not null QFontMetricsFH;c:QCharH) return qreal;
 pragma Import(C,QFontMetricsF_horizontalAdvance2, "QFontMetricsF_horizontalAdvance2");
 
 
 function QFontMetricsF_capHeight(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_capHeight,"QFontMetricsF_capHeight");
 
 function QFontMetricsF_leading(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_leading,"QFontMetricsF_leading");

 function QFontMetricsF_lineSpacing(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_lineSpacing,"QFontMetricsF_lineSpacing");

 function QFontMetricsF_minLeftBearing(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_minLeftBearing,"QFontMetricsF_minLeftBearing");

 function QFontMetricsF_minRightBearing(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_minRightBearing,"QFontMetricsF_minRightBearing");

 function QFontMetricsF_maxWidth(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_maxWidth,"QFontMetricsF_maxWidth");

 function QFontMetricsF_xHeight(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_xHeight,"QFontMetricsF_xHeight");

 function QFontMetricsF_averageCharWidth(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_averageCharWidth,"QFontMetricsF_averageCharWidth");

 function QFontMetricsF_inFont(handle: not null  QFontMetricsFH; p1: QCharH) return  Boolean;   
 pragma Import(C,QFontMetricsF_inFont,"QFontMetricsF_inFont");

 function QFontMetricsF_leftBearing(handle: not null  QFontMetricsFH; p1: QCharH) return  Double;   
 pragma Import(C,QFontMetricsF_leftBearing,"QFontMetricsF_leftBearing");

 function QFontMetricsF_rightBearing(handle: not null  QFontMetricsFH; p1: QCharH) return  Double;   
 pragma Import(C,QFontMetricsF_rightBearing,"QFontMetricsF_rightBearing");

 function QFontMetricsF_width(handle: not null  QFontMetricsFH; str: QStringH) return  Double;    
 pragma Import(C,QFontMetricsF_width,"QFontMetricsF_width");

 function QFontMetricsF_width2(handle: not null  QFontMetricsFH; p1: QCharH) return  Double;
 pragma Import(C,QFontMetricsF_width2,"QFontMetricsF_width2");

 function  QFontMetricsF_boundingRect(handle: not null  QFontMetricsFH; str: QStringH) return QRectFH;
 pragma Import(C,QFontMetricsF_boundingRect,"QFontMetricsF_boundingRect");

 function  QFontMetricsF_boundingRect2(handle: not null  QFontMetricsFH; p1: QCharH) return QRectFH;
 pragma Import(C,QFontMetricsF_boundingRect2,"QFontMetricsF_boundingRect2");

 function  QFontMetricsF_boundingRect3(handle: not null  QFontMetricsFH; r: QRectFH; flags: Integer; str: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QRectFH;
 pragma Import(C,QFontMetricsF_boundingRect3,"QFontMetricsF_boundingRect3");

 function  QFontMetricsF_size(handle: not null  QFontMetricsFH; flags: Integer; str: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QSizeFH;
 pragma Import(C,QFontMetricsF_size,"QFontMetricsF_size");

 function  QFontMetricsF_tightBoundingRect(handle: not null  QFontMetricsFH; text: QStringH) return QRectFH;
 pragma Import(C,QFontMetricsF_tightBoundingRect,"QFontMetricsF_tightBoundingRect");

 function  QFontMetricsF_elidedText(handle: not null  QFontMetricsFH; text: QStringH; mode: QtTextElideMode; width: Double; flags: Integer := 0) return  QStringH;
 pragma Import(C,QFontMetricsF_elidedText,"QFontMetricsF_elidedText");

 function QFontMetricsF_underlinePos(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_underlinePos,"QFontMetricsF_underlinePos");

 function QFontMetricsF_overlinePos(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_overlinePos,"QFontMetricsF_overlinePos");

 function QFontMetricsF_strikeOutPos(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_strikeOutPos,"QFontMetricsF_strikeOutPos");

 function QFontMetricsF_lineWidth(handle: not null  QFontMetricsFH) return  Double;   
 pragma Import(C,QFontMetricsF_lineWidth,"QFontMetricsF_lineWidth");
 
 function QFontInfo_create(p1: QFontH) return  QFontInfoH;    
 pragma Import(C,QFontInfo_create,"QFontInfo_create");

 procedure QFontInfo_destroy(handle: not null  QFontInfoH);   
 pragma Import(C,QFontInfo_destroy,"QFontInfo_destroy");

 function QFontInfo_create2(p1: QFontInfoH) return  QFontInfoH;
 pragma Import(C,QFontInfo_create2,"QFontInfo_create2");

 function  QFontInfo_family(handle: not null  QFontInfoH) return QStringH;
 pragma Import(C,QFontInfo_family,"QFontInfo_family");

 function QFontInfo_pixelSize(handle: not null  QFontInfoH) return  Integer;   
 pragma Import(C,QFontInfo_pixelSize,"QFontInfo_pixelSize");

 function QFontInfo_pointSize(handle: not null  QFontInfoH) return  Integer;   
 pragma Import(C,QFontInfo_pointSize,"QFontInfo_pointSize");

 function QFontInfo_pointSizeF(handle: not null  QFontInfoH) return  Double;   
 pragma Import(C,QFontInfo_pointSizeF,"QFontInfo_pointSizeF");

 function QFontInfo_italic(handle: not null  QFontInfoH) return  Boolean;   
 pragma Import(C,QFontInfo_italic,"QFontInfo_italic");

 function QFontInfo_style(handle: not null  QFontInfoH) return  QFontStyle;   
 pragma Import(C,QFontInfo_style,"QFontInfo_style");

 function QFontInfo_weight(handle: not null  QFontInfoH) return  Integer;   
 pragma Import(C,QFontInfo_weight,"QFontInfo_weight");

 function QFontInfo_bold(handle: not null  QFontInfoH) return  Boolean;   
 pragma Import(C,QFontInfo_bold,"QFontInfo_bold");

 function QFontInfo_underline(handle: not null  QFontInfoH) return  Boolean;   
 pragma Import(C,QFontInfo_underline,"QFontInfo_underline");

 function QFontInfo_overline(handle: not null  QFontInfoH) return  Boolean;   
 pragma Import(C,QFontInfo_overline,"QFontInfo_overline");

 function QFontInfo_strikeOut(handle: not null  QFontInfoH) return  Boolean;   
 pragma Import(C,QFontInfo_strikeOut,"QFontInfo_strikeOut");

 function QFontInfo_fixedPitch(handle: not null  QFontInfoH) return  Boolean;   
 pragma Import(C,QFontInfo_fixedPitch,"QFontInfo_fixedPitch");

 function QFontInfo_styleHint(handle: not null  QFontInfoH) return  QFontStyleHint;   
 pragma Import(C,QFontInfo_styleHint,"QFontInfo_styleHint");

 function QFontInfo_rawMode(handle: not null  QFontInfoH) return  Boolean;   
 pragma Import(C,QFontInfo_rawMode,"QFontInfo_rawMode");

 function QFontInfo_exactMatch(handle: not null  QFontInfoH) return  Boolean;   
 pragma Import(C,QFontInfo_exactMatch,"QFontInfo_exactMatch");
 
 
 function  QFontComboBox_create(parent:QWidgetH := null) return QFontComboBoxH;
 pragma Import(C,QFontComboBox_create, "QFontComboBox_create");
 
 procedure QFontComboBox_destroy(handle: not null QFontComboBoxH);
 pragma Import(C,QFontComboBox_destroy, "QFontComboBox_destroy");
 
 procedure QFontComboBox_setWritingSystem(handle: not null QFontComboBoxH;system:QFontDatabaseWritingSystem);
 pragma Import(C,QFontComboBox_setWritingSystem, "QFontComboBox_setWritingSystem");
 
 function  QFontComboBox_writingSystem(handle: not null QFontComboBoxH) return QFontDatabaseWritingSystem;
 pragma Import(C,QFontComboBox_writingSystem, "QFontComboBox_writingSystem");
 
 procedure QFontComboBox_setFontFilters(handle: not null QFontComboBoxH; filters:quint);
 pragma Import(C,QFontComboBox_setFontFilters, "QFontComboBox_setFontFilters");
 
 function  QFontComboBox_fontFilters(handle: not null QFontComboBoxH) return quint;
 pragma Import(C,QFontComboBox_fontFilters, "QFontComboBox_fontFilters");
 
 function  QFontComboBox_currentFont(handle: not null QFontComboBoxH) return QFontH;
 pragma Import(C,QFontComboBox_currentFont, "QFontComboBox_currentFont");
 
 function  QFontComboBox_sizeHint(handle: not null QFontComboBoxH) return QSizeH;
 pragma Import(C,QFontComboBox_sizeHint, "QFontComboBox_sizeHint");
 
 procedure QFontComboBox_setCurrentFont(handle: not null QFontComboBoxH;font:QFontH);
 pragma Import(C,QFontComboBox_setCurrentFont, "QFontComboBox_setCurrentFont");
 
 type QFontComboBox_currentFontChangedEvent is access procedure(font:QFontH);
 pragma Convention(C,QFontComboBox_currentFontChangedEvent);
 
 procedure QFontComboBox_signal_slot_currentFontChanged(handle: not null QFontComboBoxH; hook: QFontComboBox_currentFontChangedEvent);
 pragma Import(C,QFontComboBox_signal_slot_currentFontChanged, "QFontComboBox_signal_slot_currentFontChanged");
 
 --------------------------------------------------------------------
 function QFont_create(family: QStringH; pointSize: Integer := -1; weight: Integer := -1; italic: Boolean := False) return QFontH;
 function QFont_create(p1: QFontH; pd: QPaintDeviceH) return  QFontH;
 function QFont_create(p1: QFontH) return  QFontH;
 function QFont_resolve(handle: not null  QFontH) return  LongWord;
 procedure QFont_resolve(handle: not null  QFontH; mask: LongWord);
 function  QFontDatabase_writingSystems(handle: not null  QFontDatabaseH; family: QStringH) return QObjectListH;
 function  QFontDatabase_styleString(handle: not null  QFontDatabaseH; fontInfo: QFontInfoH) return  QStringH;
 
 -----------------------------------------------------------------------
 function QFontMetrics_create(p1: QFontH; pd: QPaintDeviceH) return  QFontMetricsH;
 function QFontMetrics_create(p1: QFontMetricsH) return  QFontMetricsH;
 function QFontMetrics_width(handle: not null  QFontMetricsH; p1: QCharH) return  Integer;
 function  QFontMetrics_boundingRect(handle: not null  QFontMetricsH; text: QStringH) return QRectH;
 function  QFontMetrics_boundingRect(handle: not null  QFontMetricsH; r: QRectH; flags: Integer; text: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QRectH;
 function  QFontMetrics_boundingRect(handle: not null  QFontMetricsH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QRectH;
 function QFontMetricsF_create(p1: QFontH; pd: QPaintDeviceH) return  QFontMetricsFH;
 
 function QFontMetricsF_create(p1: QFontMetricsFH) return  QFontMetricsFH;
 
 function QFontMetricsF_width(handle: not null  QFontMetricsFH; p1: QCharH) return  Double;
 function  QFontMetricsF_boundingRect(handle: not null  QFontMetricsFH; p1: QCharH) return QRectFH;
 function  QFontMetricsF_boundingRect(handle: not null  QFontMetricsFH; r: QRectFH; flags: Integer; str: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QRectFH;
 function QFontInfo_create(p1: QFontInfoH) return  QFontInfoH;
 
 function  QFontMetrics_horizontalAdvance(handle:not null QFontMetricsH;c:QCharH) return integer;
 function  QFontMetricsF_horizontalAdvance(handle:not null QFontMetricsFH;c:QCharH) return qreal;

 end Qt.QFont;
