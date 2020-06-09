
--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

 with Qt.QString; use Qt.QString;
 package Qt.QMediaMetaData is

  Title                    : QStringH := QString_create;
  SubTitle                 : QStringH := QString_create;
  Author                   : QStringH := QString_create;
  Comment                  : QStringH := QString_create;
  Description              : QStringH := QString_create;
  Category                 : QStringH := QString_create;
  Genre                    : QStringH := QString_create;
  Year                     : QStringH := QString_create;
  Date                     : QStringH := QString_create;
  UserRating               : QStringH := QString_create;
  Keywords                 : QStringH := QString_create;
  Language                 : QStringH := QString_create;
  Publisher                : QStringH := QString_create;
  Copyright                : QStringH := QString_create;
  ParentalRating           : QStringH := QString_create;
  RatingOrganization       : QStringH := QString_create;

 -- Media
  Size                     : QStringH := QString_create;
  MediaType                : QStringH := QString_create;
  Duration                 : QStringH := QString_create;

 -- Audio
  AudioBitRate             : QStringH := QString_create;
  AudioCodec               : QStringH := QString_create;
  AverageLevel             : QStringH := QString_create;
  ChannelCount             : QStringH := QString_create;
  PeakValue                : QStringH := QString_create;
  SampleRate               : QStringH := QString_create;

 -- Music
  AlbumTitle               : QStringH := QString_create;
  AlbumArtist              : QStringH := QString_create;
  ContributingArtist       : QStringH := QString_create;
  Composer                 : QStringH := QString_create;
  Conductor                : QStringH := QString_create;
  Lyrics                   : QStringH := QString_create;
  Mood                     : QStringH := QString_create;
  TrackNumber              : QStringH := QString_create;
  TrackCount               : QStringH := QString_create;

  CoverArtUrlSmall         : QStringH := QString_create;
  CoverArtUrlLarge         : QStringH := QString_create;

 -- Image/Video
  Resolution               : QStringH := QString_create;
  PixelAspectRatio         : QStringH := QString_create;

 -- Video
  VideoFrameRate           : QStringH := QString_create;
  VideoBitRate             : QStringH := QString_create;
  VideoCodec               : QStringH := QString_create;

  PosterUrl                : QStringH := QString_create;

 -- Movie
  ChapterNumber            : QStringH := QString_create;
  Director                 : QStringH := QString_create;
  LeadPerformer            : QStringH := QString_create;
  Writer                   : QStringH := QString_create;

 -- Photos
  CameraManufacturer       : QStringH := QString_create;
  CameraModel              : QStringH := QString_create;
  Event                    : QStringH := QString_create;
  Subject                  : QStringH := QString_create;
  Orientation              : QStringH := QString_create;
  ExposureTime             : QStringH := QString_create;
  FNumber                  : QStringH := QString_create;
  ExposureProgram          : QStringH := QString_create;
  ISOSpeedRatings          : QStringH := QString_create;
  ExposureBiasValue        : QStringH := QString_create;
  DateTimeOriginal         : QStringH := QString_create;
  DateTimeDigitized        : QStringH := QString_create;
  SubjectDistance          : QStringH := QString_create;
  MeteringMode             : QStringH := QString_create;
  LightSource              : QStringH := QString_create;
  Flash                    : QStringH := QString_create;
  FocalLength              : QStringH := QString_create;
  ExposureMode             : QStringH := QString_create;
  WhiteBalance             : QStringH := QString_create;
  DigitalZoomRatio         : QStringH := QString_create;
  FocalLengthIn35mmFilm    : QStringH := QString_create;
  SceneCaptureType         : QStringH := QString_create;
  GainControl              : QStringH := QString_create;
  Contrast                 : QStringH := QString_create;
  Saturation               : QStringH := QString_create;
  Sharpness                : QStringH := QString_create;
  DeviceSettingDescription : QStringH := QString_create;

 -- Location
  GPSLatitude              : QStringH := QString_create;
  GPSLongitude             : QStringH := QString_create;
  GPSAltitude              : QStringH := QString_create;
  GPSTimeStamp             : QStringH := QString_create;
  GPSSatellites            : QStringH := QString_create;
  GPSStatus                : QStringH := QString_create;
  GPSDOP                   : QStringH := QString_create;
  GPSSpeed                 : QStringH := QString_create;
  GPSTrack                 : QStringH := QString_create;
  GPSTrackRef              : QStringH := QString_create;
  GPSImgDirection          : QStringH := QString_create;
  GPSImgDirectionRef       : QStringH := QString_create;
  GPSMapDatum              : QStringH := QString_create;
  GPSProcessingMethod      : QStringH := QString_create;
  GPSAreaInformation       : QStringH := QString_create;

  PosterImage              : QStringH := QString_create;
  CoverArtImage            : QStringH := QString_create;
  ThumbnailImage           : QStringH := QString_create; 
end;
