--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2019                      บ
-- บ Copyright (C) 2013,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QSensor  is

 type Feature is ( Buffering, AlwaysOn, GeoValues, FieldOfView, AccelerationMode, SkipDuplicates, AxesOrientation, Reserved); 
 pragma convention(C,Feature); 
 for Feature use (
        Buffering        => 0,
        AlwaysOn         => 1,
        GeoValues        => 2,
        FieldOfView      => 3,
        AccelerationMode => 4,
        SkipDuplicates   => 5,
        AxesOrientation  => 6,
        Reserved         => 257 -- Make sure at least 2 bytes are used for the enum to avoid breaking BC later
 );


 -- Keep in sync with QmlSensor::AxesOrientationMode
 type AxesOrientationMode is (FixedOrientation, AutomaticOrientation, UserOrientation);
 pragma convention(C,AxesOrientationMode); 

 function  QSensor_create(sensorType:QByteArrayH;parent:QObjectH := null) return QSensorH;
 pragma Import(C,QSensor_create, "QSensor_create");
 
 procedure QSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QSensor_destroy, "QSensor_destroy");
 
 function  QSensor_backend(handle:not null QSensorH) return QSensorBackendH;
 pragma Import(C,QSensor_backend, "QSensor_backend");
 
 function  QSensor_identifier(handle:not null QSensorH) return QByteArrayH;
 pragma Import(C,QSensor_identifier, "QSensor_identifier");

 procedure QSensor_setIdentifier(handle: not null QSensorH;identifier:not null  QByteArrayH);
 pragma Import(C,QSensor_setIdentifier, "QSensor_setIdentifier");
 
 function  QSensor_type(handle: not null QSensorH) return QByteArrayH;
 pragma Import(C,QSensor_type, "QSensor_type");
 
 function  QSensor_connectToBackend(handle: not null QSensorH) return boolean;
 pragma Import(C,QSensor_connectToBackend, "QSensor_connectToBackend");
 
 function  QSensor_isConnectedToBackend(handle: not null QSensorH) return boolean;
 pragma Import(C,QSensor_isConnectedToBackend, "QSensor_isConnectedToBackend");
 
 function  QSensor_isBusy(handle: not null QSensorH) return boolean;
 pragma Import(C,QSensor_isBusy, "QSensor_isBusy");
 
 procedure QSensor_setActive(handle: not null QSensorH;isActive:boolean);
 pragma Import(C,QSensor_setActive, "QSensor_setActive");
 
 function  QSensor_isActive(handle: not null QSensorH) return boolean;
 pragma Import(C,QSensor_isActive, "QSensor_isActive");
 
 function  QSensor_isAlwaysOn(handle: not null QSensorH) return boolean;
 pragma Import(C,QSensor_isAlwaysOn, "QSensor_isAlwaysOn");
 
 procedure QSensor_setAlwaysOn(handle: not null QSensorH;isAlwaysOn:boolean);
 pragma Import(C,QSensor_setAlwaysOn, "QSensor_setAlwaysOn");
 
 function  QSensor_skipDuplicates(handle: not null QSensorH) return boolean;
 pragma Import(C,QSensor_skipDuplicates, "QSensor_skipDuplicates");
 
 procedure QSensor_setSkipDuplicates(handle: not null QSensorH; isSkipDuplicates:boolean);
 pragma Import(C,QSensor_setSkipDuplicates, "QSensor_setSkipDuplicates");
 
 function  QSensor_availableDataRates(handle: not null QSensorH) return QObjectListH;
 pragma Import(C,QSensor_availableDataRates, "QSensor_availableDataRates");
 
 function  QSensor_availableDataRateAt(handle: not null QSensorH;index:integer) return  QObjectH;
 pragma Import(C,QSensor_availableDataRateAt, "QSensor_availableDataRateAt");
 
 function  QSensor_availableDataRatesCount(handle: not null QSensorH) return  integer;
 pragma Import(C,QSensor_availableDataRatesCount, "QSensor_availableDataRatesCount");
 
 function  QSensor_dataRate(handle: not null QSensorH) return integer;
 pragma Import(C,QSensor_dataRate, "QSensor_dataRate");
 
 procedure QSensor_setDataRate(handle: not null QSensorH; rate:integer);
 pragma Import(C,QSensor_setDataRate, "QSensor_setDataRate");
 
 function  QSensor_outputRanges(handle: not null QSensorH) return QObjectListH;
 pragma Import(C,QSensor_outputRanges, "QSensor_outputRanges");
 
 function  QSensor_outputRangeAt(handle: not null QSensorH;index:integer) return  QObjectH;
 pragma Import(C,QSensor_outputRangeAt, "QSensor_outputRangeAt");
 
 function  QSensor_outputRangesCount(handle: not null QSensorH) return  integer;
 pragma Import(C,QSensor_outputRangesCount, "QSensor_outputRangesCount");
 
 function  QSensor_outputRange(handle: not null QSensorH) return integer;
 pragma Import(C,QSensor_outputRange, "QSensor_outputRange");
 
 procedure QSensor_setOutputRange(handle: not null QSensorH; index:integer);
 pragma Import(C,QSensor_setOutputRange, "QSensor_setOutputRange");
 
 function  QSensor_description(handle: not null QSensorH) return QStringH;
 pragma Import(C,QSensor_description, "QSensor_description");
 
 function  QSensor_error(handle: not null QSensorH) return integer;
 pragma Import(C,QSensor_error, "QSensor_error");
 
 procedure QSensor_addFilter(handle: not null QSensorH;filter:not null QSensorFilterH);
 pragma Import(C,QSensor_addFilter, "QSensor_addFilter");
 
 procedure QSensor_removeFilter(handle: not null QSensorH;filter:not null QSensorFilterH);
 pragma Import(C,QSensor_removeFilter, "QSensor_removeFilter");
 
 function  QSensor_filters(handle: not null QSensorH) return QObjectListH;
 pragma Import(C,QSensor_filters, "QSensor_filters");
 
 function  QSensor_filterAt(handle: not null QSensorH;index:integer) return QSensorFilterH;
 pragma Import(C,QSensor_filterAt, "QSensor_filterAt");
 
 function  QSensor_filtersCount(handle: not null QSensorH) return  integer;
 pragma Import(C,QSensor_filtersCount, "QSensor_filtersCount");
 
 function  QSensor_reading(handle: not null QSensorH) return QSensorReadingH;
 pragma Import(C,QSensor_reading, "QSensor_reading");
 
 function  QSensor_sensorTypes return QObjectListH;
 pragma Import(C,QSensor_sensorTypes, "QSensor_sensorTypes");
 
 function  QSensor_sensorsForType(sensorType:QByteArrayH) return QObjectListH;
 pragma Import(C,QSensor_sensorsForType, "QSensor_sensorsForType");
 
 function  QSensor_sensorForTypetAt(sensorType:not null QByteArrayH;index:integer) return QByteArrayH;
 pragma Import(C,QSensor_sensorForTypetAt, "QSensor_sensorForTypetAt");
 
 function  QSensor_sensorsForTypeCount(sensorType:QByteArrayH) return  integer;
 pragma Import(C,QSensor_sensorsForTypeCount, "QSensor_sensorsForTypeCount");
 
 function  QSensor_defaultSensorForType(sensorType:QByteArrayH) return QByteArrayH;
 pragma Import(C,QSensor_defaultSensorForType, "QSensor_defaultSensorForType");
 
 function  QSensor_isFeatureSupported(handle: not null QSensorH;suportedFeature: Feature) return boolean;
 pragma Import(C,QSensor_isFeatureSupported, "QSensor_isFeatureSupported");
 
 function  QSensor_axesOrientationMode(handle: not null QSensorH) return AxesOrientationMode;
 pragma Import(C,QSensor_axesOrientationMode, "QSensor_axesOrientationMode");
 
 procedure QSensor_setAxesOrientationMode(handle: not null QSensorH; currentAxesOrientationMode:AxesOrientationMode);
 pragma Import(C,QSensor_setAxesOrientationMode, "QSensor_setAxesOrientationMode");
 
 function  QSensor_currentOrientation(handle: not null QSensorH) return integer;
 pragma Import(C,QSensor_currentOrientation, "QSensor_currentOrientation");
 
 procedure QSensor_setCurrentOrientation(handle: not null QSensorH; currentOrientation:integer);
 pragma Import(C,QSensor_setCurrentOrientation, "QSensor_setCurrentOrientation");
 
 function  QSensor_userOrientation(handle: not null QSensorH) return integer;
 pragma Import(C,QSensor_userOrientation, "QSensor_userOrientation");
 
 procedure QSensor_setUserOrientation(handle: not null QSensorH; userOrientation:integer);
 pragma Import(C,QSensor_setUserOrientation, "QSensor_setUserOrientation");
 
 function  QSensor_maxBufferSize(handle: not null QSensorH) return integer;
 pragma Import(C,QSensor_maxBufferSize, "QSensor_maxBufferSize");
 
 procedure QSensor_setMaxBufferSize(handle: not null QSensorH; maxBufferSize:integer);
 pragma Import(C,QSensor_setMaxBufferSize, "QSensor_setMaxBufferSize");
 
 function  QSensor_efficientBufferSize(handle: not null QSensorH) return integer;
 pragma Import(C,QSensor_efficientBufferSize, "QSensor_efficientBufferSize");
 
 procedure QSensor_setEfficientBufferSize(handle: not null QSensorH; efficientBufferSize:integer);
 pragma Import(C,QSensor_setEfficientBufferSize, "QSensor_setEfficientBufferSize");
 
 function  QSensor_bufferSize(handle: not null QSensorH) return integer;
 pragma Import(C,QSensor_bufferSize, "QSensor_bufferSize");
 
 procedure QSensor_setBufferSize(handle: not null QSensorH; bufferSize:integer);
 pragma Import(C,QSensor_setBufferSize, "QSensor_setBufferSize");
 
 function  QSensor_start(handle: not null QSensorH) return boolean;
 pragma Import(C,QSensor_start, "QSensor_start");
 
 procedure QSensor_stop(handle: not null QSensorH);
 pragma Import(C,QSensor_stop, "QSensor_stop");
 
 function  QSensorFilter_filter(handle: not null QSensorFilterH;reading:QSensorReadingH) return boolean;
 pragma Import(C,QSensorFilter_filter, "QSensorFilter_filter");
 
 function  QSensorReading_timestamp(handle: not null QSensorReadingH) return quint64;
 pragma Import(C,QSensorReading_timestamp, "QSensorReading_timestamp");
 
 procedure QSensorReading_setTimestamp(handle: not null QSensorReadingH;timestamp:quint64);
 pragma Import(C,QSensorReading_setTimestamp, "QSensorReading_setTimestamp");
 
 function  QSensorReading_valueCount(handle: not null QSensorReadingH) return integer;
 pragma Import(C,QSensorReading_valueCount, "QSensorReading_valueCount");
 
 function  QSensorReading_value(handle: not null QSensorReadingH; index:integer) return QVariantH;
 pragma Import(C,QSensorReading_value, "QSensorReading_value");
 
 type voidProc is access procedure;
 pragma convention(C,voidProc);

 type intProc is access procedure(p:integer);
 pragma convention(C,intProc);

 type qrealProc is access procedure(p:qreal);
 pragma convention(C,qrealProc);

 type boolProc is access procedure(p:boolean);
 pragma convention(C,boolProc);

 type qstringProc is access procedure(p:QStringH);
 pragma convention(C,qstringProc);

 procedure QSensor_signal_slot_busyChanged(handle:not null QSensorH; hook:voidProc);
 pragma Import(C,QSensor_signal_slot_busyChanged, "QSensor_signal_slot_busyChanged");
 
 procedure QSensor_signal_slot_activeChanged(handle:not null QSensorH; hook:voidProc);
 pragma Import(C,QSensor_signal_slot_activeChanged, "QSensor_signal_slot_activeChanged");
 
 procedure QSensor_signal_slot_readingChanged(handle:not null QSensorH; hook:voidProc);
 pragma Import(C,QSensor_signal_slot_readingChanged, "QSensor_signal_slot_readingChanged");
 
 procedure QSensor_signal_slot_sensorError(handle:not null QSensorH; hook:intProc);
 pragma Import(C,QSensor_signal_slot_sensorError, "QSensor_signal_slot_sensorError");
 
 procedure QSensor_signal_slot_availableSensorsChanged(handle:not null QSensorH; hook:voidProc);
 pragma Import(C,QSensor_signal_slot_availableSensorsChanged, "QSensor_signal_slot_availableSensorsChanged");
 
 procedure QSensor_signal_slot_alwaysOnChanged(handle:not null QSensorH; hook:voidProc);
 pragma Import(C,QSensor_signal_slot_alwaysOnChanged, "QSensor_signal_slot_alwaysOnChanged");
 
 procedure QSensor_signal_slot_dataRateChanged(handle:not null QSensorH; hook:voidProc);
 pragma Import(C,QSensor_signal_slot_dataRateChanged, "QSensor_signal_slot_dataRateChanged");
 
 procedure QSensor_signal_slot_skipDuplicatesChanged(handle:not null QSensorH; hook:boolProc);
 pragma Import(C,QSensor_signal_slot_skipDuplicatesChanged, "QSensor_signal_slot_skipDuplicatesChanged");
 
 procedure QSensor_signal_slot_axesOrientationModeChanged(handle:not null QSensorH; hook:intProc);
 pragma Import(C,QSensor_signal_slot_axesOrientationModeChanged, "QSensor_signal_slot_axesOrientationModeChanged");
 
 procedure QSensor_signal_slot_currentOrientationChanged(handle:not null QSensorH; hook:intProc);
 pragma Import(C,QSensor_signal_slot_currentOrientationChanged, "QSensor_signal_slot_currentOrientationChanged");
 
 procedure QSensor_signal_slot_userOrientationChanged(handle:not null QSensorH; hook:intProc);
 pragma Import(C,QSensor_signal_slot_userOrientationChanged, "QSensor_signal_slot_userOrientationChanged");
 
 procedure QSensor_signal_slot_maxBufferSizeChanged(handle:not null QSensorH; hook:intProc);
 pragma Import(C,QSensor_signal_slot_maxBufferSizeChanged, "QSensor_signal_slot_maxBufferSizeChanged");
 
 procedure QSensor_signal_slot_efficientBufferSizeChanged(handle:not null QSensorH; hook:intProc);
 pragma Import(C,QSensor_signal_slot_efficientBufferSizeChanged, "QSensor_signal_slot_efficientBufferSizeChanged");
 
 procedure QSensor_signal_slot_bufferSizeChanged(handle:not null QSensorH; hook:intProc);
 pragma Import(C,QSensor_signal_slot_bufferSizeChanged, "QSensor_signal_slot_bufferSizeChanged");
 
 function  QTiltReading_yRotation(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QTiltReading_yRotation, "QTiltReading_yRotation");
 
 procedure QTiltReading_setYRotation(handle:not null QSensorReadingH;y:qreal);
 pragma Import(C,QTiltReading_setYRotation, "QTiltReading_setYRotation");
 
 function  QTiltReading_xRotation(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QTiltReading_xRotation, "QTiltReading_xRotation");
 
 procedure QTiltReading_setXRotation(handle:not null QSensorReadingH;x:qreal);
 pragma Import(C,QTiltReading_setXRotation, "QTiltReading_setXRotation");

 function  QTiltFilter_filter(handle:not null QSensorFilterH;reading:QSensorReadingH) return boolean;
 pragma Import(C,QTiltFilter_filter, "QTiltFilter_filter");
 
 function  QTiltSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QTiltSensor_create, "QTiltSensor_create");
 
 function  QTiltSensor_type return zstring;
 pragma Import(C,QTiltSensor_type, "QTiltSensor_type");
 
 procedure QTiltSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QTiltSensor_destroy, "QTiltSensor_destroy");
 
 function  QTiltSensor_reading(handle:not null QSensorH) return QsensorReadingH;
 pragma Import(C,QTiltSensor_reading, "QTiltSensor_reading");
 
 procedure QTiltSensor_calibrate(handle:not null QSensorH);
 pragma Import(C,QTiltSensor_calibrate, "QTiltSensor_calibrate");
 
 type TapDirection is (Undefined,X,Y,Z,X_Pos,Y_Pos,Z_Pos,X_Neg,X_Both,Y_Neg,Y_Both,Z_Neg,Z_Both);
 pragma convention(C,TapDirection);

 for  TapDirection  use (
        Undefined => 0,
        X         => 16#0001#,
        Y         => 16#0002#,
        Z         => 16#0004#,
        X_Pos     => 16#0011#,
        Y_Pos     => 16#0022#,
        Z_Pos     => 16#0044#,
        X_Neg     => 16#0101#,
        X_Both    => 16#0111#,
        Y_Neg     => 16#0202#,
        Y_Both    => 16#0222#,
        Z_Neg     => 16#0404#,
        Z_Both    => 16#0444#
    ); 

 procedure QTapReading_setTapDirection(handle:not null QSensorReadingH;tapDir:TapDirection);
 pragma Import(C,QTapReading_setTapDirection, "QTapReading_setTapDirection");
 
 function  QTapReading_isDoubleTap(handle:not null QSensorReadingH) return boolean;
 pragma Import(C,QTapReading_isDoubleTap, "QTapReading_isDoubleTap");
 
 procedure QTapReading_setDoubleTap(handle:not null QSensorReadingH;doubleTap:boolean);
 pragma Import(C,QTapReading_setDoubleTap, "QTapReading_setDoubleTap");
 
 function  QTapFilter_filter(handle:not null QSensorFilterH;reading:QSensorReadingH) return boolean;
 pragma Import(C,QTapFilter_filter, "QTapFilter_filter");
 
 function  QTapSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QTapSensor_create, "QTapSensor_create");
 
 procedure QTapSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QTapSensor_destroy, "QTapSensor_destroy");
 
 function  QTapSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QTapSensor_reading, "QTapSensor_reading");
 
 function  QTapSensor_returnDoubleTapEvents(handle:not null QSensorH) return boolean;
 pragma Import(C,QTapSensor_returnDoubleTapEvents, "QTapSensor_returnDoubleTapEvents");
 
 procedure QTapSensor_setReturnDoubleTapEvents(handle:not null QSensorH; returnDoubleTapEvents:boolean);
 pragma Import(C,QTapSensor_setReturnDoubleTapEvents, "QTapSensor_setReturnDoubleTapEvents");
 
 procedure QTapSensor_signal_slot_returnDoubleTapEventsChanged(handle:not null QSensorH; hook:boolProc);
 pragma Import(C,QTapSensor_signal_slot_returnDoubleTapEventsChanged, "QTapSensor_signal_slot_returnDoubleTapEventsChanged");
 
