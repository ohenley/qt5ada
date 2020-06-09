--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QPageSize  is 

 function  QPageSize_create(pSizeId:PageSizeId) return QPageSizeH is
 begin
  return QPageSize_create2(pSizeId);
 end;

 function  QPageSize_create(pointSize:QSizeH;name:QStringH := QString_create;matchPolicy:SizeMatchPolicy := FuzzyMatch) return QPageSizeH is
 begin
   return QPageSize_create3(pointSize,name,matchPolicy);
 end;

 function  QPageSize_create(size:QSizeFH;units:Unit;name:QStringH := QString_create; matchPolicy:SizeMatchPolicy := FuzzyMatch) return QPageSizeH is
 begin
   return  QPageSize_create4(size,units,name,matchPolicy);
 end;

 function  QPageSize_create(otherPageSize:QPageSizeH) return QPageSizeH is
 begin
   return  QPageSize_create5(otherPageSize);
 end;

 function  QPageSize_definitionSize(psId:PageSizeId) return QSizeFH is
 begin
   return  QPageSize_definitionSize2(psId);
 end;

 function  QPageSize_definitionUnits(psId:PageSizeId) return Unit is
 begin
   return  QPageSize_definitionUnits2(psId);
 end;

 function  QPageSize_size(psId:PageSizeId;units:Unit) return QSizeFH is
 begin
   return  QPageSize_size2(psId,units);
 end;

 function  QPageSize_sizePoints(psId:PageSizeId) return QSizeH is
 begin
   return  QPageSize_sizePoints2(psId);
 end;

 function  QPageSize_sizePixels(psId:PageSizeId;resolution:integer) return QSizeH is
 begin
   return  QPageSize_sizePixels2(psId,resolution);
 end;

 function  QPageSize_key(psId:PageSizeId) return QStringH is
 begin
   return  QPageSize_key2(psId);
 end;

 function  QPageSize_name(psId:PageSizeId) return QStringH is
 begin
   return  QPageSize_name2(psId);
 end;

 function  QPageSize_id( pointSize:QSizeH;matchPolicy:SizeMatchPolicy := FuzzyMatch) return PageSizeId is
 begin
   return  QPageSize_id2( pointSize,matchPolicy);
 end;

 function  QPageSize_id(size:QSizeFH;units:Unit; matchPolicy:SizeMatchPolicy := FuzzyMatch) return PageSizeId is
 begin
   return  QPageSize_id3(size,units,matchPolicy);
 end;

 function  QPageSize_id(windowsId:integer) return PageSizeId is
 begin
   return  QPageSize_id4(windowsId);
 end;

end;
