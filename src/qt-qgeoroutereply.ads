--
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

package Qt.QGeoRouteReply  is

 type QGeoRouteReplyError is (NoError,EngineNotSetError,CommunicationError,ParseError,UnsupportedOptionError,UnknownError); 
 pragma convention(C,QGeoRouteReplyError);

 function  QGeoRouteReply_create(error:QGeoRouteReplyError;errorString:QStringH ; parent:QObjectH := null) return QGeoRouteReplyH;
 pragma Import(C,QGeoRouteReply_create, "QGeoRouteReply_create");
 
 function  QGeoRouteReply_create2(request:QGeoRouteRequestH; parent:QObjectH := null) return QGeoRouteReplyH;
 pragma Import(C,QGeoRouteReply_create2, "QGeoRouteReply_create2");
 
 procedure QGeoRouteReply_delete(handle:not null QGeoRouteReplyH);
 pragma Import(C,QGeoRouteReply_delete, "QGeoRouteReply_delete");
 
 function  QGeoRouteReply_isFinished(handle:not null QGeoRouteReplyH) return boolean;
 pragma Import(C,QGeoRouteReply_isFinished, "QGeoRouteReply_isFinished");
 
 function  QGeoRouteReply_error(handle:not null QGeoRouteReplyH) return QGeoRouteReplyError;
 pragma Import(C,QGeoRouteReply_error, "QGeoRouteReply_error");
 
 function  QGeoRouteReply_errorString(handle:not null QGeoRouteReplyH) return QStringH;
 pragma Import(C,QGeoRouteReply_errorString, "QGeoRouteReply_errorString");
 
 function  QGeoRouteReply_request(handle:not null QGeoRouteReplyH) return QGeoRouteRequestH;
 pragma Import(C,QGeoRouteReply_request, "QGeoRouteReply_request");
 
 function  QGeoRouteReply_routes(handle:not null QGeoRouteReplyH) return QObjectListH;
 pragma Import(C,QGeoRouteReply_routes, "QGeoRouteReply_routes");
 
 procedure QGeoRouteReply_abort(handle:not null QGeoRouteReplyH);
 pragma Import(C,QGeoRouteReply_abort, "QGeoRouteReply_abort");
 
 procedure QGeoRouteReply_setError(handle:not null QGeoRouteReplyH;error:QGeoRouteReplyError;errorString:QStringH);
 pragma Import(C,QGeoRouteReply_setError, "QGeoRouteReply_setError");
 
 procedure QGeoRouteReply_setFinished(handle:not null QGeoRouteReplyH;finished:boolean);
 pragma Import(C,QGeoRouteReply_setFinished, "QGeoRouteReply_setFinished");
 
 procedure QGeoRouteReply_setRoutes(handle:not null QGeoRouteReplyH;routes:QObjectListH);
 pragma Import(C,QGeoRouteReply_setRoutes, "QGeoRouteReply_setRoutes");
 
 procedure QGeoRouteReply_addRoutes(handle:not null QGeoRouteReplyH;routes:QObjectListH);
 pragma Import(C,QGeoRouteReply_addRoutes, "QGeoRouteReply_addRoutes");

 type errorStringCallbackH is access procedure(error:QGeoRouteReplyError;errorString :QStringH);
 pragma convention(C,errorStringCallbackH);

 procedure QGeoRouteReply_signal_slot_finished(handle:not null QGeoRouteReplyH;hook: voidCallbackH);
 pragma Import(C,QGeoRouteReply_signal_slot_finished, "QGeoRouteReply_signal_slot_finished");
 
 procedure QGeoRouteReply_signal_slot_error(handle:not null QGeoRouteReplyH; hook : errorStringCallbackH);
 pragma Import(C,QGeoRouteReply_signal_slot_error, "QGeoRouteReply_signal_slot_error");
 
-------------------------------------------------------------------------
 function  QGeoRouteReply_create(request:QGeoRouteRequestH; parent:QObjectH := null) return QGeoRouteReplyH;

end;