------------------------------------------------------------------------------------------------------------------------------
 type AccelerationModes is (Combined,Gravity,User);
 pragma convention (C,AccelerationModes);

 function  QAccelerometerReading_x(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QAccelerometerReading_x, "QAccelerometerReading_x");
 
 procedure QAccelerometerReading_setX(handle:not null QSensorReadingH;x:qreal);
 pragma Import(C,QAccelerometerReading_setX, "QAccelerometerReading_setX");
 
 function  QAccelerometerReading_y(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QAccelerometerReading_y, "QAccelerometerReading_y");
 
 procedure QAccelerometerReading_setY(handle:not null QSensorReadingH;y:qreal);
 pragma Import(C,QAccelerometerReading_setY, "QAccelerometerReading_setY");
 
 function  QAccelerometerReading_z(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QAccelerometerReading_z, "QAccelerometerReading_z");
 
 procedure QAccelerometerReading_setZ(handle:not null QSensorReadingH;z:qreal);
 pragma Import(C,QAccelerometerReading_setZ, "QAccelerometerReading_setZ");
 
 function  QAccelerometerFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QAccelerometerFilter_filter, "QAccelerometerFilter_filter");
 
 function  QAccelerometer_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QAccelerometer_create, "QAccelerometer_create");
 
 procedure QAccelerometer_destroy(handle:not null QSensorH);
 pragma Import(C,QAccelerometer_destroy, "QAccelerometer_destroy");
 
 function  QAccelerometer_accelerationMode(handle:not null QSensorH) return AccelerationModes;
 pragma Import(C,QAccelerometer_accelerationMode, "QAccelerometer_accelerationMode");
 
 procedure QAccelerometer_setAccelerationMode(handle:not null QSensorH; accelerationMode:AccelerationModes);
 pragma Import(C,QAccelerometer_setAccelerationMode, "QAccelerometer_setAccelerationMode");
 
 function  QAccelerometer_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QAccelerometer_reading, "QAccelerometer_reading");
 
 procedure QAccelerometer_signal_slot_accelerationModeChangedChanged(handle:not null QSensorH; hook: intProc);
 pragma Import(C,QAccelerometer_signal_slot_accelerationModeChangedChanged, "QAccelerometer_signal_slot_accelerationModeChangedChanged");
 
