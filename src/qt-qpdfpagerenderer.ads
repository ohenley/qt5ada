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
--   License, or (at your option) any later version.                       *

package Qt.QPdfPageRenderer is
  
 type QPdfDocumentRenderOptionsH is new QObjectH;
 type RenderMode is (MultiThreadedRenderMode,SingleThreadedRenderMod);
 pragma convention(C,RenderMode);
 
 type Rotation is (Rotate0,Rotate90,Rotate180,Rotate270);
 pragma convention(C,Rotation);
 
 type documentCallbackH is access procedure(document:QPdfDocumentH);
 pragma convention(C,documentCallbackH);
 
 type RenderFlags is new integer;
 NoRenderFlags         : constant RenderFlags := 0;
 RenderAnnotations     : constant RenderFlags := 1;
 RenderOptimizedForLcd : constant RenderFlags := 2;
 RenderGrayscale       : constant RenderFlags := 4;
 RenderForceHalftone   : constant RenderFlags := 8;
 RenderTextAliased     : constant RenderFlags := 16#010#;
 RenderImageAliased    : constant RenderFlags := 16#020#;
 RenderPathAliased     : constant RenderFlags := 16#040#;

 function  QPdfDocumentRenderOptions_create return QPdfDocumentRenderOptionsH;
 pragma Import(C,QPdfDocumentRenderOptions_create, "QPdfDocumentRenderOptions_create");
 
 function  QPdfDocumentRenderOptions_rotation(handle:not null QPdfDocumentRenderOptionsH) return Rotation;
 pragma Import(C,QPdfDocumentRenderOptions_rotation, "QPdfDocumentRenderOptions_rotation");
 
 procedure QPdfDocumentRenderOptions_setRotation(handle:not null QPdfDocumentRenderOptionsH;pdfRotation:Rotation);
 pragma Import(C,QPdfDocumentRenderOptions_setRotation, "QPdfDocumentRenderOptions_setRotation");
 
 function  QPdfDocumentRenderOptions_renderFlags(handle:not null QPdfDocumentRenderOptionsH) return RenderFlags;
 pragma Import(C,QPdfDocumentRenderOptions_renderFlags, "QPdfDocumentRenderOptions_renderFlags");
 
 procedure QPdfDocumentRenderOptions_setRenderFlags(handle:not null QPdfDocumentRenderOptionsH;pdfRenderFlags:RenderFlags);
 pragma Import(C,QPdfDocumentRenderOptions_setRenderFlags, "QPdfDocumentRenderOptions_setRenderFlags");
 
-------------------------------------------------------------------------------------

 function  QPdfPageRenderer_create(parent:QObjectH := null) return QPdfPageRendererH;
 pragma Import(C,QPdfPageRenderer_create, "QPdfPageRenderer_create");
 
 procedure QPdfPageRenderer_destroy(handle:not null QPdfPageRendererH);
 pragma Import(C,QPdfPageRenderer_destroy, "QPdfPageRenderer_destroy");
 
 function  QPdfPageRenderer_renderMode(handle:not null QPdfPageRendererH) return RenderMode;
 pragma Import(C,QPdfPageRenderer_renderMode, "QPdfPageRenderer_renderMode");
 
 procedure QPdfPageRenderer_setRenderMode(handle:not null QPdfPageRendererH;mode:RenderMode);
 pragma Import(C,QPdfPageRenderer_setRenderMode, "QPdfPageRenderer_setRenderMode");
 
 function  QPdfPageRenderer_document(handle:not null QPdfPageRendererH) return QPdfDocumentH;
 pragma Import(C,QPdfPageRenderer_document, "QPdfPageRenderer_document");
 
 procedure QPdfPageRenderer_setDocument(handle:not null QPdfPageRendererH;document:QPdfDocumentH);
 pragma Import(C,QPdfPageRenderer_setDocument, "QPdfPageRenderer_setDocument");
 
 function  QPdfPageRenderer_requestPage(handle:not null QPdfPageRendererH;pageNumber:integer;imageSize: QSizeH;options :QPdfDocumentRenderOptionsH :=   QPdfDocumentRenderOptions_create) return quint64;
 pragma Import(C,QPdfPageRenderer_requestPage, "QPdfPageRenderer_requestPage");
 
 procedure QPdfPageRenderer_signal_slot_documentChanged(handle:not null QPdfPageRendererH;hook:documentCallbackH);
 pragma Import(C,QPdfPageRenderer_signal_slot_documentChanged, "QPdfPageRenderer_signal_slot_documentChanged");
 
 procedure QPdfPageRenderer_signal_slot_renderModeChanged(handle:not null QPdfPageRendererH;hook:intCallbackH);
 pragma Import(C,QPdfPageRenderer_signal_slot_renderModeChanged, "QPdfPageRenderer_signal_slot_renderModeChanged");
 
 
end;
