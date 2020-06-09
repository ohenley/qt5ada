--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *    
--   License, or (at your option) any later version.                       *    

with builtin;
with Qt.QObject; use Qt.QObject;
with Qt.QString; use Qt.QString;
with Ada.Command_Line;

package body Qt.QApplication is

function QApplication_create return QApplicationH is
begin
 builtin.Argv_fill;
 Qt.argc := builtin.argc;
 Qt.argv := builtin.argv;
 return QApplication_create(argc => Qt.argc'access,argv => qt.argv,p3 => QT_VERSION);
end;

function QApplication_setStyle(p1: QStringH) return  QStyleH is  
begin
 return QApplication_setStyle2(p1);
end;

function  QApplication_palette(p1: QWidgetH) return QPaletteH  is
begin
  return QApplication_palette2(p1);
end;

function  QApplication_palette(className: zstring) return QPaletteH is
begin
  return QApplication_palette3(className);
end;

function  QApplication_font(p1: QWidgetH) return QFontH is
begin
  return QApplication_font2(p1);
end;

function QApplication_font(className: zstring) return QFontH is
begin
  return QApplication_font3(className);
end;

function QApplication_widgetAt(x: Integer; y: Integer) return  QWidgetH is 
begin
 return  QApplication_widgetAt2(x,y);
end;

function QApplication_topLevelAt(x: Integer; y: Integer) return  QWidgetH is  
begin
 return  QApplication_topLevelAt2(x,y);
end;



procedure QApplication_invoke(p : QApplicationH:= app; rc:integer := 0) is
begin
  if QApplication_exec = 0 then null; end if;
  QApplication_destroy(p);
end QApplication_invoke;

procedure QApplication_invoke(mWidget: QWidgetH; p : QApplicationH := app; rc:integer :=0 ) is
begin
  QApplication_setActiveWindow(mWidget);
  if QApplication_exec = 0 then null; end if;
  QApplication_destroy(p);
end QApplication_invoke;

function  QApplication_translate(context,key,disambiguation:zstring;n: integer := -1) return QStringH is
begin
 return  QApplication_translate2(context,key,disambiguation,n);
end;

function  QApplication_connect(sender: QObjectH;objSignal : string := "clicked()"; appSlot: string := "quit()") return boolean is
begin
 return QObject_connect(sender => sender, signal => SIGNAL(objSignal),receiver => QObjectH(app), slot => SLOT(appSlot));
end;

begin
 if app = null then app := QApplication_create; end if;
end  Qt.QApplication;