-----------------------------------------------------------------------------------------------------------------------
 function  QAltimeterReading_altitude(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QAltimeterReading_altitude, "QAltimeterReading_altitude");
 
 procedure QAltimeterReading_setAltitude(handle:not null QSensorReadingH; altitude:qreal);
 pragma Import(C,QAltimeterReading_setAltitude, "QAltimeterReading_setAltitude");
 
 function  QAltimeterFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QAltimeterFilter_filter, "QAltimeterFilter_filter");
 
 function  QAltimeter_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QAltimeter_create, "QAltimeter_create");
 
 procedure QAltimeter_destroy(handle:not null QSensorH);
 pragma Import(C,QAltimeter_destroy, "QAltimeter_destroy");
 
 function  QAltimeter_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QAltimeter_reading, "QAltimeter_reading");
 
------------------------------------------------------------------------------------------------------------------------
 type LightLevel is (Undefined,Dark,Twilight,Light,Bright,Sunny);
 pragma convention(C,LightLevel);

 function  QAmbientLightReading_lightLevel(handle:not null QSensorReadingH) return LightLevel;
 pragma Import(C,QAmbientLightReading_lightLevel, "QAmbientLightReading_lightLevel");
 
 procedure QAmbientLightReading_setLightLevel(handle:not null QSensorReadingH;level:LightLevel);
 pragma Import(C,QAmbientLightReading_setLightLevel, "QAmbientLightReading_setLightLevel");
 
 function  QAmbientLightFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QAmbientLightFilter_filter, "QAmbientLightFilter_filter");
 
 function  QAmbientLightSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QAmbientLightSensor_create, "QAmbientLightSensor_create");
 
 procedure QAmbientLightSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QAmbientLightSensor_destroy, "QAmbientLightSensor_destroy");
 
 function  QAmbientLightSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QAmbientLightSensor_reading, "QAmbientLightSensor_reading");
 
