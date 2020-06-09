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

package Qt.EnginIO  is

 type AuthenticationState is (NotAuthenticated, Authenticating, Authenticated, AuthenticationFailure);
 pragma convention(C,AuthenticationState);  

 type Operation is (ObjectOperation, AccessControlOperation, UserOperation, UsergroupOperation, UsergroupMembersOperation, FileOperation,
    -- private
    SessionOperation, SearchOperation, FileChunkUploadOperation, FileGetDownloadUrlOperation);
 pragma convention(C,Operation);
  
 QtUserRole : constant := 16#0100#;
 subtype Role is integer;
  InvalidRole        : constant Role := -1;
  SyncedRole         : constant Role := QtUserRole + 1;
  CreatedAtRole      : constant Role := 2;
  UpdatedAtRole      : constant Role := 3;
  IdRole             : constant Role := 4;
  ObjectTypeRole     : constant Role := 5;
  CustomPropertyRole : constant Role := QtUserRole + 10; -- the first fully dynamic role
     

  type ErrorType  is (NoError, NetworkError,BackendError);
  pragma convention(C,ErrorType);
 
end;
