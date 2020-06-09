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

package body Qt.QKeySequence is

function QKeySequence_create(key: QStringH) return  QKeySequenceH is
begin
  return QKeySequence_create2(key);
end;

function QKeySequence_create(k1: integer; k2: integer := 0; k3: integer := 0; k4: integer := 0) return QKeySequenceH is
begin
  return QKeySequence_create3(k1, k2, k3, k4);
end;

function QKeySequence_create(ks: QKeySequenceH) return  QKeySequenceH is
begin
  return QKeySequence_create4(ks);
end;

function QKeySequence_create(key: QKeySequenceStandardKey) return  QKeySequenceH is
begin
  return QKeySequence_create5(key);
end;

function QKeySequence_create(key:QStringH;format:QKeySequenceSequenceFormat) return QKeySequenceH is
begin
  return QKeySequence_create6(key,format);
end;

end Qt.QKeySequence;
