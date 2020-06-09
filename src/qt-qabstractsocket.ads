--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012 ,2014                     บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QAbstractSocket is

type QtSocketType is  (UnknownSocketType, TcpSocket, UdpSocket);
pragma Convention(C, QtSocketType);
for  QtSocketType use (UnknownSocketType => -1, TcpSocket => 0, UdpSocket => 1);

type QtNetworkLayerProtocol is  (UnknownNetworkLayerProtocol, IPv4Protocol, IPv6Protocol,AnyIPProtocol);
pragma Convention(C, QtNetworkLayerProtocol);
for  QtNetworkLayerProtocol use (UnknownNetworkLayerProtocol => -1, IPv4Protocol => 0, IPv6Protocol => 1,AnyIPProtocol => 2);

type QtPauseModes is (PauseNever,PauseOnSslErrors);
pragma Convention(C, QtPauseModes);

type QtSocketError is (
        UnknownSocketError,
        ConnectionRefusedError,
        RemoteHostClosedError,
        HostNotFoundError,
        SocketAccessError,
        SocketResourceError,
        SocketTimeoutError,          
        DatagramTooLargeError,
        NetworkError,
        AddressInUseError,
        SocketAddressNotAvailableError,
        UnsupportedSocketOperationError,  
        UnfinishedSocketOperationError,
        ProxyAuthenticationRequiredError,
        SslHandshakeFailedError,
        ProxyConnectionRefusedError,
        ProxyConnectionClosedError,       
        ProxyConnectionTimeoutError,
        ProxyNotFoundError,
        ProxyProtocolError);
pragma Convention (C,QtSocketError);

for  QtSocketError use (
        UnknownSocketError               => -1,
        ConnectionRefusedError           =>  0,
        RemoteHostClosedError            =>  1,
        HostNotFoundError                =>  2,
        SocketAccessError                =>  3,
        SocketResourceError              =>  4,
        SocketTimeoutError               =>  5,
        DatagramTooLargeError            =>  6,
        NetworkError                     =>  7,
        AddressInUseError                =>  8,
        SocketAddressNotAvailableError   =>  9,
        UnsupportedSocketOperationError  => 10,
        UnfinishedSocketOperationError   => 11,
        ProxyAuthenticationRequiredError => 12,
        SslHandshakeFailedError          => 13,
        ProxyConnectionRefusedError      => 14,
        ProxyConnectionClosedError       => 15,
        ProxyConnectionTimeoutError      => 16,
        ProxyNotFoundError               => 17,
        ProxyProtocolError               => 18);

        QTUnknownSocketError               : constant := -1;
        QTConnectionRefusedError           : constant :=  0;
        QTRemoteHostClosedError            : constant :=  1;
        QTHostNotFoundError                : constant :=  2;
        QTSocketAccessError                : constant :=  3;
        QTSocketResourceError              : constant :=  4;
        QTSocketTimeoutError               : constant :=  5;
        QTDatagramTooLargeError            : constant :=  6;
        QTNetworkError                     : constant :=  7;
        QTAddressInUseError                : constant :=  8;
        QTSocketAddressNotAvailableError   : constant :=  9;
        QTUnsupportedSocketOperationError  : constant := 10;
        QTUnfinishedSocketOperationError   : constant := 11;
        QTProxyAuthenticationRequiredError : constant := 12;
        QTSslHandshakeFailedError          : constant := 13;
        QTProxyConnectionRefusedError      : constant := 14;
        QTProxyConnectionClosedError       : constant := 15;
        QTProxyConnectionTimeoutError      : constant := 16;
        QTProxyNotFoundError               : constant := 17;
        QTProxyProtocolError               : constant := 18;

type QtSocketState  is ( UnconnectedState, HostLookupState, ConnectingState, ConnectedState, BoundState, ListeningState, ClosingState);
pragma Convention (C,QtSocketState);

type QtSocketOption  is (
    LowDelayOption, -- TCP_NODELAY
    KeepAliveOption, -- SO_KEEPALIVE
    MulticastTtlOption, -- IP_MULTICAST_TTL
    MulticastLoopbackOption, -- IP_MULTICAST_LOOPBACK
    TypeOfServiceOption, -- IP_TOS
    SendBufferSizeSocketOption,    -- SO_SNDBUF
    ReceiveBufferSizeSocketOption  -- SO_RCVBU
    );
