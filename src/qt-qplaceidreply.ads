-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPlaceReply;   use Qt.QPlaceReply;
package Qt.QPlaceIdReply is

 type QPlaceIdReplyOperationType is (SavePlace,SaveCategory,RemovePlace,RemoveCategory);
 pragma convention(C,QPlaceIdReplyOperationType);

 function  QPlaceIdReply_create( operationType:QPlaceIdReplyOperationType;parent:QObjectH := Null) return QPlaceReplyH;
 pragma Import(C,QPlaceIdReply_create, "QPlaceIdReply_create");
 
 procedure QPlaceIdReply_delete(handle:not null QPlaceReplyH);
 pragma Import(C,QPlaceIdReply_delete, "QPlaceIdReply_delete");
 
 function  QPlaceIdReply_type(handle:not null QPlaceReplyH) return QPlaceReplyType;
 pragma Import(C,QPlaceIdReply_type, "QPlaceIdReply_type");
 
 function  QPlaceIdReply_operationType(handle:not null QPlaceReplyH) return QPlaceIdReplyOperationType;
 pragma Import(C,QPlaceIdReply_operationType, "QPlaceIdReply_operationType");
 
 function  QPlaceIdReply_id(handle:not null QPlaceReplyH) return QStringH;
 pragma Import(C,QPlaceIdReply_id, "QPlaceIdReply_id");
 
 procedure QPlaceIdReply_setId(handle:not null QPlaceReplyH ;identifier:QStringH);
 pragma Import(C,QPlaceIdReply_setId, "QPlaceIdReply_setId");
 
end;
