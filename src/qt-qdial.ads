--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QtT5 interface                              บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QDial is

function  QDial_create(parent:QWidgetH) return QDialH;
pragma Import(C,QDial_create, "QDial_create");

procedure del_QDial(p:QDialH);
pragma Import(C,del_QDial, "del_QDial");

function  QDial_wrapping(dial:QDialH) return integer;
pragma Import(C,QDial_wrapping, "QDial_wrapping");

function  QDial_notchSize(dial:QDialH) return integer;
pragma Import(C,QDial_notchSize, "QDial_notchSize");

procedure QDial_setNotchTarget(dial:QDialH;arg1:long_float);
pragma Import(C,QDial_setNotchTarget, "QDial_setNotchTarget");

function  QDial_notchTarget(dial:QDialH) return long_float;
pragma Import(C,QDial_notchTarget, "QDial_notchTarget");

function  QDial_notchesVisible(dial:QDialH) return integer;
pragma Import(C,QDial_notchesVisible, "QDial_notchesVisible");

function  QDial_sizeHint(dial:QDialH) return QSizeH;
pragma Import(C,QDial_sizeHint, "QDial_sizeHint");

function  QDial_minimumSizeHint(dial:QDialH) return QSizeH;
pragma Import(C,QDial_minimumSizeHint, "QDial_minimumSizeHint");

function  QDial_pageStep(dial:QDialH) return integer;
pragma Import(C,QDial_pageStep, "QDial_pageStep");

procedure QDial_setPageStep(dial:QDialH;arg1:integer);
pragma Import(C,QDial_setPageStep, "QDial_setPageStep");

function  QDial_value(dial:QDialH) return integer;
pragma Import(C,QDial_value, "QDial_value");

procedure QDial_setValue(dial:QDialH;arg1:integer);
pragma Import(C,QDial_setValue, "QDial_setValue");

procedure QDial_setNotchesVisible(dial:QDialH;b:integer);
pragma Import(C,QDial_setNotchesVisible, "QDial_setNotchesVisible");

procedure QDial_setWrapping(dial:QDialH;on:integer);
pragma Import(C,QDial_setWrapping, "QDial_setWrapping");

procedure QDial_setTracking(dial:QDialH;enable:integer);
pragma Import(C,QDial_setTracking, "QDial_setTracking");

function  QDial_QWidget(dial:QDialH) return QWidgetH;
pragma Import(C,QDial_QWidget, "QDial_QWidget");

end Qt.QDial;
