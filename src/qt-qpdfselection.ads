-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2020                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.    
 with Qt.QClipboard;
 package Qt.QPdfSelection  is

 type QPdfSelectionH is new QObjectH;

 function  QPdfSelection_create(other:not null QPdfSelectionH) return QPdfSelectionH;
 pragma Import(C,QPdfSelection_create, "QPdfSelection_create");
 
 procedure QPdfSelection_destroy(handle:not null QPdfSelectionH);
 pragma Import(C,QPdfSelection_destroy, "QPdfSelection_destroy");
 
 procedure QPdfSelection_swap(handle:not null QPdfSelectionH;other:not null QPdfSelectionH);
 pragma Import(C,QPdfSelection_swap, "QPdfSelection_swap");
 
 function  QPdfSelection_isValid(handle:not null QPdfSelectionH) return boolean;
 pragma Import(C,QPdfSelection_isValid, "QPdfSelection_isValid");
 
 function  QPdfSelection_bounds(handle:not null QPdfSelectionH) return QVectorH;
 pragma Import(C,QPdfSelection_bounds, "QPdfSelection_bounds");
 
 function  QPdfSelection_text(handle:not null QPdfSelectionH) return QStringH;
 pragma Import(C,QPdfSelection_text, "QPdfSelection_text");
 
 procedure QPdfSelection_copyToClipboard(handle:not null QPdfSelectionH;mode :Qt.QClipboard.QClipboardMode := Qt.QClipboard.QClipboardClipboard);
 pragma Import(C,QPdfSelection_copyToClipboard, "QPdfSelection_copyToClipboard");
 
 function  QPdfSelection_boundAt(handle:not null QVectorH;index:integer) return QPolygonFH;
 pragma Import(C,QPdfSelection_boundAt, "QPdfSelection_boundAt");
 
end;