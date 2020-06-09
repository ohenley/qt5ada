--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString;      use Qt.QString;
with Qt.QScriptValue; use Qt.QScriptValue;
package QT.QScriptEngine  is

 QtOwnership                 : constant := 0;
 ScriptOwnership             : constant := 1;
 AutoOwnership               : constant := 2;
 
 ExcludeChildObjects         : constant := 16#0001#;
 ExcludeSuperClassMethods    : constant := 16#0002#;
 ExcludeSuperClassProperties : constant := 16#0004#;
 ExcludeSuperClassContents   : constant := 16#0006#;
 SkipMethodsInEnumeration    : constant := 16#0008#;
 ExcludeDeleteLater          : constant := 16#0010#;
 ExcludeSlots                : constant := 16#0020#;

 AutoCreateDynamicProperties : constant := 16#0100#;
 PreferExistingWrapperObject : constant := 16#0200#;

 type FunctionSignature is access  function(context:QScriptContextH;engine: QScriptEngineH) return QScriptValueH;
 pragma Convention(C,FunctionSignature);

 type FunctionWithArgSignature is access function(context:QScriptContextH;engine: QScriptEngineH; func:void_Star) return QScriptValueH;
 pragma Convention(C,FunctionWithArgSignature);

 function  QScriptEngine_create (parent:QObjectH := null) return QScriptEngineH;
 pragma Import(C,QScriptEngine_create, "QScriptEngine_create");
 
 procedure QScriptEngine_destroy(handle: not null QScriptEngineH);
 pragma Import(C,QScriptEngine_destroy, "QScriptEngine_destroy");
 
 function  QScriptEngine_globalObject(handle: not null QScriptEngineH) return QScriptValueH;
 pragma Import(C,QScriptEngine_globalObject, "QScriptEngine_globalObject");
 
 procedure QScriptEngine_setGlobalObject(handle: not null QScriptEngineH;object:QScriptValueH);
 pragma Import(C,QScriptEngine_setGlobalObject, "QScriptEngine_setGlobalObject");
 
 function  QScriptEngine_currentContext(handle: not null QScriptEngineH) return QScriptContextH;
 pragma Import(C,QScriptEngine_currentContext, "QScriptEngine_currentContext");
 
 function  QScriptEngine_pushContext(handle: not null QScriptEngineH) return QScriptContextH;
 pragma Import(C,QScriptEngine_pushContext, "QScriptEngine_pushContext");
 
 procedure QScriptEngine_popContext(handle: not null QScriptEngineH);
 pragma Import(C,QScriptEngine_popContext, "QScriptEngine_popContext");
 
 function  QScriptEngine_canEvaluate(handle: not null QScriptEngineH; program:QStringH) return boolean;
 pragma Import(C,QScriptEngine_canEvaluate, "QScriptEngine_canEvaluate");
 
 function  QScriptEngine_checkSyntax(program:QStringH) return QScriptSyntaxCheckResultH;
 pragma Import(C,QScriptEngine_checkSyntax, "QScriptEngine_checkSyntax");
 
 function  QScriptEngine_evaluate(handle: not null QScriptEngineH; program,fileName: QStringH := QString_create; lineNumber: integer := 1) return QScriptValueH;
 pragma Import(C,QScriptEngine_evaluate, "QScriptEngine_evaluate");
 
 function  QScriptEngine_evaluate2(handle: not null QScriptEngineH; program: QScriptProgramH) return QScriptValueH;
 pragma Import(C,QScriptEngine_evaluate2, "QScriptEngine_evaluate2");
 
 function  QScriptEngine_isEvaluating(handle: not null QScriptEngineH) return boolean;
 pragma Import(C,QScriptEngine_isEvaluating, "QScriptEngine_isEvaluating");
 
 procedure QScriptEngine_abortEvaluation(handle: not null QScriptEngineH;result: QScriptValueH);
 pragma Import(C,QScriptEngine_abortEvaluation, "QScriptEngine_abortEvaluation");
 
 procedure QScriptEngine_abortEvaluation2(handle: not null QScriptEngineH);
 pragma Import(C,QScriptEngine_abortEvaluation2, "QScriptEngine_abortEvaluation2");
 
 function  QScriptEngine_hasUncaughtException(handle: not null QScriptEngineH) return boolean;
 pragma Import(C,QScriptEngine_hasUncaughtException, "QScriptEngine_hasUncaughtException");
 
 function  QScriptEngine_uncaughtException(handle: not null QScriptEngineH) return QScriptValueH;
 pragma Import(C,QScriptEngine_uncaughtException, "QScriptEngine_uncaughtException");
 
 function  QScriptEngine_uncaughtExceptionLineNumber(handle: not null QScriptEngineH) return integer;
 pragma Import(C,QScriptEngine_uncaughtExceptionLineNumber, "QScriptEngine_uncaughtExceptionLineNumber");
 
 function  QScriptEngine_uncaughtExceptionBacktrace(handle: not null QScriptEngineH) return QStringListH;
 pragma Import(C,QScriptEngine_uncaughtExceptionBacktrace, "QScriptEngine_uncaughtExceptionBacktrace");
 
 procedure QScriptEngine_clearExceptions(handle: not null QScriptEngineH);
 pragma Import(C,QScriptEngine_clearExceptions, "QScriptEngine_clearExceptions");
 
 function  QScriptEngine_nullValue(handle: not null QScriptEngineH) return QScriptValueH;
 pragma Import(C,QScriptEngine_nullValue, "QScriptEngine_nullValue");
 
 function  QScriptEngine_undefinedValue(handle: not null QScriptEngineH) return QScriptValueH;
 pragma Import(C,QScriptEngine_undefinedValue, "QScriptEngine_undefinedValue");
 
 function  QScriptEngine_newFunction(handle: not null QScriptEngineH; signature:FunctionSignature; length: integer := 0) return QScriptValueH;
 pragma Import(C,QScriptEngine_newFunction, "QScriptEngine_newFunction");
 
 function  QScriptEngine_newFunction2(handle: not null QScriptEngineH; signature:FunctionSignature; prototype:QScriptValueH; length:integer := 0) return QScriptValueH;
 pragma Import(C,QScriptEngine_newFunction2, "QScriptEngine_newFunction2");
 
 function  QScriptEngine_newFunction3(handle: not null QScriptEngineH; signature:FunctionWithArgSignature; arg:void_Star) return QScriptValueH;
 pragma Import(C,QScriptEngine_newFunction3, "QScriptEngine_newFunction3");
 
 function  QScriptEngine_newVariant(handle: not null QScriptEngineH; value:QVariantH) return QScriptValueH;
 pragma Import(C,QScriptEngine_newVariant, "QScriptEngine_newVariant");
 
 function  QScriptEngine_newVariant2(handle: not null QScriptEngineH;object:QScriptValueH;value: QVariantH) return QScriptValueH;
 pragma Import(C,QScriptEngine_newVariant2, "QScriptEngine_newVariant2");
 
 function  QScriptEngine_newObject(handle: not null QScriptEngineH) return QScriptValueH;
 pragma Import(C,QScriptEngine_newObject, "QScriptEngine_newObject");
 
 function  QScriptEngine_newObject2(handle: not null QScriptEngineH; scriptClass:QScriptClassH; data:QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptEngine_newObject2, "QScriptEngine_newObject2");
 
 function  QScriptEngine_newObject3(handle: not null QScriptEngineH; scriptClass:QScriptClassH) return QScriptValueH;
 pragma Import(C,QScriptEngine_newObject3, "QScriptEngine_newObject3");
 
 function  QScriptEngine_newArray(handle: not null QScriptEngineH; length: quint := 0) return QScriptValueH;
 pragma Import(C,QScriptEngine_newArray, "QScriptEngine_newArray");
 
 function  QScriptEngine_newRegExp(handle: not null QScriptEngineH; pattern,flags: QStringH) return QScriptValueH;
 pragma Import(C,QScriptEngine_newRegExp, "QScriptEngine_newRegExp");
 
 function  QScriptEngine_newDate(handle: not null QScriptEngineH; value:double) return QScriptValueH;
 pragma Import(C,QScriptEngine_newDate, "QScriptEngine_newDate");
 
 function  QScriptEngine_newDate2(handle: not null QScriptEngineH;value: QDateTimeH) return QScriptValueH;
 pragma Import(C,QScriptEngine_newDate2, "QScriptEngine_newDate2");
 
 function  QScriptEngine_newActivationObject(handle: not null QScriptEngineH) return QScriptValueH;
 pragma Import(C,QScriptEngine_newActivationObject, "QScriptEngine_newActivationObject");
 
 function  QScriptEngine_defaultPrototype(handle: not null QScriptEngineH; metaTypeId:integer) return QScriptValueH;
 pragma Import(C,QScriptEngine_defaultPrototype, "QScriptEngine_defaultPrototype");
 
 procedure QScriptEngine_setDefaultPrototype(handle: not null QScriptEngineH; metaTypeId:integer;  prototype:QScriptValueH);
 pragma Import(C,QScriptEngine_setDefaultPrototype, "QScriptEngine_setDefaultPrototype");
 
 procedure QScriptEngine_installTranslatorFunctions(handle: not null QScriptEngineH; object:QScriptValueH);
 pragma Import(C,QScriptEngine_installTranslatorFunctions, "QScriptEngine_installTranslatorFunctions");
 
 procedure QScriptEngine_installTranslatorFunctions2(handle: not null QScriptEngineH);
 pragma Import(C,QScriptEngine_installTranslatorFunctions2, "QScriptEngine_installTranslatorFunctions2");
 
 function  QScriptEngine_importExtension(handle: not null QScriptEngineH;  extension:QStringH) return QScriptValueH;
 pragma Import(C,QScriptEngine_importExtension, "QScriptEngine_importExtension");
 
 function  QScriptEngine_availableExtensions(handle: not null QScriptEngineH) return QStringListH;
 pragma Import(C,QScriptEngine_availableExtensions, "QScriptEngine_availableExtensions");
 
 function  QScriptEngine_importedExtensions(handle: not null QScriptEngineH) return QStringListH;
 pragma Import(C,QScriptEngine_importedExtensions, "QScriptEngine_importedExtensions");
 
 procedure QScriptEngine_collectGarbage(handle: not null QScriptEngineH);
 pragma Import(C,QScriptEngine_collectGarbage, "QScriptEngine_collectGarbage");
 
 procedure QScriptEngine_reportAdditionalMemoryCost(handle: not null QScriptEngineH; size:integer);
 pragma Import(C,QScriptEngine_reportAdditionalMemoryCost, "QScriptEngine_reportAdditionalMemoryCost");
 
 procedure QScriptEngine_setProcessEventsInterval(handle: not null QScriptEngineH; interval:integer);
 pragma Import(C,QScriptEngine_setProcessEventsInterval, "QScriptEngine_setProcessEventsInterval");
 
 function  QScriptEngine_processEventsInterval(handle: not null QScriptEngineH) return integer;
 pragma Import(C,QScriptEngine_processEventsInterval, "QScriptEngine_processEventsInterval");
 
 procedure QScriptEngine_setAgent(handle: not null QScriptEngineH; agent:QScriptEngineAgentH);
 pragma Import(C,QScriptEngine_setAgent, "QScriptEngine_setAgent");
 
 function  QScriptEngine_agent(handle: not null QScriptEngineH) return QScriptEngineAgentH;
 pragma Import(C,QScriptEngine_agent, "QScriptEngine_agent");
 
 function  QScriptEngine_toStringHandle(handle: not null QScriptEngineH;str: QStringH) return QScriptStringH;
 pragma Import(C,QScriptEngine_toStringHandle, "QScriptEngine_toStringHandle");
 
 function  QScriptEngine_toObject(handle: not null QScriptEngineH; value:QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptEngine_toObject, "QScriptEngine_toObject");
 
 function  QScriptEngine_objectById(handle: not null QScriptEngineH;id:qint64) return QScriptValueH;
 pragma Import(C,QScriptEngine_objectById, "QScriptEngine_objectById");

 procedure QScriptEngine_setProperty(handle:not null QScriptEngineH;name:QStringH;value:QScriptValueH);
 pragma Import(C,QScriptEngine_setProperty, "QScriptEngine_setProperty");

 function  QScriptEngine_newQObject(handle:not null QScriptEngineH;object:QObjectH; ownership:integer := QtOwnership;options: integer := 0) return QScriptValueH;
 pragma Import(C,QScriptEngine_newQObject, "QScriptEngine_newQObject");
 
 function  QScriptEngine_newQObject2(handle:not null QScriptEngineH; scriptObject:QScriptValueH; object:QObjectH;ownership:integer := QtOwnership;options: integer := 0) return QScriptValueH;
 pragma Import(C,QScriptEngine_newQObject2, "QScriptEngine_newQObject2");
 
 function  QScriptEngine_newQMetaObject(handle:not null QScriptEngineH;metaObject:QMetaObjectH ;ctor: QScriptValueH := QScriptValue_create) return QScriptValueH;
 pragma Import(C,QScriptEngine_newQMetaObject, "QScriptEngine_newQMetaObject");

 ------------------------------------------------------------------------------------------------------------

 function  QScriptEngine_evaluate(handle: not null QScriptEngineH; program: QScriptProgramH) return QScriptValueH;
 procedure QScriptEngine_abortEvaluation(handle: not null QScriptEngineH);
 function  QScriptEngine_newFunction(handle: not null QScriptEngineH; signature:FunctionSignature; prototype:QScriptValueH; length:integer := 0) return QScriptValueH;
 function  QScriptEngine_newFunction(handle: not null QScriptEngineH; signature:FunctionWithArgSignature; arg:void_Star) return QScriptValueH;
 function  QScriptEngine_newVariant(handle: not null QScriptEngineH;object:QScriptValueH;value: QVariantH) return QScriptValueH;
 function  QScriptEngine_newObject(handle: not null QScriptEngineH; scriptClass:QScriptClassH; data:QScriptValueH) return QScriptValueH;
 function  QScriptEngine_newObject(handle: not null QScriptEngineH; scriptClass:QScriptClassH) return QScriptValueH;
 function  QScriptEngine_newDate(handle: not null QScriptEngineH;value: QDateTimeH) return QScriptValueH;
 function  QScriptEngine_newQObject(handle:not null QScriptEngineH; scriptObject:QScriptValueH; object:QObjectH;ownership:integer := QtOwnership;options: integer := 0) return QScriptValueH;

