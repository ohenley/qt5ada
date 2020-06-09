--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

package body Qt.QGLContext is

function  QGLContext_create(context,shareContex:QGLContextH) return integer is
begin
  return  QGLContext_create1(context,shareContex);
end;

function  QGLContext_create(frmt:QGLFormatH) return QGLContextH is
begin
  return  QGLContext_create2(frmt);
end;

end Qt.QGLContext;
