--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QObject         ; use Qt.QObject;
with Qt.QWidget         ; use Qt.QWidget;
with Qt.QString         ; use Qt.QString;
with Qt.QLayout         ; use Qt.QLayout;
with Qt.QLabel          ; use Qt.QLabel;
with Qt.QEdit           ; use Qt.QEdit;
with Interfaces.C       ; use  Interfaces.C;
with builtin            ; use builtin;

package body Qt.QLabeledEdit              is

function QLabeledLineEdit_create(label: QStringH; labelPosition : LabelPos := labelLeft) return QLabeledLineEditH is

 lbsl       : QLabeledLineEditH;
 hbox      : QHBoxLayoutH;
 vbox      : QVBoxLayoutH;
 rc        : boolean;
 width, height : integer;
 begin
  lbsl := new QLabeledLineEditR;
  lbsl.widget   := QWidget_create;    
  lbsl.lineEdit  := QLineEdit_create;
  lbsl.label   := QLabel_create(label);

  hbox   := QHBoxLayout_create;
  vbox   := QVBoxLayout_create;

  case labelPosition is
    when  labelLeft =>
     QWidget_setLayout(handle => lbsl.widget, p1 =>  QLayoutH(hbox));
     QLayout_addWidget(handle => QLayoutH(hbox), w => QWidgetH(lbsl.label));
     QLayout_addWidget(handle => QLayoutH(hbox), w => QWidgetH(lbsl.lineEdit));
    when labelRight =>
     QWidget_setLayout(handle => lbsl.widget, p1 =>  QLayoutH(hbox));
     QLayout_addWidget(handle => QLayoutH(hbox), w => QWidgetH(lbsl.lineEdit));
     QLayout_addWidget(handle => QLayoutH(hbox), w => QWidgetH(lbsl.label));
   when labelTop  => 
     QWidget_setLayout(handle => lbsl.widget, p1 =>  QLayoutH(vbox));
     QLayout_addWidget(handle => QLayoutH(vbox), w => QWidgetH(lbsl.label));
     QLayout_addWidget(handle => QLayoutH(vbox), w => QWidgetH(lbsl.lineEdit));
   when labelBottom  => 
     QWidget_setLayout(handle => lbsl.widget, p1 =>  QLayoutH(vbox));
     QLayout_addWidget(handle => QLayoutH(vbox), w => QWidgetH(lbsl.lineEdit));
     QLayout_addWidget(handle => QLayoutH(vbox), w => QWidgetH(lbsl.label));
  end case;
  width := QWidget_width(handle => QWidgetH(lbsl.lineEdit));
  height := QWidget_height(handle => QWidgetH(lbsl.lineEdit));

  return lbsl;

end QLabeledLineEdit_create;

function QLabeledLineEdit_GetLineEdit(handle:not null QLabeledLineEditH) return QLineEditH is
begin
 return handle.lineEdit;
end;

function QLabeledLineEdit_GetLabel(handle:not null QLabeledLineEditH) return  QLabelH is
begin
 return handle.label;
end;

function QLabeledLineEdit_GetBuiltWidget(handle:not null QLabeledLineEditH) return QWidgetH is
begin
 return handle.widget;
end;

procedure QLabeledLineEdit_SetLabelText(handle:not null QLabeledLineEditH;text: QStringH) is
begin
  QLabel_setText(handle => handle.label, p1 => text);
end;
end Qt.QLabeledEdit;
