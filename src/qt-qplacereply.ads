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

package Qt.QPlaceReply is

 type QPlaceReplyError is (NoError,PlaceDoesNotExistError,CategoryDoesNotExistError,CommunicationError,ParseError,PermissionsError,
                           UnsupportedError,BadArgumentError, CancelError, UnknownError);
 pragma convention(C,QPlaceReplyError);

 type QPlaceReplyType is (Reply,DetailsReply,SearchReply,SearchSuggestionReply,ContentReply,IdReply, MatchReply);
 pragma convention(C,QPlaceReplyType);

 function  QPlaceReply_create(parent:QObjectH := Null) return QPlaceReplyH;
 pragma Import(C,QPlaceReply_create, "QPlaceReply_create");
 
 procedure QPlaceReply_delete(handle:not null QPlaceReplyH);
 pragma Import(C,QPlaceReply_delete, "QPlaceReply_delete");
 
 function  QPlaceReply_isFinished(handle:not null QPlaceReplyH) return boolean;
 pragma Import(C,QPlaceReply_isFinished, "QPlaceReply_isFinished");
 
 function  QPlaceReply_type(handle:not null QPlaceReplyH) return QPlaceReplyType;
 pragma Import(C,QPlaceReply_type, "QPlaceReply_type");
 
 function  QPlaceReply_errorString(handle:not null QPlaceReplyH) return QStringH;
 pragma Import(C,QPlaceReply_errorString, "QPlaceReply_errorString");
 
 function  QPlaceReply_error(handle:not null QPlaceReplyH) return QPlaceReplyError;
 pragma Import(C,QPlaceReply_error, "QPlaceReply_error");
 
 procedure QPlaceReply_abort(handle:not null QPlaceReplyH);
 pragma Import(C,QPlaceReply_abort, "QPlaceReply_abort");
 
 type errorStringCallbackH is access procedure(error:QPlaceReplyError;errorString :QStringH);
 pragma convention(C,errorStringCallbackH);

 procedure QPlaceReply_signal_slot_finished(handle:not null QPlaceReplyH;hook: voidCallbackH);
 pragma Import(C,QPlaceReply_signal_slot_finished, "QPlaceReply_signal_slot_finished");
 
 procedure QPlaceReply_signal_slot_error(handle:not null QPlaceReplyH; hook : errorStringCallbackH);
 pragma Import(C,QPlaceReply_signal_slot_error, "QPlaceReply_signal_slot_error");

end;
