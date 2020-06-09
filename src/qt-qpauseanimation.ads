--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *
with Qt; use Qt;
package Qt.QPauseAnimation is

 function  QPauseAnimation_create(msecs:integer;parent : QObjectH :=  null) return QAnimationH;
 pragma Import(C,QPauseAnimation_create, "QPauseAnimation_create");
 
 function  QPauseAnimation_create2(parent:QObjectH := null) return QAnimationH;
 pragma Import(C,QPauseAnimation_create2, "QPauseAnimation_create2");
 
 procedure QPauseAnimation_destroy(handle:not null QAnimationH);
 pragma Import(C,QPauseAnimation_destroy, "QPauseAnimation_destroy");
 
 function  QPauseAnimation_duration(handle:not null QAnimationH) return integer;
 pragma Import(C,QPauseAnimation_duration, "QPauseAnimation_duration");
 
 procedure QPauseAnimation_setDuration(handle:not null QAnimationH;msecs:integer);
 pragma Import(C,QPauseAnimation_setDuration, "QPauseAnimation_setDuration");
 
 function  QPauseAnimation_create(parent:QObjectH := null) return QAnimationH;

end;
