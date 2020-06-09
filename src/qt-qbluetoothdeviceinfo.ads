-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QBluetoothDeviceInfo  is

 subtype MajorDeviceClass is Cardinal;

 MiscellaneousDevice : constant MajorDeviceClass := 0;
 ComputerDevice      : constant MajorDeviceClass := 1;
 PhoneDevice         : constant MajorDeviceClass := 2;
 LANAccessDevice     : constant MajorDeviceClass := 3;
 AudioVideoDevice    : constant MajorDeviceClass := 4;
 PeripheralDevice    : constant MajorDeviceClass := 5;
 ImagingDevice       : constant MajorDeviceClass := 6;
 WearableDevice      : constant MajorDeviceClass := 7;
 ToyDevice           : constant MajorDeviceClass := 8;
 HealthDevice        : constant MajorDeviceClass := 9;
 UncategorizedDevice : constant MajorDeviceClass := 31;

 subtype MinorMiscellaneousClass is Cardinal;
 UncategorizedMiscellaneous : constant MinorMiscellaneousClass := 0;

 type MinorComputerClass is (UncategorizedComputer,DesktopComputer,ServerComputer,LaptopComputer,
       HandheldClamShellComputer,HandheldComputer,WearableComputer);
 pragma convention(C,MinorComputerClass);

 type MinorPhoneClass is (UncategorizedPhone,CellularPhone,CordlessPhone,
        SmartPhone,WiredModemOrVoiceGatewayPhone,CommonIsdnAccessPhone);
 pragma convention(C,MinorPhoneClass);

 subtype MinorNetworkClass is Cardinal;
 NetworkFullService     : constant MinorNetworkClass := 16#00#;
 NetworkLoadFactorOne   : constant MinorNetworkClass := 16#08#;
 NetworkLoadFactorTwo   : constant MinorNetworkClass := 16#10#;
 NetworkLoadFactorThree : constant MinorNetworkClass := 16#18#;
 NetworkLoadFactorFour  : constant MinorNetworkClass := 16#20#;
 NetworkLoadFactorFive  : constant MinorNetworkClass := 16#28#;
 NetworkLoadFactorSix   : constant MinorNetworkClass := 16#30#;
 NetworkNoService       : constant MinorNetworkClass := 16#38#;

 type MinorAudioVideoClass is (UncategorizedAudioVideoDevice,WearableHeadsetDevice,HandsFreeDevice,reserved1,
        Microphone,Loudspeaker,Headphones,PortableAudioDevice,CarAudio,
        SetTopBox,HiFiAudioDevice,Vcr,VideoCamera,Camcorder,VideoMonitor,
        VideoDisplayAndLoudspeaker,VideoConferencing,reserved2,GamingDevice);
 pragma convention(C,MinorAudioVideoClass);

 subtype MinorPeripheralClass is Cardinal;

 UncategorizedPeripheral              : constant MinorPeripheralClass := 0;
 KeyboardPeripheral                   : constant MinorPeripheralClass := 16#10#;
 PointingDevicePeripheral             : constant MinorPeripheralClass := 16#20#;
 KeyboardWithPointingDevicePeripheral : constant MinorPeripheralClass := 16#30#;
 JoystickPeripheral                   : constant MinorPeripheralClass := 16#01#;
 GamepadPeripheral                    : constant MinorPeripheralClass := 16#02#;
 RemoteControlPeripheral              : constant MinorPeripheralClass := 16#03#;
 SensingDevicePeripheral              : constant MinorPeripheralClass := 16#04#;
 DigitizerTabletPeripheral            : constant MinorPeripheralClass := 16#05#;
 CardReaderPeripheral                 : constant MinorPeripheralClass := 16#06#;

 subtype MinorImagingClass is Cardinal;

 UncategorizedImagingDevice : constant MinorImagingClass := 0;
 ImageDisplay               : constant MinorImagingClass := 16#04#;
 ImageCamera                : constant MinorImagingClass := 16#08#;
 ImageScanner               : constant MinorImagingClass := 16#10#;
 ImagePrinter               : constant MinorImagingClass := 16#20#;

 type MinorWearableClass is (UncategorizedWearableDevice,WearableWristWatch,
        WearablePager,WearableJacket,WearableHelmet,WearableGlasses);
 pragma convention(C,MinorWearableClass);

 type MinorToyClass is (UncategorizedToy,ToyRobot,ToyVehicle,ToyDoll,ToyController,ToyGame);
 pragma convention(C,MinorToyClass);

 subtype MinorHealthClass is Cardinal;

 UncategorizedHealthDevice  : constant MinorHealthClass := 0;
 HealthBloodPressureMonitor : constant MinorHealthClass := 1;
 HealthThermometer          : constant MinorHealthClass := 2;
 HealthWeightScale          : constant MinorHealthClass := 3;
 HealthGlucoseMeter         : constant MinorHealthClass := 4;
 HealthPulseOximeter        : constant MinorHealthClass := 5;
 HealthDataDisplay          : constant MinorHealthClass := 7;
 HealthStepCounter          : constant MinorHealthClass := 8;

 subtype ServiceClass is Cardinal;

 NoService             : constant ServiceClass := 16#0000#;
 PositioningService    : constant ServiceClass := 16#0001#;
 NetworkingService     : constant ServiceClass := 16#0002#;
 RenderingService      : constant ServiceClass := 16#0004#;
 CapturingService      : constant ServiceClass := 16#0008#;
 ObjectTransferService : constant ServiceClass := 16#0010#;
 AudioService          : constant ServiceClass := 16#0020#;
 TelephonyService      : constant ServiceClass := 16#0040#;
 InformationService    : constant ServiceClass := 16#0080#;
 AllServices           : constant ServiceClass := 16#07ff#;
     
 type DataCompleteness is (DataComplete,DataIncomplete,DataUnavailable);
 pragma convention(C,DataCompleteness);

 type CoreConfiguration is (UnknownCoreConfiguration,LowEnergyCoreConfiguration,
        BaseRateCoreConfiguration,BaseRateAndLowEnergyCoreConfiguration);
 pragma convention(C,CoreConfiguration);

 function  QBluetoothDeviceInfo_create return QBluetoothDeviceInfoH;
 pragma Import(C,QBluetoothDeviceInfo_create, "QBluetoothDeviceInfo_create");
 
 function  QBluetoothDeviceInfo_create2(address:QBluetoothAddressH;name:QStringH;classOfDevice:quint) return QBluetoothDeviceInfoH  ;
 pragma Import(C,QBluetoothDeviceInfo_create2, "QBluetoothDeviceInfo_create2");
 
 function  QBluetoothDeviceInfo_create3(other:QBluetoothDeviceInfoH) return QBluetoothDeviceInfoH ;
 pragma Import(C,QBluetoothDeviceInfo_create3, "QBluetoothDeviceInfo_create3");
 
 procedure QBluetoothDeviceInfo_delete(handle:not null QBluetoothDeviceInfoH);
 pragma Import(C,QBluetoothDeviceInfo_delete, "QBluetoothDeviceInfo_delete");
 
 function  QBluetoothDeviceInfo_isValid(handle:not null QBluetoothDeviceInfoH) return boolean;
 pragma Import(C,QBluetoothDeviceInfo_isValid, "QBluetoothDeviceInfo_isValid");
 
 function  QBluetoothDeviceInfo_isCached(handle:not null QBluetoothDeviceInfoH) return boolean;
 pragma Import(C,QBluetoothDeviceInfo_isCached, "QBluetoothDeviceInfo_isCached");
 
 procedure QBluetoothDeviceInfo_setCached(handle:not null QBluetoothDeviceInfoH; cached:boolean);
 pragma Import(C,QBluetoothDeviceInfo_setCached, "QBluetoothDeviceInfo_setCached");
 
 function  QBluetoothDeviceInfo_address(handle:not null QBluetoothDeviceInfoH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothDeviceInfo_address, "QBluetoothDeviceInfo_address");
 
 function  QBluetoothDeviceInfo_name(handle:not null QBluetoothDeviceInfoH) return QStringH;
 pragma Import(C,QBluetoothDeviceInfo_name, "QBluetoothDeviceInfo_name");
 
 function  QBluetoothDeviceInfo_serviceClasses(handle:not null QBluetoothDeviceInfoH) return integer;
 pragma Import(C,QBluetoothDeviceInfo_serviceClasses, "QBluetoothDeviceInfo_serviceClasses");
 
 function  QBluetoothDeviceInfo_majorDeviceClass(handle:not null QBluetoothDeviceInfoH) return MajorDeviceClass;
 pragma Import(C,QBluetoothDeviceInfo_majorDeviceClass, "QBluetoothDeviceInfo_majorDeviceClass");
 
 function  QBluetoothDeviceInfo_minorDeviceClass(handle:not null QBluetoothDeviceInfoH) return integer;
 pragma Import(C,QBluetoothDeviceInfo_minorDeviceClass, "QBluetoothDeviceInfo_minorDeviceClass");
 
 function  QBluetoothDeviceInfo_rssi(handle:not null QBluetoothDeviceInfoH) return integer;
 pragma Import(C,QBluetoothDeviceInfo_rssi, "QBluetoothDeviceInfo_rssi");
 
 procedure QBluetoothDeviceInfo_setRssi(handle:not null QBluetoothDeviceInfoH;signal:integer);
 pragma Import(C,QBluetoothDeviceInfo_setRssi, "QBluetoothDeviceInfo_setRssi");
 
 procedure QBluetoothDeviceInfo_setServiceUuids(handle:not null QBluetoothDeviceInfoH;uuids:QObjectListH; completeness:DataCompleteness);
 pragma Import(C,QBluetoothDeviceInfo_setServiceUuids, "QBluetoothDeviceInfo_setServiceUuids");
 
 function  QBluetoothDeviceInfo_serviceUuids(handle:not null QBluetoothDeviceInfoH;completeness: integer_ptr := null) return QObjectListH;
 pragma Import(C,QBluetoothDeviceInfo_serviceUuids, "QBluetoothDeviceInfo_serviceUuids");
 
 function  QBluetoothDeviceInfo_serviceUuidsCompleteness(handle:not null QBluetoothDeviceInfoH) return DataCompleteness;
 pragma Import(C,QBluetoothDeviceInfo_serviceUuidsCompleteness, "QBluetoothDeviceInfo_serviceUuidsCompleteness");
 
 procedure QBluetoothDeviceInfo_setCoreConfigurations(handle:not null QBluetoothDeviceInfoH;coreConfigs:integer );
 pragma Import(C,QBluetoothDeviceInfo_setCoreConfigurations, "QBluetoothDeviceInfo_setCoreConfigurations");
 
 function  QBluetoothDeviceInfo_coreConfigurations(handle:not null QBluetoothDeviceInfoH) return integer;
 pragma Import(C,QBluetoothDeviceInfo_coreConfigurations, "QBluetoothDeviceInfo_coreConfigurations");
 
 procedure QBluetoothDeviceInfo_setDeviceUuid(handle:not null QBluetoothDeviceInfoH;uuid:QBluetoothUuidH);
 pragma Import(C,QBluetoothDeviceInfo_setDeviceUuid, "QBluetoothDeviceInfo_setDeviceUuid");
 
 function  QBluetoothDeviceInfo_deviceUuid(handle:not null QBluetoothDeviceInfoH) return QBluetoothUuidH;
 pragma Import(C,QBluetoothDeviceInfo_deviceUuid, "QBluetoothDeviceInfo_deviceUuid");

 function  QBluetoothDeviceInfo_create(address:QBluetoothAddressH;name:QStringH;classOfDevice:quint) return QBluetoothDeviceInfoH  ;
 function  QBluetoothDeviceInfo_create(other:QBluetoothDeviceInfoH) return QBluetoothDeviceInfoH ;

end;
