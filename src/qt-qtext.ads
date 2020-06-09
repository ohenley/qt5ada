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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QText                is

type QTextOptionWrapMode is (QTextOptionNoWrap, QTextOptionWordWrap, QTextOptionManualWrap, QTextOptionWrapAnywhere, QTextOptionWrapAtWordBoundaryOrAnywhere );

subtype  QTextOptionFlag  is cardinal; -- QTextOption::Flag
subtype  QTextOptionFlags is cardinal; -- QTextOption::Flag

QTextOptionIncludeTrailingSpaces : constant QTextOptionFlag := 16#80000000#;

function QTextOption_create return  QTextOptionH;    
pragma Import(C,QTextOption_create,"QTextOption_create");

procedure QTextOption_destroy(handle: not null  QTextOptionH);   
pragma Import(C,QTextOption_destroy,"QTextOption_destroy");

function QTextOption_create2(alignment: QtAlignment) return  QTextOptionH;
pragma Import(C,QTextOption_create2,"QTextOption_create2");

function QTextOption_create3(o: QTextOptionH) return  QTextOptionH;
pragma Import(C,QTextOption_create3,"QTextOption_create3");

procedure QTextOption_setAlignment(handle: not null  QTextOptionH; alignment: QtAlignment);   
pragma Import(C,QTextOption_setAlignment,"QTextOption_setAlignment");

function QTextOption_alignment(handle: not null  QTextOptionH) return  QtAlignment;   
pragma Import(C,QTextOption_alignment,"QTextOption_alignment");

procedure QTextOption_setTextDirection(handle: not null  QTextOptionH; aDirection: QtLayoutDirection);   
pragma Import(C,QTextOption_setTextDirection,"QTextOption_setTextDirection");

function QTextOption_textDirection(handle: not null  QTextOptionH) return  QtLayoutDirection;   
pragma Import(C,QTextOption_textDirection,"QTextOption_textDirection");

procedure QTextOption_setWrapMode(handle: not null  QTextOptionH; wrap: QTextOptionWrapMode);   
pragma Import(C,QTextOption_setWrapMode,"QTextOption_setWrapMode");

function QTextOption_wrapMode(handle: not null  QTextOptionH) return  QTextOptionWrapMode;   
pragma Import(C,QTextOption_wrapMode,"QTextOption_wrapMode");

procedure QTextOption_setFlags(handle: not null  QTextOptionH; flags: QTextOptionFlags);   
pragma Import(C,QTextOption_setFlags,"QTextOption_setFlags");

function QTextOption_flags(handle: not null  QTextOptionH) return  QTextOptionFlags;   
pragma Import(C,QTextOption_flags,"QTextOption_flags");

procedure QTextOption_setTabStop(handle: not null  QTextOptionH; tabStop: Double);   
pragma Import(C,QTextOption_setTabStop,"QTextOption_setTabStop");

function QTextOption_tabStop(handle: not null  QTextOptionH) return  Double;   
pragma Import(C,QTextOption_tabStop,"QTextOption_tabStop");

procedure QTextOption_setTabArray(handle: not null  QTextOptionH; tabStops: QObjectListH);
pragma Import(C,QTextOption_setTabArray,"QTextOption_setTabArray");

function  QTextOption_tabArray(handle: not null  QTextOptionH) return QObjectListH;
pragma Import(C,QTextOption_tabArray,"QTextOption_tabArray");

procedure QTextOption_setUseDesignMetrics(handle: not null  QTextOptionH; b: Boolean);   
pragma Import(C,QTextOption_setUseDesignMetrics,"QTextOption_setUseDesignMetrics");

function QTextOption_useDesignMetrics(handle: not null  QTextOptionH) return  Boolean;   
pragma Import(C,QTextOption_useDesignMetrics,"QTextOption_useDesignMetrics");
-------------------------------------------------------------------------------------------------
function QTextOption_create(alignment: QtAlignment) return  QTextOptionH;
function QTextOption_create(o: QTextOptionH) return  QTextOptionH;

end Qt.QText;
