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

package Qt.QNetworkConfigurationManager is

 Capability_CanStartAndStopInterfaces : constant := 1;   
 Capability_DirectConnectionRouting   : constant := 2;   
 Capability_SystemSessionSupport      : constant := 4;   
 Capability_ApplicationLevelRoaming   : constant := 8;   
 Capability_ForcedRoaming             : constant := 16#10#;
 Capability_DataStatistics            : constant := 16#20#; 
 Capability_NetworkSessionRequired    : constant := 16#40#; 

 function  QNetworkConfigurationManager_create(parent:QObjectH) return QNetworkConfigurationManagerH;
 pragma Import(C,QNetworkConfigurationManager_create, "QNetworkConfigurationManager_create");
 
 procedure QNetworkConfigurationManager_destroy(handle: not null QNetworkConfigurationManagerH);
 pragma Import(C,QNetworkConfigurationManager_destroy, "QNetworkConfigurationManager_destroy");
 
 function  QNetworkConfigurationManager_capabilities(handle: not null QNetworkConfigurationManagerH) return integer;
 pragma Import(C,QNetworkConfigurationManager_capabilities, "QNetworkConfigurationManager_capabilities");
 
 function  QNetworkConfiguration_defaultConfiguration(handle: not null QNetworkConfigurationManagerH) return QNetworkConfigurationH;
 pragma Import(C,QNetworkConfiguration_defaultConfiguration, "QNetworkConfiguration_defaultConfiguration");
 
 function   QNetworkConfigurationManager_allConfigurations(handle: not null QNetworkConfigurationManagerH; flags : integer := 0) return void_Star;
 pragma Import(C,QNetworkConfigurationManager_allConfigurations, "QNetworkConfigurationManager_allConfigurations");
 
 function  QNetworkConfigurationManager_configurationFromIdentifier(handle: not null QNetworkConfigurationManagerH; identifier: QStringH) return QNetworkConfigurationH;
 pragma Import(C,QNetworkConfigurationManager_configurationFromIdentifier, "QNetworkConfigurationManager_configurationFromIdentifier");
 
 procedure QNetworkConfigurationManager_updateConfigurations(handle: not null QNetworkConfigurationManagerH);
 pragma Import(C,QNetworkConfigurationManager_updateConfigurations, "QNetworkConfigurationManager_updateConfigurations");
 
 function  QNetworkConfigurationManager_isOnline(handle: not null QNetworkConfigurationManagerH) return boolean;
 pragma Import(C,QNetworkConfigurationManager_isOnline, "QNetworkConfigurationManager_isOnline");
 
 type QNetworkConfigurationManager_configurationAddedEvent is access procedure(config:QNetworkConfigurationH);
 pragma Convention(C,QNetworkConfigurationManager_configurationAddedEvent);

 type QNetworkConfigurationManager_configurationRemovedEvent is access procedure(config:QNetworkConfigurationH);
 pragma Convention(C,QNetworkConfigurationManager_configurationRemovedEvent);

 type QNetworkConfigurationManager_configurationChangedEvent is access procedure(config:QNetworkConfigurationH);
 pragma Convention(C,QNetworkConfigurationManager_configurationChangedEvent);

 type QNetworkConfigurationManager_onlineStateChangedEvent is access procedure(isOnline:boolean);
 pragma Convention(C,QNetworkConfigurationManager_onlineStateChangedEvent);

 type QNetworkConfigurationManager_updateCompletedEvent is access procedure;
 pragma Convention(C,QNetworkConfigurationManager_updateCompletedEvent);

 procedure QNetworkConfigurationManager_signal_slot_configurationAdded(handle: not null QNetworkConfigurationManagerH; hook:QNetworkConfigurationManager_configurationAddedEvent);
 pragma Import(C,QNetworkConfigurationManager_signal_slot_configurationAdded, "QNetworkConfigurationManager_signal_slot_configurationAdded");
 
 procedure QNetworkConfigurationManager_signal_slot_configurationRemoved(handle: not null QNetworkConfigurationManagerH; hook:QNetworkConfigurationManager_configurationRemovedEvent );
 pragma Import(C,QNetworkConfigurationManager_signal_slot_configurationRemoved, "QNetworkConfigurationManager_signal_slot_configurationRemoved");
 
 procedure QNetworkConfigurationManager_signal_slot_configurationChanged(handle: not null QNetworkConfigurationManagerH; hook:QNetworkConfigurationManager_configurationChangedEvent);
 pragma Import(C,QNetworkConfigurationManager_signal_slot_configurationChanged, "QNetworkConfigurationManager_signal_slot_configurationChanged");
 
 procedure QNetworkConfigurationManager_signal_slot_onlineStateChanged(handle: not null QNetworkConfigurationManagerH; hook:QNetworkConfigurationManager_onlineStateChangedEvent);
 pragma Import(C,QNetworkConfigurationManager_signal_slot_onlineStateChanged, "QNetworkConfigurationManager_signal_slot_onlineStateChanged");
 
 procedure QNetworkConfigurationManager_signal_slot_updateCompleted(handle: not null QNetworkConfigurationManagerH; hook:QNetworkConfigurationManager_updateCompletedEvent );
 pragma Import(C,QNetworkConfigurationManager_signal_slot_updateCompleted, "QNetworkConfigurationManager_signal_slot_updateCompleted");


end Qt.QNetworkConfigurationManager;