------------------------  2019 ---------------------
 type QScriptEngineDebuggerH is new QObjectH;
 type DebuggerWidget is (
        ConsoleWidget,
        StackWidget,
        ScriptsWidget,
        LocalsWidget,
        CodeWidget,
        CodeFinderWidget,
        BreakpointsWidget,
        DebugOutputWidget,
        ErrorLogWidget);
  pragma convention(C,DebuggerWidget);   

    type DebuggerAction is (
        InterruptAction,
        ContinueAction,
        StepIntoAction,
        StepOverAction,
        StepOutAction,
        RunToCursorAction,
        RunToNewScriptAction,
        ToggleBreakpointAction,
        ClearDebugOutputAction,
        ClearErrorLogAction,
        ClearConsoleAction,
        FindInScriptAction,
        FindNextInScriptAction,
        FindPreviousInScriptAction,
        GoToLineAction);
     pragma convention(C,DebuggerAction);

    type DebuggerState is ( RunningState, SuspendedState);
    pragma convention(C,DebuggerState); 

 function  QScriptEngineDebugger_create(parent:QObjectH := null) return QScriptEngineDebuggerH;
 pragma Import(C,QScriptEngineDebugger_create, "QScriptEngineDebugger_create");
 
 procedure QScriptEngineDebugger_destroy(handle:not null QScriptEngineDebuggerH);
 pragma Import(C,QScriptEngineDebugger_destroy, "QScriptEngineDebugger_destroy");
 
 procedure QScriptEngineDebugger_attachTo(handle:not null QScriptEngineDebuggerH;engine:QScriptEngineH);
 pragma Import(C,QScriptEngineDebugger_attachTo, "QScriptEngineDebugger_attachTo");
 
 procedure QScriptEngineDebugger_detach(handle:not null QScriptEngineDebuggerH);
 pragma Import(C,QScriptEngineDebugger_detach, "QScriptEngineDebugger_detach");
 
 function  QScriptEngineDebugger_autoShowStandardWindow(handle:not null QScriptEngineDebuggerH) return boolean;
 pragma Import(C,QScriptEngineDebugger_autoShowStandardWindow, "QScriptEngineDebugger_autoShowStandardWindow");
 
 procedure QScriptEngineDebugger_setAutoShowStandardWindow(handle:not null QScriptEngineDebuggerH;autoShow:boolean);
 pragma Import(C,QScriptEngineDebugger_setAutoShowStandardWindow, "QScriptEngineDebugger_setAutoShowStandardWindow");
 
 function  QScriptEngineDebugger_createStandardToolBar(handle:not null QScriptEngineDebuggerH;parent :QWidgetH :=  null) return QToolBarH;
 pragma Import(C,QScriptEngineDebugger_createStandardToolBar, "QScriptEngineDebugger_createStandardToolBar");
 
 function  QScriptEngineDebugger_createStandardMenu(handle:not null QScriptEngineDebuggerH;parent :QWidgetH :=  null) return QMenuH;
 pragma Import(C,QScriptEngineDebugger_createStandardMenu, "QScriptEngineDebugger_createStandardMenu");
 
 function  QScriptEngineDebugger_widget(handle:not null QScriptEngineDebuggerH;widget:DebuggerWidget) return QWidgetH;
 pragma Import(C,QScriptEngineDebugger_widget, "QScriptEngineDebugger_widget");
 
 function  QScriptEngineDebugger_action(handle:not null QScriptEngineDebuggerH;action:DebuggerAction) return QActionH;
 pragma Import(C,QScriptEngineDebugger_action, "QScriptEngineDebugger_action");
 
 function  QScriptEngineDebugger_state(handle:not null QScriptEngineDebuggerH) return DebuggerState;
 pragma Import(C,QScriptEngineDebugger_state, "QScriptEngineDebugger_state");
 
 function  QScriptEngineDebugger_standardWindow(handle:not null QScriptEngineDebuggerH) return QMainWindowH;
 pragma Import(C,QScriptEngineDebugger_standardWindow, "QScriptEngineDebugger_standardWindow");
 
 procedure QScriptEngineDebugger_signal_slot_evaluationSuspended(handle:not null QScriptEngineDebuggerH;hook:voidCallbackH);
 pragma Import(C,QScriptEngineDebugger_signal_slot_evaluationSuspended, "QScriptEngineDebugger_signal_slot_evaluationSuspended");
 
 procedure QScriptEngineDebugger_signal_slot_evaluationResumed(handle:not null QScriptEngineDebuggerH;hook:voidCallbackH);
 pragma Import(C,QScriptEngineDebugger_signal_slot_evaluationResumed, "QScriptEngineDebugger_signal_slot_evaluationResumed");
 
end QT.QScriptEngine;
