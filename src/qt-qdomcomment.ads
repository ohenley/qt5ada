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

package Qt.QDomComment is

function  QDomComment_create return QDomCommentH;
pragma Import(C,QDomComment_create, "QDomComment_create");

function  QDomComment_create1(comment:QDomCommentH) return QDomCommentH;
pragma Import(C,QDomComment_create1, "QDomComment_create1");

procedure del_QDomComment(p:QDomCommentH);
pragma Import(C,del_QDomComment, "del_QDomComment");

function  QDomComment_nodeType(comment:QDomCommentH) return integer;
pragma Import(C,QDomComment_nodeType, "QDomComment_nodeType");

function  QDomComment_isComment(comment:QDomCommentH) return integer;
pragma Import(C,QDomComment_isComment, "QDomComment_isComment");

function  QDomComment_create(comment:QDomCommentH) return QDomCommentH;

end Qt.QDomComment;
