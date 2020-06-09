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

package Qt.QPlaceMatchRequest is

 function  QPlaceMatchRequest_create return QPlaceMatchRequestH;
 pragma Import(C,QPlaceMatchRequest_create, "QPlaceMatchRequest_create");
 
 function  QPlaceMatchRequest_create2(otherRequest:QPlaceMatchRequestH) return QPlaceMatchRequestH;
 pragma Import(C,QPlaceMatchRequest_create2, "QPlaceMatchRequest_create2");
 
 procedure QPlaceMatchRequest_delete(handle:not null QPlaceMatchRequestH);
 pragma Import(C,QPlaceMatchRequest_delete, "QPlaceMatchRequest_delete");
 
 procedure QPlaceMatchRequest_clear(handle:not null QPlaceMatchRequestH);
 pragma Import(C,QPlaceMatchRequest_clear, "QPlaceMatchRequest_clear");
 
 function  QPlaceMatchRequest_places(handle:not null QPlaceMatchRequestH) return QObjectListH;
 pragma Import(C,QPlaceMatchRequest_places, "QPlaceMatchRequest_places");
 
 procedure QPlaceMatchRequest_setPlaces(handle:not null QPlaceMatchRequestH;places:QObjectListH);
 pragma Import(C,QPlaceMatchRequest_setPlaces, "QPlaceMatchRequest_setPlaces");
 
 procedure QPlaceMatchRequest_setResults(handle:not null QPlaceMatchRequestH;results:QObjectListH);
 pragma Import(C,QPlaceMatchRequest_setResults, "QPlaceMatchRequest_setResults");
 
 function  QPlaceMatchRequest_parameters(handle:not null QPlaceMatchRequestH) return QVariantMapH;
 pragma Import(C,QPlaceMatchRequest_parameters, "QPlaceMatchRequest_parameters");
 
 procedure QPlaceMatchRequest_setParameters(handle:not null QPlaceMatchRequestH;parameters:QVariantMapH);
 pragma Import(C,QPlaceMatchRequest_setParameters, "QPlaceMatchRequest_setParameters");
 
 function  QPlaceMatchRequest_isEqual(handle,otherRequest:not null QPlaceMatchRequestH) return boolean;
 pragma Import(C,QPlaceMatchRequest_isEqual, "QPlaceMatchRequest_isEqual");
 
 function  QPlaceMatchRequest_AlternativeId(handle:not null QPlaceMatchRequestH) return QStringH;
 pragma Import(C,QPlaceMatchRequest_AlternativeId, "QPlaceMatchRequest_AlternativeId");
 
 function  QPlaceMatchRequest_create(otherRequest:QPlaceMatchRequestH) return QPlaceMatchRequestH;

end;
