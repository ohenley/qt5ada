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

package Qt.QLabeledEdit              is

type QLabeledLineEditR is private;
type QLabeledLineEditH is access QLabeledLineEditR;

function  QLabeledLineEdit_create(label: QStringH; labelPosition : LabelPos := labelLeft) return QLabeledLineEditH;

function  QLabeledLineEdit_GetLineEdit(handle:not null QLabeledLineEditH) return QLineEditH;

function  QLabeledLineEdit_GetLabel(handle:not null QLabeledLineEditH) return  QLabelH;

function  QLabeledLineEdit_GetBuiltWidget(handle:not null QLabeledLineEditH) return QWidgetH;

procedure QLabeledLineEdit_SetLabelText(handle:not null QLabeledLineEditH;text: QStringH);

 private type QLabeledLineEditR is  record
 lineEdit : QLineEditH;
 label    : QLabelH;
 widget   : QWidgetH;
end record;

end Qt.QLabeledEdit;
