-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QSyntaxHighlighter  is

 function  QXmlHighlighter_create(document:QTextDocumentH) return QSyntaxHighlighterH;
 pragma Import(C,QXmlHighlighter_create, "QXmlHighlighter_create");
 
 procedure QSyntaxHighlighter_destroy(handle:not null QSyntaxHighlighterH);
 pragma Import(C,QSyntaxHighlighter_destroy, "QSyntaxHighlighter_destroy");
 
 procedure QSyntaxHighlighter_rehighlight(handle:not null QSyntaxHighlighterH);
 pragma Import(C,QSyntaxHighlighter_rehighlight, "QSyntaxHighlighter_rehighlight");
 
 procedure QSyntaxHighlighter_rehighlightBlock(handle:not null QSyntaxHighlighterH;block:QTextBlockH);
 pragma Import(C,QSyntaxHighlighter_rehighlightBlock, "QSyntaxHighlighter_rehighlightBlock");
 
 procedure QSyntaxHighlighter_setDocument(handle:not null QSyntaxHighlighterH;document:QTextDocumentH);
 pragma Import(C,QSyntaxHighlighter_setDocument, "QSyntaxHighlighter_setDocument");
 
 function  QSyntaxHighlighter_document(handle:not null QSyntaxHighlighterH) return QTextDocumentH;
 pragma Import(C,QSyntaxHighlighter_document, "QSyntaxHighlighter_document");
 
end;
