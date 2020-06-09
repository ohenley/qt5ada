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

package body Qt.QRawFont  is

 function  QRawFont_create( fileName:QStringH;pixelSize:qreal;hintPreference :FontHintingPreference := PreferDefaultHinting) return QFontH is
 begin
   return  QRawFont_create2( fileName,pixelSize,hintPreference);
 end;

 function  QRawFont_create( fontData:QByteArrayH;pixelSize:qreal;hintPreference :FontHintingPreference := PreferDefaultHinting) return QFontH is
 begin
   return  QRawFont_create3(fontData,pixelSize,hintPreference);
 end;

 function  QRawFont_create(other:QFontH) return QFontH is
 begin
   return  QRawFont_create4(other);
 end;

 function  QRawFont_advancesForGlyphIndexes(handle:not null QFontH;glyphIndexes: QVectorH;layoutFlgs: LayoutFlag)  return QVectorH is
 begin
   return  QRawFont_advancesForGlyphIndexes2(handle,glyphIndexes,layoutFlgs);
 end;

 function  QRawFont_advancesForGlyphIndexes(handle:not null QFontH;glyphIndexes: in out quint;advances: QPointFH;numGlyphs: integer)  return boolean is
 begin
   return  QRawFont_advancesForGlyphIndexes3(handle,glyphIndexes,advances,numGlyphs);
 end;

 function  QRawFont_advancesForGlyphIndexes(handle:not null QFontH;glyphIndexes: in out quint;advances: QPointFH;numGlyphs: integer;layoutFlgs: LayoutFlag)  return boolean is
 begin
   return  QRawFont_advancesForGlyphIndexes4(handle,glyphIndexes,advances,numGlyphs,layoutFlgs);
 end;

end;
