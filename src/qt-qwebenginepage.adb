--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2019                      บ
-- บ Copyright (C) 2015,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QWebEnginePage is

 function  QWebEnginePage_findText(handle:not null QWebPageH;subString:QStringH; options : integer) return boolean is
 begin
  return QWebEnginePage_findText2(handle,subString,options);
 end;

 function  QWebEnginePage_runJavaScript(handle:not null QWebPageH;scriptSource:QStringH) return QVariantH is
 begin
  return QWebEnginePage_runJavaScript2(handle,scriptSource);
 end;

 function  QWebEnginePage_create(profile:QWebProfileH;parent:QObjectH) return QWebPageH is
 begin
   return  QWebEnginePage_create2(profile,parent);
 end;

 procedure QWebEnginePage_setWebChannel(handle:not null QWebPageH;c:QWebChannelH;worldId: quint) is
 begin
  QWebEnginePage_setWebChannel2(handle,c,worldId);
 end;

 procedure QWebEnginePage_printToPdf(handle:not null QWebPageH;resultCallback:void_Star;layout:QPageLayoutH := QPageLayout_create(QPageSize_create(Qt.QPageSize.A4),Qt.QPageLayout.Portrait,QMarginsF_create)) is   
 begin
   QWebEnginePage_printToPdf2(handle,resultCallback,layout);
 end;

 procedure QWebEnginePage_load(handle:not null QWebPageH;request: QRequestH) is
 begin
   QWebEnginePage_load2(handle,request);
 end;

 procedure QWebEnginePage_runJavaScript(handle:not null QWebPageH;scriptSource:QStringH;worldId: quint32) is
 begin
   QWebEnginePage_runJavaScript4(handle,scriptSource,worldId);
 end;

end;
