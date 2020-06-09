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

package Qt.QBluetoothUuid  is

 type ProtocolUuid is new Cardinal;

 Sdp                   : constant ProtocolUuid := 16#0001#;
 Udp                   : constant ProtocolUuid := 16#0002#;
 Rfcomm                : constant ProtocolUuid := 16#0003#;
 Tcp                   : constant ProtocolUuid := 16#0004#;
 TcsBin                : constant ProtocolUuid := 16#0005#;
 TcsAt                 : constant ProtocolUuid := 16#0006#;
 Att                   : constant ProtocolUuid := 16#0007#;
 Obex                  : constant ProtocolUuid := 16#0008#;
 Ip                    : constant ProtocolUuid := 16#0009#;
 Ftp                   : constant ProtocolUuid := 16#000A#;
 Http                  : constant ProtocolUuid := 16#000C#;
 Wsp                   : constant ProtocolUuid := 16#000E#;
 Bnep                  : constant ProtocolUuid := 16#000F#;
 Upnp                  : constant ProtocolUuid := 16#0010#;
 Hidp                  : constant ProtocolUuid := 16#0011#;
 HardcopyControlChannel: constant ProtocolUuid := 16#0012#;
 HardcopyDataChannel   : constant ProtocolUuid := 16#0014#;
 HardcopyNotification  : constant ProtocolUuid := 16#0016#;
 Avctp                 : constant ProtocolUuid := 16#0017#;
 Avdtp                 : constant ProtocolUuid := 16#0019#;
 Cmtp                  : constant ProtocolUuid := 16#001B#;
 UdiCPlain             : constant ProtocolUuid := 16#001D#;
 McapControlChannel    : constant ProtocolUuid := 16#001E#;
 McapDataChannel       : constant ProtocolUuid := 16#001F#;
 L2cap                 : constant ProtocolUuid := 16#0100#;

 type ServiceClassUuid is new Cardinal; 

 ServiceDiscoveryServer                : constant ServiceClassUuid := 16#1000#;
 BrowseGroupDescriptor                 : constant ServiceClassUuid := 16#1001#;
 PublicBrowseGroup                     : constant ServiceClassUuid := 16#1002#;
 SerialPort                            : constant ServiceClassUuid := 16#1101#;
 LANAccessUsingPPP                     : constant ServiceClassUuid := 16#1102#;
 DialupNetworking                      : constant ServiceClassUuid := 16#1103#;
 IrMCSync                              : constant ServiceClassUuid := 16#1104#;
 ObexObjectPush                        : constant ServiceClassUuid := 16#1105#;
 OBEXFileTransfer                      : constant ServiceClassUuid := 16#1106#;
 IrMCSyncCommand                       : constant ServiceClassUuid := 16#1107#;
 Headset                               : constant ServiceClassUuid := 16#1108#;
 AudioSource                           : constant ServiceClassUuid := 16#110a#;
 AudioSink                             : constant ServiceClassUuid := 16#110b#;
 AV_RemoteControlTarget                : constant ServiceClassUuid := 16#110c#;
 AdvancedAudioDistribution             : constant ServiceClassUuid := 16#110d#;
 AV_RemoteControl                      : constant ServiceClassUuid := 16#110e#;
 AV_RemoteControlController            : constant ServiceClassUuid := 16#110f#;
 HeadsetAG                             : constant ServiceClassUuid := 16#1112#;
 PANU                                  : constant ServiceClassUuid := 16#1115#;
 NAP                                   : constant ServiceClassUuid := 16#1116#;
 GN                                    : constant ServiceClassUuid := 16#1117#;
 DirectPrinting                        : constant ServiceClassUuid := 16#1118#;
 ReferencePrinting                     : constant ServiceClassUuid := 16#1119#;
 BasicImage                            : constant ServiceClassUuid := 16#111a#;
 ImagingResponder                      : constant ServiceClassUuid := 16#111b#;
 ImagingAutomaticArchive               : constant ServiceClassUuid := 16#111c#;
 ImagingReferenceObjects               : constant ServiceClassUuid := 16#111d#;
 Handsfree                             : constant ServiceClassUuid := 16#111e#;
 HandsfreeAudioGateway                 : constant ServiceClassUuid := 16#111f#;
 DirectPrintingReferenceObjectsService : constant ServiceClassUuid := 16#1120#;
 ReflectedUI                           : constant ServiceClassUuid := 16#1121#;
 BasicPrinting                         : constant ServiceClassUuid := 16#1122#;
 PrintingStatus                        : constant ServiceClassUuid := 16#1123#;
 HumanInterfaceDeviceService           : constant ServiceClassUuid := 16#1124#;
 HardcopyCableReplacement              : constant ServiceClassUuid := 16#1125#;
 HCRPrint                              : constant ServiceClassUuid := 16#1126#;
 HCRScan                               : constant ServiceClassUuid := 16#1127#;
 SIMAccess                             : constant ServiceClassUuid := 16#112d#;
 PhonebookAccessPCE                    : constant ServiceClassUuid := 16#112e#;
 PhonebookAccessPSE                    : constant ServiceClassUuid := 16#112f#;
 PhonebookAccess                       : constant ServiceClassUuid := 16#1130#;
 HeadsetHS                             : constant ServiceClassUuid := 16#1131#;
 MessageAccessServer                   : constant ServiceClassUuid := 16#1132#;
 MessageNotificationServer             : constant ServiceClassUuid := 16#1133#;
 MessageAccessProfile                  : constant ServiceClassUuid := 16#1134#;
 GNSS                                  : constant ServiceClassUuid := 16#1135#;
 GNSSServer                            : constant ServiceClassUuid := 16#1136#;
 Display3D                             : constant ServiceClassUuid := 16#1137#;
 Glasses3D                             : constant ServiceClassUuid := 16#1138#;
 Synchronization3D                     : constant ServiceClassUuid := 16#1139#;
 MPSProfile                            : constant ServiceClassUuid := 16#113a#;
 MPSService                            : constant ServiceClassUuid := 16#113b#;
 PnPInformation                        : constant ServiceClassUuid := 16#1200#;
 GenericNetworking                     : constant ServiceClassUuid := 16#1201#;
 GenericFileTransfer                   : constant ServiceClassUuid := 16#1202#;
 GenericAudio                          : constant ServiceClassUuid := 16#1203#;
 GenericTelephony                      : constant ServiceClassUuid := 16#1204#;
 VideoSource                           : constant ServiceClassUuid := 16#1303#;
 VideoSink                             : constant ServiceClassUuid := 16#1304#;
 VideoDistribution                     : constant ServiceClassUuid := 16#1305#;
 HDP                                   : constant ServiceClassUuid := 16#1400#;
 HDPSource                             : constant ServiceClassUuid := 16#1401#;
 HDPSink                               : constant ServiceClassUuid := 16#1402#;
 GenericAccess                         : constant ServiceClassUuid := 16#1800#;
 GenericAttribute                      : constant ServiceClassUuid := 16#1801#;
 ImmediateAlert                        : constant ServiceClassUuid := 16#1802#;
 LinkLoss                              : constant ServiceClassUuid := 16#1803#;
 TxPower                               : constant ServiceClassUuid := 16#1804#;
 CurrentTimeService                    : constant ServiceClassUuid := 16#1805#;
 ReferenceTimeUpdateService            : constant ServiceClassUuid := 16#1806#;
 NextDSTChangeService                  : constant ServiceClassUuid := 16#1807#;
 Glucose                               : constant ServiceClassUuid := 16#1808#;
 HealthThermometer                     : constant ServiceClassUuid := 16#1809#;
 DeviceInformation                     : constant ServiceClassUuid := 16#180a#;
 HeartRate                             : constant ServiceClassUuid := 16#180d#;
 PhoneAlertStatusService               : constant ServiceClassUuid := 16#180e#;
 BatteryService                        : constant ServiceClassUuid := 16#180f#;
 BloodPressure                         : constant ServiceClassUuid := 16#1810#;
 AlertNotificationService              : constant ServiceClassUuid := 16#1811#;
 HumanInterfaceDevice                  : constant ServiceClassUuid := 16#1812#;
 ScanParameters                        : constant ServiceClassUuid := 16#1813#;
 RunningSpeedAndCadence                : constant ServiceClassUuid := 16#1814#;
 CyclingSpeedAndCadence                : constant ServiceClassUuid := 16#1816#;
 CyclingPower                          : constant ServiceClassUuid := 16#1818#;
 LocationAndNavigation                 : constant ServiceClassUuid := 16#1819#;
 EnvironmentalSensing                  : constant ServiceClassUuid := 16#181a#;
 BodyComposition                       : constant ServiceClassUuid := 16#181b#;
 UserData                              : constant ServiceClassUuid := 16#181c#;
 WeightScale                           : constant ServiceClassUuid := 16#181d#;
 BondManagement                        : constant ServiceClassUuid := 16#181e#;
 ContinuousGlucoseMonitoring           : constant ServiceClassUuid := 16#181f#;

 type CharacteristicType is new Cardinal;

 DeviceName                                    : constant CharacteristicType := 16#2a00#;
 Appearance                                    : constant CharacteristicType := 16#2a01#;
 PeripheralPrivacyFlag                         : constant CharacteristicType := 16#2a02#;
 ReconnectionAddress                           : constant CharacteristicType := 16#2a03#;
 PeripheralPreferredConnectionParameters       : constant CharacteristicType := 16#2a04#;
 ServiceChanged                                : constant CharacteristicType := 16#2a05#;
 AlertLevel                                    : constant CharacteristicType := 16#2a06#;
 TxPowerLevel                                  : constant CharacteristicType := 16#2a07#;
 DateTime                                      : constant CharacteristicType := 16#2a08#;
 DayOfWeek                                     : constant CharacteristicType := 16#2a09#;
 DayDateTime                                   : constant CharacteristicType := 16#2a0a#;
 ExactTime256                                  : constant CharacteristicType := 16#2a0c#;
 DSTOffset                                     : constant CharacteristicType := 16#2a0d#;
 TimeZone                                      : constant CharacteristicType := 16#2a0e#;
 LocalTimeInformation                          : constant CharacteristicType := 16#2a0f#;
 TimeWithDST                                   : constant CharacteristicType := 16#2a11#;
 TimeAccuracy                                  : constant CharacteristicType := 16#2a12#;
 TimeSource                                    : constant CharacteristicType := 16#2a13#;
 ReferenceTimeInformation                      : constant CharacteristicType := 16#2a14#;
 TimeUpdateControlPoint                        : constant CharacteristicType := 16#2a16#;
 TimeUpdateState                               : constant CharacteristicType := 16#2a17#;
 GlucoseMeasurement                            : constant CharacteristicType := 16#2a18#;
 BatteryLevel                                  : constant CharacteristicType := 16#2a19#;
 TemperatureMeasurement                        : constant CharacteristicType := 16#2a1c#;
 TemperatureType                               : constant CharacteristicType := 16#2a1d#;
 IntermediateTemperature                       : constant CharacteristicType := 16#2a1e#;
 MeasurementInterval                           : constant CharacteristicType := 16#2a21#;
 BootKeyboardInputReport                       : constant CharacteristicType := 16#2a22#;
 SystemID                                      : constant CharacteristicType := 16#2a23#;
 ModelNumberString                             : constant CharacteristicType := 16#2a24#;
 SerialNumberString                            : constant CharacteristicType := 16#2a25#;
 FirmwareRevisionString                        : constant CharacteristicType := 16#2a26#;
 HardwareRevisionString                        : constant CharacteristicType := 16#2a27#;
 SoftwareRevisionString                        : constant CharacteristicType := 16#2a28#;
 ManufacturerNameString                        : constant CharacteristicType := 16#2a29#;
 IEEE1107320601RegulatoryCertificationDataList : constant CharacteristicType := 16#2a2a#;
 CurrentTime                                   : constant CharacteristicType := 16#2a2b#;
 MagneticDeclination                           : constant CharacteristicType := 16#2a2c#;
 ScanRefresh                                   : constant CharacteristicType := 16#2a31#;
 BootKeyboardOutputReport                      : constant CharacteristicType := 16#2a32#;
 BootMouseInputReport                          : constant CharacteristicType := 16#2a33#;
 GlucoseMeasurementContext                     : constant CharacteristicType := 16#2a34#;
 BloodPressureMeasurement                      : constant CharacteristicType := 16#2a35#;
 IntermediateCuffPressure                      : constant CharacteristicType := 16#2a36#;
 HeartRateMeasurement                          : constant CharacteristicType := 16#2a37#;
 BodySensorLocation                            : constant CharacteristicType := 16#2a38#;
 HeartRateControlPoint                         : constant CharacteristicType := 16#2a39#;
 AlertStatus                                   : constant CharacteristicType := 16#2a3f#;
 RingerControlPoint                            : constant CharacteristicType := 16#2a40#;
 RingerSetting                                 : constant CharacteristicType := 16#2a41#;
 AlertCategoryIDBitMask                        : constant CharacteristicType := 16#2a42#;
 AlertCategoryID                               : constant CharacteristicType := 16#2a43#;
 AlertNotificationControlPoint                 : constant CharacteristicType := 16#2a44#;
 UnreadAlertStatus                             : constant CharacteristicType := 16#2a45#;
 NewAlert                                      : constant CharacteristicType := 16#2a46#;
 SupportedNewAlertCategory                     : constant CharacteristicType := 16#2a47#;
 SupportedUnreadAlertCategory                  : constant CharacteristicType := 16#2a48#;
 BloodPressureFeature                          : constant CharacteristicType := 16#2a49#;
 HIDInformation                                : constant CharacteristicType := 16#2a4a#;
 ReportMap                                     : constant CharacteristicType := 16#2a4b#;
 HIDControlPoint                               : constant CharacteristicType := 16#2a4c#;
 Report                                        : constant CharacteristicType := 16#2a4d#;
 ProtocolMode                                  : constant CharacteristicType := 16#2a4e#;
 ScanIntervalWindow                            : constant CharacteristicType := 16#2a4f#;
 PnPID                                         : constant CharacteristicType := 16#2a50#;
 GlucoseFeature                                : constant CharacteristicType := 16#2a51#;
 RecordAccessControlPoint                      : constant CharacteristicType := 16#2a52#;
 RSCMeasurement                                : constant CharacteristicType := 16#2a53#;
 RSCFeature                                    : constant CharacteristicType := 16#2a54#;
 SCControlPoint                                : constant CharacteristicType := 16#2a55#;
 CSCMeasurement                                : constant CharacteristicType := 16#2a5b#;
 CSCFeature                                    : constant CharacteristicType := 16#2a5c#;
 SensorLocation                                : constant CharacteristicType := 16#2a5d#;
 CyclingPowerMeasurement                       : constant CharacteristicType := 16#2a63#;
 CyclingPowerVector                            : constant CharacteristicType := 16#2a64#;
 CyclingPowerFeature                           : constant CharacteristicType := 16#2a65#;
 CyclingPowerControlPoint                      : constant CharacteristicType := 16#2a66#;
 LocationAndSpeed                              : constant CharacteristicType := 16#2a67#;
 Navigation                                    : constant CharacteristicType := 16#2a68#;
 PositionQuality                               : constant CharacteristicType := 16#2a69#;
 LNFeature                                     : constant CharacteristicType := 16#2a6a#;
 LNControlPoint                                : constant CharacteristicType := 16#2a6b#;
 Elevation                                     : constant CharacteristicType := 16#2a6c#;
 Pressure                                      : constant CharacteristicType := 16#2a6d#;
 Temperature                                   : constant CharacteristicType := 16#2a6e#;
 Humidity                                      : constant CharacteristicType := 16#2a6f#;
 TrueWindSpeed                                 : constant CharacteristicType := 16#2a70#;
 TrueWindDirection                             : constant CharacteristicType := 16#2a71#;
 ApparentWindSpeed                             : constant CharacteristicType := 16#2a72#;
 ApparentWindDirection                         : constant CharacteristicType := 16#2a73#;
 GustFactor                                    : constant CharacteristicType := 16#2a74#;
 PollenConcentration                           : constant CharacteristicType := 16#2a75#;
 UVIndex                                       : constant CharacteristicType := 16#2a76#;
 Irradiance                                    : constant CharacteristicType := 16#2a77#;
 Rainfall                                      : constant CharacteristicType := 16#2a78#;
 WindChill                                     : constant CharacteristicType := 16#2a79#;
 HeatIndex                                     : constant CharacteristicType := 16#2a7a#;
 DewPoint                                      : constant CharacteristicType := 16#2a7b#;
 DescriptorValueChanged                        : constant CharacteristicType := 16#2a7d#;
 AerobicHeartRateLowerLimit                    : constant CharacteristicType := 16#2a7e#;
 AerobicThreshold                              : constant CharacteristicType := 16#2a7f#;
 Age                                           : constant CharacteristicType := 16#2a80#;
 AnaerobicHeartRateLowerLimit                  : constant CharacteristicType := 16#2a81#;
 AnaerobicHeartRateUpperLimit                  : constant CharacteristicType := 16#2a82#;
 AnaerobicThreshold                            : constant CharacteristicType := 16#2a83#;
 AerobicHeartRateUpperLimit                    : constant CharacteristicType := 16#2a84#;
 DateOfBirth                                   : constant CharacteristicType := 16#2a85#;
 DateOfThresholdAssessment                     : constant CharacteristicType := 16#2a86#;
 EmailAddress                                  : constant CharacteristicType := 16#2a87#;
 FatBurnHeartRateLowerLimit                    : constant CharacteristicType := 16#2a88#;
 FatBurnHeartRateUpperLimit                    : constant CharacteristicType := 16#2a89#;
 FirstName                                     : constant CharacteristicType := 16#2a8a#;
 FiveZoneHeartRateLimits                       : constant CharacteristicType := 16#2a8b#;
 Gender                                        : constant CharacteristicType := 16#2a8c#;
 HeartRateMax                                  : constant CharacteristicType := 16#2a8d#;
 Height                                        : constant CharacteristicType := 16#2a8e#;
 HipCircumference                              : constant CharacteristicType := 16#2a8f#;
 LastName                                      : constant CharacteristicType := 16#2a90#;
 MaximumRecommendedHeartRate                   : constant CharacteristicType := 16#2a91#;
 RestingHeartRate                              : constant CharacteristicType := 16#2a92#;
 SportTypeForAerobicAnaerobicThresholds        : constant CharacteristicType := 16#2a93#;
 ThreeZoneHeartRateLimits                      : constant CharacteristicType := 16#2a94#;
 TwoZoneHeartRateLimits                        : constant CharacteristicType := 16#2a95#;
 VO2Max                                        : constant CharacteristicType := 16#2a96#;
 WaistCircumference                            : constant CharacteristicType := 16#2a97#;
 Weight                                        : constant CharacteristicType := 16#2a98#;
 DatabaseChangeIncrement                       : constant CharacteristicType := 16#2a99#;
 UserIndex                                     : constant CharacteristicType := 16#2a9a#;
 BodyCompositionFeature                        : constant CharacteristicType := 16#2a9b#;
 BodyCompositionMeasurement                    : constant CharacteristicType := 16#2a9c#;
 WeightMeasurement                             : constant CharacteristicType := 16#2a9d#;
 WeightScaleFeature                            : constant CharacteristicType := 16#2a9e#;
 UserControlPoint                              : constant CharacteristicType := 16#2a9f#;
 MagneticFluxDensity2D                         : constant CharacteristicType := 16#2aa0#;
 MagneticFluxDensity3D                         : constant CharacteristicType := 16#2aa1#;
 Language                                      : constant CharacteristicType := 16#2aa2#;
 BarometricPressureTrend                       : constant CharacteristicType := 16#2aa3#;

 subtype DescriptorType is Cardinal;

 UnknownDescriptorType              : constant DescriptorType := 0;
 CharacteristicExtendedProperties   : constant DescriptorType := 16#2900#;
 CharacteristicUserDescription      : constant DescriptorType := 16#2901#;
 ClientCharacteristicConfiguration  : constant DescriptorType := 16#2902#;
 ServerCharacteristicConfiguration  : constant DescriptorType := 16#2903#;
 CharacteristicPresentationFormat   : constant DescriptorType := 16#2904#;
 CharacteristicAggregateFormat      : constant DescriptorType := 16#2905#;
 ValidRange                         : constant DescriptorType := 16#2906#;
 ExternalReportReference            : constant DescriptorType := 16#2907#;
 ReportReference                    : constant DescriptorType := 16#2908#;
 EnvironmentalSensingConfiguration  : constant DescriptorType := 16#290b#;
 EnvironmentalSensingMeasurement    : constant DescriptorType := 16#290c#;
 EnvironmentalSensingTriggerSetting : constant DescriptorType := 16#290d#;

 function  QBluetoothUuid_create return  QBluetoothUuidH;
 pragma Import(C,QBluetoothUuid_create, "QBluetoothUuid_create");
 
 function  QBluetoothUuid_create2(uuid:ProtocolUuid) return QBluetoothUuidH;
 pragma Import(C,QBluetoothUuid_create2, "QBluetoothUuid_create2");
 
 function  QBluetoothUuid_create3(uuid:ServiceClassUuid) return QBluetoothUuidH;
 pragma Import(C,QBluetoothUuid_create3, "QBluetoothUuid_create3");
 
 function  QBluetoothUuid_create4(uuid:CharacteristicType) return QBluetoothUuidH;
 pragma Import(C,QBluetoothUuid_create4, "QBluetoothUuid_create4");
 
 function  QBluetoothUuid_create5(uuid:DescriptorType) return QBluetoothUuidH;
 pragma Import(C,QBluetoothUuid_create5, "QBluetoothUuid_create5");
 
 function  QBluetoothUuid_create6(other:QBluetoothUuidH) return QBluetoothUuidH ;
 pragma Import(C,QBluetoothUuid_create6, "QBluetoothUuid_create6");
 
 function  QBluetoothUuid_create7(uuid:QUuidH) return QBluetoothUuidH ;
 pragma Import(C,QBluetoothUuid_create7, "QBluetoothUuid_create7");
 
 procedure QBluetoothUuid_delete(handle:not null QBluetoothUuidH);
 pragma Import(C,QBluetoothUuid_delete, "QBluetoothUuid_delete");
 
 function  QBluetoothUuid_minimumSize(handle:not null QBluetoothUuidH) return integer;
 pragma Import(C,QBluetoothUuid_minimumSize, "QBluetoothUuid_minimumSize");
 
 function  QBluetoothUuid_serviceClassToString(uuid:ServiceClassUuid) return QStringH;
 pragma Import(C,QBluetoothUuid_serviceClassToString, "QBluetoothUuid_serviceClassToString");
 
 function  QBluetoothUuid_protocolToString(uuid:ProtocolUuid) return QStringH;
 pragma Import(C,QBluetoothUuid_protocolToString, "QBluetoothUuid_protocolToString");
 
 function  QBluetoothUuid_characteristicToString(uuid:CharacteristicType) return QStringH;
 pragma Import(C,QBluetoothUuid_characteristicToString, "QBluetoothUuid_characteristicToString");
 
 function  QBluetoothUuid_descriptorToString(uuid:DescriptorType) return QStringH;
 pragma Import(C,QBluetoothUuid_descriptorToString, "QBluetoothUuid_descriptorToString");

--------------------------------------------------------------------------
 function  QBluetoothUuid_create(uuid:ProtocolUuid) return QBluetoothUuidH;
 function  QBluetoothUuid_create(uuid:ServiceClassUuid) return QBluetoothUuidH;
 function  QBluetoothUuid_create(uuid:CharacteristicType) return QBluetoothUuidH;
 function  QBluetoothUuid_create(uuid:DescriptorType) return QBluetoothUuidH;
 function  QBluetoothUuid_create(other:QBluetoothUuidH) return QBluetoothUuidH ;
 function  QBluetoothUuid_create(uuid:QUuidH) return QBluetoothUuidH ;

end;
