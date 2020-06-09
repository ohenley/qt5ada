--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QFont;      use Qt.QFont;
with Qt.QTransform; use Qt.QTransform;
package Qt.QStaticText is

type PerformanceHint is (ModerateCaching,AggressiveCaching); 
pragma convention(C,PerformanceHint);
        
 function  QStaticText_create return QStaticTextH;
 pragma Import(C,QStaticText_create, "QStaticText_create");
 
 function  QStaticText_create2(text:QStringH) return QStaticTextH;
 pragma Import(C,QStaticText_create2, "QStaticText_create2");
 
 function  QStaticText_create3(other:QStaticTextH) return QStaticTextH;
 pragma Import(C,QStaticText_create3, "QStaticText_create3");
 
 procedure QStaticText_destroy(handle:not null QStaticTextH);
 pragma Import(C,QStaticText_destroy, "QStaticText_destroy");
 
 function  QStaticText_text(handle:not null QStaticTextH) return QStringH;
 pragma Import(C,QStaticText_text, "QStaticText_text");
 
 procedure QStaticText_swap(handle:not null QStaticTextH;other:QStaticTextH);
 pragma Import(C,QStaticText_swap, "QStaticText_swap");
 
 procedure QStaticText_setText(handle:not null QStaticTextH;text:QStringH);
 pragma Import(C,QStaticText_setText, "QStaticText_setText");
 
 procedure QStaticText_setTextFormat(handle:not null QStaticTextH; textFormat:QtTextFormat);
 pragma Import(C,QStaticText_setTextFormat, "QStaticText_setTextFormat");
 
 function  QStaticText_textFormat(handle:not null QStaticTextH) return QtTextFormat;
 pragma Import(C,QStaticText_textFormat, "QStaticText_textFormat");
 
 procedure QStaticText_setTextWidth(handle:not null QStaticTextH;textWidth:qreal);
 pragma Import(C,QStaticText_setTextWidth, "QStaticText_setTextWidth");
 
 function  QStaticText_textWidth(handle:not null QStaticTextH) return qreal;
 pragma Import(C,QStaticText_textWidth, "QStaticText_textWidth");
 
 procedure QStaticText_setTextOption(handle:not null QStaticTextH; textOption:QTextOptionH);
 pragma Import(C,QStaticText_setTextOption, "QStaticText_setTextOption");
 
 function  QStaticText_textOption(handle:not null QStaticTextH) return QTextOptionH;
 pragma Import(C,QStaticText_textOption, "QStaticText_textOption");
 
 function  QStaticText_size(handle:not null QStaticTextH) return QSizeFH;
 pragma Import(C,QStaticText_size, "QStaticText_size");
 
 procedure QStaticText_prepare(handle:not null QStaticTextH;matrix: QTransformH := QTransform_create;font:QFontH := QFont_create);
 pragma Import(C,QStaticText_prepare, "QStaticText_prepare");
 
 procedure QStaticText_setPerformanceHint(handle:not null QStaticTextH;hint:PerformanceHint);
 pragma Import(C,QStaticText_setPerformanceHint, "QStaticText_setPerformanceHint");
 
 function  QStaticText_performanceHint(handle:not null QStaticTextH) return PerformanceHint;
 pragma Import(C,QStaticText_performanceHint, "QStaticText_performanceHint");
---------------------------------------------------------------------
 function  QStaticText_create(text:QStringH) return QStaticTextH;
 function  QStaticText_create(other:QStaticTextH) return QStaticTextH;

end;
