--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QDataWidgetMapper    is

 type SubmitPolicy  is (AutoSubmit, ManualSubmit);
 pragma Convention(C,SubmitPolicy);

 function  QDataWidgetMapper_create(parent:QObjectH := null) return QDataWidgetMapperH;
 pragma Import(C,QDataWidgetMapper_create, "QDataWidgetMapper_create");
 
 procedure QDataWidgetMapper_destroy(handle: not null QDataWidgetMapperH);
 pragma Import(C,QDataWidgetMapper_destroy, "QDataWidgetMapper_destroy");
 
 procedure QDataWidgetMapper_setModel(handle: not null QDataWidgetMapperH;model:QAbstractItemModelH);
 pragma Import(C,QDataWidgetMapper_setModel, "QDataWidgetMapper_setModel");
 
 function  QDataWidgetMapper_model(handle: not null QDataWidgetMapperH) return QAbstractItemModelH;
 pragma Import(C,QDataWidgetMapper_model, "QDataWidgetMapper_model");
 
 procedure QDataWidgetMapper_setItemDelegate(handle: not null QDataWidgetMapperH;delegate:QAbstractItemDelegateH);
 pragma Import(C,QDataWidgetMapper_setItemDelegate, "QDataWidgetMapper_setItemDelegate");
 
 function  QDataWidgetMapper_itemDelegate(handle: not null QDataWidgetMapperH) return QAbstractItemDelegateH;
 pragma Import(C,QDataWidgetMapper_itemDelegate, "QDataWidgetMapper_itemDelegate");
 
 procedure QDataWidgetMapper_setRootIndex(handle: not null QDataWidgetMapperH; index:QModelIndexH);
 pragma Import(C,QDataWidgetMapper_setRootIndex, "QDataWidgetMapper_setRootIndex");
 
 function  QDataWidgetMapper_rootIndex(handle: not null QDataWidgetMapperH) return QModelIndexH;
 pragma Import(C,QDataWidgetMapper_rootIndex, "QDataWidgetMapper_rootIndex");
 
 procedure QDataWidgetMapper_setOrientation(handle: not null QDataWidgetMapperH;orientation:QtOrientation);
 pragma Import(C,QDataWidgetMapper_setOrientation, "QDataWidgetMapper_setOrientation");
 
 function  QDataWidgetMapper_orientation(handle: not null QDataWidgetMapperH) return QtOrientation;
 pragma Import(C,QDataWidgetMapper_orientation, "QDataWidgetMapper_orientation");
 
 procedure QDataWidgetMapper_setSubmitPolicy(handle: not null QDataWidgetMapperH;policy:SubmitPolicy);
 pragma Import(C,QDataWidgetMapper_setSubmitPolicy, "QDataWidgetMapper_setSubmitPolicy");
 
 function  QDataWidgetMapper_submitPolicy(handle: not null QDataWidgetMapperH) return SubmitPolicy;
 pragma Import(C,QDataWidgetMapper_submitPolicy, "QDataWidgetMapper_submitPolicy");
 
 procedure QDataWidgetMapper_addMapping(handle: not null QDataWidgetMapperH;widget:QWidgetH; section:integer);
 pragma Import(C,QDataWidgetMapper_addMapping, "QDataWidgetMapper_addMapping");
 
 procedure QDataWidgetMapper_addMapping2(handle: not null QDataWidgetMapperH;widget:QWidgetH; section:integer; propertyName:QByteArrayH);
 pragma Import(C,QDataWidgetMapper_addMapping2, "QDataWidgetMapper_addMapping2");
 
 procedure QDataWidgetMapper_addMapping3(handle: not null QDataWidgetMapperH;widget:QWidgetH; section:integer; propertyName:zstring);
 pragma Import(C,QDataWidgetMapper_addMapping3, "QDataWidgetMapper_addMapping3");

 procedure QDataWidgetMapper_removeMapping(handle: not null QDataWidgetMapperH;widget:QWidgetH);
 pragma Import(C,QDataWidgetMapper_removeMapping, "QDataWidgetMapper_removeMapping");
 
 function  QDataWidgetMapper_mappedSection(handle: not null QDataWidgetMapperH;widget:QWidgetH) return integer;
 pragma Import(C,QDataWidgetMapper_mappedSection, "QDataWidgetMapper_mappedSection");
 
 function  QDataWidgetMapper_mappedPropertyName(handle: not null QDataWidgetMapperH;widget:QWidgetH) return QByteArrayH;
 pragma Import(C,QDataWidgetMapper_mappedPropertyName, "QDataWidgetMapper_mappedPropertyName");
 
 function  QDataWidgetMapper_mappedWidgetAt(handle: not null QDataWidgetMapperH; section:integer) return QWidgetH;
 pragma Import(C,QDataWidgetMapper_mappedWidgetAt, "QDataWidgetMapper_mappedWidgetAt");
 
 procedure QDataWidgetMapper_clearMapping(handle: not null QDataWidgetMapperH);
 pragma Import(C,QDataWidgetMapper_clearMapping, "QDataWidgetMapper_clearMapping");
 
 function  QDataWidgetMapper_currentIndex(handle: not null QDataWidgetMapperH) return integer;
 pragma Import(C,QDataWidgetMapper_currentIndex, "QDataWidgetMapper_currentIndex");

 procedure QDataWidgetMapper_revert(handle: not null QDataWidgetMapperH);
 pragma Import(C,QDataWidgetMapper_revert, "QDataWidgetMapper_revert");
 
 function  QDataWidgetMapper_submit(handle: not null QDataWidgetMapperH) return boolean;
 pragma Import(C,QDataWidgetMapper_submit, "QDataWidgetMapper_submit");
 
 procedure QDataWidgetMapper_toFirst(handle: not null QDataWidgetMapperH);
 pragma Import(C,QDataWidgetMapper_toFirst, "QDataWidgetMapper_toFirst");
 
 procedure QDataWidgetMapper_toLast(handle: not null QDataWidgetMapperH);
 pragma Import(C,QDataWidgetMapper_toLast, "QDataWidgetMapper_toLast");
 
 procedure QDataWidgetMapper_toNext(handle: not null QDataWidgetMapperH);
 pragma Import(C,QDataWidgetMapper_toNext, "QDataWidgetMapper_toNext");
 
 procedure QDataWidgetMapper_toPrevious(handle: not null QDataWidgetMapperH);
 pragma Import(C,QDataWidgetMapper_toPrevious, "QDataWidgetMapper_toPrevious");
 
 procedure QDataWidgetMapper_setCurrentIndex(handle: not null QDataWidgetMapperH;index:integer);
 pragma Import(C,QDataWidgetMapper_setCurrentIndex, "QDataWidgetMapper_setCurrentIndex");
 
 procedure QDataWidgetMapper_setCurrentModelIndex(handle: not null QDataWidgetMapperH; index:QModelIndexH);
 pragma Import(C,QDataWidgetMapper_setCurrentModelIndex, "QDataWidgetMapper_setCurrentModelIndex");
 

 type QDataWidgetMapper_currentIndexChangedEvent is access procedure(index:integer);
 pragma Convention(C,QDataWidgetMapper_currentIndexChangedEvent);

 procedure QDataWidgetMapper_signal_slot_currentIndexChanged(handle: not null QDataWidgetMapperH; hook:QDataWidgetMapper_currentIndexChangedEvent);
 pragma Import(C,QDataWidgetMapper_signal_slot_currentIndexChanged, "QDataWidgetMapper_signal_slot_currentIndexChanged");


 ------------------------------------------------------------------------------------------------------
 procedure QDataWidgetMapper_addMapping(handle: not null QDataWidgetMapperH;widget:QWidgetH; section:integer; propertyName:QByteArrayH);
 procedure QDataWidgetMapper_addMapping(handle: not null QDataWidgetMapperH;widget:QWidgetH; section:integer; propertyName:zstring);

end Qt.QDataWidgetMapper;
