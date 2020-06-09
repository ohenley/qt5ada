--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QNetworkAccessManager; use Qt.QNetworkAccessManager;
with Qt.QNetworkRequest; use Qt.QNetworkRequest;
package Qt.QNetworkReply      is

type  QNetworkReplyNetworkError is (
        NoError,
        ConnectionRefusedError,
        RemoteHostClosedError,
        HostNotFoundError,
        TimeoutError,
        OperationCanceledError,
        SslHandshakeFailedError,
        UnknownNetworkError,
        ProxyConnectionRefusedError,
        ProxyConnectionClosedError,
        ProxyNotFoundError,
        ProxyTimeoutError,
        ProxyAuthenticationRequiredError,
        UnknownProxyError,
        ContentAccessDenied,
        ContentOperationNotPermittedError,
        ContentNotFoundError,
        AuthenticationRequiredError,
        UnknownContentError,
        ProtocolUnknownError,
        ProtocolInvalidOperationError,
        ProtocolFailure
    );
pragma Convention(C,QNetworkReplyNetworkError);

for   QNetworkReplyNetworkError use  (
        NoError                          => 0,
        -- network layer errors [relating to the destination server] (1-99):
        ConnectionRefusedError           => 1,
        RemoteHostClosedError            => 2,
        HostNotFoundError                => 3,
        TimeoutError                     => 4,
        OperationCanceledError           => 5,
        SslHandshakeFailedError          => 6,
        UnknownNetworkError              => 99,

        -- proxy errors (101-199):
        ProxyConnectionRefusedError      => 101,
        ProxyConnectionClosedError       => 102,
        ProxyNotFoundError               => 103,
        ProxyTimeoutError                => 104,
        ProxyAuthenticationRequiredError => 105,
        UnknownProxyError                => 199,

        -- content errors (201-299):
        ContentAccessDenied              => 201,
        ContentOperationNotPermittedError=> 202 ,
        ContentNotFoundError             => 203,
        AuthenticationRequiredError      => 204,
        UnknownContentError              => 299,

        -- protocol errors
        ProtocolUnknownError             => 301,
        ProtocolInvalidOperationError    => 302,
        ProtocolFailure                  => 399
    );

 procedure QNetworkReply_abort(handle: not null  QNetworkReplyH);
 pragma Import(C,QNetworkReply_abort , "QNetworkReply_abort");

 procedure QNetworkReply_close(handle: not null  QNetworkReplyH);
 pragma Import(C, QNetworkReply_close , "QNetworkReply_close");

 function  QNetworkReply_isSequential(handle: not null  QNetworkReplyH) return boolean;
 pragma Import(C,QNetworkReply_isSequential , "QNetworkReply_isSequential");

 function  QNetworkReply_readBufferSize(handle: not null  QNetworkReplyH) return qint64;
 pragma Import(C,QNetworkReply_readBufferSize , "QNetworkReply_readBufferSize");

 procedure QNetworkReply_setReadBufferSize(handle: not null  QNetworkReplyH; size:qint64);
 pragma Import(C,QNetworkReply_setReadBufferSize , "QNetworkReply_setReadBufferSize");

 function  QNetworkReply_manager(handle: not null  QNetworkReplyH) return QNetworkAccessManagerH;
 pragma Import(C,QNetworkReply_manager , "QNetworkReply_manager");

 function  QNetworkReply_operation(handle: not null  QNetworkReplyH) return QNetworkAccessManagerOperation;
 pragma Import(C,QNetworkReply_operation , "QNetworkReply_operation");

 function  QNetworkReply_request(handle: not null  QNetworkReplyH) return QNetworkRequestH;
 pragma Import(C,QNetworkReply_request , "QNetworkReply_request");

 function  QNetworkReply_error(handle: not null  QNetworkReplyH) return QNetworkReplyNetworkError;
 pragma Import(C,QNetworkReply_error , "QNetworkReply_error");

 function  QNetworkReply_url(handle: not null  QNetworkReplyH) return QUrlH;
 pragma Import(C,QNetworkReply_url , "QNetworkReply_url");

 function  QNetworkReply_header(handle: not null  QNetworkReplyH; header: QNetworkRequestKnownHeaders) return QVariantH;
 pragma Import(C,QNetworkReply_header , "QNetworkReply_header");

 function  QNetworkReply_hasRawHeader(handle: not null  QNetworkReplyH; headerName: QByteArrayH) return boolean;
 pragma Import(C,QNetworkReply_hasRawHeader , "QNetworkReply_hasRawHeader");

 function  QNetworkReply_rawHeader(handle: not null  QNetworkReplyH; headerName: QByteArrayH) return QByteArrayH;
 pragma Import(C,QNetworkReply_rawHeader , "QNetworkReply_rawHeader");

 function  QNetworkReply_attribute(handle: not null  QNetworkReplyH; code: QNetworkRequestAttribute) return QVariantH;
 pragma Import(C,QNetworkReply_attribute , "QNetworkReply_attribute");

