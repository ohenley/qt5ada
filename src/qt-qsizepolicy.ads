--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

-- ***************************************************************************
-- *                                                                         *
-- *   This library is free software; you can redistribute it and/or modify  *
-- *   it under the terms of the GNU Library General Public License as       *
-- *   published by the Free Software Foundation; either version 3 of the    *
-- *   License, or (at your option) any later version.                       *
-- *                                                                         *
-- ***************************************************************************

package Qt.QSizePolicy is

QSizePolicyPolicyFlag_GrowFlag     : constant := 1;
QSizePolicyPolicyFlag_ExpandFlag   : constant := 2;
QSizePolicyPolicyFlag_ShrinkFlag   : constant := 4;
QSizePolicyPolicyFlag_IgnoreFlag   : constant := 8;

QSizePolicyPolicy_Fixed            : constant := 0;
QSizePolicyPolicy_Minimum          : constant := 1;
QSizePolicyPolicy_Maximum          : constant := 4;
QSizePolicyPolicy_Preferred        : constant := 5;
QSizePolicyPolicy_MinimumExpanding : constant := 3;
QSizePolicyPolicy_Expanding        : constant := 7;
QSizePolicyPolicy_Ignored          : constant := 13;

QSizePolicyControlType_DefaultType : constant := 16#0001#;
QSizePolicyControlType_ButtonBox   : constant := 16#0002#;
QSizePolicyControlType_CheckBox    : constant := 16#0004#;
QSizePolicyControlType_ComboBox    : constant := 16#0008#;
QSizePolicyControlType_Frame       : constant := 16#0010#;
QSizePolicyControlType_GroupBox    : constant := 16#0020#;
QSizePolicyControlType_Label       : constant := 16#0040#;
QSizePolicyControlType_Line        : constant := 16#0080#;
QSizePolicyControlType_LineEdit    : constant := 16#0100#;
QSizePolicyControlType_PushButton  : constant := 16#0200#;
QSizePolicyControlType_RadioButton : constant := 16#0400#;
QSizePolicyControlType_Slider      : constant := 16#0800#;
QSizePolicyControlType_SpinBox     : constant := 16#1000#;
QSizePolicyControlType_TabWidget   : constant := 16#2000#;
QSizePolicyControlType_ToolButton  : constant := 16#4000#;
    
function   QSizePolicy_create(horizontal, vertical: integer) return QSizePolicyH ;
pragma import(C,QSizePolicy_create ,"QSizePolicy_create");

procedure  QSizePolicy_destroy(handle: not null QSizePolicyH);
pragma import(C,QSizePolicy_destroy ,"QSizePolicy_destroy");

function   QSizePolicy_horizontalPolicy(handle: not null QSizePolicyH) return integer;
pragma import(C,QSizePolicy_horizontalPolicy ,"QSizePolicy_horizontalPolicy");

function   QSizePolicy_verticalPolicy(handle: not null QSizePolicyH) return integer;
pragma import(C,QSizePolicy_verticalPolicy ,"QSizePolicy_verticalPolicy");

function   QSizePolicy_controlType(handle: not null QSizePolicyH) return integer;
pragma import(C,QSizePolicy_controlType ,"QSizePolicy_controlType");

procedure  QSizePolicy_setHorizontalPolicy(handle: not null QSizePolicyH;d : integer);
pragma import(C,QSizePolicy_setHorizontalPolicy ,"QSizePolicy_setHorizontalPolicy");

procedure  QSizePolicy_setVerticalPolicy(handle: not null QSizePolicyH; d: integer);
pragma import(C,QSizePolicy_setVerticalPolicy ,"QSizePolicy_setVerticalPolicy");

procedure  QSizePolicy_setControlType(handle: not null QSizePolicyH;ptype: integer);
pragma import(C,QSizePolicy_setControlType ,"QSizePolicy_setControlType");

procedure  QSizePolicy_setHeightForWidth(handle: not null QSizePolicyH;b: boolean);
pragma import(C,QSizePolicy_setHeightForWidth ,"QSizePolicy_setHeightForWidth");

function   QSizePolicy_hasHeightForWidth(handle: not null QSizePolicyH) return boolean;
pragma import(C,QSizePolicy_hasHeightForWidth ,"QSizePolicy_hasHeightForWidth");

function   QSizePolicy_horizontalStretch(handle: not null QSizePolicyH) return integer;
pragma import(C,QSizePolicy_horizontalStretch ,"QSizePolicy_horizontalStretch");

function   QSizePolicy_verticalStretch(handle: not null QSizePolicyH) return integer;
pragma import(C,QSizePolicy_verticalStretch ,"QSizePolicy_verticalStretch");

procedure  QSizePolicy_setHorizontalStretch(handle: not null QSizePolicyH; stretchFactor: Unsigned_Char);
pragma import(C,QSizePolicy_setHorizontalStretch ,"QSizePolicy_setHorizontalStretch");

procedure  QSizePolicy_setVerticalStretch(handle: not null QSizePolicyH; stretchFactor: Unsigned_Char);
pragma import(C, QSizePolicy_setVerticalStretch ,"QSizePolicy_setVerticalStretch");

 function  QSizePolicy_retainSizeWhenHidden(handle:not null QSizePolicyH) return boolean;
 pragma Import(C,QSizePolicy_retainSizeWhenHidden, "QSizePolicy_retainSizeWhenHidden");
 
 procedure QSizePolicy_setRetainSizeWhenHidden(handle:not null QSizePolicyH;retainSize:boolean);
 pragma Import(C,QSizePolicy_setRetainSizeWhenHidden, "QSizePolicy_setRetainSizeWhenHidden");
 
 procedure QSizePolicy_transpose(handle:not null QSizePolicyH);
 pragma Import(C,QSizePolicy_transpose, "QSizePolicy_transpose");

end Qt.QSizePolicy;