-------------------------------------------------------------------------------------------------------
 function  QCompassReading_azimuth(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QCompassReading_azimuth, "QCompassReading_azimuth");
 
 procedure QCompassReading_setAzimuth(handle:not null QSensorReadingH;azimuth:qreal);
 pragma Import(C,QCompassReading_setAzimuth, "QCompassReading_setAzimuth");
 
 function  QCompassReading_calibrationLevel(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QCompassReading_calibrationLevel, "QCompassReading_calibrationLevel");
 
 procedure QCompassReading_setCalibrationLevel(handle:not null QSensorReadingH; calibrationLevel:qreal);
 pragma Import(C,QCompassReading_setCalibrationLevel, "QCompassReading_setCalibrationLevel");
 
 function  QCompassFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QCompassFilter_filter, "QCompassFilter_filter");
 
 function  QCompass_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QCompass_create, "QCompass_create");
 
 procedure QCompass_destroy(handle:not null QSensorH);
 pragma Import(C,QCompass_destroy, "QCompass_destroy");
 
 function  QCompass_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QCompass_reading, "QCompass_reading");
----------------------------------------------------------------------------------------------------
 
 function  QGyroscopeReading_x(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QGyroscopeReading_x, "QGyroscopeReading_x");
 
 procedure QGyroscopeReading_setX(handle:not null QSensorReadingH;x:qreal);
 pragma Import(C,QGyroscopeReading_setX, "QGyroscopeReading_setX");
 
 function  QGyroscopeReading_y(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QGyroscopeReading_y, "QGyroscopeReading_y");
 
 procedure QGyroscopeReading_setY(handle:not null QSensorReadingH;y:qreal);
 pragma Import(C,QGyroscopeReading_setY, "QGyroscopeReading_setY");
 
 function  QGyroscopeReading_z(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QGyroscopeReading_z, "QGyroscopeReading_z");
 
 procedure QGyroscopeReading_setZ(handle:not null QSensorReadingH;z:qreal);
 pragma Import(C,QGyroscopeReading_setZ, "QGyroscopeReading_setZ");
 
 function  QGyroscopeFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QGyroscopeFilter_filter, "QGyroscopeFilter_filter");
 
 function  QGyroscope_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QGyroscope_create, "QGyroscope_create");
 
 procedure QGyroscope_destroy(handle:not null QSensorH);
 pragma Import(C,QGyroscope_destroy, "QGyroscope_destroy");
 
 function  QGyroscope_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QGyroscope_reading, "QGyroscope_reading");
