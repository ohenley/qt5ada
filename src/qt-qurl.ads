--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2016,2019                 บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ 

--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with System;
with Interfaces.C;  use Interfaces.C;
package Qt.QUrl is

type ParsingMode is (TolerantMode, StrictMode);
pragma Convention(C,ParsingMode);

-- encoding  toString values

FormattingOptionNone               : quint  := 0;
FormattingOptionRemoveScheme       : quint  := 1;
FormattingOptionRemovePassword     : quint  := 2;
FormattingOptionRemoveUserInfo     : quint  := 6;
FormattingOptionRemovePort         : quint  := 8;
FormattingOptionRemoveAuthority    : quint  := FormattingOptionRemoveUserInfo + FormattingOptionRemovePort + 16#10#;
FormattingOptionRemovePath         : quint  := 16#20#;
FormattingOptionRemoveQuery        : quint  := 16#40#;
FormattingOptionRemoveFragment     : quint  := 16#80#;
FormattingOptionPreferLocalFile    : quint  := 16#200#;
FormattingOptionStripTrailingSlash : quint  := 16#400#;
FormattingOptionRemoveLocalFile    : quint  := 16#800#;
FormattingOptionNormalizePathSegments : quint  := 16#1000#;

 subtype ComponentFormattingOption is quint;
 PrettyDecoded    : constant ComponentFormattingOption:= 0;
 EncodeSpaces     : constant ComponentFormattingOption:= 16#100000#;
 EncodeUnicode    : constant ComponentFormattingOption:= 16#200000#;
 EncodeDelimiters : constant ComponentFormattingOption:= 16#400000# or 16#800000#;
 EncodeReserved   : constant ComponentFormattingOption:= 16#1000000#;
 DecodeReserved   : constant ComponentFormattingOption:= 16#2000000#; -- 0x4000000 used to indicate full-decode mode
 FullyEncoded     : constant ComponentFormattingOption:= EncodeSpaces or EncodeUnicode or EncodeDelimiters or EncodeReserved;
 FullyDecoded     : constant ComponentFormattingOption:= FullyEncoded or DecodeReserved or 16#4000000#;
 


