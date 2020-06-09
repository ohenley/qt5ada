--
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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QWebEngineUrlRequestInfo is

 type ResourceType is ( 
        ResourceTypeMainFrame ,     -- top level page
        ResourceTypeSubFrame,       -- frame or iframe
        ResourceTypeStylesheet,     -- a CSS stylesheet
        ResourceTypeScript,         -- an external script
        ResourceTypeImage,          -- an image (jpg/gif/png/etc)
        ResourceTypeFontResource,   -- a font
        ResourceTypeSubResource,    -- an "other" subresource.
        ResourceTypeObject,         -- an object (or embed) tag for a plugin,
                                    -- or a resource that a plugin requested.
        ResourceTypeMedia,          -- a media resource.
        ResourceTypeWorker,         -- the main resource of a dedicated worker.
        ResourceTypeSharedWorker,   -- the main resource of a shared worker.
        ResourceTypePrefetch,       -- an explicitly requested prefetch
        ResourceTypeFavicon,        -- a favicon
        ResourceTypeXhr,            -- a XMLHttpRequest
        ResourceTypePing,           -- a ping request for <a ping>
        ResourceTypeServiceWorker,  -- the main resource of a service worker.
        ResourceTypeUnknown);
  pragma convention(C,ResourceType);

  type NavigationType  is (NavigationTypeLink,NavigationTypeTyped,NavigationTypeFormSubmitted,
       NavigationTypeBackForward,NavigationTypeReload,NavigationTypeOther);
  pragma convention(C,NavigationType);
 
 function  QWebEngineUrlRequestInfo_resourceType(handle:not null QWebUrlRequestInfoH) return ResourceType;
 pragma Import(C,QWebEngineUrlRequestInfo_resourceType, "QWebEngineUrlRequestInfo_resourceType");
 
 function  QWebEngineUrlRequestInfo_navigationType(handle:not null QWebUrlRequestInfoH) return NavigationType;
 pragma Import(C,QWebEngineUrlRequestInfo_navigationType, "QWebEngineUrlRequestInfo_navigationType");
 
 procedure QWebEngineUrlRequestInterceptor_delete(handle:QWebUrlRequestInterceptorH);
 pragma Import(C,QWebEngineUrlRequestInterceptor_delete, "QWebEngineUrlRequestInterceptor_delete");
 
 procedure QWebEngineUrlRequestInterceptor_interceptRequest(handle:not null QWebUrlRequestInterceptorH;info:QWebUrlRequestInfoH);
 pragma Import(C,QWebEngineUrlRequestInterceptor_interceptRequest, "QWebEngineUrlRequestInterceptor_interceptRequest");

end;