------------------------------------------------------------------------------------------------------
 function  QHolsterReading_holstered(handle:not null QSensorReadingH) return boolean;
 pragma Import(C,QHolsterReading_holstered, "QHolsterReading_holstered");
 
 procedure QHolsterReading_setHolstered(handle:not null QSensorReadingH;holstered:boolean);
 pragma Import(C,QHolsterReading_setHolstered, "QHolsterReading_setHolstered");
 
 function  QHolsterFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QHolsterFilter_filter, "QHolsterFilter_filter");
 
 function  QHolsterSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QHolsterSensor_create, "QHolsterSensor_create");
 
 procedure QHolsterSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QHolsterSensor_destroy, "QHolsterSensor_destroy");
 
 function  QHolsterSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QHolsterSensor_reading, "QHolsterSensor_reading");
 
-------------------------------------------------------------------------------------------------------
 function  QIRProximityReading_reflectance(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QIRProximityReading_reflectance, "QIRProximityReading_reflectance");
 
 procedure QIRProximityReading_setReflectance(handle:QSensorReadingH;reflectance:qreal);
 pragma Import(C,QIRProximityReading_setReflectance, "QIRProximityReading_setReflectance");
 
 function  QIRProximityFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QIRProximityFilter_filter, "QIRProximityFilter_filter");
 
 function  QIRProximitySensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QIRProximitySensor_create, "QIRProximitySensor_create");
 
 procedure QIRProximitySensor_destroy(handle:not null QSensorH);
 pragma Import(C,QIRProximitySensor_destroy, "QIRProximitySensor_destroy");
 
 function  QIRProximitySensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QIRProximitySensor_reading, "QIRProximitySensor_reading");
 
----------------------------------------------------------------------------------------------------
 function  QLightReading_lux(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QLightReading_lux, "QLightReading_lux");
 
 procedure QLightReading_setLux(handle:not null QSensorReadingH;lux:qreal);
 pragma Import(C,QLightReading_setLux, "QLightReading_setLux");
 
 function  QLightFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QLightFilter_filter, "QLightFilter_filter");
 
 function  QLightSensor_create(paren:QObjectH := null) return QSensorH;
 pragma Import(C,QLightSensor_create, "QLightSensor_create");
 
 procedure QLightSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QLightSensor_destroy, "QLightSensor_destroy");
 
 function  QLightSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QLightSensor_reading, "QLightSensor_reading");
 
 function  QLightSensor_fieldOfView(handle:not null QSensorH) return qreal;
 pragma Import(C,QLightSensor_fieldOfView, "QLightSensor_fieldOfView");
 
 procedure QLightSensor_setFieldOfView(handle:not null QSensorH; fieldOfView:qreal);
 pragma Import(C,QLightSensor_setFieldOfView, "QLightSensor_setFieldOfView");
 
 procedure QLightSensor_signal_slot_fieldOfViewChanged(handle:not null QSensorH; hook:qrealProc);
 pragma Import(C,QLightSensor_signal_slot_fieldOfViewChanged, "QLightSensor_signal_slot_fieldOfViewChanged");
 
-----------------------------------------------------------------------------------------------------------
 function  QMagnetometerReading_x(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QMagnetometerReading_x, "QMagnetometerReading_x");
 
 procedure QMagnetometerReading_setX(handle:not null QSensorReadingH;x:qreal);
 pragma Import(C,QMagnetometerReading_setX, "QMagnetometerReading_setX");
 
 function  QMagnetometerReading_y(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QMagnetometerReading_y, "QMagnetometerReading_y");
 
 procedure QMagnetometerReading_setY(handle:not null QSensorReadingH;y:qreal);
 pragma Import(C,QMagnetometerReading_setY, "QMagnetometerReading_setY");
 
 function  QMagnetometerReading_z(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QMagnetometerReading_z, "QMagnetometerReading_z");
 
 procedure QMagnetometerReading_setZ(handle:not null QSensorReadingH;z:qreal);
 pragma Import(C,QMagnetometerReading_setZ, "QMagnetometerReading_setZ");
 
 function  QMagnetometerReading_calibrationLevel(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QMagnetometerReading_calibrationLevel, "QMagnetometerReading_calibrationLevel");
 
 procedure QMagnetometerReading_setCalibrationLevel(handle:not null QSensorReadingH;calibrationLevel:qreal);
 pragma Import(C,QMagnetometerReading_setCalibrationLevel, "QMagnetometerReading_setCalibrationLevel");
 
 function  QMagnetometerFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QMagnetometerFilter_filter, "QMagnetometerFilter_filter");
 
 function  QMagnetometer_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QMagnetometer_create, "QMagnetometer_create");
 
 procedure QMagnetometer_destroy(handle:not null QSensorH);
 pragma Import(C,QMagnetometer_destroy, "QMagnetometer_destroy");
 
 function  QMagnetometer_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QMagnetometer_reading, "QMagnetometer_reading");
 
 function  QMagnetometer_returnGeoValues(handle:not null QSensorH) return boolean;
 pragma Import(C,QMagnetometer_returnGeoValues, "QMagnetometer_returnGeoValues");
 
 procedure QMagnetometer_setReturnGeoValues(handle:not null QSensorH;returnGeoValues:boolean);
 pragma Import(C,QMagnetometer_setReturnGeoValues, "QMagnetometer_setReturnGeoValues");
 
 procedure QMagnetometer_signal_slot_returnGeoValuesChanged(handle:not null QSensorH; hook:boolProc);
 pragma Import(C,QMagnetometer_signal_slot_returnGeoValuesChanged, "QMagnetometer_signal_slot_returnGeoValuesChanged");
 
