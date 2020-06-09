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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QNetworkConfiguration is

  Type_InternetAccessPoint : constant := 0;
  Type_ServiceNetwork      : constant := 1;
  Type_UserChoice          : constant := 2;
  Type_Invalid             : constant := 3;

  UnknownPurpose           : constant := 0;
  PublicPurpose            : constant := 1;
  PrivatePurpose           : constant := 2;
  ServiceSpecificPurpose   : constant := 3;

  StateFlag_Undefined      : constant := 1;
  StateFlag_Defined        : constant := 2;
  StateFlag_Discovered     : constant := 6;
  StateFlag_Active         : constant := 16#e#;

  BearerUnknown            : constant := 0;
  BearerEthernet           : constant := 1;
  BearerWLAN               : constant := 2;
  Bearer2G                 : constant := 3;
  BearerCDMA2000           : constant := 4;
  BearerWCDMA              : constant := 5;
  BearerHSPA               : constant := 6;
  BearerBluetooth          : constant := 7;
  BearerWiMAX              : constant := 8;

 function  QNetworkConfiguration_create return QNetworkConfigurationH;
 pragma Import(C,QNetworkConfiguration_create, "QNetworkConfiguration_create");
 
 function  QNetworkConfiguration_create2(otherConfig:QNetworkConfigurationH) return QNetworkConfigurationH;
 pragma Import(C,QNetworkConfiguration_create2, "QNetworkConfiguration_create2");
 
 procedure QNetworkConfiguration_destroy(handle: not null QNetworkConfigurationH);
 pragma Import(C,QNetworkConfiguration_destroy, "QNetworkConfiguration_destroy");
 
 function  QNetworkConfiguration_state(handle: not null QNetworkConfigurationH) return integer;
 pragma Import(C,QNetworkConfiguration_state, "QNetworkConfiguration_state");
 
 function  QNetworkConfiguration_type(handle: not null QNetworkConfigurationH) return integer;
 pragma Import(C,QNetworkConfiguration_type, "QNetworkConfiguration_type");
 
 function  QNetworkConfiguration_purpose(handle: not null QNetworkConfigurationH) return integer;
 pragma Import(C,QNetworkConfiguration_purpose, "QNetworkConfiguration_purpose");
 
 function  QNetworkConfiguration_identifier(handle: not null QNetworkConfigurationH) return QStringH;
 pragma Import(C,QNetworkConfiguration_identifier, "QNetworkConfiguration_identifier");
 
 function  QNetworkConfiguration_isRoamingAvailable(handle: not null QNetworkConfigurationH) return  boolean;
 pragma Import(C,QNetworkConfiguration_isRoamingAvailable, "QNetworkConfiguration_isRoamingAvailable");
 
 function  QNetworkConfiguration_children(handle: not null QNetworkConfigurationH) return void_Star;
 pragma Import(C,QNetworkConfiguration_children, "QNetworkConfiguration_children");
 
 function  QNetworkConfiguration_name(handle: not null QNetworkConfigurationH) return QStringH;
 pragma Import(C,QNetworkConfiguration_name, "QNetworkConfiguration_name");
 
 function  QNetworkConfiguration_isValid(handle: not null QNetworkConfigurationH) return  boolean;
 pragma Import(C,QNetworkConfiguration_isValid, "QNetworkConfiguration_isValid");
 
----------------------------------------------------------------------------------------------------
 function  QNetworkConfiguration_create(otherConfig:QNetworkConfigurationH) return QNetworkConfigurationH;

end Qt.QNetworkConfiguration;
