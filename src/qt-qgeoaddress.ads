--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QGeoAddress is

 function  QGeoAddress_create return QGeoAddressH;
 pragma Import(C,QGeoAddress_create, "QGeoAddress_create");
 
 function  QGeoAddress_create2(other:QGeoAddressH) return QGeoAddressH;
 pragma Import(C,QGeoAddress_create2, "QGeoAddress_create2");
 
 procedure QGeoAddress_destroy(handle:not null QGeoAddressH);
 pragma Import(C,QGeoAddress_destroy, "QGeoAddress_destroy");
 
 function  QGeoAddress_isEmpty(handle:not null QGeoAddressH) return boolean;
 pragma Import(C,QGeoAddress_isEmpty, "QGeoAddress_isEmpty");
 
 function  QGeoAddress_text(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_text, "QGeoAddress_text");
 
 procedure QGeoAddress_setText(handle:not null QGeoAddressH;text:QStringH);
 pragma Import(C,QGeoAddress_setText, "QGeoAddress_setText");
 
 function  QGeoAddress_country(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_country, "QGeoAddress_country");
 
 procedure QGeoAddress_setCountry(handle:not null QGeoAddressH;country:QStringH);
 pragma Import(C,QGeoAddress_setCountry, "QGeoAddress_setCountry");
 
 function  QGeoAddress_countryCode(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_countryCode, "QGeoAddress_countryCode");
 
 procedure QGeoAddress_setCountryCode(handle:not null QGeoAddressH; countryCode:QStringH);
 pragma Import(C,QGeoAddress_setCountryCode, "QGeoAddress_setCountryCode");
 
 function  QGeoAddress_state(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_state, "QGeoAddress_state");
 
 procedure QGeoAddress_setState(handle:not null QGeoAddressH;state:QStringH);
 pragma Import(C,QGeoAddress_setState, "QGeoAddress_setState");
 
 function  QGeoAddress_county(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_county, "QGeoAddress_county");
 
 procedure QGeoAddress_setCounty(handle:not null QGeoAddressH;country:QStringH);
 pragma Import(C,QGeoAddress_setCounty, "QGeoAddress_setCounty");
 
 function  QGeoAddress_city(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_city, "QGeoAddress_city");
 
 procedure QGeoAddress_setCity(handle:not null QGeoAddressH;city:QStringH);
 pragma Import(C,QGeoAddress_setCity, "QGeoAddress_setCity");
 
 function  QGeoAddress_district(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_district, "QGeoAddress_district");
 
 procedure QGeoAddress_setDistrict(handle:not null QGeoAddressH; district:QStringH);
 pragma Import(C,QGeoAddress_setDistrict, "QGeoAddress_setDistrict");
 
 function  QGeoAddress_postalCode(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_postalCode, "QGeoAddress_postalCode");
 
 procedure QGeoAddress_setPostalCode(handle:not null QGeoAddressH; postalCode:QStringH);
 pragma Import(C,QGeoAddress_setPostalCode, "QGeoAddress_setPostalCode");
 
 function  QGeoAddress_street(handle:not null QGeoAddressH) return QStringH;
 pragma Import(C,QGeoAddress_street, "QGeoAddress_street");
 
 procedure QGeoAddress_setStreet(handle:not null QGeoAddressH;street:QStringH);
 pragma Import(C,QGeoAddress_setStreet, "QGeoAddress_setStreet");
 
 procedure QGeoAddress_clear(handle:not null QGeoAddressH);
 pragma Import(C,QGeoAddress_clear, "QGeoAddress_clear");
 
 function  QGeoAddress_isTextGenerated(handle:not null QGeoAddressH) return boolean;
 pragma Import(C,QGeoAddress_isTextGenerated, "QGeoAddress_isTextGenerated");
 
 function  QGeoAddress_create(other:QGeoAddressH) return QGeoAddressH;

end;
