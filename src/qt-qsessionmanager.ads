
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

package Qt.QSessionManager  is

 type RestartHint is (RestartIfRunning, RestartAnyway, RestartImmediately,RestartNeve);
 pragma Convention(C, RestartHint);

 function  QSessionManager_sessionId(handle: not null QSessionManagerH) return QStringH;
 pragma Import(C,QSessionManager_sessionId, "QSessionManager_sessionId");
 
 function  QSessionManager_sessionKey(handle: not null QSessionManagerH) return QStringH;
 pragma Import(C,QSessionManager_sessionKey, "QSessionManager_sessionKey");
 
 function  QSessionManager_allowsInteraction(handle: not null QSessionManagerH) return boolean;
 pragma Import(C,QSessionManager_allowsInteraction, "QSessionManager_allowsInteraction");
 
 function  QSessionManager_allowsErrorInteraction(handle: not null QSessionManagerH) return boolean;
 pragma Import(C,QSessionManager_allowsErrorInteraction, "QSessionManager_allowsErrorInteraction");
 
 procedure QSessionManager_release(handle: not null QSessionManagerH);
 pragma Import(C,QSessionManager_release, "QSessionManager_release");
 
 procedure QSessionManager_cancel(handle: not null QSessionManagerH);
 pragma Import(C,QSessionManager_cancel, "QSessionManager_cancel");
 
 procedure QSessionManager_setRestartHint(handle: not null QSessionManagerH;hint: RestartHint);
 pragma Import(C,QSessionManager_setRestartHint, "QSessionManager_setRestartHint");
 
 function  QSessionManager_restartHint(handle: not null QSessionManagerH) return RestartHint;
 pragma Import(C,QSessionManager_restartHint, "QSessionManager_restartHint");
 
 procedure QSessionManager_setRestartCommand(handle: not null QSessionManagerH; command: QStringListH);
 pragma Import(C,QSessionManager_setRestartCommand, "QSessionManager_setRestartCommand");
 
 function  QSessionManager_restartCommand(handle: not null QSessionManagerH) return QStringListH;
 pragma Import(C,QSessionManager_restartCommand, "QSessionManager_restartCommand");
 
 procedure QSessionManager_setDiscardCommand(handle: not null QSessionManagerH; command: QStringListH);
 pragma Import(C,QSessionManager_setDiscardCommand, "QSessionManager_setDiscardCommand");
 
 function  QSessionManager_discardCommand(handle: not null QSessionManagerH) return QStringListH;
 pragma Import(C,QSessionManager_discardCommand, "QSessionManager_discardCommand");
 
 procedure QSessionManager_setManagerProperty(handle: not null QSessionManagerH; name,value: QStringH);
 pragma Import(C,QSessionManager_setManagerProperty, "QSessionManager_setManagerProperty");
 
 procedure QSessionManager_setManagerProperty2(handle: not null QSessionManagerH; name,value: QStringH);
 pragma Import(C,QSessionManager_setManagerProperty2, "QSessionManager_setManagerProperty2");
 
 function  QSessionManager_isPhase2(handle: not null QSessionManagerH) return boolean;
 pragma Import(C,QSessionManager_isPhase2, "QSessionManager_isPhase2");
 
 procedure QSessionManager_requestPhase2(handle: not null QSessionManagerH);
 pragma Import(C,QSessionManager_requestPhase2, "QSessionManager_requestPhase2");
 
end Qt.QSessionManager;
