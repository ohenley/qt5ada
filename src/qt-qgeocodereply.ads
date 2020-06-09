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

package Qt.QGeoCodeReply  is

type QGeoCodeReplyError is (NoError,EngineNotSetError,CommunicationError,ParseError,UnsupportedOptionError,CombinationError,UnknownError); 
pragma convention(C,QGeoCodeReplyError);

 function  QGeoCodeReply_create(error:QGeoCodeReplyError; errorString :QStringH; parent: QObjectH := null) return QGeoCodeReplyH;
 pragma Import(C,QGeoCodeReply_create, "QGeoCodeReply_create");
 
 function  QGeoCodeReply_create2(parent:QObjectH := null) return QGeoCodeReplyH;
 pragma Import(C,QGeoCodeReply_create2, "QGeoCodeReply_create2");
 
 procedure QGeoCodeReply_delete(handle:not null QGeoCodeReplyH);
 pragma Import(C,QGeoCodeReply_delete, "QGeoCodeReply_delete");
 
 function  QGeoCodeReply_isFinished(handle:not null QGeoCodeReplyH) return boolean;
 pragma Import(C,QGeoCodeReply_isFinished, "QGeoCodeReply_isFinished");
 
 function  QGeoCodeReply_error(handle:not null QGeoCodeReplyH) return QGeoCodeReplyError;
 pragma Import(C,QGeoCodeReply_error, "QGeoCodeReply_error");
 
 function  QGeoCodeReply_errorString(handle:not null QGeoCodeReplyH) return QStringH;
 pragma Import(C,QGeoCodeReply_errorString, "QGeoCodeReply_errorString");
 
 function  QGeoCodeReply_viewport(handle:not null QGeoCodeReplyH) return QGeoShapeH;
 pragma Import(C,QGeoCodeReply_viewport, "QGeoCodeReply_viewport");
 
 function  QGeoCodeReply_locations(handle:not null QGeoCodeReplyH) return QObjectListH;
 pragma Import(C,QGeoCodeReply_locations, "QGeoCodeReply_locations");
 
 function  QGeoCodeReply_limit(handle:not null QGeoCodeReplyH) return integer;
 pragma Import(C,QGeoCodeReply_limit, "QGeoCodeReply_limit");
 
 function  QGeoCodeReply_offset(handle:not null QGeoCodeReplyH) return integer;
 pragma Import(C,QGeoCodeReply_offset, "QGeoCodeReply_offset");
 
 procedure QGeoCodeReply_abort(handle:not null QGeoCodeReplyH);
 pragma Import(C,QGeoCodeReply_abort, "QGeoCodeReply_abort");
 
 procedure QGeoCodeReply_setError(handle:not null QGeoCodeReplyH;error:QGeoCodeReplyError; errorString :QStringH);
 pragma Import(C,QGeoCodeReply_setError, "QGeoCodeReply_setError");
 
 procedure QGeoCodeReply_setFinished(handle:not null QGeoCodeReplyH;finished:boolean);
 pragma Import(C,QGeoCodeReply_setFinished, "QGeoCodeReply_setFinished");
 
 procedure QGeoCodeReply_setViewport(handle:not null QGeoCodeReplyH; viewport:QGeoShapeH);
 pragma Import(C,QGeoCodeReply_setViewport, "QGeoCodeReply_setViewport");
 
 procedure QGeoCodeReply_addLocation(handle:not null QGeoCodeReplyH; location:QGeoLocationH);
 pragma Import(C,QGeoCodeReply_addLocation, "QGeoCodeReply_addLocation");
 
 procedure QGeoCodeReply_setLocations(handle:not null QGeoCodeReplyH;locations:QObjectListH);
 pragma Import(C,QGeoCodeReply_setLocations, "QGeoCodeReply_setLocations");
 
 procedure QGeoCodeReply_setLimit(handle:not null QGeoCodeReplyH;limit:integer);
 pragma Import(C,QGeoCodeReply_setLimit, "QGeoCodeReply_setLimit");
 
 procedure QGeoCodeReply_setOffset(handle:not null QGeoCodeReplyH;offset:integer);
 pragma Import(C,QGeoCodeReply_setOffset, "QGeoCodeReply_setOffset");

 type errorStringCallbackH is access procedure(error:QGeoCodeReplyError;errorString :QStringH);
 pragma convention(C,errorStringCallbackH);

 procedure QGeoCodeReply_signal_slot_finished(handle:not null QGeoCodeReplyH;hook: voidCallbackH);
 pragma Import(C,QGeoCodeReply_signal_slot_finished, "QGeoCodeReply_signal_slot_finished");
 
 procedure QGeoCodeReply_signal_slot_error(handle:not null QGeoCodeReplyH; hook : errorStringCallbackH);
 pragma Import(C,QGeoCodeReply_signal_slot_error, "QGeoCodeReply_signal_slot_error");
 
------------------------------------------------------------------------
 function  QGeoCodeReply_create(parent:QObjectH := null) return QGeoCodeReplyH;

end;