-- function   QNetworkReply_sslConfiguration(handle: not null  QNetworkReplyH) return QSslConfigurationH;
-- procedure QNetworkReply_setSslConfiguration(handle: not null  QNetworkReplyH; QSslConfigurationH configuration);

 procedure QNetworkReply_ignoreSslErrors(handle: not null  QNetworkReplyH);
 pragma Import(C,QNetworkReply_ignoreSslErrors , "QNetworkReply_ignoreSslErrors");

 type QNetworkReply_metaDataChangedEvent is access procedure;
 pragma Convention(C,QNetworkReply_metaDataChangedEvent);

 type QNetworkReply_finishedEvent is access procedure;
 pragma Convention(C,QNetworkReply_finishedEvent);

 type QNetworkReply_errorEvent is access procedure(error:integer);
 pragma Convention(C,QNetworkReply_errorEvent);

 type QNetworkReply_uploadProgressEvent is access procedure(p1,p2:qint64);
 pragma Convention(C,QNetworkReply_uploadProgressEvent);

 type QNetworkReply_downloadProgressEvent is access procedure(p1,p2:qint64);
 pragma Convention(C,QNetworkReply_downloadProgressEvent);


 procedure QNetworkReply_signal_slot_metaDataChanged(handle: not null QNetworkReplyH; hook:QNetworkReply_metaDataChangedEvent);
 pragma Import(C,QNetworkReply_signal_slot_metaDataChanged, "QNetworkReply_signal_slot_metaDataChanged");
 
 procedure QNetworkReply_signal_slot_finished(handle: not null QNetworkReplyH; hook:QNetworkReply_finishedEvent);
 pragma Import(C,QNetworkReply_signal_slot_finished, "QNetworkReply_signal_slot_finished");
 
 procedure QNetworkReply_signal_slot_error(handle: not null QNetworkReplyH; hook:QNetworkReply_errorEvent);
 pragma Import(C,QNetworkReply_signal_slot_error, "QNetworkReply_signal_slot_error");
 
 procedure QNetworkReply_signal_slot_uploadProgress(handle: not null QNetworkReplyH; hook:QNetworkReply_uploadProgressEvent);
 pragma Import(C,QNetworkReply_signal_slot_uploadProgress, "QNetworkReply_signal_slot_uploadProgress");
 
 procedure QNetworkReply_signal_slot_downloadProgress(handle: not null QNetworkReplyH; hook:QNetworkReply_downloadProgressEvent);
 pragma Import(C,QNetworkReply_signal_slot_downloadProgress, "QNetworkReply_signal_slot_downloadProgress");

 procedure QNetworkReply_redirected(handle:not null QNetworkReplyH;url:QUrlH);
 pragma Import(C,QNetworkReply_redirected, "QNetworkReply_redirected");

end Qt.QNetworkReply;