pragma Convention(C,QtSocketOption);

type BindFlag is (DefaultForPlatform,ShareAddress,DontShareAddress,ReuseAddressHint);
pragma Convention(C,BindFlag);
    
for BindFlag use (
        DefaultForPlatform => 0,
        ShareAddress => 1,
        DontShareAddress => 2,
        ReuseAddressHint => 4);
  
     
 type PauseMode is (PauseNever,PauseOnSslErrors);
 pragma convention(C,PauseMode); 

 function QAbstractSocket_create(ST : QtSocketType; parent:QObjectH) return QSocketH;
 pragma Import(C,QAbstractSocket_create,"QAbstractSocket_create");

 procedure QAbstractSocket_destroy(handle: not null  QSocketH);
 pragma Import(C,QAbstractSocket_destroy,"QAbstractSocket_destroy");

 procedure QAbstractSocket_connectToHost(handle: not null  QSocketH; hostName: QStringH; port: q_uint16;mode: quint);
 pragma Import(C,QAbstractSocket_connectToHost,"QAbstractSocket_connectToHost");
                                                                                                                       
 procedure QAbstractSocket_connectToHost2(handle: not null  QSocketH; address: QHostAddressH; port: q_uint16; mode: quint);
 pragma Import(C,QAbstractSocket_connectToHost2,"QAbstractSocket_connectToHost2");
                                                                                                                       
 procedure QAbstractSocket_connectToHost3(handle: not null  QSocketH; hostName: QStringH; port: q_uint16);
 pragma Import(C,QAbstractSocket_connectToHost3,"QAbstractSocket_connectToHost3");
                                                                                                                       
 procedure QAbstractSocket_connectToHost4(handle: not null  QSocketH; address: QHostAddressH; port: q_uint16);
 pragma Import(C,QAbstractSocket_connectToHost4,"QAbstractSocket_connectToHost4");
                                                                                                                       
 procedure QAbstractSocket_disconnectFromHost(handle: not null  QSocketH);                                                       
 pragma Import(C,QAbstractSocket_disconnectFromHost,"QAbstractSocket_disconnectFromHost");
                                                                                                                       
 function QAbstractSocket_isValid(handle: not null  QSocketH) return boolean;                                                    
 pragma Import(C,QAbstractSocket_isValid,"QAbstractSocket_isValid");
                                                                                                                       
 function QAbstractSocket_bytesAvailable(handle: not null  QSocketH)return qint64;                                               
 pragma Import(C,QAbstractSocket_bytesAvailable,"QAbstractSocket_bytesAvailable");
                                                                                                                       
 function QAbstractSocket_bytesToWrite(handle: not null  QSocketH) return qint64;                                                
 pragma Import(C,QAbstractSocket_bytesToWrite,"QAbstractSocket_bytesToWrite");
                                                                                                                       
 function QAbstractSocket_canReadLine(handle: not null  QSocketH) return boolean;                                                
 pragma Import(C,QAbstractSocket_canReadLine,"QAbstractSocket_canReadLine");
                                                                                                                       
 function QAbstractSocket_localPort(handle: not null  QSocketH) return q_uint16;                                                  
 pragma Import(C,QAbstractSocket_localPort,"QAbstractSocket_localPort");
                                                                                                                       
 function QAbstractSocket_localAddress(handle: not null  QSocketH) return QHostAddressH;                                         
 pragma Import(C,QAbstractSocket_localAddress,"QAbstractSocket_localAddress");
                                                                                                                       
 function QAbstractSocket_peerPort(handle: not null  QSocketH) return q_uint16;                                                   
 pragma Import(C,QAbstractSocket_peerPort,"QAbstractSocket_peerPort");
                                                                                                                       
 function QAbstractSocket_peerAddress(handle: not null  QSocketH) return QHostAddressH;                                          
 pragma Import(C,QAbstractSocket_peerAddress,"QAbstractSocket_peerAddress");
                                                                                                                       
 function QAbstractSocket_peerName(handle: not null  QSocketH) return QStringH;                                                  
 pragma Import(C,QAbstractSocket_peerName,"QAbstractSocket_peerName");
                                                                                                                       
 function QAbstractSocket_readBufferSize(handle: not null  QSocketH) return qint64;                                              
 pragma Import(C,QAbstractSocket_readBufferSize,"QAbstractSocket_readBufferSize");
                                                                                                                       
 procedure QAbstractSocket_setReadBufferSize(handle: not null  QSocketH; size: qint64);                                          
 pragma Import(C,QAbstractSocket_setReadBufferSize,"QAbstractSocket_setReadBufferSize");
                                                                                                                       
 procedure QAbstractSocket_abort(handle: not null  QSocketH);                                                                    
 pragma Import(C,QAbstractSocket_abort,"QAbstractSocket_abort");
                                                                                                                       
 function QAbstractSocket_socketDescriptor(handle: not null  QSocketH) return integer;                                           
 pragma Import(C,QAbstractSocket_socketDescriptor,"QAbstractSocket_socketDescriptor");
                                                                                                                       
 function QAbstractSocket_socketType(handle: not null  QSocketH) return QtSocketType;                                            
 pragma Import(C,QAbstractSocket_socketType,"QAbstractSocket_socketType");
                                                                                                                       
 function QAbstractSocket_error(handle: not null  QSocketH) return QtSocketError;                                                
 pragma Import(C,QAbstractSocket_error,"QAbstractSocket_error");
                                                                                                                       
 function  QAbstractSocket_open(handle: not null QSocketH;mode:integer := 3) return boolean;
 pragma Import(C,QAbstractSocket_open, "QAbstractSocket_open");

 procedure QAbstractSocket_close(handle: not null  QSocketH);                                                                    
 pragma Import(C,QAbstractSocket_close,"QAbstractSocket_close");
                                                                                                                       
 function QAbstractSocket_isSequential(handle: not null  QSocketH) return boolean;                                               
 pragma Import(C,QAbstractSocket_isSequential,"QAbstractSocket_isSequential");
                                                                                                                       
 function QAbstractSocket_atEnd(handle: not null  QSocketH) return boolean;                                                      
 pragma Import(C,QAbstractSocket_atEnd,"QAbstractSocket_atEnd");
                                                                                                                       
 function QAbstractSocket_flush(handle: not null  QSocketH) return boolean;                                                      
 pragma Import(C,QAbstractSocket_flush,"QAbstractSocket_flush");
                                                                                                                       
 function QAbstractSocket_waitForConnected(handle: not null  QSocketH; msecs: integer) return boolean;                           
 pragma Import(C,QAbstractSocket_waitForConnected,"QAbstractSocket_waitForConnected");
                                                                                                                       
 function QAbstractSocket_waitForReadyRead(handle: not null  QSocketH; msecs: integer) return boolean;                           
 pragma Import(C,QAbstractSocket_waitForReadyRead,"QAbstractSocket_waitForReadyRead");
                                                                                                                       
 function QAbstractSocket_waitForBytesWritten(handle: not null  QSocketH; msecs: integer) return boolean;                        
 pragma Import(C,QAbstractSocket_waitForBytesWritten,"QAbstractSocket_waitForBytesWritten");
                                                                                                                       
 function QAbstractSocket_waitForDisconnected(handle: not null  QSocketH; msecs: integer) return boolean;                        
 pragma Import(C,QAbstractSocket_waitForDisconnected,"QAbstractSocket_waitForDisconnected");
                                                                                                                       
 procedure QAbstractSocket_setProxy(handle: not null  QSocketH; networkProxy: QNetworkProxyH);                                   
 pragma Import(C,QAbstractSocket_setProxy,"QAbstractSocket_setProxy");
                                                                                                                       
 function QAbstractSocket_proxy(handle: not null  QSocketH) return QNetworkProxyH;                                               
 pragma Import(C,QAbstractSocket_proxy,"QAbstractSocket_proxy");
                                                                                                                       
 function  QAbstractSocket_searchIpAddress return  QStringH;
 pragma  Import(C,QAbstractSocket_searchIpAddress, "QAbstractSocket_searchIpAddress");

 function  QAbstractSocket_ipListSize return integer;
 pragma  Import(C,QAbstractSocket_ipListSize , "QAbstractSocket_ipListSize");

 procedure QAbstractSocket_Send(handle: not null  QSocketH; str: QStringH);
 pragma  Import(C,QAbstractSocket_Send , "QAbstractSocket_Send");

 function  QAbstractSocket_Receive(handle: not null  QSocketH; nextBlockSize: PInteger) return QStringH;
 pragma  Import(C,QAbstractSocket_Receive , "QAbstractSocket_Receive");

 procedure QAbstractSocket_sendToSocket(handle: not null  QSocketH; str: QStringH);
 pragma  Import(C,QAbstractSocket_sendToSocket , "QAbstractSocket_sendToSocket");

 function  QAbstractSocket_receiveFromSocket(handle: not null  QSocketH; nextBlockSize: PInteger) return QStringH;
 pragma  Import(C,QAbstractSocket_receiveFromSocket , "QAbstractSocket_receiveFromSocket");

