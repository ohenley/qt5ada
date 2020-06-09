-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QPlaceRatings is

 function  QPlaceRatings_create return QPlaceRatingsH;
 pragma Import(C,QPlaceRatings_create, "QPlaceRatings_create");
 
 function  QPlaceRatings_create2(otherRatings:QPlaceRatingsH) return QPlaceRatingsH;
 pragma Import(C,QPlaceRatings_create2, "QPlaceRatings_create2");
 
 procedure QPlaceRatings_delete(handle:QPlaceRatingsH);
 pragma Import(C,QPlaceRatings_delete, "QPlaceRatings_delete");
 
 function  QPlaceRatings_isEmpty(handle:QPlaceRatingsH) return boolean;
 pragma Import(C,QPlaceRatings_isEmpty, "QPlaceRatings_isEmpty");
 
 function  QPlaceRatings_average(handle:QPlaceRatingsH) return qreal;
 pragma Import(C,QPlaceRatings_average, "QPlaceRatings_average");
 
 procedure QPlaceRatings_setAverage(handle:QPlaceRatingsH;average:qreal); 
 pragma Import(C,QPlaceRatings_setAverage, "QPlaceRatings_setAverage");
 
 function  QPlaceRatings_count(handle:QPlaceRatingsH) return integer;
 pragma Import(C,QPlaceRatings_count, "QPlaceRatings_count");
 
 procedure QPlaceRatings_setCount(handle:QPlaceRatingsH;count:integer);
 pragma Import(C,QPlaceRatings_setCount, "QPlaceRatings_setCount");
 
 function  QPlaceRatings_maximum(handle:QPlaceRatingsH) return qreal;
 pragma Import(C,QPlaceRatings_maximum, "QPlaceRatings_maximum");
 
 procedure QPlaceRatings_setMaximum(handle:QPlaceRatingsH;maximum:integer);
 pragma Import(C,QPlaceRatings_setMaximum, "QPlaceRatings_setMaximum");
 
 function  QPlaceRatings_isEqual(handle,otherRatings:not null QPlaceRatingsH) return boolean;
 pragma Import(C,QPlaceRatings_isEqual, "QPlaceRatings_isEqual");
 
 function  QPlaceRatings_create(otherRatings:QPlaceRatingsH) return QPlaceRatingsH;

end;
