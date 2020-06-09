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

package Qt.QSound is

function  QSound_create(fn:QStringH;parent:QObjectH := null) return QSoundH;
pragma Import(C,QSound_create, "QSound_create");

procedure del_QSound(p:QSoundH);
pragma Import(C,del_QSound, "del_QSound");

function  QSound_loops(sound:QSoundH) return integer;
pragma Import(C,QSound_loops, "QSound_loops");

function  QSound_loopsRemaining(sound:QSoundH) return integer;
pragma Import(C,QSound_loopsRemaining, "QSound_loopsRemaining");

procedure QSound_setLoops(sound:QSoundH;arg1:integer);
pragma Import(C,QSound_setLoops, "QSound_setLoops");

function  QSound_fileName(sound:QSoundH) return QStringH;
pragma Import(C,QSound_fileName, "QSound_fileName");

function  QSound_isFinished(sound:QSoundH) return integer;
pragma Import(C,QSound_isFinished, "QSound_isFinished");

procedure QSound_play(sound:QSoundH);
pragma Import(C,QSound_play, "QSound_play");

procedure QSound_stop(sound:QSoundH);
pragma Import(C,QSound_stop, "QSound_stop");

--function  QSound_isAvailable return integer;
--pragma Import(C,QSound_isAvailable, "QSound_isAvailable");

procedure QSound_play1(fn: QStringH);
pragma Import(C,QSound_play1, "QSound_play1");

--function  QSound_available return integer;
--pragma Import(C,QSound_available, "QSound_available");
------------------------------------------------------------------------------------------------
procedure QSound_play(fn: QStringH);

end Qt.QSound;
