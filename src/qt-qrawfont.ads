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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QFont;      use Qt.QFont;
with Qt.QTransform; use Qt.QTransform;
with builtin; use builtin;
package Qt.QRawFont  is

 type AntialiasingType is (PixelAntialiasing,SubPixelAntialiasing);
 pragma convention(C,AntialiasingType);

 type LayoutFlag is new integer;
 SeparateAdvances : constant LayoutFlag := 0;
 KernedAdvances   : constant LayoutFlag := 1;
 UseDesignMetrics : constant LayoutFlag := 2;
       

 function  QRawFont_create return QFontH;
 pragma Import(C,QRawFont_create, "QRawFont_create");
 
 function  QRawFont_create2( fileName:QStringH;pixelSize:qreal;hintPreference :FontHintingPreference := PreferDefaultHinting) return QFontH;
 pragma Import(C,QRawFont_create2, "QRawFont_create2");
 
 function  QRawFont_create3( fontData:QByteArrayH;pixelSize:qreal;hintPreference :FontHintingPreference := PreferDefaultHinting) return QFontH;
 pragma Import(C,QRawFont_create3, "QRawFont_create3");
 
 function  QRawFont_create4(other:QFontH) return QFontH;
 pragma Import(C,QRawFont_create4, "QRawFont_create4");
 
 procedure QRawFont_destroy(handle:not null QFontH);
 pragma Import(C,QRawFont_destroy, "QRawFont_destroy");
 
 procedure QRawFont_swap(handle:not null QFontH;other:QFontH);
 pragma Import(C,QRawFont_swap, "QRawFont_swap");
 
 function  QRawFont_isValid(handle:not null QFontH)  return boolean;
 pragma Import(C,QRawFont_isValid, "QRawFont_isValid");
 
 function  QRawFont_equal(handle:not null QFontH;other: QFontH)  return boolean;
 pragma Import(C,QRawFont_equal, "QRawFont_equal");
 
 function  QRawFont_notEqual(handle:not null QFontH;other: QFontH) return boolean;
 pragma Import(C,QRawFont_notEqual, "QRawFont_notEqual");
 
 function  QRawFont_familyName(handle:not null QFontH) return QStringH;
 pragma Import(C,QRawFont_familyName, "QRawFont_familyName");
 
 function  QRawFont_styleName(handle:not null QFontH) return QStringH;
 pragma Import(C,QRawFont_styleName, "QRawFont_styleName");
 
 function  QRawFont_style(handle:not null QFontH) return QFontStyle;
 pragma Import(C,QRawFont_style, "QRawFont_style");
 
 function  QRawFont_weight(handle:not null QFontH) return integer;
 pragma Import(C,QRawFont_weight, "QRawFont_weight");
 
 function  QRawFont_glyphIndexesForString(handle:not null QFontH;text: QStringH) return QVectorH;
 pragma Import(C,QRawFont_glyphIndexesForString, "QRawFont_glyphIndexesForString");
 
 function  QRawFont_advancesForGlyphIndexes(handle:not null QFontH;glyphIndexes: QVectorH)  return QVectorH;
 pragma Import(C,QRawFont_advancesForGlyphIndexes, "QRawFont_advancesForGlyphIndexes");
 
 function  QRawFont_advancesForGlyphIndexes2(handle:not null QFontH;glyphIndexes: QVectorH;layoutFlgs: LayoutFlag)  return QVectorH;
 pragma Import(C,QRawFont_advancesForGlyphIndexes2, "QRawFont_advancesForGlyphIndexes2");
 
 function  QRawFont_advancesForGlyphIndexes3(handle:not null QFontH;glyphIndexes: in out quint;advances: QPointFH;numGlyphs: integer)  return boolean;
 pragma Import(C,QRawFont_advancesForGlyphIndexes3, "QRawFont_advancesForGlyphIndexes3");
 
 function  QRawFont_advancesForGlyphIndexes4(handle:not null QFontH;glyphIndexes: in out quint;advances: QPointFH;numGlyphs: integer;layoutFlgs: LayoutFlag)  return boolean;
 pragma Import(C,QRawFont_advancesForGlyphIndexes4, "QRawFont_advancesForGlyphIndexes4");
 
 function  QRawFont_glyphIndexesForChars(handle:not null QFontH;chars: QCharH;numChars: integer;glyphIndexes:in out quint;numGlyphs: in out integer) return boolean;
 pragma Import(C,QRawFont_glyphIndexesForChars, "QRawFont_glyphIndexesForChars");
 
 function  QRawFont_alphaMapForGlyph(handle:not null QFontH;glyphIndex:quint;antialiasingTp : AntialiasingType :=  SubPixelAntialiasing;transform : QTransformH :=  QTransform_create) return QImageH;
 pragma Import(C,QRawFont_alphaMapForGlyph, "QRawFont_alphaMapForGlyph");
 
 function  QRawFont_pathForGlyph(handle:not null QFontH;glyphIndex:quint) return QPainterPathH;
 pragma Import(C,QRawFont_pathForGlyph, "QRawFont_pathForGlyph");
 
 function  QRawFont_boundingRect(handle:not null QFontH;glyphIndex:quint) return QRectFH;
 pragma Import(C,QRawFont_boundingRect, "QRawFont_boundingRect");
 
 procedure QRawFont_setPixelSize(handle:not null QFontH;pixelSize:qreal);
 pragma Import(C,QRawFont_setPixelSize, "QRawFont_setPixelSize");
 
 function  QRawFont_pixelSize(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_pixelSize, "QRawFont_pixelSize");
 
 function  QRawFont_hintingPreference(handle:not null QFontH) return FontHintingPreference;
 pragma Import(C,QRawFont_hintingPreference, "QRawFont_hintingPreference");
 
 function  QRawFont_ascent(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_ascent, "QRawFont_ascent");
 
 function  QRawFont_capHeight(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_capHeight, "QRawFont_capHeight");
 
 function  QRawFont_descent(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_descent, "QRawFont_descent");
 
 function  QRawFont_leading(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_leading, "QRawFont_leading");
 
 function  QRawFont_xHeight(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_xHeight, "QRawFont_xHeight");
 
 function  QRawFont_averageCharWidth(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_averageCharWidth, "QRawFont_averageCharWidth");
 
 function  QRawFont_maxCharWidth(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_maxCharWidth, "QRawFont_maxCharWidth");
 
 function  QRawFont_lineThickness(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_lineThickness, "QRawFont_lineThickness");
 
 function  QRawFont_underlinePosition(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_underlinePosition, "QRawFont_underlinePosition");
 
 function  QRawFont_unitsPerEm(handle:not null QFontH) return qreal;
 pragma Import(C,QRawFont_unitsPerEm, "QRawFont_unitsPerEm");
 
 procedure QRawFont_loadFromFile(handle:not null QFontH;fileName: QStringH;pixelSize:qreal;hintingPreference:FontHintingPreference);
 pragma Import(C,QRawFont_loadFromFile, "QRawFont_loadFromFile");
 
 procedure QRawFont_loadFromData(handle:not null QFontH;fontData:QByteArrayH;pixelSize:qreal;hintingPreference:FontHintingPreference);
 pragma Import(C,QRawFont_loadFromData, "QRawFont_loadFromData");
 
 function  QRawFont_supportsCharacter(handle:not null QFontH;character:QCharH) return boolean;
 pragma Import(C,QRawFont_supportsCharacter, "QRawFont_supportsCharacter");
 
 function  QRawFont_supportedWritingSystems(handle:not null QFontH) return QObjectListH;
 pragma Import(C,QRawFont_supportedWritingSystems, "QRawFont_supportedWritingSystems");
 
 function  QRawFont_fontTable(handle:not null  QFontH; tagName:zstring)  return QByteArrayH;
 pragma Import(C,QRawFont_fontTable, "QRawFont_fontTable");
 
 function  QRawFont_fromFont(font:QFontH;writingSystem : QFontDatabaseWritingSystem :=  QFontDatabaseAny) return QFontH;
 pragma Import(C,QRawFont_fromFont, "QRawFont_fromFont");
 
---------------------------------------------------------------------
 function  QRawFont_create( fileName:QStringH;pixelSize:qreal;hintPreference :FontHintingPreference := PreferDefaultHinting) return QFontH;
 function  QRawFont_create( fontData:QByteArrayH;pixelSize:qreal;hintPreference :FontHintingPreference := PreferDefaultHinting) return QFontH;
 function  QRawFont_create(other:QFontH) return QFontH;
 function  QRawFont_advancesForGlyphIndexes(handle:not null QFontH;glyphIndexes: QVectorH;layoutFlgs: LayoutFlag)  return QVectorH;
 function  QRawFont_advancesForGlyphIndexes(handle:not null QFontH;glyphIndexes: in out quint;advances: QPointFH;numGlyphs: integer)  return boolean;
 function  QRawFont_advancesForGlyphIndexes(handle:not null QFontH;glyphIndexes: in out quint;advances: QPointFH;numGlyphs: integer;layoutFlgs: LayoutFlag)  return boolean;

end;
