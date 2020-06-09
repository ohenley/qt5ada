--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
package body Qt.QGLWidget is

function  QGLWidget_create(priv:QGLWidgetPrivateH;frmt:QGLFormatH; parent:QWidgetH;shareWidget:QGLWidgetH;f:QtWindowFlags) return QGLWidgetH is
begin
 return QGLWidget_create1(priv,frmt,parent,shareWidget,f);
end;

function  QGLWidget_create(parent:QWidgetH;shareWidget:QGLWidgetH;f:QtWindowFlags) return QGLWidgetH is
begin
  return  QGLWidget_create2(parent,shareWidget,f);
end;

end Qt.QGLWidget;
