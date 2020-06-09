--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QGlobal is

 function  QGlobal_qVersion return zstring;
 pragma Import(C,QGlobal_qVersion, "QGlobal_qVersion");
 
 function  QGlobal_qRound(d:qreal) return integer;
 pragma Import(C,QGlobal_qRound, "QGlobal_qRound");
 
 function  QGlobal_qRound64(d:qreal) return qint64;
 pragma Import(C,QGlobal_qRound64, "QGlobal_qRound64");
 
 function  QGlobal_qSharedBuild return boolean;
 pragma Import(C,QGlobal_qSharedBuild, "QGlobal_qSharedBuild");
 
 function  QGlobal_qt_error_string(errorCode :integer := -1) return QStringH;
 pragma Import(C,QGlobal_qt_error_string, "QGlobal_qt_error_string");
 
 procedure QGlobal_qt_assert_x(where,what,file: zstring; line: integer);
 pragma Import(C,QGlobal_qt_assert_x, "QGlobal_qt_assert_x");
 
 procedure QGlobal_qt_check_pointer(s:zstring; i:integer);
 pragma Import(C,QGlobal_qt_check_pointer, "QGlobal_qt_check_pointer");
 
 procedure QGlobal_qBadAlloc;
 pragma Import(C,QGlobal_qBadAlloc, "QGlobal_qBadAlloc");
 
 function  QGlobal_qFuzzyCompare(p1,p2: double) return boolean;
 pragma Import(C,QGlobal_qFuzzyCompare, "QGlobal_qFuzzyCompare");
 
 function  QGlobal_qFuzzyCompare2(p1,p2: float) return boolean;
 pragma Import(C,QGlobal_qFuzzyCompare2, "QGlobal_qFuzzyCompare2");
 
 function  QGlobal_qFuzzyIsNull(d:double) return boolean;
 pragma Import(C,QGlobal_qFuzzyIsNull, "QGlobal_qFuzzyIsNull");
 
 function  QGlobal_qFuzzyIsNull2(f:float) return boolean;
 pragma Import(C,QGlobal_qFuzzyIsNull2, "QGlobal_qFuzzyIsNull2");
 
 function  QGlobal_qIsNull(d:double) return boolean;
 pragma Import(C,QGlobal_qIsNull, "QGlobal_qIsNull");
 
 function  QGlobal_qIsNull2(f:float) return boolean;
 pragma Import(C,QGlobal_qIsNull2, "QGlobal_qIsNull2");
 
 function  QGlobal_qgetenv(varName:zstring) return QStringH;
 pragma Import(C,QGlobal_qgetenv, "QGlobal_qgetenv");
 
 function  QGlobal_qputenv(varName:zstring; value:QStringH) return boolean;
 pragma Import(C,QGlobal_qputenv, "QGlobal_qputenv");
 
 function  QGlobal_qunsetenv(varName:zstring) return boolean;
 pragma Import(C,QGlobal_qunsetenv, "QGlobal_qunsetenv");
 
 function  QGlobal_qEnvironmentVariableIsEmpty(varName:zstring) return boolean;
 pragma Import(C,QGlobal_qEnvironmentVariableIsEmpty, "QGlobal_qEnvironmentVariableIsEmpty");
 
 function  QGlobal_qEnvironmentVariableIsSet(varName:zstring) return boolean;
 pragma Import(C,QGlobal_qEnvironmentVariableIsSet, "QGlobal_qEnvironmentVariableIsSet");
 
 function  QGlobal_qIntCast(d:double) return integer;
 pragma Import(C,QGlobal_qIntCast, "QGlobal_qIntCast");
 
 function  QGlobal_qIntCast2(f:float) return integer;
 pragma Import(C,QGlobal_qIntCast2, "QGlobal_qIntCast2");
 
 procedure QGlobal_qsrand(seed:quint);
 pragma Import(C,QGlobal_qsrand, "QGlobal_qsrand");
 
 function  QGlobal_qrand return integer;
 pragma Import(C,QGlobal_qrand, "QGlobal_qrand");

 -- qrand()/(RAND_MAX+1.0)
 function QGlobal_qrand_normalized return float;
 pragma Import(C,QGlobal_qrand_normalized,"QGlobal_qrand_normalized");
 
 procedure QGlobal_qWarning(message:zstring);
 pragma Import(C,QGlobal_qWarning, "QGlobal_qWarning");
 
 procedure QGlobal_qCritical(message:zstring);
 pragma Import(C,QGlobal_qCritical, "QGlobal_qCritical");
 
 procedure QGlobal_qFatal(message:zstring);
 pragma Import(C,QGlobal_qFatal, "QGlobal_qFatal");
 
 procedure QGlobal_qDebug(message:zstring);
 pragma Import(C,QGlobal_qDebug, "QGlobal_qDebug");
 
 function  QGlobal_qPrintable(str:QStringH) return zstring;
 pragma Import(C,QGlobal_qPrintable, "QGlobal_qPrintable");

 function  QGlobal_qBound(min,val,max:integer) return integer;
 pragma Import(C,QGlobal_qBound, "QGlobal_qBound");
 
 function  QGlobal_qBound2(min,val,max:qreal) return qreal;
 pragma Import(C,QGlobal_qBound2, "QGlobal_qBound2");
 
 procedure QGlobal_qDeleteAll(list:QObjectListH);
 pragma Import(C,QGlobal_qDeleteAll, "QGlobal_qDeleteAll");

 procedure QGlobal_setErrorMessageHandler(fileName:zstring);
 pragma Import(C,QGlobal_setErrorMessageHandler, "QGlobal_setErrorMessageHandler");
 
 procedure QGlobal_qWarning2(message:QStringH);
 pragma Import(C,QGlobal_qWarning2, "QGlobal_qWarning2");
 
 procedure QGlobal_qCritical2(message:QStringH);
 pragma Import(C,QGlobal_qCritical2, "QGlobal_qCritical2");
 
 procedure QGlobal_qFatal2(message:QStringH);
 pragma Import(C,QGlobal_qFatal2, "QGlobal_qFatal2");
 
 procedure QGlobal_qDebug2(message:QStringH);
 pragma Import(C,QGlobal_qDebug2, "QGlobal_qDebug2");
 
 function QGlobal_WindowFlags return integer;
 pragma Import(C,QGlobal_WindowFlags,"QGlobal_WindowFlags");
 
----------------------------------------------------------------
 function  QGlobal_qFuzzyCompare(p1,p2: float) return boolean;
 function  QGlobal_qFuzzyIsNull(f:float) return boolean;
 function  QGlobal_qIsNull(f:float) return boolean;
 function  QGlobal_qIntCast(f:float) return integer;
 function  QGlobal_qMin(p1,p2:qreal) return qreal;
 function  QGlobal_qMax(p1,p2:qreal) return qreal;
 function  QGlobal_qMin(p1,p2:integer) return integer;
 function  QGlobal_qMax(p1,p2:integer) return integer;
 function  QGlobal_qBound(min,val,max:qreal) return qreal;
 procedure QGlobal_qWarning(message:QStringH);
 procedure QGlobal_qCritical(message:QStringH);
 procedure QGlobal_qFatal(message:QStringH);
 procedure QGlobal_qDebug(message:QStringH);

end;