type UserInputResolutionOptions is ( DefaultResolution,AssumeLocalFile);  
pragma convention(C,UserInputResolutionOptions);

 function  QUrl_create return QUrlH;
 pragma Import(C,QUrl_create, "QUrl_create");
 
 function  QUrl_create1(url:QStringH) return QUrlH;
 pragma Import(C,QUrl_create1, "QUrl_create1");
 
 function  QUrl_create2(url:QStringH;mode:ParsingMode) return QUrlH;
 pragma Import(C,QUrl_create2, "QUrl_create2");
 
 function  QUrl_create3(copy:QUrlH) return QUrlH;
 pragma Import(C,QUrl_create3, "QUrl_create3");
 
 procedure del_QUrl(handle: not null QUrlH);
 pragma Import(C,del_QUrl, "del_QUrl");
 
 procedure QUrl_setUrl(handle: not null QUrlH; url:QStringH);
 pragma Import(C,QUrl_setUrl, "QUrl_setUrl");
 
 procedure QUrl_setUrl1(handle: not null QUrlH; url:QStringH;mode:ParsingMode);
 pragma Import(C,QUrl_setUrl1, "QUrl_setUrl1");
 
 function  QUrl_isValid(handle: not null QUrlH) return boolean;
 pragma Import(C,QUrl_isValid, "QUrl_isValid");
 
 function  QUrl_isEmpty(handle: not null QUrlH) return boolean;
 pragma Import(C,QUrl_isEmpty, "QUrl_isEmpty");
 
 procedure QUrl_clear(handle: not null QUrlH);
 pragma Import(C,QUrl_clear, "QUrl_clear");
 
 procedure QUrl_setScheme(handle: not null QUrlH;  scheme:QStringH);
 pragma Import(C,QUrl_setScheme, "QUrl_setScheme");
 
 function  QUrl_scheme(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_scheme, "QUrl_scheme");
 
 procedure QUrl_setAuthority(handle: not null QUrlH;  authority:QStringH);
 pragma Import(C,QUrl_setAuthority, "QUrl_setAuthority");
 
 function  QUrl_authority(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_authority, "QUrl_authority");
 
 procedure QUrl_setUserInfo(handle: not null QUrlH;  userInfo:QStringH);
 pragma Import(C,QUrl_setUserInfo, "QUrl_setUserInfo");
 
 function  QUrl_userInfo(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_userInfo, "QUrl_userInfo");
 
 procedure QUrl_setUserName(handle: not null QUrlH; userName:QStringH);
 pragma Import(C,QUrl_setUserName, "QUrl_setUserName");
 
 function  QUrl_userName(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_userName, "QUrl_userName");
 
 procedure QUrl_setPassword(handle: not null QUrlH;  password:QStringH);
 pragma Import(C,QUrl_setPassword, "QUrl_setPassword");
 
 function  QUrl_password(handle: not null QUrlH) return  QStringH;
 pragma Import(C,QUrl_password, "QUrl_password");
 
 procedure QUrl_setHost(handle: not null QUrlH;host: QStringH);
 pragma Import(C,QUrl_setHost, "QUrl_setHost");
 
 function  QUrl_host(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_host, "QUrl_host");
 
 function  QUrl_encodedHost(handle: not null QUrlH) return QByteArrayH;
 pragma Import(C,QUrl_encodedHost, "QUrl_encodedHost");
 
 procedure QUrl_setPort(handle: not null QUrlH; port:integer);
 pragma Import(C,QUrl_setPort, "QUrl_setPort");
 
 function  QUrl_port(handle: not null QUrlH) return integer;
 pragma Import(C,QUrl_port, "QUrl_port");
 
 procedure QUrl_setPath(handle: not null QUrlH;path: QStringH);
 pragma Import(C,QUrl_setPath, "QUrl_setPath");
 
 function  QUrl_path(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_path, "QUrl_path");
 
 function  QUrl_hasQuery(handle: not null QUrlH) return boolean;
 pragma Import(C,QUrl_hasQuery, "QUrl_hasQuery");
 
 procedure QUrl_setFragment(handle: not null QUrlH; fragment :QStringH);
 pragma Import(C,QUrl_setFragment, "QUrl_setFragment");
 
 function  QUrl_fragment(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_fragment, "QUrl_fragment");
 
 function  QUrl_hasFragment(handle: not null QUrlH) return boolean;
 pragma Import(C,QUrl_hasFragment, "QUrl_hasFragment");
 
 function  QUrl_resolved(handle: not null QUrlH; relative :QUrlH) return QUrlH;
 pragma Import(C,QUrl_resolved, "QUrl_resolved");
 
 function  QUrl_isRelative(handle: not null QUrlH) return boolean;
 pragma Import(C,QUrl_isRelative, "QUrl_isRelative");
 
 function  QUrl_isParentOf(handle: not null QUrlH; url:QUrlH) return boolean;
 pragma Import(C,QUrl_isParentOf, "QUrl_isParentOf");
 
 function  QUrl_fromLocalFile(localfile:QStringH) return QUrlH;
 pragma Import(C,QUrl_fromLocalFile, "QUrl_fromLocalFile");
 
 function  QUrl_toLocalFile(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_toLocalFile, "QUrl_toLocalFile");
 
 function  QUrl_toString(handle: not null QUrlH; options: ComponentFormattingOption := FullyEncoded) return QStringH;
 pragma Import(C,QUrl_toString, "QUrl_toString");
 
 function  QUrl_toEncoded(handle: not null QUrlH; options: ComponentFormattingOption := FullyEncoded) return QByteArrayH;
 pragma Import(C,QUrl_toEncoded, "QUrl_toEncoded");
 
 function  QUrl_fromEncoded(url:QByteArrayH) return QUrlH ;
 pragma Import(C,QUrl_fromEncoded, "QUrl_fromEncoded");
 
 function  QUrl_fromEncoded1( url:QByteArrayH; mode:ParsingMode) return QUrlH;
 pragma Import(C,QUrl_fromEncoded1, "QUrl_fromEncoded1");
 
 procedure QUrl_detach(handle: not null QUrlH);
 pragma Import(C,QUrl_detach, "QUrl_detach");
 
 function  QUrl_isDetached(handle: not null QUrlH) return boolean;
 pragma Import(C,QUrl_isDetached, "QUrl_isDetached");
 
 function  QUrl_fromPercentEncoding(p:QByteArrayH) return QStringH;
 pragma Import(C,QUrl_fromPercentEncoding, "QUrl_fromPercentEncoding");
 
 function  QUrl_toPercentEncoding(p:QStringH; exclude,include: QByteArrayH) return QByteArrayH;
 pragma Import(C,QUrl_toPercentEncoding, "QUrl_toPercentEncoding");
 
 function  QUrl_fromAce(p:QByteArrayH) return QStringH;
 pragma Import(C,QUrl_fromAce, "QUrl_fromAce");
 
 function  QUrl_toAce(p:QStringH) return QByteArrayH;
 pragma Import(C,QUrl_toAce, "QUrl_toAce");
 
 function  QUrl_idnWhitelist return QStringListH;
 pragma Import(C,QUrl_idnWhitelist, "QUrl_idnWhitelist");
 
 procedure QUrl_setIdnWhitelist(list:QStringListH);
 pragma Import(C,QUrl_setIdnWhitelist, "QUrl_setIdnWhitelist");
 
 function  QUrl_errorString(handle: not null QUrlH) return QStringH;
 pragma Import(C,QUrl_errorString, "QUrl_errorString");
 
 
 function  QUrl_port1(handle: not null QUrlH; defaultPort:integer) return integer;
 pragma Import(C,QUrl_port1, "QUrl_port1");
 
 function  QUrl_query(handle: not null  QUrlH) return QStringH;
 pragma Import(C,QUrl_query, "QUrl_query");
 
 procedure QUrl_setEncodedUrl1(handle: not null QUrlH; url:QByteArrayH; mode:integer);
 pragma Import(C,QUrl_setEncodedUrl1, "QUrl_setEncodedUrl1");
 
 procedure QUrl_setProtocol(handle: not null QUrlH; protocol:QStringH);
 pragma Import(C,QUrl_setProtocol, "QUrl_setProtocol");
 
 procedure QUrl_setQuery(handle: not null QUrlH; query:QStringH);
 pragma Import(C,QUrl_setQuery, "QUrl_setQuery");
 
 procedure QUrl_swap(handle,other:QUrlH);
 pragma Import(C,QUrl_swap, "QUrl_swap");
 
 function  QUrl_fromUserInput(userInput:QStringH) return QUrlH;
 pragma Import(C,QUrl_fromUserInput, "QUrl_fromUserInput");
 
 function  QUrl_fromUserInput2(userInput,workingDirectory:QStringH;option:UserInputResolutionOptions := DefaultResolution) return QUrlH;
 pragma Import(C,QUrl_fromUserInput2, "QUrl_fromUserInput2");
 
 function  QUrl_fileName(handle:not null QUrlH;options :ComponentFormattingOption :=  FullyDecoded) return QStringH;
 pragma Import(C,QUrl_fileName, "QUrl_fileName");
 
 function  QUrl_isLocalFile(handle:not null QUrlH) return boolean;
 pragma Import(C,QUrl_isLocalFile, "QUrl_isLocalFile");
 
 function  QUrl_matches(handle:not null QUrlH;url:QUrlH;options: quint) return boolean;
 pragma Import(C,QUrl_matches, "QUrl_matches");

-------------------------------------------------------------------------------------------------------------
 function  QUrl_create(url:QStringH) return QUrlH;                               
 function  QUrl_create(url:QStringH;mode:ParsingMode) return QUrlH;              
 function  QUrl_create(copy:QUrlH) return QUrlH;                                 
 procedure QUrl_setUrl(handle: not null QUrlH; url:QStringH;mode:ParsingMode);        
 function  QUrl_fromEncoded( url:QByteArrayH; mode:ParsingMode) return QUrlH;    
 function  QUrl_port(handle: not null QUrlH; defaultPort:integer) return integer;          
 function  QUrl_fromUserInput(userInput,workingDirectory:QStringH;option:UserInputResolutionOptions := DefaultResolution) return QUrlH;


end Qt.QUrl;
