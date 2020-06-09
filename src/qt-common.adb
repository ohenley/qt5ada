--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2016                 บ
-- บ Copyright (C) 2012,2014,2016                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QApplication  ; use Qt.QApplication;
with Qt.QObject       ; use Qt.QObject;
with Qt.QDesktopWidget; use Qt.QDesktopWidget;
with Qt.QMainWindow;    use Qt.QMainWindow;
with Qt.QWidget       ; use Qt.QWidget;
with Qt.QDialog       ; use Qt.QDialog;
with Qt.QRect         ; use Qt.QRect;
with Qt.QString       ; use Qt.QString;
with Qt.QMediaPlayer;
with Qt.QFrame;

package body QT.Common  is

procedure initializeApplication is
begin
  desktop := QDesktopWidget_create;
  rect    := QRect_create;
  rect    := QDesktopWidget_screenGeometry(handle=> desktop);
  window  := QWidget_create(parent => QWidgetH(desktop));
  screenW := QRect_width(handle => rect);
  screenH := QRect_height(handle => rect);
end initializeApplication;

procedure initializeMWApplication(width,height : integer; title : QStringH) is
begin
  mainWindow := QMainWindow_create;
  QObject_setObjectName(handle => QObjectH(mainWindow), name => s2qs("mainWindow"));
  QWidget_setFixedSize(handle => QWidgetH(mainWindow),  w => width, h => height);
  QWidget_setWindowTitle(handle => QWidgetH(mainWindow) , p1 => title);
end initializeMWApplication;

procedure initializeApplication(width,height : integer; title : QStringH) is
 x,y      : integer;
begin
  desktop := QDesktopWidget_create;
  rect    := QRect_create;
  rect    := QDesktopWidget_screenGeometry(handle=> desktop);
  window  := QWidget_create(parent => QWidgetH(desktop));
  screenW := QRect_width(handle => rect);
  screenH := QRect_height(handle => rect);
  QWidget_resize(handle => window, w => width, h => height);
  x       := (screenW - width) / 2;
  y       := (screenH - height) / 2;
  QWidget_move(handle => window, x => x, y => y);
  QWidget_setWindowTitle(handle => window , p1 => title);
end initializeApplication;


procedure initializeApplication(painter:Qt.QWidget.customPaintH;width,height : integer; title : QStringH) is
 x,y      : integer;
begin
  desktop := QDesktopWidget_create;
  rect    := QRect_create;
  rect    := QDesktopWidget_screenGeometry(handle=> desktop);
  window  := QWidget_create(painter => painter,parent => QWidgetH(desktop));
  screenW := QRect_width(handle => rect);
  screenH := QRect_height(handle => rect);
  QWidget_resize(handle => window, w => width, h => height);
  x       := (screenW - width) / 2;
  y       := (screenH - height) / 2;
  QWidget_move(handle => window, x => x, y => y);
  QWidget_setWindowTitle(handle => window , p1 => title);
end initializeApplication;

function  initializeDialog(width,height : integer; title : QStringH) return QDialogH is
 x,y      : integer;
 dialog   : QDialogH;
begin
  desktop := QDesktopWidget_create;
  rect    := QRect_create;
  rect    := QDesktopWidget_screenGeometry(handle=> desktop);
  dialog  := QDialog_create(parent => QWidgetH(desktop));
  screenW := QRect_width(handle => rect);
  screenH := QRect_height(handle => rect);
  QWidget_resize(handle => QWidgetH(dialog), w => width, h => height);
  x       := (screenW - width) / 2;
  y       := (screenH - height) / 2;
  QWidget_move(handle => QWidgetH(dialog), x => x, y => y);
  QWidget_setWindowTitle(handle => QWidgetH(dialog) , p1 => title);
  return dialog;

end initializeDialog;

function  mainFrame_create(width: integer; height : integer; top : integer := 0; left : integer := 0) return QFrameH  is
 frame  : QFrameH;
 x,y    : integer;
begin
  if desktop = null then desktop := QDesktopWidget_create;  end if;
  rect    := QRect_create;
  rect    := QDesktopWidget_screenGeometry(handle=> desktop);
  frame   := Qt.QFrame.QFrame_create(parent => QWidgetH(desktop));
  screenW := QRect_width(handle => rect);
  screenH := QRect_height(handle => rect);
  QWidget_resize(handle => QWidgetH(frame), w => width, h => height);
  if top  > 0 then x := top;  else x := (screenW - width)  / 2; end if;
  if left > 0 then y := left; else y := (screenH - height) / 2; end if;
  QWidget_move(handle => QWidgetH(frame), x => x, y => y);
  return frame;
end mainFrame_create;

procedure initializeVideoApplication(width,height : integer; title : QStringH) is
 x,y      : integer;
begin
  desktop := QDesktopWidget_create;
  rect    := QRect_create;
  rect    := QDesktopWidget_screenGeometry(handle=> desktop);
  mediaPlayer := Qt.QMediaPlayer.QMediaPlayer_create;
  screenW := QRect_width(handle => rect);
  screenH := QRect_height(handle => rect);
  QWidget_resize(handle => QWidgetH(mediaPlayer), w => width, h => height);
  x       := (screenW - width) / 2;
  y       := (screenH - height) / 2;
  QWidget_move(handle => QWidgetH(mediaPlayer), x => x, y => y);
  QWidget_setWindowTitle(handle => QWidgetH(mediaPlayer) , p1 => title);
end initializeVideoApplication;

end Qt.Common;
