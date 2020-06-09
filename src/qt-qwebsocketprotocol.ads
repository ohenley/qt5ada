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

package Qt.QWebSocketProtocol is

subtype QWebSocketProtocolVersion is integer;

    VersionUnknown:constant QWebSocketProtocolVersion := -1;
    Version0      :constant QWebSocketProtocolVersion := 0;
    -- hybi-01, hybi-02 and hybi-03 not supported
    Version4      :constant QWebSocketProtocolVersion := 4;
    Version5      :constant QWebSocketProtocolVersion := 5;
    Version6      :constant QWebSocketProtocolVersion := 6;
    Version7      :constant QWebSocketProtocolVersion := 7;
    Version8      :constant QWebSocketProtocolVersion := 8;
    Version13     :constant QWebSocketProtocolVersion := 13;
    VersionLatest :constant QWebSocketProtocolVersion := Version13;


subtype QWebSocketProtocolCloseCode is integer;
 
    CloseCodeNormal                 :constant QWebSocketProtocolCloseCode := 1000;
    CloseCodeGoingAway              :constant QWebSocketProtocolCloseCode := 1001;
    CloseCodeProtocolError          :constant QWebSocketProtocolCloseCode := 1002;
    CloseCodeDatatypeNotSupported   :constant QWebSocketProtocolCloseCode := 1003;
    CloseCodeReserved1004           :constant QWebSocketProtocolCloseCode := 1004;
    CloseCodeMissingStatusCode      :constant QWebSocketProtocolCloseCode := 1005;
    CloseCodeAbnormalDisconnection  :constant QWebSocketProtocolCloseCode := 1006;
    CloseCodeWrongDatatype          :constant QWebSocketProtocolCloseCode := 1007;
    CloseCodePolicyViolated         :constant QWebSocketProtocolCloseCode := 1008;
    CloseCodeTooMuchData            :constant QWebSocketProtocolCloseCode := 1009;
    CloseCodeMissingExtension       :constant QWebSocketProtocolCloseCode := 1010;
    CloseCodeBadOperation           :constant QWebSocketProtocolCloseCode := 1011;
    CloseCodeTlsHandshakeFailed     :constant QWebSocketProtocolCloseCode := 1015;
 
end;
