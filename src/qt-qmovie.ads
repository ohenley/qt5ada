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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *
with Qt.QByteArray; use Qt.QByteArray;
package Qt.QMovie               is

-- States

SourceEmpty        :  constant integer := -2;
UnrecognizedFormat :  constant integer := -1;
NotRunning         :  constant integer :=  0;
Paused             :  constant integer :=  1;
Running            :  constant integer :=  2;
EndOfFrame         :  constant integer :=  2;
EndOfLoop          :  constant integer :=  3;
EndOfMovie         :  constant integer :=  4;
SpeedChanged       :  constant integer :=  5;

type CacheMode is (CacheNone, CacheAll) ;
pragma Convention(C,CacheMode);

function QMovie_create(parent:QObjectH := null) return  QMovieH;
pragma Import(C,QMovie_create,"QMovie_create");

function QMovie_create1(device : QIODeviceH; format : QByteArrayH := QByteArray_create; parent : QObjectH := null) return  QMovieH;
pragma Import(C,QMovie_create1,"QMovie_create1");

function QMovie_create2(fileName:QStringH; format: QByteArrayH := QByteArray_create; parent : QObjectH := null) return QMovieH ;
pragma Import(C,QMovie_create2,"QMovie_create2");

procedure QMovie_setFileName(handle : QMovieH; fileName:QStringH);
pragma Import(C,QMovie_setFileName,"QMovie_setFileName");

function  QMovie_fileName( handle : QMovieH) return QStringH;
pragma Import(C,QMovie_fileName, "QMovie_fileName");

procedure QMovie_setDevice( handle : QMovieH; device: QIODeviceH);
pragma Import(C,QMovie_setDevice, "QMovie_setDevice");

function  QMovie_QIODevice( handle : QMovieH) return QIODeviceH;
pragma Import(C,QMovie_QIODevice, "QMovie_QIODevice");

procedure QMovie_delete (handle : QMovieH);
pragma Import(C,QMovie_delete, "QMovie_delete");

procedure QMovie_setFormat(handle : QMovieH; format: QByteArrayH);
pragma Import(C,QMovie_setFormat, "QMovie_setFormat");

function  QMovie_format( handle : QMovieH) return QByteArrayH ;
pragma Import(C,QMovie_format,"QMovie_format");

function  QMovie_backgroundColor( handle : QMovieH) return QColorH;
pragma Import(C,QMovie_backgroundColor, "QMovie_backgroundColor");

procedure QMovie_setBackgroundColor( handle : QMovieH; color : QColorH);
pragma Import(C,QMovie_setBackgroundColor, "QMovie_setBackgroundColor");

function  QMovie_frameRect( handle : QMovieH) return QRectH;
pragma Import(C,QMovie_frameRect, "QMovie_frameRect");

--function  QMovie_framePixmap( handle : QMovieH) return QPixmapH;
--pragma Import(C,QMovie_framePixmap,"QMovie_framePixmap");

function  QMovie_currentPixmap( handle : QMovieH) return QPixmapH;
pragma Import(C,QMovie_currentPixmap, "QMovie_currentPixmap");

function  QMovie_currentImage( handle : QMovieH) return QImageH;
pragma Import(C,QMovie_currentImage, "QMovie_currentImage");

function  QMovie_state(handle : QMovieH) return integer ;
pragma Import(C,QMovie_state ,"QMovie_state");

function  QMovie_isValid(handle : QMovieH) return integer ;
pragma Import(C,QMovie_isValid,  "QMovie_isValid");

function  QMovie_jumpToFrame(handle : QMovieH; frameNumber : integer) return integer ;
pragma Import(C,QMovie_jumpToFrame, "QMovie_jumpToFrame");

--function  QMovie_isNull( handle : QMovieH) return integer;
--pragma Import(C,QMovie_isNull, "QMovie_isNull");

--function  QMovie_frameNumber( handle : QMovieH) return integer;
--pragma Import(C,QMovie_frameNumber, "QMovie_frameNumber");

--function  QMovie_paused( handle : QMovieH) return integer ;
--pragma Import(C,QMovie_paused, "QMovie_paused");

--function  QMovie_running( handle : QMovieH) return integer;
--pragma Import(C,QMovie_running, "QMovie_running");

--procedure QMovie_unpause( handle : QMovieH);
--pragma Import(C,QMovie_unpause, "QMovie_unpause");

--procedure QMovie_pause( handle : QMovieH);
--pragma Import(C,QMovie_pause, "QMovie_pause");

--procedure QMovie_step( handle : QMovieH);
--pragma Import(C,QMovie_step, "QMovie_step");

--procedure QMovie_restart( handle : QMovieH);
--pragma Import(C,QMovie_restart,  "QMovie_restart");

procedure QMovie_start( handle : QMovieH);
pragma Import(C,QMovie_start,  "QMovie_start");

procedure QMovie_stop( handle : QMovieH);
pragma Import(C,QMovie_stop,  "QMovie_stop");

function  QMovie_speed( handle : QMovieH) return integer ;
pragma Import(C,QMovie_speed, "QMovie_speed");

procedure QMovie_setSpeed( handle : QMovieH; speed : integer);
pragma Import(C,QMovie_setSpeed, "QMovie_setSpeed");

function  QMovie_loopCount( handle : QMovieH) return integer ;
pragma Import(C,QMovie_loopCount, "QMovie_loopCount");

function  QMovie_frameCount( handle : QMovieH) return integer;
pragma Import(C,QMovie_frameCount, "QMovie_frameCount");

function  QMovie_nextFrameDelay( handle : QMovieH) return integer ;
pragma Import(C,QMovie_nextFrameDelay, "QMovie_nextFrameDelay");

function  QMovie_currentFrameNumber( handle : QMovieH) return integer ;
pragma Import(C,QMovie_currentFrameNumber, "QMovie_currentFrameNumber");

procedure  QMovie_setScaledSize(handle : QMovieH;size : QSizeH);
pragma Import(C,QMovie_setScaledSize, "QMovie_setScaledSize");

function   QMovie_scaledSize(handle : QMovieH) return QSizeH;
pragma Import(C,QMovie_scaledSize, "QMovie_scaledSize");

procedure  QMovie_setCacheMode(handle : QMovieH; cmode : CacheMode);
pragma Import(C,QMovie_setCacheMode, "QMovie_setCacheMode");

function QMovie_supportedFormats return QByteArrayListH;
pragma Import(C,QMovie_supportedFormats, "QMovie_supportedFormats");

----------------------------------------------------------------------------------------------------------
function QMovie_create(device : QIODeviceH; format : QByteArrayH := QByteArray_create; parent : QObjectH := null) return  QMovieH;
function QMovie_create(fileName : QStringH; format : QByteArrayH := QByteArray_create; parent : QObjectH := null) return  QMovieH;
function QMovie_numberOfSupportedFormats return integer;
function QMovie_SupportedFormatAt(index: integer) return QStringH;

end Qt.QMovie;