---------------------------------------------------------------------------------------------
 type Orientations is (Undefined,TopUp,TopDown,LeftUp,RightUp,FaceUp,FaceDown);
 pragma convention(C,Orientations);

 function  QOrientationReading_orientation(handle:not null QSensorReadingH) return Orientations;
 pragma Import(C,QOrientationReading_orientation, "QOrientationReading_orientation");
 
 procedure QOrientationReading_setOrientation(handle:not null QSensorReadingH;orientation:Orientations);
 pragma Import(C,QOrientationReading_setOrientation, "QOrientationReading_setOrientation");
 
 function  QOrientationFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QOrientationFilter_filter, "QOrientationFilter_filter");
 
 function  QOrientationSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QOrientationSensor_create, "QOrientationSensor_create");
 
 procedure QOrientationSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QOrientationSensor_destroy, "QOrientationSensor_destroy");
 
 function  QOrientationSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QOrientationSensor_reading, "QOrientationSensor_reading");
 
-------------------------------------------------------------------------------------------------------
 function  QPressureReading_pressure(handle:QSensorReadingH) return qreal;
 pragma Import(C,QPressureReading_pressure, "QPressureReading_pressure");
 
 procedure QPressureReading_setPressure(handle:QSensorReadingH; pressure:qreal);
 pragma Import(C,QPressureReading_setPressure, "QPressureReading_setPressure");
 
 function  QPressureFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QPressureFilter_filter, "QPressureFilter_filter");
 
 function  QPressureSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QPressureSensor_create, "QPressureSensor_create");
 
 procedure QPressureSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QPressureSensor_destroy, "QPressureSensor_destroy");
 
 function  QPressureSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QPressureSensor_reading, "QPressureSensor_reading");
 
------------------------------------------------------------------------------------------------------
 function  QProximityReading_close(handle:not null QSensorReadingH) return boolean;
 pragma Import(C,QProximityReading_close, "QProximityReading_close");
 
 procedure QProximityReading_setClose(handle:not null QSensorReadingH;close:boolean);
 pragma Import(C,QProximityReading_setClose, "QProximityReading_setClose");
 
 function  QProximityFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QProximityFilter_filter, "QProximityFilter_filter");
 
 function  QProximitySensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QProximitySensor_create, "QProximitySensor_create");
 
 procedure QProximitySensor_destroy(handle:not null QSensorH);
 pragma Import(C,QProximitySensor_destroy, "QProximitySensor_destroy");
 
 function  QProximitySensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QProximitySensor_reading, "QProximitySensor_reading");
 
-------------------------------------------------------------------------------------------------------
 function  QRotationReading_x(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QRotationReading_x, "QRotationReading_x");
 
 function  QRotationReading_y(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QRotationReading_y, "QRotationReading_y");
 
 function  QRotationReading_z(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QRotationReading_z, "QRotationReading_z");
 
 procedure QRotationReading_setFromEuler(handle:not null QSensorReadingH;x,y,z: qreal);
 pragma Import(C,QRotationReading_setFromEuler, "QRotationReading_setFromEuler");
 
 function  QRotationFilter_filter(handle:not null QSensorFilterH; reading:QSensorReadingH) return boolean;
 pragma Import(C,QRotationFilter_filter, "QRotationFilter_filter");
 
 function  QRotationSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QRotationSensor_create, "QRotationSensor_create");
 
 procedure QRotationSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QRotationSensor_destroy, "QRotationSensor_destroy");
 
 function  QRotationSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QRotationSensor_reading, "QRotationSensor_reading");
 
 function  QRotationSensor_hasZ(handle:not null QSensorH) return boolean;
 pragma Import(C,QRotationSensor_hasZ, "QRotationSensor_hasZ");
 
 procedure QRotationSensor_setHasZ(handle:not null QSensorH;hasZ:boolean);
 pragma Import(C,QRotationSensor_setHasZ, "QRotationSensor_setHasZ");
 
 procedure QRotationSensor_signal_slot_hasZChanged(handle:not null QSensorH; hook:boolProc);
 pragma Import(C,QRotationSensor_signal_slot_hasZChanged, "QRotationSensor_signal_slot_hasZChanged");
 
-------------------------------------------------------------------------------------------------------
 procedure QSensorBackend_destroy(handle:not null QSensorBackendH);
 pragma Import(C,QSensorBackend_destroy, "QSensorBackend_destroy");
 
 procedure QSensorBackend_addDataRate(handle:not null QSensorH;min,max:qreal);
 pragma Import(C,QSensorBackend_addDataRate, "QSensorBackend_addDataRate");
 
 procedure QSensorBackend_setDataRates(handle:not null QSensorH;otherSensor:QSensorH);
 pragma Import(C,QSensorBackend_setDataRates, "QSensorBackend_setDataRates");
 
 procedure QSensorBackend_addOutputRange(handle:not null QSensorH; min,max,accuracy:qreal);
 pragma Import(C,QSensorBackend_addOutputRange, "QSensorBackend_addOutputRange");
 
 procedure QSensorBackend_setDescription(handle:not null QSensorH; description:not null QStringH);
 pragma Import(C,QSensorBackend_setDescription, "QSensorBackend_setDescription");
 
 function  QSensorBackend_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QSensorBackend_reading, "QSensorBackend_reading");
 
 function  QSensorBackend_sensor(handle:not null QSensorH) return QSensorH;
 pragma Import(C,QSensorBackend_sensor, "QSensorBackend_sensor");
 
 procedure QSensorBackend_newReadingAvailable(handle:not null QSensorH);
 pragma Import(C,QSensorBackend_newReadingAvailable, "QSensorBackend_newReadingAvailable");
 
 procedure QSensorBackend_sensorStopped(handle:not null QSensorH);
 pragma Import(C,QSensorBackend_sensorStopped, "QSensorBackend_sensorStopped");
 
 procedure QSensorBackend_sensorBusy(handle:not null QSensorH);
 pragma Import(C,QSensorBackend_sensorBusy, "QSensorBackend_sensorBusy");
 
 procedure QSensorBackend_sensorError(handle:not null QSensorH; error:integer);
 pragma Import(C,QSensorBackend_sensorError, "QSensorBackend_sensorError");
 
