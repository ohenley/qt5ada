--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2016                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString; use Qt.QString;
package Qt.QScxmlStateMachine  is

 function  QScxmlStateMachine_fromFile(fileName:QStringH) return QStateMachineH;
 pragma Import(C,QScxmlStateMachine_fromFile, "QScxmlStateMachine_fromFile");
 
 function  QScxmlStateMachine_fromData(data:QIODeviceH;fileName : QStringH := QString_create) return QStateMachineH;
 pragma Import(C,QScxmlStateMachine_fromData, "QScxmlStateMachine_fromData");
 
 function  QScxmlStateMachine_parseErrors(handle:not null QStateMachineH)  return QVectorH;
 pragma Import(C,QScxmlStateMachine_parseErrors, "QScxmlStateMachine_parseErrors");
 
 function  QScxmlStateMachine_sessionId(handle:not null QStateMachineH)  return QStringH;
 pragma Import(C,QScxmlStateMachine_sessionId, "QScxmlStateMachine_sessionId");
 
 function  QScxmlStateMachine_isInvoked(handle:not null QStateMachineH) return boolean;
 pragma Import(C,QScxmlStateMachine_isInvoked, "QScxmlStateMachine_isInvoked");
 
 function  QScxmlStateMachine_isInitialized(handle:not null QStateMachineH) return boolean;
 pragma Import(C,QScxmlStateMachine_isInitialized, "QScxmlStateMachine_isInitialized");
 
 procedure QScxmlStateMachine_setDataModel(handle:not null QStateMachineH;model:QXmlDataModelH);
 pragma Import(C,QScxmlStateMachine_setDataModel, "QScxmlStateMachine_setDataModel");
 
 function  QScxmlStateMachine_dataModel(handle:not null QStateMachineH)  return QXmlDataModelH;
 pragma Import(C,QScxmlStateMachine_dataModel, "QScxmlStateMachine_dataModel");
 
 procedure QScxmlStateMachine_setLoader(handle:not null QStateMachineH;loader:QLoaderH);
 pragma Import(C,QScxmlStateMachine_setLoader, "QScxmlStateMachine_setLoader");
 
 function  QScxmlStateMachine_loader(handle:not null QStateMachineH) return QLoaderH;
 pragma Import(C,QScxmlStateMachine_loader, "QScxmlStateMachine_loader");
 
 function  QScxmlStateMachine_isRunning(handle:not null QStateMachineH) return boolean;
 pragma Import(C,QScxmlStateMachine_isRunning, "QScxmlStateMachine_isRunning");
 
 procedure QScxmlStateMachine_setRunning(handle:not null QStateMachineH;running:boolean);
 pragma Import(C,QScxmlStateMachine_setRunning, "QScxmlStateMachine_setRunning");
 
 function  QScxmlStateMachine_initialValues(handle:not null QStateMachineH) return QVariantMapH;
 pragma Import(C,QScxmlStateMachine_initialValues, "QScxmlStateMachine_initialValues");
 
 procedure QScxmlStateMachine_setInitialValues(handle:not null QStateMachineH;initialValues:QVariantMapH);
 pragma Import(C,QScxmlStateMachine_setInitialValues, "QScxmlStateMachine_setInitialValues");
 
 function  QScxmlStateMachine_name(handle:not null QStateMachineH) return QStringH;
 pragma Import(C,QScxmlStateMachine_name, "QScxmlStateMachine_name");
 
 function  QScxmlStateMachine_stateNames(handle:not null QStateMachineH;compress :boolean :=  true) return QStringListH;
 pragma Import(C,QScxmlStateMachine_stateNames, "QScxmlStateMachine_stateNames");
 
 function  QScxmlStateMachine_activeStateNames(handle:not null QStateMachineH;compress :boolean :=  true) return QStringListH;
 pragma Import(C,QScxmlStateMachine_activeStateNames, "QScxmlStateMachine_activeStateNames");
 
 function  QScxmlStateMachine_isActive(handle:not null QStateMachineH;scxmlStateName:QStringH) return boolean;
 pragma Import(C,QScxmlStateMachine_isActive, "QScxmlStateMachine_isActive");
 
 procedure QScxmlStateMachine_submitEvent(handle:not null QStateMachineH;event:QEventH);
 pragma Import(C,QScxmlStateMachine_submitEvent, "QScxmlStateMachine_submitEvent");
 
 procedure QScxmlStateMachine_submitEvent2(handle:not null QStateMachineH;eventName:QStringH);
 pragma Import(C,QScxmlStateMachine_submitEvent2, "QScxmlStateMachine_submitEvent2");
 
 procedure QScxmlStateMachine_submitEvent3(handle:not null QStateMachineH;eventName:QStringH;data:  QVariantH);
 pragma Import(C,QScxmlStateMachine_submitEvent3, "QScxmlStateMachine_submitEvent3");
 
 procedure QScxmlStateMachine_cancelDelayedEvent(handle:not null QStateMachineH;sendId:QStringH);
 pragma Import(C,QScxmlStateMachine_cancelDelayedEvent, "QScxmlStateMachine_cancelDelayedEvent");
 
 function  QScxmlStateMachine_isDispatchableTarget(handle:not null QStateMachineH;target:QStringH) return boolean;
 pragma Import(C,QScxmlStateMachine_isDispatchableTarget, "QScxmlStateMachine_isDispatchableTarget");
 
 function  QScxmlStateMachine_invokedServices(handle:not null QStateMachineH) return QVectorH;
 pragma Import(C,QScxmlStateMachine_invokedServices, "QScxmlStateMachine_invokedServices");
 
 procedure QScxmlStateMachine_start(handle:not null QStateMachineH);
 pragma Import(C,QScxmlStateMachine_start, "QScxmlStateMachine_start");
 
 procedure QScxmlStateMachine_stop(handle:not null QStateMachineH);
 pragma Import(C,QScxmlStateMachine_stop, "QScxmlStateMachine_stop");
 
 function  QScxmlStateMachine_init(handle:not null QStateMachineH) return boolean;
 pragma Import(C,QScxmlStateMachine_init, "QScxmlStateMachine_init");
 
 ------------------------------------------------------------------------
 type vectorCallbackH is access procedure(invokedServices: QObjectVectorH);
 pragma convention(C,vectorCallbackH);
 
 type stringStringCallbackH is access procedure(label,msg:QStringH); 
 pragma convention(C,stringStringCallbackH);
 
 type datamodelCallbackH is access procedure(model:QXmlDataModelH);
 pragma convention(C,datamodelCallbackH);
 
 type variantMapCallbackH is access procedure(initialValues: QVariantMapH);
 pragma convention(C,variantMapCallbackH);

 procedure QScxmlStateMachine_signal_slot_runningChanged(handle:not null QStateMachineH;callback:boolCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_runningChanged, "QScxmlStateMachine_signal_slot_runningChanged");
 
 procedure QScxmlStateMachine_signal_slot_invokedServicesChanged(handle:not null QStateMachineH;callback:vectorCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_invokedServicesChanged, "QScxmlStateMachine_signal_slot_invokedServicesChanged");
 
 procedure QScxmlStateMachine_signal_slot_log(handle:not null QStateMachineH;callback:stringStringCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_log, "QScxmlStateMachine_signal_slot_log");
 
 procedure QScxmlStateMachine_signal_slot_reachedStableState(handle:not null QStateMachineH;callback:voidCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_reachedStableState, "QScxmlStateMachine_signal_slot_reachedStableState");
 
 procedure QScxmlStateMachine_signal_slot_finished(handle:not null QStateMachineH;callback:voidCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_finished, "QScxmlStateMachine_signal_slot_finished");
 
 procedure QScxmlStateMachine_signal_slot_dataModelChanged(handle:not null QStateMachineH;callback:datamodelCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_dataModelChanged, "QScxmlStateMachine_signal_slot_dataModelChanged");
 
 procedure QScxmlStateMachine_signal_slot_initialValuesChanged(handle:not null QStateMachineH;callback:variantMapCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_initialValuesChanged, "QScxmlStateMachine_signal_slot_initialValuesChanged");
 
 procedure QScxmlStateMachine_signal_slot_initializedChanged(handle:not null QStateMachineH;callback:boolCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_initializedChanged, "QScxmlStateMachine_signal_slot_initializedChanged");
 
 procedure QScxmlStateMachine_signal_slot_loaderChanged(handle:not null QStateMachineH;callback:anyParameterCallbackH);
 pragma Import(C,QScxmlStateMachine_signal_slot_loaderChanged, "QScxmlStateMachine_signal_slot_loaderChanged");
 
end;
