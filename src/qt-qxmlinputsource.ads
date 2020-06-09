--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QXmlInputSource is

function  QXmlInputSource_create return QXmlInputSourceH;
pragma Import(C,QXmlInputSource_create, "QXmlInputSource_create");

function  QXmlInputSource_create1(dev:QIODeviceH) return QXmlInputSourceH;
pragma Import(C,QXmlInputSource_create1, "QXmlInputSource_create1");

procedure del_QXmlInputSource(p:QXmlInputSourceH);
pragma Import(C,del_QXmlInputSource, "del_QXmlInputSource");

procedure QXmlInputSource_setData(source:QXmlInputSourceH;data:QStringH);
pragma Import(C,QXmlInputSource_setData, "QXmlInputSource_setData");

procedure QXmlInputSource_setData1(source:QXmlInputSourceH;ba:QByteArrayH);
pragma Import(C,QXmlInputSource_setData1, "QXmlInputSource_setData1");

procedure QXmlInputSource_fetchData(source:QXmlInputSourceH);
pragma Import(C,QXmlInputSource_fetchData, "QXmlInputSource_fetchData");

function  QXmlInputSource_data(source:QXmlInputSourceH) return QStringH;
pragma Import(C,QXmlInputSource_data, "QXmlInputSource_data");

function  QXmlInputSource_next(source:QXmlInputSourceH) return QCharH;
pragma Import(C,QXmlInputSource_next, "QXmlInputSource_next");

procedure QXmlInputSource_reset(source:QXmlInputSourceH);
pragma Import(C,QXmlInputSource_reset, "QXmlInputSource_reset");

function  QXmlInputSource_fromRawData(source:QXmlInputSourceH;ba:QByteArrayH; beginning:integer) return QStringH;
pragma Import(C,QXmlInputSource_fromRawData, "QXmlInputSource_fromRawData");

function  QXmlInputSource_create(dev:QIODeviceH) return QXmlInputSourceH;
procedure QXmlInputSource_setData(source:QXmlInputSourceH;ba:QByteArrayH);

end Qt.QXmlInputSource;