-------------------------------------------------------------------------------------------------------
 function  QSensorGesture_create(ids:QStringListH;parent:QObjectH := null) return QSensorGestureH;
 pragma Import(C,QSensorGesture_create, "QSensorGesture_create");
 
 procedure QSensorGesture_destroy(handle:not null QSensorGestureH);
 pragma Import(C,QSensorGesture_destroy, "QSensorGesture_destroy");
 
 function  QSensorGesture_isActive(handle:not null QSensorGestureH) return boolean;
 pragma Import(C,QSensorGesture_isActive, "QSensorGesture_isActive");
 
 function  QSensorGesture_validIds(handle:not null QSensorGestureH) return QStringListH;
 pragma Import(C,QSensorGesture_validIds, "QSensorGesture_validIds");
 
 function  QSensorGesture_invalidIds(handle:not null QSensorGestureH) return QStringListH;
 pragma Import(C,QSensorGesture_invalidIds, "QSensorGesture_invalidIds");
 
 function  QSensorGesture_gestureSignals(handle:not null QSensorGestureH) return QStringListH;
 pragma Import(C,QSensorGesture_gestureSignals, "QSensorGesture_gestureSignals");
 
 procedure QSensorGesture_startDetection(handle:not null QSensorGestureH);
 pragma Import(C,QSensorGesture_startDetection, "QSensorGesture_startDetection");
 
 procedure QSensorGesture_stopDetection(handle:not null QSensorGestureH);
 pragma Import(C,QSensorGesture_stopDetection, "QSensorGesture_stopDetection");
 
-------------------------------------------------------------------------------------------------------
 function  QSensorGestureManager_create(parent:QObjectH := null) return QSensorGestureManagerH;
 pragma Import(C,QSensorGestureManager_create, "QSensorGestureManager_create");
 
 procedure QSensorGestureManager_destroy(handle:not null QSensorGestureManagerH);
 pragma Import(C,QSensorGestureManager_destroy, "QSensorGestureManager_destroy");
 
 function  QSensorGestureManager_registerSensorGestureRecognizer(handle:not null QSensorGestureManagerH;recognizer:QSensorGestureRecognizerH) return boolean;
 pragma Import(C,QSensorGestureManager_registerSensorGestureRecognizer, "QSensorGestureManager_registerSensorGestureRecognizer");
 
 function  QSensorGestureManager_gestureIds(handle:not null QSensorGestureManagerH) return QStringListH;
 pragma Import(C,QSensorGestureManager_gestureIds, "QSensorGestureManager_gestureIds");
 
 function  QSensorGestureManager_recognizerSignals(handle:not null QSensorGestureManagerH;recognizerId:QStringH) return QStringListH;
 pragma Import(C,QSensorGestureManager_recognizerSignals, "QSensorGestureManager_recognizerSignals");
 
 function  QSensorGestureManager_sensorGestureRecognizer(id:not null QStringH) return QSensorGestureRecognizerH;
 pragma Import(C,QSensorGestureManager_sensorGestureRecognizer, "QSensorGestureManager_sensorGestureRecognizer");
 
 procedure QSensorGestureManager_signal_slot_newSensorGestureAvailable(handle:not null QSensorGestureManagerH;hook:voidProc);
 pragma Import(C,QSensorGestureManager_signal_slot_newSensorGestureAvailable, "QSensorGestureManager_signal_slot_newSensorGestureAvailable");
 

-------------------------------------------------------------------------------------------------------
 procedure QSensorGestureRecognizer_destroy(handle:not null QSensorGestureRecognizerH);
 pragma Import(C,QSensorGestureRecognizer_destroy, "QSensorGestureRecognizer_destroy");
 
 function  QSensorGestureRecognizer_isActive(handle:not null QSensorGestureRecognizerH) return boolean;
 pragma Import(C,QSensorGestureRecognizer_isActive, "QSensorGestureRecognizer_isActive");
 
 procedure QSensorGestureRecognizer_startBackend(handle:not null QSensorGestureRecognizerH);
 pragma Import(C,QSensorGestureRecognizer_startBackend, "QSensorGestureRecognizer_startBackend");
 
 procedure QSensorGestureRecognizer_stopBackend(handle:not null QSensorGestureRecognizerH);
 pragma Import(C,QSensorGestureRecognizer_stopBackend, "QSensorGestureRecognizer_stopBackend");
 
 procedure QSensorGestureRecognizer_createBackend(handle:not null QSensorGestureRecognizerH);
 pragma Import(C,QSensorGestureRecognizer_createBackend, "QSensorGestureRecognizer_createBackend");
 
 function  QSensorGestureRecognizer_gestureSignals(handle:not null QSensorGestureRecognizerH) return QStringListH;
 pragma Import(C,QSensorGestureRecognizer_gestureSignals, "QSensorGestureRecognizer_gestureSignals");

 procedure QSensorGestureRecognizer_signal_slot_detected(handle:not null QSensorGestureRecognizerH;hook:qstringProc);
 pragma Import(C,QSensorGestureRecognizer_signal_slot_detected, "QSensorGestureRecognizer_signal_slot_detected");
 
-------------------------------------------------------------------------------------------------------
 type QSensorBackendFactoryH is new QObjectH;

 procedure QSensorManager_registerBackend(sensorType,identifier:QByteArrayH;factory: QSensorBackendFactoryH);
 pragma Import(C,QSensorManager_registerBackend, "QSensorManager_registerBackend");
 
 procedure QSensorManager_unregisterBackend(sensorType,identifier:QByteArrayH);
 pragma Import(C,QSensorManager_unregisterBackend, "QSensorManager_unregisterBackend");
 
 function  QSensorManager_isBackendRegistered(sensorType,identifier:QByteArrayH) return boolean;
 pragma Import(C,QSensorManager_isBackendRegistered, "QSensorManager_isBackendRegistered");
 
 function  QSensorManager_createBackend(sensor:QSensorH) return QSensorBackendH;
 pragma Import(C,QSensorManager_createBackend, "QSensorManager_createBackend");
 
 procedure QSensorManager_setDefaultBackend(sensorType,identifier:QByteArrayH);
 pragma Import(C,QSensorManager_setDefaultBackend, "QSensorManager_setDefaultBackend");
 
