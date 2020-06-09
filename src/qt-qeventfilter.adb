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

with Qt.QObject; use Qt.QObject;
package body Qt.QEventFilter is

function EventFilter_create(parent :QObjectH;f:TEventFilterMethod) return eventFilterH is
begin
 return EventFilter2_create(parent,f);
end;

-- Add Event handler to widget
procedure Object_AddEventHandler (application : QObjectH := QObjectH(app); object : QObjectH; EventHandler : TEventFilterMethod)  is
evf       : EventFilterH;
begin
    evf  := EventFilter_create(object,EventHandler);  -- handle events in window
    QObject_installEventFilter(application,object);
end Object_AddEventHandler;

end Qt.QEventFilter;
