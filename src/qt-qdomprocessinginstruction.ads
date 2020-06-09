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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QDomProcessingInstruction is

function  QDomProcessingInstruction_create return QDomProcessingInstructionH;
pragma Import(C,QDomProcessingInstruction_create, "QDomProcessingInstruction_create");

function  QDomProcessingInstruction_create1(instruction:QDomProcessingInstructionH) return QDomProcessingInstructionH;
pragma Import(C,QDomProcessingInstruction_create1, "QDomProcessingInstruction_create1");

procedure del_QDomProcessingInstruction(p:QDomProcessingInstructionH);
pragma Import(C,del_QDomProcessingInstruction, "del_QDomProcessingInstruction");

function  QDomProcessingInstruction_target(instruction:QDomProcessingInstructionH) return QStringH;
pragma Import(C,QDomProcessingInstruction_target, "QDomProcessingInstruction_target");

function  QDomProcessingInstruction_data(instruction:QDomProcessingInstructionH) return QStringH;
pragma Import(C,QDomProcessingInstruction_data, "QDomProcessingInstruction_data");

procedure QDomProcessingInstruction_setData(instruction:QDomProcessingInstructionH;data:QStringH);
pragma Import(C,QDomProcessingInstruction_setData, "QDomProcessingInstruction_setData");

function  QDomProcessingInstruction_nodeType(instruction:QDomProcessingInstructionH) return integer;
pragma Import(C,QDomProcessingInstruction_nodeType, "QDomProcessingInstruction_nodeType");

function  QDomProcessingInstruction_isProcessingInstruction(instruction:QDomProcessingInstructionH) return integer;
pragma Import(C,QDomProcessingInstruction_isProcessingInstruction, "QDomProcessingInstruction_isProcessingInstruction");

function  QDomProcessingInstruction_create(instruction:QDomProcessingInstructionH) return QDomProcessingInstructionH;

end Qt.QDomProcessingInstruction;
