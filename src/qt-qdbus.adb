-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

-- Thanks a lot for Stefan Frings  QtWebApp http://stefanfrings.de
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QDBus is

 function  QDBusAbstractInterface_call(handle:not null QInterfaceH;mode:CallMode;method:QStringH; arg1:QVariantH := QVariant_create;arg2:QVariantH := QVariant_create; arg3:QVariantH := QVariant_create; arg4:QVariantH := QVariant_create; arg5:QVariantH := QVariant_create; arg6:QVariantH := QVariant_create; arg7:QVariantH := QVariant_create; arg8:QVariantH := QVariant_create) return QMessageH is              
 begin
   return  QDBusAbstractInterface_call2(handle,mode,method,arg1,arg2, arg3,arg4,arg5,arg6,arg7,arg8);
 end;

 function  QDBusAbstractInterface_callWithCallback(handle:not null QInterfaceH;method:QStringH;args:QObjectListH;receiver:QInterfaceH;member:zstring) return boolean is
 begin
   return  QDBusAbstractInterface_callWithCallback2(handle,method,args,receiver,member);
 end;

 function  QDBusServer_create(parent:QObjectH := null) return QDBusServerH is
 begin
   return  QDBusServer_create3(parent);
 end;

 function  QDBusConnection_create(other:QConnectionH) return QConnectionH is
 begin
   return  QDBusConnection_create2(other);
 end;

 function  QDBusConnection_callWithCallback(handle:not null QConnectionH;message:QMessageH;receiver:QObjectH;slot:zstring;timeout:integer := -1) return boolean is
 begin
   return  QDBusConnection_callWithCallback2(handle,message,receiver,slot,timeout);
 end;

 function  QDBusConnection_connect(handle:not null QConnectionH ;service,path,inter_face,name,signature:QStringH;receiver:QObjectH;slot:zstring) return boolean is
 begin
   return  QDBusConnection_connect2(handle,service,path,inter_face,name,signature,receiver,slot);
 end;

 function  QDBusConnection_connect(handle:not null QConnectionH;service,path,inter_face,name:QStringH; argumentMatch:QStringListH;signature:QStringH;receiver:QObjectH;slot:zstring) return boolean is
 begin
   return  QDBusConnection_connect3(handle,service,path,inter_face,name,argumentMatch,signature,receiver,slot);
 end;

 function  QDBusConnection_disconnect(handle:not null QConnectionH;service,path,inter_face,name,signature:QStringH;receiver:QObjectH;slot:zstring) return boolean is
 begin
   return  QDBusConnection_disconnect2(handle,service,path,inter_face,name,signature,receiver,slot);
 end;

 function  QDBusConnection_disconnect(handle:not null QConnectionH;service,path,inter_face,name:QStringH;argumentMatch:QStringListH;signature:QStringH;receiver:QObjectH;slot:zstring) return boolean is
 begin
   return  QDBusConnection_disconnect3(handle,service,path,inter_face,name,argumentMatch,signature,receiver,slot);
 end;

 function  QDBusConnection_registerObject(handle:not null QConnectionH;path,inter_face:QStringH;object:QObjectH;options:RegisterOptions := ExportAdaptors) return boolean is
 begin
   return  QDBusConnection_registerObject2(handle,path,inter_face,object,options);
 end;

 function  QDBusConnection_connectToBus(address,name:QStringH) return QConnectionH is
 begin
   return  QDBusConnection_connectToBus2(address,name);
 end;

 function  QDBusArgument_create(other:QArgumentH) return QArgumentH is
 begin
   return  QDBusArgument_create2(other);
 end;

 function  QDBusError_create(error:ErrorType;message: QStringH) return QErrorH is
 begin
   return  QDBusError_create2(error,message);
 end;

 function  QDBusError_create(other:QErrorH) return QErrorH is
 begin
   return  QDBusError_create3(other);
 end;

 procedure QDBusContext_sendErrorReply(handle:not null QContextH;tp:ErrorType;msg: QStringH := QString_create) is
 begin
   QDBusContext_sendErrorReply2(handle,tp,msg);
 end;

 function  QDBusObjectPath_create(path: zstring) return QPathH is
 begin
   return  QDBusObjectPath_create2(path);
 end;

 function  QDBusObjectPath_create(path:QLatin1StringH) return QPathH is
 begin
   return  QDBusObjectPath_create3(path);
 end;

 function  QDBusObjectPath_create(path:QStringH) return QPathH is
 begin
   return  QDBusObjectPath_create4(path);
 end;

 function  QDBusSignature_create(signature:zstring) return QSignatureH is
 begin
   return  QDBusSignature_create2(signature);
 end;

 function  QDBusSignature_create(signature:QLatin1StringH) return QSignatureH is
 begin
   return  QDBusSignature_create3(signature);
 end;

 function  QDBusSignature_create(signature:QStringH) return QSignatureH is
 begin
   return  QDBusSignature_create4(signature);
 end;

 function  QDBusVariant_create(variant:QVariantH) return QVariantH is
 begin
   return  QDBusVariant_create2(variant);
 end;

 function  QDBusMessage_create(other:QMessageH) return QMessageH is
 begin
   return  QDBusMessage_create2(other);
 end;

 function  QDBusMessage_createError(err:QErrorH) return QMessageH is
 begin
   return  QDBusMessage_createError2(err);
 end;

 function  QDBusMessage_createError(tp:ErrorType;msg:QStringH) return QMessageH is
 begin
   return  QDBusMessage_createError3(tp,msg);
 end;

 function  QDBusMessage_createReply(handle:not null QMessageH;argument:QVariantH) return QMessageH is
 begin
   return  QDBusMessage_createReply2(handle,argument);
 end;

 function  QDBusMessage_createErrorReply(handle:not null QMessageH;err:QErrorH) return QMessageH is
 begin
   return  QDBusMessage_createErrorReply2(handle,err);
 end;

 function  QDBusMessage_createErrorReply(handle:not null QMessageH;tp:ErrorType;msg:QStringH) return QMessageH is
 begin
   return  QDBusMessage_createErrorReply3(handle,tp,msg);
 end;
 
 function  QDBusPendingReply_create(other:QReplyH) return QReplyH is
 begin
   return  QDBusPendingReply_create2(other);
 end;

 function  QDBusPendingReply_create(call:QCallH) return QReplyH is
 begin
   return  QDBusPendingReply_create3(call);
 end;

 function  QDBusPendingReply_create(message:QMessageH) return QReplyH is
 begin
   return  QDBusPendingReply_create4(message);
 end;

end;
