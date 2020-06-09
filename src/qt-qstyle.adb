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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QStyle               is

procedure QStyle_polish(handle: not null  QStyleH; p1: QApplicationH) is
begin
  QStyle_polish2(handle, p1);
end;

procedure QStyle_unpolish(handle: not null  QStyleH; p1: QApplicationH) is
begin
  QStyle_unpolish2(handle, p1);
end;

procedure QStyle_polish(handle: not null  QStyleH; p1: QPaletteH) is
begin
 QStyle_polish3(handle, p1);
end;

function QStyleOption_create(other: QStyleOptionH) return  QStyleOptionH is
begin
 return QStyleOption_create2(other);
end;

function QStyleOptionFocusRect_create(other: QStyleOptionFocusRectH) return  QStyleOptionFocusRectH is
begin
 return QStyleOptionFocusRect_create2(other);
end;

function QStyleOptionFrame_create(other: QStyleOptionFrameH) return  QStyleOptionFrameH is
begin
 return QStyleOptionFrame_create2(other);
end;

function QStyleOptionFrameV2_create(other: QStyleOptionFrameV2H) return  QStyleOptionFrameV2H is
begin
 return QStyleOptionFrameV2_create2(other);
end;

function QStyleOptionFrameV2_create(other: QStyleOptionFrameH) return  QStyleOptionFrameV2H is
begin
 return QStyleOptionFrameV2_create3(other);
end;

function QStyleOptionTabWidgetFrame_create(other: QStyleOptionTabWidgetFrameH) return  QStyleOptionTabWidgetFrameH is
begin
 return QStyleOptionTabWidgetFrame_create2(other);
end;

function QStyleOptionTabBarBase_create(other: QStyleOptionTabBarBaseH) return  QStyleOptionTabBarBaseH is
begin
 return QStyleOptionTabBarBase_create2(other);
end;

function QStyleOptionHeader_create(other: QStyleOptionHeaderH) return  QStyleOptionHeaderH is
begin
 return QStyleOptionHeader_create2(other);
end;

function QStyleOptionButton_create(other: QStyleOptionButtonH) return  QStyleOptionButtonH is
begin
 return QStyleOptionButton_create2(other);
end;

function QStyleOptionTab_create(other: QStyleOptionTabH) return  QStyleOptionTabH is
begin
 return QStyleOptionTab_create2(other);
end;

function QStyleOptionTabV2_create(other: QStyleOptionTabV2H) return  QStyleOptionTabV2H is
begin
 return QStyleOptionTabV2_create2(other);
end;

function QStyleOptionTabV2_create(other: QStyleOptionTabH) return  QStyleOptionTabV2H is
begin
 return QStyleOptionTabV2_create3(other);
end;

function QStyleOptionToolBar_create(other: QStyleOptionToolBarH) return  QStyleOptionToolBarH is
begin
 return QStyleOptionToolBar_create2(other);
end;

function QStyleOptionProgressBar_create(other: QStyleOptionProgressBarH) return  QStyleOptionProgressBarH is
begin
 return QStyleOptionProgressBar_create2(other);
end;

function QStyleOptionProgressBarV2_create(other: QStyleOptionProgressBarH) return  QStyleOptionProgressBarV2H is
begin
 return QStyleOptionProgressBarV2_create2(other);
end;

function QStyleOptionProgressBarV2_create(other: QStyleOptionProgressBarV2H) return  QStyleOptionProgressBarV2H is
begin
 return QStyleOptionProgressBarV2_create3(other);
end;

function QStyleOptionMenuItem_create(other: QStyleOptionMenuItemH) return  QStyleOptionMenuItemH is
begin
 return QStyleOptionMenuItem_create2(other);
end;


function QStyleOptionDockWidget_create(other: QStyleOptionDockWidgetH) return  QStyleOptionDockWidgetH is
begin
 return  QStyleOptionDockWidget_create2(other);
end;
function QStyleOptionDockWidgetV2_create(other: QStyleOptionDockWidgetV2H) return  QStyleOptionDockWidgetV2H is
begin
 return QStyleOptionDockWidgetV2_create2(other);
end;

function QStyleOptionDockWidgetV2_create(other: QStyleOptionDockWidgetH) return  QStyleOptionDockWidgetV2H is
begin
 return QStyleOptionDockWidgetV2_create3(other);
end;

function QStyleOptionViewItem_create(other: QStyleOptionViewItemH) return  QStyleOptionViewItemH is
begin
 return QStyleOptionViewItem_create2(other);
end;

