-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QVariant;          use Qt.QVariant;
with Qt.QBluetoothAddress; use Qt.QBluetoothAddress;
package Qt.QBluetoothTransfer is

 function  QBluetoothTransferManager_create(parent:QObjectH := null) return QBluetoothTransferManagerH;
 pragma Import(C,QBluetoothTransferManager_create, "QBluetoothTransferManager_create");
 
 procedure QBluetoothTransferManager_delete(handle:not null QBluetoothTransferManagerH);
 pragma Import(C,QBluetoothTransferManager_delete, "QBluetoothTransferManager_delete");
 
 function  QBluetoothTransferManager_put(handle:not null QBluetoothTransferManagerH;request:QBluetoothTransferRequestH;data: QIODeviceH) return QBluetoothTransferReplyH;
 pragma Import(C,QBluetoothTransferManager_put, "QBluetoothTransferManager_put");

 type replyCallbackH is access procedure(reply: QBluetoothTransferReplyH);
 pragma convention(C,replyCallbackH);
 
 procedure QBluetoothTransferManager_signal_slot_finished(handle:not null QBluetoothTransferManagerH; hook: replyCallbackH);
 pragma Import(C,QBluetoothTransferManager_signal_slot_finished, "QBluetoothTransferManager_signal_slot_finished");
 
--------------------------  transfer reply --------------------------

 type TransferError is (NoError,UnknownError,FileNotFoundError,HostNotFoundError,
        UserCanceledTransferError,IODeviceNotReadableError,ResourceBusyError,SessionError); 
 pragma convention(C,TransferError);       

 procedure QBluetoothTransferReply_delete(handle:not null QBluetoothTransferReplyH);
 pragma Import(C,QBluetoothTransferReply_delete, "QBluetoothTransferReply_delete");
 
 function  QBluetoothTransferReply_isFinished(handle:not null QBluetoothTransferReplyH) return boolean;
 pragma Import(C,QBluetoothTransferReply_isFinished, "QBluetoothTransferReply_isFinished");
 
 function  QBluetoothTransferReply_isRunning(handle:not null QBluetoothTransferReplyH) return boolean;
 pragma Import(C,QBluetoothTransferReply_isRunning, "QBluetoothTransferReply_isRunning");
 
 procedure QBluetoothTransferReply_abort(handle:not null QBluetoothTransferReplyH);
 pragma Import(C,QBluetoothTransferReply_abort, "QBluetoothTransferReply_abort");
 
 function  QBluetoothTransferReply_manager(handle:not null QBluetoothTransferReplyH) return QBluetoothTransferManagerH;
 pragma Import(C,QBluetoothTransferReply_manager, "QBluetoothTransferReply_manager");

 function  QBluetoothTransferReply_error(handle:not null QBluetoothTransferReplyH) return TransferError;
 pragma Import(C,QBluetoothTransferReply_error, "QBluetoothTransferReply_error");
 
 function  QBluetoothTransferReply_errorString(handle:not null QBluetoothTransferReplyH) return QStringH;
 pragma Import(C,QBluetoothTransferReply_errorString, "QBluetoothTransferReply_errorString");
 
 function  QBluetoothTransferReply_request(handle:not null QBluetoothTransferReplyH) return QBluetoothTransferRequestH;
 pragma Import(C,QBluetoothTransferReply_request, "QBluetoothTransferReply_request");
 
 type transferProgressH is access procedure(read,total:qint64);
 pragma convention(C,transferProgressH);

 procedure QBluetoothTransferReply_signal_slot_finished(handle:not null QBluetoothTransferReplyH; hook: replyCallbackH);
 pragma Import(C,QBluetoothTransferReply_signal_slot_finished, "QBluetoothTransferReply_signal_slot_finished");
 
 procedure QBluetoothTransferReply_signal_slot_transferProgress(handle:not null QBluetoothTransferReplyH; hook: transferProgressH);
 pragma Import(C,QBluetoothTransferReply_signal_slot_transferProgress, "QBluetoothTransferReply_signal_slot_transferProgress");
 
 procedure QBluetoothTransferReply_signal_slot_error(handle:not null QBluetoothTransferReplyH; hook : intCallbackH);
 pragma Import(C,QBluetoothTransferReply_signal_slot_error, "QBluetoothTransferReply_signal_slot_error");
 
 type Attribute is (DescriptionAttribute,TimeAttribute,TypeAttribute,LengthAttribute,NameAttribute); 
 pragma convention(C,Attribute);
 
 function  QBluetoothTransferRequest_create(address:QBluetoothAddressH := QBluetoothAddress_create) return QBluetoothTransferRequestH;
 pragma Import(C,QBluetoothTransferRequest_create, "QBluetoothTransferRequest_create");
 
 function  QBluetoothTransferRequest_create2(other:QBluetoothTransferRequestH) return QBluetoothTransferRequestH;
 pragma Import(C,QBluetoothTransferRequest_create2, "QBluetoothTransferRequest_create2");
 
 procedure QBluetoothTransferRequest_delete(handle:not null QBluetoothTransferRequestH);
 pragma Import(C,QBluetoothTransferRequest_delete, "QBluetoothTransferRequest_delete");
 
 function  QBluetoothTransferRequest_address(handle:not null QBluetoothTransferRequestH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothTransferRequest_address, "QBluetoothTransferRequest_address");
 
 function  QBluetoothTransferRequest_attribute(handle:not null QBluetoothTransferRequestH;code:Attribute;defaultValue: QVariantH  := QVariant_create) return QVariantH;
 pragma Import(C,QBluetoothTransferRequest_attribute, "QBluetoothTransferRequest_attribute");
 
 procedure QBluetoothTransferRequest_setAttribute(handle:not null QBluetoothTransferRequestH;code:Attribute;value:QVariantH);
 pragma Import(C,QBluetoothTransferRequest_setAttribute, "QBluetoothTransferRequest_setAttribute");
 
 function  QBluetoothTransferRequest_create(other:QBluetoothTransferRequestH) return QBluetoothTransferRequestH;

end;
