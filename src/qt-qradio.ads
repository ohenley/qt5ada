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

--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QNamespace;
package Qt.QRadio is

 type RadioDataError is (NoError, ResourceError, OpenError, OutOfRangeError);
 pragma convention(C,RadioDataError);
 
 type ProgramType is (Undefined, News, CurrentAffairs, Information,
        Sport, Education, Drama, Culture, Science, Varied,
        PopMusic, RockMusic, EasyListening, LightClassical,
        SeriousClassical, OtherMusic, Weather, Finance,
        ChildrensProgrammes, SocialAffairs, Religion,
        PhoneIn, Travel, Leisure, JazzMusic, CountryMusic,
        NationalMusic, OldiesMusic, FolkMusic, Documentary,
        AlarmTest, Alarm, Talk, ClassicRock, AdultHits,
        SoftRock, Top40, Soft, Nostalgia, Classical,
        RhythmAndBlues, SoftRhythmAndBlues, Language,
        ReligiousMusic, ReligiousTalk, Personality, Public,College); 
 pragma convention(C,ProgramType);

 type stringProc is access procedure(p:QStringH);
 pragma convention(C,stringProc);

 type intStringProc is access procedure(p1:integer;p2:QStringH);
 pragma convention(C,intStringProc);

 type intProc    is access procedure(p:integer);
 pragma convention(C,intProc);

 type boolProc   is access procedure(p:boolean);
 pragma convention(C,boolProc);

 function  QRadioData_create(mediaObject:QMediaObjectH;parent:QObjectH := null) return QRadioDataH;
 pragma Import(C,QRadioData_create, "QRadioData_create");
 
 procedure QRadioData_destroy(handle: not null QRadioDataH);
 pragma Import(C,QRadioData_destroy, "QRadioData_destroy");
 
 function  QRadioData_availability(handle: not null QRadioDataH) return Qt.QNamespace.AvailabilityStatus;
 pragma Import(C,QRadioData_availability, "QRadioData_availability");
 
 function  QRadioData_mediaObject(handle: not null QRadioDataH) return QMediaObjectH;
 pragma Import(C,QRadioData_mediaObject, "QRadioData_mediaObject");
 
 function  QRadioData_stationId(handle: not null QRadioDataH) return QStringH;
 pragma Import(C,QRadioData_stationId, "QRadioData_stationId");
 
 function  QRadioData_programType(handle: not null QRadioDataH) return ProgramType;
 pragma Import(C,QRadioData_programType, "QRadioData_programType");
 
 function  QRadioData_programTypeName(handle: not null QRadioDataH) return QStringH;
 pragma Import(C,QRadioData_programTypeName, "QRadioData_programTypeName");
 
 function  QRadioData_stationName(handle: not null QRadioDataH) return QStringH;
 pragma Import(C,QRadioData_stationName, "QRadioData_stationName");
 
 function  QRadioData_radioText(handle: not null QRadioDataH) return QStringH;
 pragma Import(C,QRadioData_radioText, "QRadioData_radioText");
 
 function  QRadioData_isAlternativeFrequenciesEnabled(handle: not null QRadioDataH) return boolean;
 pragma Import(C,QRadioData_isAlternativeFrequenciesEnabled, "QRadioData_isAlternativeFrequenciesEnabled");
 
 function  QRadioData_error(handle: not null QRadioDataH) return RadioDataError;
 pragma Import(C,QRadioData_error, "QRadioData_error");
 
 function  QRadioData_errorString(handle: not null QRadioDataH) return QStringH;
 pragma Import(C,QRadioData_errorString, "QRadioData_errorString");
 
 procedure QRadioData_setAlternativeFrequenciesEnabled(handle: not null QRadioDataH;enabled:boolean);
 pragma Import(C,QRadioData_setAlternativeFrequenciesEnabled, "QRadioData_setAlternativeFrequenciesEnabled");
 
 procedure QRadioData_signal_slot_stationIdChanged(handle: not null QRadioDataH; hook:stringProc);
 pragma Import(C,QRadioData_signal_slot_stationIdChanged, "QRadioData_signal_slot_stationIdChanged");
 
 procedure QRadioData_signal_slot_programTypeChanged(handle: not null QRadioDataH; hook:intProc);
 pragma Import(C,QRadioData_signal_slot_programTypeChanged, "QRadioData_signal_slot_programTypeChanged");
 
 procedure QRadioData_signal_slot_programTypeNameChanged(handle: not null QRadioDataH; hook:stringProc);
 pragma Import(C,QRadioData_signal_slot_programTypeNameChanged, "QRadioData_signal_slot_programTypeNameChanged");
 
 procedure QRadioData_signal_slot_stationNameChanged(handle: not null QRadioDataH; hook:stringProc);
 pragma Import(C,QRadioData_signal_slot_stationNameChanged, "QRadioData_signal_slot_stationNameChanged");
 
 procedure QRadioData_signal_slot_radioTextChanged(handle: not null QRadioDataH; hook:stringProc);
 pragma Import(C,QRadioData_signal_slot_radioTextChanged, "QRadioData_signal_slot_radioTextChanged");
 
 procedure QRadioData_signal_slot_alternativeFrequenciesEnabledChanged(handle: not null QRadioDataH; hook:boolProc);
 pragma Import(C,QRadioData_signal_slot_alternativeFrequenciesEnabledChanged, "QRadioData_signal_slot_alternativeFrequenciesEnabledChanged");
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
 type  RadioTunerState is ( ActiveState, StoppedState );
 pragma convention(C,RadioTunerState);

 type  RadioTunerBand is ( AM, FM, SW, LW, FM2 );
 pragma convention(C,RadioTunerBand);

 type  RadioTunerError is ( NoError, ResourceError, OpenError, OutOfRangeError );
 pragma convention(C,RadioTunerError);

 type  RadioTunerStereoMode is ( ForceStereo, ForceMono, Auto );
 pragma convention(C,RadioTunerStereoMode);

 type  RadioTunerSearchMode is ( SearchFast, SearchGetStationId );
 pragma convention(C,RadioTunerSearchMode);

 type Pair is record
   first,last: integer;
 end record;
 pragma convention(C,Pair);
 type PairH is access all Pair;

 function  QRadioTuner_create(parent:QObjectH := null) return QRadioTunerH ;
 pragma Import(C,QRadioTuner_create, "QRadioTuner_create");
 
 procedure QRadioTuner_destroy(handle: not null QRadioTunerH);
 pragma Import(C,QRadioTuner_destroy, "QRadioTuner_destroy");
 
 function  QRadioTuner_availability(handle: not null QRadioTunerH) return Qt.QNamespace.AvailabilityStatus;
 pragma Import(C,QRadioTuner_availability, "QRadioTuner_availability");
 
 function  QRadioTuner_state(handle: not null QRadioTunerH) return RadioTunerState;
 pragma Import(C,QRadioTuner_state, "QRadioTuner_state");
 
 function  QRadioTuner_band(handle: not null QRadioTunerH) return RadioTunerBand;
 pragma Import(C,QRadioTuner_band, "QRadioTuner_band");
 
 function  QRadioTuner_isBandSupported(handle: not null QRadioTunerH;band:RadioTunerBand) return boolean;
 pragma Import(C,QRadioTuner_isBandSupported, "QRadioTuner_isBandSupported");
 
 function  QRadioTuner_frequency(handle: not null QRadioTunerH) return integer;
 pragma Import(C,QRadioTuner_frequency, "QRadioTuner_frequency");
 
 function  QRadioTuner_frequencyStep(handle: not null QRadioTunerH;band:RadioTunerBand) return integer;
 pragma Import(C,QRadioTuner_frequencyStep, "QRadioTuner_frequencyStep");
 
 function  QRadioTuner_frequencyRange(handle: not null QRadioTunerH;band:RadioTunerBand) return PairH;
 pragma Import(C,QRadioTuner_frequencyRange, "QRadioTuner_frequencyRange");
 
 function  QRadioTuner_isStereo(handle: not null QRadioTunerH) return boolean;
 pragma Import(C,QRadioTuner_isStereo, "QRadioTuner_isStereo");
 
 procedure QRadioTuner_setStereoMode(handle: not null QRadioTunerH;mode:RadioTunerStereoMode);
 pragma Import(C,QRadioTuner_setStereoMode, "QRadioTuner_setStereoMode");
 
 function  QRadioTuner_stereoMode(handle: not null QRadioTunerH) return RadioTunerStereoMode;
 pragma Import(C,QRadioTuner_stereoMode, "QRadioTuner_stereoMode");
 
 function  QRadioTuner_signalStrength(handle: not null QRadioTunerH) return integer;
 pragma Import(C,QRadioTuner_signalStrength, "QRadioTuner_signalStrength");
 
 function  QRadioTuner_volume(handle: not null QRadioTunerH) return integer;
 pragma Import(C,QRadioTuner_volume, "QRadioTuner_volume");
 
 function  QRadioTuner_isMuted(handle: not null QRadioTunerH) return boolean;
 pragma Import(C,QRadioTuner_isMuted, "QRadioTuner_isMuted");
 
 function  QRadioTuner_isSearching(handle: not null QRadioTunerH) return boolean;
 pragma Import(C,QRadioTuner_isSearching, "QRadioTuner_isSearching");
 
 function  QRadioTuner_isAntennaConnected(handle: not null QRadioTunerH) return boolean;
 pragma Import(C,QRadioTuner_isAntennaConnected, "QRadioTuner_isAntennaConnected");
 
 function  QRadioTuner_error(handle: not null QRadioTunerH) return RadioTunerError;
 pragma Import(C,QRadioTuner_error, "QRadioTuner_error");
 
 function  QRadioTuner_errorString(handle: not null QRadioTunerH) return QStringH;
 pragma Import(C,QRadioTuner_errorString, "QRadioTuner_errorString");
 
 function  QRadioTuner_radioData(handle: not null QRadioTunerH) return QRadioDataH;
 pragma Import(C,QRadioTuner_radioData, "QRadioTuner_radioData");
 
 procedure QRadioTuner_searchForward(handle: not null QRadioTunerH);
 pragma Import(C,QRadioTuner_searchForward, "QRadioTuner_searchForward");
 
 procedure QRadioTuner_searchBackward(handle: not null QRadioTunerH);
 pragma Import(C,QRadioTuner_searchBackward, "QRadioTuner_searchBackward");
 
 procedure QRadioTuner_searchAllStations(handle: not null QRadioTunerH;searchMode:RadioTunerSearchMode := SearchFast);
 pragma Import(C,QRadioTuner_searchAllStations, "QRadioTuner_searchAllStations");
 
 procedure QRadioTuner_cancelSearch(handle: not null QRadioTunerH);
 pragma Import(C,QRadioTuner_cancelSearch, "QRadioTuner_cancelSearch");
 
 procedure QRadioTuner_setBand(handle: not null QRadioTunerH;band:RadioTunerBand);
 pragma Import(C,QRadioTuner_setBand, "QRadioTuner_setBand");
 
 procedure QRadioTuner_setFrequency(handle: not null QRadioTunerH;frequency:integer);
 pragma Import(C,QRadioTuner_setFrequency, "QRadioTuner_setFrequency");
 
 procedure QRadioTuner_setVolume(handle: not null QRadioTunerH;volume:integer);
 pragma Import(C,QRadioTuner_setVolume, "QRadioTuner_setVolume");
 
 procedure QRadioTuner_setMuted(handle: not null QRadioTunerH;isMuted:boolean);
 pragma Import(C,QRadioTuner_setMuted, "QRadioTuner_setMuted");
 
 procedure QRadioTuner_start(handle: not null QRadioTunerH);
 pragma Import(C,QRadioTuner_start, "QRadioTuner_start");
 
 procedure QRadioTuner_stop(handle: not null QRadioTunerH);
 pragma Import(C,QRadioTuner_stop, "QRadioTuner_stop");

 procedure QRadioTuner_signal_slot_stateChanged(handle: not null QRadioTunerH; hook:intProc);
 pragma Import(C,QRadioTuner_signal_slot_stateChanged, "QRadioTuner_signal_slot_stateChanged");
 
 procedure QRadioTuner_signal_slot_bandChanged(handle: not null QRadioTunerH; hook:intProc);
 pragma Import(C,QRadioTuner_signal_slot_bandChanged, "QRadioTuner_signal_slot_bandChanged");
 
 procedure QRadioTuner_signal_slot_frequencyChanged(handle: not null QRadioTunerH; hook:intProc);
 pragma Import(C,QRadioTuner_signal_slot_frequencyChanged, "QRadioTuner_signal_slot_frequencyChanged");
 
 procedure QRadioTuner_signal_slot_signalStrengthChanged(handle: not null QRadioTunerH; hook:intProc);
 pragma Import(C,QRadioTuner_signal_slot_signalStrengthChanged, "QRadioTuner_signal_slot_signalStrengthChanged");
 
 procedure QRadioTuner_signal_slot_volumeChanged(handle: not null QRadioTunerH; hook:intProc);
 pragma Import(C,QRadioTuner_signal_slot_volumeChanged, "QRadioTuner_signal_slot_volumeChanged");
 
 procedure QRadioTuner_signal_slot_error(handle: not null QRadioTunerH; hook:intProc);
 pragma Import(C,QRadioTuner_signal_slot_error, "QRadioTuner_signal_slot_error");
 
 procedure QRadioTuner_signal_slot_stereoStatusChanged(handle: not null QRadioTunerH; hook:boolProc);
 pragma Import(C,QRadioTuner_signal_slot_stereoStatusChanged, "QRadioTuner_signal_slot_stereoStatusChanged");
 
 procedure QRadioTuner_signal_slot_searchingChanged(handle: not null QRadioTunerH; hook:boolProc);
 pragma Import(C,QRadioTuner_signal_slot_searchingChanged, "QRadioTuner_signal_slot_searchingChanged");
 
 procedure QRadioTuner_signal_slot_mutedChanged(handle: not null QRadioTunerH; hook:boolProc);
 pragma Import(C,QRadioTuner_signal_slot_mutedChanged, "QRadioTuner_signal_slot_mutedChanged");
 
 procedure QRadioTuner_signal_slot_antennaConnectedChanged(handle: not null QRadioTunerH; hook:boolProc);
 pragma Import(C,QRadioTuner_signal_slot_antennaConnectedChanged, "QRadioTuner_signal_slot_antennaConnectedChanged");
 
 procedure QRadioTuner_signal_slot_stationFound(handle: not null QRadioTunerH; hook:intStringProc);
 pragma Import(C,QRadioTuner_signal_slot_stationFound, "QRadioTuner_signal_slot_stationFound");
 
end;