function QAbstractSocket_openMode(handle: not null  QSocketH) return  quint;
pragma Import(C,QAbstractSocket_openMode,"QAbstractSocket_openMode");

procedure QAbstractSocket_setTextModeEnabled(handle: not null  QSocketH; enabled: Boolean);   
pragma Import(C,QAbstractSocket_setTextModeEnabled,"QAbstractSocket_setTextModeEnabled");

function QAbstractSocket_isTextModeEnabled(handle: not null  QSocketH) return  Boolean;   
pragma Import(C,QAbstractSocket_isTextModeEnabled,"QAbstractSocket_isTextModeEnabled");

function QAbstractSocket_isOpen(handle: not null  QSocketH) return  Boolean;   
pragma Import(C,QAbstractSocket_isOpen,"QAbstractSocket_isOpen");

function QAbstractSocket_isReadable(handle: not null  QSocketH) return  Boolean;   
pragma Import(C,QAbstractSocket_isReadable,"QAbstractSocket_isReadable");

function QAbstractSocket_isWritable(handle: not null  QSocketH) return  Boolean;   
pragma Import(C,QAbstractSocket_isWritable,"QAbstractSocket_isWritable");

function QAbstractSocket_pos(handle: not null  QSocketH) return  int64;   
pragma Import(C,QAbstractSocket_pos,"QAbstractSocket_pos");

