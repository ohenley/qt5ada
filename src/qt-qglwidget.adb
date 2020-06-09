--
-- 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
-- �       D E S I G N   E N G I N E E R I N G            �D�S�        �
-- �            S O F T W A R E                           藩瞥�        �
-- �                                                                   �
-- �        QtAda - Ada to QT5 interface                               �
-- �                                                                   �
-- �        Author :  Leonid Dulman     2012,2019                      �
-- � Copyright (C) 2012,2019                                           �
-- 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
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
