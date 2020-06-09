-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

-- Thanks a lot for Stefan Frings  QtWebApp http://stefanfrings.de
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString     ;  use  Qt.QString;
with Qt.QByteArray  ;  use  Qt.QByteArray;
with Qt.QNamespace  ;  use  Qt.QNamespace;
with builtin;          use builtin;
package Qt.QHttpServer is

 type serviceCallbackH is access procedure(request:QRequestH;response:QResponseH);
 pragma convention(C,serviceCallbackH);
 
 type RequestStatus is (waitForRequest, waitForHeader, waitForBody, complete, abortRequest);
 pragma convention(C,RequestStatus);

 function  QHttpConnectionHandlerPool_create(settings:QSettingsH;requestHandler: QObjectH) return QObjectH;
 pragma Import(C,QHttpConnectionHandlerPool_create, "QHttpConnectionHandlerPool_create");
 
 procedure QHttpConnectionHandlerPool_destroy(handle:not null QObjectH);
 pragma Import(C,QHttpConnectionHandlerPool_destroy, "QHttpConnectionHandlerPool_destroy");
 
 function  QHttpConnectionHandlerPool_getConnectionHandler(handle:not null QObjectH) return QObjectH;
 pragma Import(C,QHttpConnectionHandlerPool_getConnectionHandler, "QHttpConnectionHandlerPool_getConnectionHandler");
 
 function  QHttpConnectionHandler_create(settings:QSettingsH; requestHandler:QObjectH;  sslConfiguration:QSslConfigurationH:= null) return QObjectH;
 pragma Import(C,QHttpConnectionHandler_create, "QHttpConnectionHandler_create");
 
 procedure QHttpConnectionHandler_destroy(handle:not null QObjectH);
 pragma Import(C,QHttpConnectionHandler_destroy, "QHttpConnectionHandler_destroy");
 
 function  QHttpConnectionHandler_isBusy(handle:not null QObjectH) return boolean;
 pragma Import(C,QHttpConnectionHandler_isBusy, "QHttpConnectionHandler_isBusy");
 
 procedure QHttpConnectionHandler_setBusy(handle:not null QObjectH);
 pragma Import(C,QHttpConnectionHandler_setBusy, "QHttpConnectionHandler_setBusy");
 
 function  QHttpRequestHandler_create(hook:serviceCallbackH;parent:QObjectH := null) return QObjectH;
 pragma Import(C,QHttpRequestHandler_create, "QHttpRequestHandler_create");
 
 procedure QHttpRequestHandler_destroy(handle:not null QObjectH);
 pragma Import(C,QHttpRequestHandler_destroy, "QHttpRequestHandler_destroy");
 
 procedure QHttpRequestHandler_service(handle:not null QObjectH;request:QRequestH; response:QResponseH);
 pragma Import(C,QHttpRequestHandler_service, "QHttpRequestHandler_service");

 function  QHttpSession_create(canStore: boolean:= false) return QSessionManagerH;
 pragma Import(C,QHttpSession_create, "QHttpSession_create");
 
 function  QHttpSession_create2(other:QSessionManagerH) return QSessionManagerH;
 pragma Import(C,QHttpSession_create2, "QHttpSession_create2");
 
 procedure QHttpSession_destroy(handle:not null QSessionManagerH);
 pragma Import(C,QHttpSession_destroy, "QHttpSession_destroy");
 
 function  QHttpSession_isNull(handle:not null QSessionManagerH) return boolean;
 pragma Import(C,QHttpSession_isNull, "QHttpSession_isNull");
 
 function  QHttpSession_getId(handle:not null QSessionManagerH) return QByteArrayH;
 pragma Import(C,QHttpSession_getId, "QHttpSession_getId");
 
 procedure QHttpSession_set(handle:not null QSessionManagerH;key:QByteArrayH;value: QVariantH);
 pragma Import(C,QHttpSession_set, "QHttpSession_set");
 
 procedure QHttpSession_remove(handle:not null QSessionManagerH; key:QByteArrayH);
 pragma Import(C,QHttpSession_remove, "QHttpSession_remove");
 
 function  QHttpSession_get(handle:not null QSessionManagerH; key:QByteArrayH) return QVariantH;
 pragma Import(C,QHttpSession_get, "QHttpSession_get");
 
 function  QHttpSession_contains(handle:not null QSessionManagerH; key:QByteArrayH) return boolean;
 pragma Import(C,QHttpSession_contains, "QHttpSession_contains");
 
 function  QHttpSession_getAll(handle:not null QSessionManagerH) return QObjectMapH;
 pragma Import(C,QHttpSession_getAll, "QHttpSession_getAll");
 
 function  QHttpSession_getLastAccess(handle:not null QSessionManagerH) return qint64;
 pragma Import(C,QHttpSession_getLastAccess, "QHttpSession_getLastAccess");
 
 procedure QHttpSession_setLastAccess(handle:not null QSessionManagerH);
 pragma Import(C,QHttpSession_setLastAccess, "QHttpSession_setLastAccess");
 

 function  QHttpSessionStore_create(settings:QSettingsH; paren:QObjectH := null) return QObjectH;
 pragma Import(C,QHttpSessionStore_create, "QHttpSessionStore_create");
 
 procedure QHttpSessionStrore_destroy(handle:not null QObjectH);
 pragma Import(C,QHttpSessionStrore_destroy, "QHttpSessionStrore_destroy");
 
 function  QHttpSessionStore_getSessionId(handle:not null QObjectH;request:QRequestH;response: QResponseH) return QByteArrayH;
 pragma Import(C,QHttpSessionStore_getSessionId, "QHttpSessionStore_getSessionId");
 
 function  QHttpSessionStore_getSession(handle:not null QObjectH;request:QRequestH;response: QResponseH; allowCreate: boolean := true) return QSessionManagerH;
 pragma Import(C,QHttpSessionStore_getSession, "QHttpSessionStore_getSession");
 
 function  QHttpSessionStore_getSession2(handle:not null QObjectH; id:QByteArrayH) return QSessionManagerH;
 pragma Import(C,QHttpSessionStore_getSession2, "QHttpSessionStore_getSession2");
 
 procedure QHttpSessionStore_removeSession(handle:not null QObjectH;session:QSessionManagerH);
 pragma Import(C,QHttpSessionStore_removeSession, "QHttpSessionStore_removeSession");
 

 function  QStaticFileController_create(settings:QSettingsH; paren:QObjectH := null) return QObjectH;
 pragma Import(C,QStaticFileController_create, "QStaticFileController_create");
 
 procedure QStaticFileController_service(handle:not null QObjectH;request:QRequestH; response:QResponseH);
 pragma Import(C,QStaticFileController_service, "QStaticFileController_service");
 
 function  QHttpCookie_create(name,value:QByteArrayH;maxAge:integer; path: QByteArrayH := QByteArray_create("/"); comment,domain:QByteArrayH := QByteArray_create; secure: boolean := false) return QNetworkCookieH;
 pragma Import(C,QHttpCookie_create, "QHttpCookie_create");
 
 function  QHttpCookie_create2 return QNetworkCookieH ;
 pragma Import(C,QHttpCookie_create2, "QHttpCookie_create2");
 
 function  QHttpCookie_create3(source:QByteArrayH) return QNetworkCookieH ;
 pragma Import(C,QHttpCookie_create3, "QHttpCookie_create3");
 
 function  QHttpCookie_splitCSV(ource:QByteArrayH) return QObjectListH;
 pragma Import(C,QHttpCookie_splitCSV, "QHttpCookie_splitCSV");
 
 function  QHttpCookie_toByteArray(handle:not null QObjectH) return QByteArrayH;
 pragma Import(C,QHttpCookie_toByteArray, "QHttpCookie_toByteArray");
 
 procedure QHttpCookie_setName(handle:not null QObjectH; name:QByteArrayH);
 pragma Import(C,QHttpCookie_setName, "QHttpCookie_setName");
 
 procedure QHttpCookie_setValue(handle:not null QObjectH; value:QByteArrayH);
 pragma Import(C,QHttpCookie_setValue, "QHttpCookie_setValue");
 
 procedure QHttpCookie_setComment(handle:not null QObjectH; comment:QByteArrayH);
 pragma Import(C,QHttpCookie_setComment, "QHttpCookie_setComment");
 
 procedure QHttpCookie_setDomain(handle:not null QObjectH; domain:QByteArrayH);
 pragma Import(C,QHttpCookie_setDomain, "QHttpCookie_setDomain");
 
 procedure QHttpCookie_setMaxAge(handle:not null QObjectH;maxAge:integer);
 pragma Import(C,QHttpCookie_setMaxAge, "QHttpCookie_setMaxAge");
 
 procedure QHttpCookie_setPath(handle:not null QObjectH; path:QByteArrayH);
 pragma Import(C,QHttpCookie_setPath, "QHttpCookie_setPath");
 
 procedure QHttpCookie_setSecure(handle:not null QObjectH; secure:boolean);
 pragma Import(C,QHttpCookie_setSecure, "QHttpCookie_setSecure");
 
 function  QHttpCookie_getName(handle:not null QObjectH) return QByteArrayH;
 pragma Import(C,QHttpCookie_getName, "QHttpCookie_getName");
 
 function  QHttpCookie_getValue(handle:not null QObjectH) return QByteArrayH;
 pragma Import(C,QHttpCookie_getValue, "QHttpCookie_getValue");
 
 function  QHttpCookie_getComment(handle:not null QObjectH) return QByteArrayH;
 pragma Import(C,QHttpCookie_getComment, "QHttpCookie_getComment");
 
 function  QHttpCookie_getDomain(handle:not null QObjectH) return QByteArrayH;
 pragma Import(C,QHttpCookie_getDomain, "QHttpCookie_getDomain");
 
 function  QHttpCookie_getMaxAge(handle:not null QObjectH) return integer;
 pragma Import(C,QHttpCookie_getMaxAge, "QHttpCookie_getMaxAge");
 
 function  QHttpCookie_getPath(handle:not null QObjectH) return QByteArrayH;
 pragma Import(C,QHttpCookie_getPath, "QHttpCookie_getPath");
 
 function  QHttpCookie_getSecure(handle:not null QObjectH) return boolean;
 pragma Import(C,QHttpCookie_getSecure, "QHttpCookie_getSecure");
 
 function  QHttpCookie_getVersion(handle:not null QObjectH) return integer;
 pragma Import(C,QHttpCookie_getVersion, "QHttpCookie_getVersion");
 
 function  QHttpListener_create(settings:QSettingsH;requestHandler:QObjectH; paren:QObjectH  :=  null) return QServerH;
 pragma Import(C,QHttpListener_create, "QHttpListener_create");
 
 procedure QHttpListener_destroy(handle:not null QServerH);
 pragma Import(C,QHttpListener_destroy, "QHttpListener_destroy");
 
 procedure QHttpListener_listen(handle:not null QServerH);
 pragma Import(C,QHttpListener_listen, "QHttpListener_listen");
 
 procedure QHttpListener_close(handle:not null QServerH);
 pragma Import(C,QHttpListener_close, "QHttpListener_close");
 
 function  QHttpRequest_create(settings:QSettingsH) return QRequestH;
 pragma Import(C,QHttpRequest_create, "QHttpRequest_create");
 
 procedure QHttpRequest_destroy(handle:not null QRequestH);
 pragma Import(C,QHttpRequest_destroy, "QHttpRequest_destroy");
 
 function  QHttpRequest_urlDecode(source:QByteArrayH) return QByteArrayH;
 pragma Import(C,QHttpRequest_urlDecode, "QHttpRequest_urlDecode");
 
 procedure QHttpRequest_readFromSocket(handle:not null QRequestH;socket:QSocketH);
 pragma Import(C,QHttpRequest_readFromSocket, "QHttpRequest_readFromSocket");
 
 function  QHttpRequest_getStatus(handle:not null QRequestH) return RequestStatus;
 pragma Import(C,QHttpRequest_getStatus, "QHttpRequest_getStatus");
 
 function  QHttpRequest_getMethod(handle:not null QRequestH) return QByteArrayH;
 pragma Import(C,QHttpRequest_getMethod, "QHttpRequest_getMethod");
 
 function  QHttpRequest_getPath(handle:not null QRequestH) return QByteArrayH;
 pragma Import(C,QHttpRequest_getPath, "QHttpRequest_getPath");
 
 function  QHttpRequest_getRawPath(handle:not null QRequestH) return QByteArrayH;
 pragma Import(C,QHttpRequest_getRawPath, "QHttpRequest_getRawPath");
 
 function  QHttpRequest_getVersion(handle:not null QRequestH) return QByteArrayH;
 pragma Import(C,QHttpRequest_getVersion, "QHttpRequest_getVersion");
 
 function  QHttpRequest_getHeader(handle:not null QRequestH;name:QByteArrayH) return QByteArrayH;
 pragma Import(C,QHttpRequest_getHeader, "QHttpRequest_getHeader");
 
 function  QHttpRequest_getHeaders(handle:not null QRequestH;name:QByteArrayH) return QObjectListH;
 pragma Import(C,QHttpRequest_getHeaders, "QHttpRequest_getHeaders");
 
 function  QHttpRequest_getHeaderMap(handle:not null QRequestH) return QObjectMapH;
 pragma Import(C,QHttpRequest_getHeaderMap, "QHttpRequest_getHeaderMap");
 
 function  QHttpRequest_getParameter(handle:not null QRequestH;name:QByteArrayH) return QByteArrayH;
 pragma Import(C,QHttpRequest_getParameter, "QHttpRequest_getParameter");
 
 function  QHttpRequest_getParameters(handle:not null QRequestH;name:QByteArrayH) return QObjectListH;
 pragma Import(C,QHttpRequest_getParameters, "QHttpRequest_getParameters");
 
 function  QHttpRequest_getParameterMap(handle:not null QRequestH) return QObjectMapH;
 pragma Import(C,QHttpRequest_getParameterMap, "QHttpRequest_getParameterMap");
 
 function  QHttpRequest_getBody(handle:not null QRequestH) return QByteArrayH;
 pragma Import(C,QHttpRequest_getBody, "QHttpRequest_getBody");
 
 function  QHttpRequest_getUploadedFile(handle:not null QRequestH;fieldName:QByteArrayH ) return QFileH;
 pragma Import(C,QHttpRequest_getUploadedFile, "QHttpRequest_getUploadedFile");
 
 function  QHttpRequest_getCookie(handle:not null QRequestH;name:QByteArrayH) return QByteArrayH;
 pragma Import(C,QHttpRequest_getCookie, "QHttpRequest_getCookie");
 
 function  QHttpRequest_getCookieMap(handle:not null QRequestH) return QObjectMapH;
 pragma Import(C,QHttpRequest_getCookieMap, "QHttpRequest_getCookieMap");
 
 function  QHttpRequest_getPeerAddress(handle:not null QRequestH) return QHostAddressH;
 pragma Import(C,QHttpRequest_getPeerAddress, "QHttpRequest_getPeerAddress");
 

 function  QHttpResponse_create(socket:QSocketH) return QResponseH;
 pragma Import(C,QHttpResponse_create, "QHttpResponse_create");
 
 procedure QHttpResponse_destroy(handle:not null QResponseH);
 pragma Import(C,QHttpResponse_destroy, "QHttpResponse_destroy");
 
 procedure QHttpResponse_setHeader(handle:not null QResponseH; name,value: QByteArrayH);
 pragma Import(C,QHttpResponse_setHeader, "QHttpResponse_setHeader");
 
 function  QHttpResponse_getHeaders(handle:not null QResponseH) return QObjectMapH;
 pragma Import(C,QHttpResponse_getHeaders, "QHttpResponse_getHeaders");
 
 function  QHttpResponse_getCookies(handle:not null QResponseH) return QObjectMapH;
 pragma Import(C,QHttpResponse_getCookies, "QHttpResponse_getCookies");
 
 procedure QHttpResponse_setStatus(handle:not null QResponseH;statusCode:integer; description: QByteArrayH := QByteArray_create);
 pragma Import(C,QHttpResponse_setStatus, "QHttpResponse_setStatus");
 
 procedure QHttpResponse_write(handle:not null QResponseH;data:QByteArrayH; lastPart:boolean := false);
 pragma Import(C,QHttpResponse_write, "QHttpResponse_write");
 
 function  QHttpResponse_hasSentLastPart(handle:not null QResponseH) return boolean;
 pragma Import(C,QHttpResponse_hasSentLastPart, "QHttpResponse_hasSentLastPart");
 
 procedure QHttpResponse_setCookie(handle:not null QResponseH;coockie:QNetworkCookieH);
 pragma Import(C,QHttpResponse_setCookie, "QHttpResponse_setCookie");
 
 procedure QHttpResponse_redirect(handle:not null QResponseH;url:QByteArrayH);
 pragma Import(C,QHttpResponse_redirect, "QHttpResponse_redirect");
 
 procedure QHttpResponse_flush(handle:not null QResponseH);
 pragma Import(C,QHttpResponse_flush, "QHttpResponse_flush");
 
 function  QHttpResponse_isConnected(handle:not null QResponseH) return boolean;
 pragma Import(C,QHttpResponse_isConnected, "QHttpResponse_isConnected");
 

 function  QLogMessage_create(msgType:QtMsgType;message:QStringH; logVars:QCryptographicHashH; file,func:QStringH;line:integer) return QObjectH;
 pragma Import(C,QLogMessage_create, "QLogMessage_create");
 
 function  QLogMessage_toString(handle:not null QObjectH;msgFormat,timestampFormat:QStringH ) return QStringH;
 pragma Import(C,QLogMessage_toString, "QLogMessage_toString");
 
 function  QLogMessage_getType(handle:not null QObjectH) return QtMsgType;
 pragma Import(C,QLogMessage_getType, "QLogMessage_getType");
 
 function  QSessionController_create return QObjectH;
 pragma Import(C,QSessionController_create, "QSessionController_create");
 
 procedure QSessionController_service(handle:not null QObjectH;request:QRequestH; response:QResponseH);
 pragma Import(C,QSessionController_service, "QSessionController_service");
 
 function  QFileUploadController_create return QObjectH;
 pragma Import(C,QFileUploadController_create, "QFileUploadController_create");
 
 procedure QFileUploadController_service(handle:not null QObjectH;request:QRequestH; response:QResponseH);
 pragma Import(C,QFileUploadController_service, "QFileUploadController_service");
 
 function  QDumpController_create return QObjectH;
 pragma Import(C,QDumpController_create, "QDumpController_create");
 
 procedure QDumpController_service(handle:not null QObjectH;request:QRequestH; response:QResponseH);
 pragma Import(C,QDumpController_service, "QDumpController_service");
 
 function  QTemplateController_create return QObjectH;
 pragma Import(C,QTemplateController_create, "QTemplateController_create");
 
 procedure QTemplateController_service(handle:not null QObjectH;request:QRequestH; response:QResponseH);
 pragma Import(C,QTemplateController_service, "QTemplateController_service");
 

 function  QLogger_create2(parent:QObjectH) return QObjectH;
 pragma Import(C,QLogger_create2, "QLogger_create2");
 
 function  QLogger_create(msgFormat:QStringH := s2qs("{timestamp} {type} {msg}");timestampFormat: QStringH := s2qs("dd.MM.yyyy hh:mm:ss.zzz");minLevel:QtMsgType := QtDebugMsg;bufferSize:integer := 0;parent:QObjectH) return QObjectH;
 pragma Import(C,QLogger_create, "QLogger_create");
 
 procedure QLogger_destroy(handle:not null QObjectH);
 pragma Import(C,QLogger_destroy, "QLogger_destroy");
 
 procedure QLogger_set(name,value: QStringH);
 pragma Import(C,QLogger_set, "QLogger_set");
 
 procedure QLogger_installMsgHandler(handle:not null QObjectH);
 pragma Import(C,QLogger_installMsgHandler, "QLogger_installMsgHandler");
 
 procedure QLogger_log(handle:not null QObjectH;logType:QtMsgType; message:QStringH;file,func:QStringH := QString_create;line:integer := 0);
 pragma Import(C,QLogger_log, "QLogger_log");
 
 procedure QLogger_clear(handle:not null QObjectH; buffer, variables: boolean := true);
 pragma Import(C,QLogger_clear, "QLogger_clear");
 

 function  QFileLogger_create(settings:QSettingsH; refreshInterval : integer := 10000; parent: QObjectH := null) return QObjectH;
 pragma Import(C,QFileLogger_create, "QFileLogger_create");
 
 procedure QFileLogger_destroy(handle:not null QObjectH);
 pragma Import(C,QFileLogger_destroy, "QFileLogger_destroy");
 
 procedure QFileLogger_write(handle:not null QObjectH; logMessage: QObjectH);
 pragma Import(C,QFileLogger_write, "QFileLogger_write");
 

 function  QDualFileLogger_create(firstSettings,secondSettings: QSettingsH; refreshInterval : integer := 10000; parent:QObjectH := null) return QObjectH;
 pragma Import(C,QDualFileLogger_create, "QDualFileLogger_create");
 
 procedure QDualFileLogger_log(handle:not null QObjectH;msgType:QtMsgType;message:QStringH;file,func:QStringH := QString_create;line: integer := 0);
 pragma Import(C,QDualFileLogger_log, "QDualFileLogger_log");
 
 procedure QDualFileLogger_clear(handle:not null QObjectH;buffer, variables: boolean := true);
 pragma Import(C,QDualFileLogger_clear, "QDualFileLogger_clear");

 function  QTemplateCache_create(settings:QSettingsH; parent:QObjectH := null) return QObjectH;
 pragma Import(C,QTemplateCache_create, "QTemplateCache_create");
 
end;