function QAbstractSocket_seek(handle: not null  QSocketH; pos: int64) return  Boolean;   
pragma Import(C,QAbstractSocket_seek,"QAbstractSocket_seek");

function QAbstractSocket_reset(handle: not null  QSocketH) return  Boolean;   
pragma Import(C,QAbstractSocket_reset,"QAbstractSocket_reset");

function QAbstractSocket_read(handle: not null  QSocketH; data: zstring; maxlen: int64) return  int64;    
pragma Import(C,QAbstractSocket_read,"QAbstractSocket_read");

function  QAbstractSocket_read2(handle: not null  QSocketH; maxlen: int64) return QByteArrayH;
pragma Import(C,QAbstractSocket_read2,"QAbstractSocket_read2");

function  QAbstractSocket_read3(handle: not null  QSocketH; maxlen: int64) return QStringH;
pragma Import(C,QAbstractSocket_read3,"QAbstractSocket_read3");

function  QAbstractSocket_readAll(handle: not null  QSocketH) return QByteArrayH;
pragma Import(C,QAbstractSocket_readAll,"QAbstractSocket_readAll");

function  QAbstractSocket_readAll2(handle: not null  QSocketH) return QStringH;
pragma Import(C,QAbstractSocket_readAll2,"QAbstractSocket_readAll2");

function  QAbstractSocket_readLine2(handle: not null  QSocketH; maxlen: int64 := 0) return QByteArrayH;
pragma Import(C,QAbstractSocket_readLine2,"QAbstractSocket_readLine2");

function  QAbstractSocket_readLine3(handle: not null  QSocketH; maxlen: int64 := 0) return QStringH;
pragma Import(C,QAbstractSocket_readLine3,"QAbstractSocket_readLine3");

function QAbstractSocket_write(handle: not null  QSocketH; data: zstring; len: int64) return  int64;    
pragma Import(C,QAbstractSocket_write,"QAbstractSocket_write");

function QAbstractSocket_write2(handle: not null  QSocketH; data: QByteArrayH) return  int64;
pragma Import(C,QAbstractSocket_write2,"QAbstractSocket_write2");

function QAbstractSocket_write3(handle: not null  QSocketH; data: QStringH) return  int64;
pragma Import(C,QAbstractSocket_write3,"QAbstractSocket_write3");

function QAbstractSocket_peek(handle: not null  QSocketH; data: zstring; maxlen: int64) return  int64;    
pragma Import(C,QAbstractSocket_peek,"QAbstractSocket_peek");

