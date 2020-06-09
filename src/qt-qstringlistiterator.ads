 --
-- ã===================================================================¬
-- ¦       D E S I G N   E N G I N E E R I N G            ¦D¦S¦        ¦
-- ¦            S O F T W A R E                           L=¦=-        ¦
-- ¦                                                                   ¦
-- ¦        QtAda - Ada to QT5 interface                               ¦
-- ¦                                                                   ¦
-- ¦        Author :  Leonid Dulman     2019                           ¦
-- ¦ Copyright (C) 2019                                                ¦
-- L===================================================================-
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QStringListIterator is

 function  QMutableStringListIterator_create(parent:QStringListH) return QIteratorH;
 pragma Import(C,QMutableStringListIterator_create, "QMutableStringListIterator_create");
 
 procedure QMutableStringListIterator_toFront(handle:not null QIteratorH);
 pragma Import(C,QMutableStringListIterator_toFront, "QMutableStringListIterator_toFront");
 
 procedure QMutableStringListIterator_toBack(handle:not null QIteratorH);
 pragma Import(C,QMutableStringListIterator_toBack, "QMutableStringListIterator_toBack");
 
 function  QMutableStringListIterator_hasNext(handle:not null QIteratorH) return boolean;
 pragma Import(C,QMutableStringListIterator_hasNext, "QMutableStringListIterator_hasNext");
 
 function  QMutableStringListIterator_next(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QMutableStringListIterator_next, "QMutableStringListIterator_next");
 
 function  QMutableStringListIterator_peekNext(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QMutableStringListIterator_peekNext, "QMutableStringListIterator_peekNext");
 
 function  QMutableStringListIterator_hasPrevious(handle:not null QIteratorH) return boolean;
 pragma Import(C,QMutableStringListIterator_hasPrevious, "QMutableStringListIterator_hasPrevious");
 
 function  QMutableStringListIterator_previous(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QMutableStringListIterator_previous, "QMutableStringListIterator_previous");
 
 function  QMutableStringListIterator_peekPrevious(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QMutableStringListIterator_peekPrevious, "QMutableStringListIterator_peekPrevious");
 
 procedure QMutableStringListIterator_remove(handle:not null QIteratorH);
 pragma Import(C,QMutableStringListIterator_remove, "QMutableStringListIterator_remove");
 
 procedure QMutableStringListIterator_setValue(handle:not null QIteratorH;value:QStringH);
 pragma Import(C,QMutableStringListIterator_setValue, "QMutableStringListIterator_setValue");
 
 function  QMutableStringListIterator_value(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QMutableStringListIterator_value, "QMutableStringListIterator_value");
 
 procedure QMutableStringListIterator_insert(handle:not null QIteratorH;value:QStringH);
 pragma Import(C,QMutableStringListIterator_insert, "QMutableStringListIterator_insert");
 
 function  QMutableStringListIterator_findNext(handle:not null QIteratorH;value:QStringH) return boolean;
 pragma Import(C,QMutableStringListIterator_findNext, "QMutableStringListIterator_findNext");
 
 function  QMutableStringListIterator_findPrevious(handle:not null QIteratorH;value:QStringH) return boolean;
 pragma Import(C,QMutableStringListIterator_findPrevious, "QMutableStringListIterator_findPrevious");
 
 function  QStringListIterator_create(parent:QStringListH) return QIteratorH;
 pragma Import(C,QStringListIterator_create, "QStringListIterator_create");
 
 procedure QStringListIterator_toFront(handle:not null QIteratorH);
 pragma Import(C,QStringListIterator_toFront, "QStringListIterator_toFront");
 
 procedure QStringListIterator_toBack(handle:not null QIteratorH);
 pragma Import(C,QStringListIterator_toBack, "QStringListIterator_toBack");
 
 function  QStringListIterator_hasNext(handle:not null QIteratorH) return boolean;
 pragma Import(C,QStringListIterator_hasNext, "QStringListIterator_hasNext");
 
 function  QStringListIterator_next(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QStringListIterator_next, "QStringListIterator_next");
 
 function  QStringListIterator_peekNext(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QStringListIterator_peekNext, "QStringListIterator_peekNext");
 
 function  QStringListIterator_hasPrevious(handle:not null QIteratorH) return boolean;
 pragma Import(C,QStringListIterator_hasPrevious, "QStringListIterator_hasPrevious");
 
 function  QStringListIterator_previous(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QStringListIterator_previous, "QStringListIterator_previous");
 
 function  QStringListIterator_peekPrevious(handle:not null QIteratorH) return QStringH;
 pragma Import(C,QStringListIterator_peekPrevious, "QStringListIterator_peekPrevious");
 
 function  QStringListIterator_findNext(handle:not null QIteratorH;value:QStringH) return boolean;
 pragma Import(C,QStringListIterator_findNext, "QStringListIterator_findNext");
 
 function  QStringListIterator_findPrevious(handle:not null QIteratorH;value:QStringH) return boolean;
 pragma Import(C,QStringListIterator_findPrevious, "QStringListIterator_findPrevious");
 
end;