function QStyleOptionViewItemV2_create(other: QStyleOptionViewItemV2H) return  QStyleOptionViewItemV2H is
begin
 return QStyleOptionViewItemV2_create2(other);
end;

function QStyleOptionViewItemV2_create(other: QStyleOptionViewItemH) return  QStyleOptionViewItemV2H is
begin
 return QStyleOptionViewItemV2_create3(other);
end;

function QStyleOptionViewItemV3_create(other: QStyleOptionViewItemV3H) return  QStyleOptionViewItemV3H is
begin
 return QStyleOptionViewItemV3_create2(other);
end;

function QStyleOptionViewItemV3_create(other: QStyleOptionViewItemH) return  QStyleOptionViewItemV3H is
begin
 return QStyleOptionViewItemV3_create3(other);
end;

function QStyleOptionToolBox_create(other: QStyleOptionToolBoxH) return  QStyleOptionToolBoxH is
begin
 return QStyleOptionToolBox_create2(other);
end;

function QStyleOptionToolBoxV2_create(other: QStyleOptionToolBoxV2H) return  QStyleOptionToolBoxV2H is
begin
 return QStyleOptionToolBoxV2_create2(other);
end;

function QStyleOptionToolBoxV2_create(other: QStyleOptionToolBoxH) return  QStyleOptionToolBoxV2H is
begin
 return QStyleOptionToolBoxV2_create3(other);
end;

function QStyleOptionRubberBand_create(other: QStyleOptionRubberBandH) return  QStyleOptionRubberBandH is
begin
 return QStyleOptionRubberBand_create2(other);
end;

function QStyleOptionComplex_create(other: QStyleOptionComplexH) return  QStyleOptionComplexH is
begin
 return QStyleOptionComplex_create2(other);
end;

function QStyleOptionSlider_create(other: QStyleOptionSliderH) return  QStyleOptionSliderH is
begin
 return QStyleOptionSlider_create2(other);
end;

function QStyleOptionSpinBox_create(other: QStyleOptionSpinBoxH) return  QStyleOptionSpinBoxH is
begin
 return QStyleOptionSpinBox_create2(other);
end;


function QStyleOptionToolButton_create(other: QStyleOptionToolButtonH) return  QStyleOptionToolButtonH is
begin
 return QStyleOptionToolButton_create2(other);
end;

function QStyleOptionComboBox_create(other: QStyleOptionComboBoxH) return  QStyleOptionComboBoxH is
begin
 return QStyleOptionComboBox_create2(other);
end;

function QStyleOptionTitleBar_create(other: QStyleOptionTitleBarH) return  QStyleOptionTitleBarH is
begin
 return QStyleOptionTitleBar_create2(other);
end;

function QStyleOptionGroupBox_create(other: QStyleOptionGroupBoxH) return  QStyleOptionGroupBoxH is
begin
 return QStyleOptionGroupBox_create2(other);
end;

function QStyleOptionSizeGrip_create(other: QStyleOptionSizeGripH) return  QStyleOptionSizeGripH is
begin
 return QStyleOptionSizeGrip_create2(other);
end;

function QStyleOptionGraphicsItem_create(other: QStyleOptionGraphicsItemH) return  QStyleOptionGraphicsItemH is
begin
 return QStyleOptionGraphicsItem_create2(other);
end;

 procedure QCommonStyle_polish(handle: not null QStyleH;app:QApplicationH) is
 begin
    QCommonStyle_polish2(handle,app);
 end;

 procedure QCommonStyle_polish(handle: not null QStyleH;palette:QPaletteH) is
 begin
   QCommonStyle_polish3(handle,palette);
 end;

 procedure QCommonStyle_unpolish(handle: not null QStyleH;app:QApplicationH) is
 begin
   QCommonStyle_unpolish2(handle,app);
 end;

 procedure QProxyStyle_polish(handle: not null QStyleH;app:QApplicationH) is
 begin
    QProxyStyle_polish2(handle,app);
 end;

 procedure QProxyStyle_polish(handle: not null QStyleH;palette:QPaletteH) is
 begin
   QProxyStyle_polish3(handle,palette);
 end;

 procedure QProxyStyle_unpolish(handle: not null QStyleH;app:QApplicationH) is
 begin
   QProxyStyle_unpolish2(handle,app);
 end;

 function  QStylePainter_create(widget:QWidgetH) return QStylePainterH is
 begin
   return  QStylePainter_create2(widget);
 end;

 function  QStylePainter_create(paintDevice:QPaintDeviceH;widget:QWidgetH) return QStylePainterH is
 begin
  return  QStylePainter_create3(paintDevice,widget);
 end;

end Qt.QStyle;