function  QAbstractSocket_peek2(handle: not null  QSocketH; maxlen: int64) return QByteArrayH;
pragma Import(C,QAbstractSocket_peek2,"QAbstractSocket_peek2");

procedure QAbstractSocket_ungetChar(handle: not null  QSocketH; c: char);   
pragma Import(C,QAbstractSocket_ungetChar,"QAbstractSocket_ungetChar");

function QAbstractSocket_putChar(handle: not null  QSocketH; c: char) return  Boolean;   
pragma Import(C,QAbstractSocket_putChar,"QAbstractSocket_putChar");

function QAbstractSocket_getChar(handle: not null  QSocketH; c: zstring) return  Boolean;   
pragma Import(C,QAbstractSocket_getChar,"QAbstractSocket_getChar");

function  QAbstractSocket_errorString(handle: not null  QSocketH) return QStringH;
pragma Import(C,QAbstractSocket_errorString,"QAbstractSocket_errorString");

 type QAbstractSocket_hostFoundEvent is access procedure;
 pragma Convention(C,QAbstractSocket_hostFoundEvent);

 type QAbstractSocket_connectedEvent is access procedure;
 pragma Convention(C, QAbstractSocket_connectedEvent);

 type QAbstractSocket_disconnectedEvent is access procedure;
 pragma Convention(C, QAbstractSocket_disconnectedEvent);

 type QAbstractSocket_stateChangedEvent is access procedure(state:QtSocketState);
 pragma Convention(C, QAbstractSocket_stateChangedEvent);

 type QAbstractSocket_errorEvent is access procedure(error:QtSocketError);
 pragma Convention(C, QAbstractSocket_errorEvent);

 type QAbstractSocket_proxyAuthenticationRequiredEvent is access procedure(proxy:QNetworkProxyH;authntication: QAuthenticatorH);
 pragma Convention(C, QAbstractSocket_proxyAuthenticationRequiredEvent);
 
 procedure QAbstractSocket_signal_slot_hostFound(handle: not null QSocketH; hook:QAbstractSocket_hostFoundEvent );
 pragma Import(C,QAbstractSocket_signal_slot_hostFound, "QAbstractSocket_signal_slot_hostFound");
 
 procedure QAbstractSocket_signal_slot_connected(handle: not null QSocketH; hook:QAbstractSocket_connectedEvent );
 pragma Import(C,QAbstractSocket_signal_slot_connected, "QAbstractSocket_signal_slot_connected");
 
 procedure QAbstractSocket_signal_slot_disconnected(handle: not null QSocketH; hook:QAbstractSocket_disconnectedEvent );
 pragma Import(C,QAbstractSocket_signal_slot_disconnected, "QAbstractSocket_signal_slot_disconnected");
 
 procedure QAbstractSocket_signal_slot_stateChanged(handle: not null QSocketH; hook:QAbstractSocket_stateChangedEvent );
 pragma Import(C,QAbstractSocket_signal_slot_stateChanged, "QAbstractSocket_signal_slot_stateChanged");
 
 procedure QAbstractSocket_signal_slot_error(handle: not null QSocketH; hook:QAbstractSocket_errorEvent );
 pragma Import(C,QAbstractSocket_signal_slot_error, "QAbstractSocket_signal_slot_error");
 
 procedure QAbstractSocket_signal_slot_proxyAuthenticationRequired(handle: not null QSocketH; hook:QAbstractSocket_proxyAuthenticationRequiredEvent );
 pragma Import(C,QAbstractSocket_signal_slot_proxyAuthenticationRequired, "QAbstractSocket_signal_slot_proxyAuthenticationRequired");

 function  QTcpSocket_create(parent:QObjectH) return QSocketH;
 pragma Import(C,QTcpSocket_create, "QTcpSocket_create");
 
 procedure QTcpSocket_destroy(handle:not null QSocketH);
 pragma Import(C,QTcpSocket_destroy, "QTcpSocket_destroy");

---------------------------------------------------------------------------------------------------------
 procedure QAbstractSocket_connectToHost(handle: not null  QSocketH; address: QHostAddressH; port: q_uint16; mode: quint);
 procedure QAbstractSocket_connectToHost(handle: not null  QSocketH; hostName: QStringH; port: q_uint16);
 procedure QAbstractSocket_connectToHost(handle: not null  QSocketH; address: QHostAddressH; port: q_uint16);

end Qt.QAbstractSocket;
