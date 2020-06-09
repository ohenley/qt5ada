--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QOpenGLGlobal; use Qt.QOpenGLGlobal;        
package Qt.QOpenGLVertexArrayObject is 

 type QOpenGLVertexArrayObjectH is new QObjectH;

 function  QOpenGLVertexArrayObject_create(parent:QObjectH := null) return QOpenGLVertexArrayObjectH;
 pragma Import(C,QOpenGLVertexArrayObject_create, "QOpenGLVertexArrayObject_create");
 
 procedure QOpenGLVertexArrayObject_delete(handle:not null QOpenGLVertexArrayObjectH);
 pragma Import(C,QOpenGLVertexArrayObject_delete, "QOpenGLVertexArrayObject_delete");
 
 -- GL original name is  create
 function  QOpenGLVertexArrayObject_createVAO(handle:not null QOpenGLVertexArrayObjectH) return boolean;
 pragma Import(C,QOpenGLVertexArrayObject_createVAO, "QOpenGLVertexArrayObject_createVAO");
 
 procedure QOpenGLVertexArrayObject_destroy(handle:not null QOpenGLVertexArrayObjectH);
 pragma Import(C,QOpenGLVertexArrayObject_destroy, "QOpenGLVertexArrayObject_destroy");
 
 function  QOpenGLVertexArrayObject_isCreated(handle:not null QOpenGLVertexArrayObjectH) return boolean;
 pragma Import(C,QOpenGLVertexArrayObject_isCreated, "QOpenGLVertexArrayObject_isCreated");
 
 function  QOpenGLVertexArrayObject_objectId(handle:not null QOpenGLVertexArrayObjectH) return GLuint;
 pragma Import(C,QOpenGLVertexArrayObject_objectId, "QOpenGLVertexArrayObject_objectId");
 
 procedure QOpenGLVertexArrayObject_bind(handle:not null QOpenGLVertexArrayObjectH);
 pragma Import(C,QOpenGLVertexArrayObject_bind, "QOpenGLVertexArrayObject_bind");
 
 procedure QOpenGLVertexArrayObject_release(handle:not null QOpenGLVertexArrayObjectH);
 pragma Import(C,QOpenGLVertexArrayObject_release, "QOpenGLVertexArrayObject_release");
 
end;