--------------------------  2019 -----------------
 function  QSensorReading_backLidClosed(handle:not null QSensorReadingH) return boolean;
 pragma Import(C,QSensorReading_backLidClosed, "QSensorReading_backLidClosed");
 
 procedure QSensorReading_setBackLidClosed(handle:not null QSensorReadingH;closed:boolean);
 pragma Import(C,QSensorReading_setBackLidClosed, "QSensorReading_setBackLidClosed");
 
 function  QSensorReading_frontLidClosed(handle:not null QSensorReadingH) return boolean;
 pragma Import(C,QSensorReading_frontLidClosed, "QSensorReading_frontLidClosed");
 
 procedure QSensorReading_setFrontLidClosed(handle:not null QSensorReadingH;closed:boolean);
 pragma Import(C,QSensorReading_setFrontLidClosed, "QSensorReading_setFrontLidClosed");
 
 procedure QSensorReading_signal_slot_backLidChanged(handle:not null QSensorReadingH;hook:boolCallbackH);
 pragma Import(C,QSensorReading_signal_slot_backLidChanged, "QSensorReading_signal_slot_backLidChanged");
 
 procedure QSensorReading_signal_slot_frontLidChanged(handle:not null QSensorReadingH;hook:boolCallbackH);   
 pragma Import(C,QSensorReading_signal_slot_frontLidChanged, "QSensorReading_signal_slot_frontLidChanged");
 
 function  QLidFilter_filter(handle:not null QSensorFilterH;reading:QSensorReadingH) return boolean;
 pragma Import(C,QLidFilter_filter, "QLidFilter_filter");
 
 function  QLidSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QLidSensor_create, "QLidSensor_create");
 
 function  QLidSensor_type return zstring;
 pragma Import(C,QLidSensor_type, "QLidSensor_type");
 
 procedure QLidSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QLidSensor_destroy, "QLidSensor_destroy");
 
 function  QLidSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QLidSensor_reading, "QLidSensor_reading");
-------------------------------------------------------
function  QSensorReading_relativeHumidity(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QSensorReading_relativeHumidity, "QSensorReading_relativeHumidity");
 
 procedure QSensorReading_setRelativeHumidity(handle:not null QSensorReadingH;percent:qreal);
 pragma Import(C,QSensorReading_setRelativeHumidity, "QSensorReading_setRelativeHumidity");
 
 function  QSensorReading_absoluteHumidity(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QSensorReading_absoluteHumidity, "QSensorReading_absoluteHumidity");
 
 procedure QSensorReading_setAbsoluteHumidity(handle:not null QSensorReadingH;value:qreal);
 pragma Import(C,QSensorReading_setAbsoluteHumidity, "QSensorReading_setAbsoluteHumidity");
 
 function  QHumidityFilter_filter(handle:not null QSensorFilterH;reading:QSensorReadingH) return boolean;
 pragma Import(C,QHumidityFilter_filter, "QHumidityFilter_filter");
 
 function  QHumiditySensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QHumiditySensor_create, "QHumiditySensor_create");
 
 function  QHumiditySensor_type return zstring;
 pragma Import(C,QHumiditySensor_type, "QHumiditySensor_type");
 
 procedure QHumiditySensor_destroy(handle:not null QSensorH);
 pragma Import(C,QHumiditySensor_destroy, "QHumiditySensor_destroy");
 
 function  QHumiditySensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QHumiditySensor_reading, "QHumiditySensor_reading");
----------------------------------------------------
 function  QSensorReading_distance(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QSensorReading_distance, "QSensorReading_distance");
 
 procedure qrealQSensorReading_setDistance(handle:not null QSensorReadingH;distance:qreal);
 pragma Import(C,qrealQSensorReading_setDistance, "qrealQSensorReading_setDistance");
 
 function  QDistanceFilter_filter(handle:not null QSensorFilterH;reading:QSensorReadingH) return boolean;
 pragma Import(C,QDistanceFilter_filter, "QDistanceFilter_filter");
 
 function  QDistanceSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QDistanceSensor_create, "QDistanceSensor_create");
 
 function  QDistanceSensor_type return zstring;
 pragma Import(C,QDistanceSensor_type, "QDistanceSensor_type");
 
 procedure QDistanceSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QDistanceSensor_destroy, "QDistanceSensor_destroy");
 
 function  QDistanceSensor_reading(handle:not null QSensorH) return QSensorH;
 pragma Import(C,QDistanceSensor_reading, "QDistanceSensor_reading");
----------------------------------------------
 function  QSensorReading_temperature(handle:not null QSensorReadingH) return qreal;
 pragma Import(C,QSensorReading_temperature, "QSensorReading_temperature");
 
 procedure QSensorReading_setTemperature(handle:not null QSensorReadingH;temperature:qreal);
 pragma Import(C,QSensorReading_setTemperature, "QSensorReading_setTemperature");
 
 function  QAmbientTemperatureFilter_filter(handle:not null QSensorFilterH;reading:QSensorReadingH) return boolean;
 pragma Import(C,QAmbientTemperatureFilter_filter, "QAmbientTemperatureFilter_filter");
 
 function  QAmbientTemperatureSensor_create(parent:QObjectH := null) return QSensorH;
 pragma Import(C,QAmbientTemperatureSensor_create, "QAmbientTemperatureSensor_create");
 
 function  QAmbientTemperatureSensor_type return zstring;
 pragma Import(C,QAmbientTemperatureSensor_type, "QAmbientTemperatureSensor_type");
 
 procedure QAmbientTemperatureSensor_destroy(handle:not null QSensorH);
 pragma Import(C,QAmbientTemperatureSensor_destroy, "QAmbientTemperatureSensor_destroy");
 
 function  QAmbientTemperatureSensor_reading(handle:not null QSensorH) return QSensorReadingH;
 pragma Import(C,QAmbientTemperatureSensor_reading, "QAmbientTemperatureSensor_reading");
 
 
end;
