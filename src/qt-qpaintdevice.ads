--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012 ,2015                     บ
-- บ Copyright (C) 2012 ,2015                                          บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QPaintDevice is

type QPaintDevicePaintDeviceMetric is (
    QPaintDevicePdmWidth ,
    QPaintDevicePdmHeight,
    QPaintDevicePdmWidthMM,
    QPaintDevicePdmHeightMM,
    QPaintDevicePdmNumColors,
    QPaintDevicePdmDepth,
    QPaintDevicePdmDpiX,
    QPaintDevicePdmDpiY,
    QPaintDevicePdmPhysicalDpiX,
    QPaintDevicePdmPhysicalDpiY );
pragma convention(C,QPaintDevicePaintDeviceMetric);

function QPaintDevice_devType(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_devType,"QPaintDevice_devType");

function QPaintDevice_paintingActive(handle: not null  QPaintDeviceH) return  Boolean;   
pragma Import(C,QPaintDevice_paintingActive,"QPaintDevice_paintingActive");

function QPaintDevice_paintEngine(handle: not null  QPaintDeviceH) return  QPaintEngineH;   
pragma Import(C,QPaintDevice_paintEngine,"QPaintDevice_paintEngine");

function QPaintDevice_width(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_width,"QPaintDevice_width");

function QPaintDevice_height(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_height,"QPaintDevice_height");

function QPaintDevice_widthMM(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_widthMM,"QPaintDevice_widthMM");

function QPaintDevice_heightMM(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_heightMM,"QPaintDevice_heightMM");

function QPaintDevice_logicalDpiX(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_logicalDpiX,"QPaintDevice_logicalDpiX");

function QPaintDevice_logicalDpiY(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_logicalDpiY,"QPaintDevice_logicalDpiY");

function QPaintDevice_physicalDpiX(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_physicalDpiX,"QPaintDevice_physicalDpiX");

function QPaintDevice_physicalDpiY(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_physicalDpiY,"QPaintDevice_physicalDpiY");

--function QPaintDevice_numColors(handle: not null  QPaintDeviceH) return  Integer;   
--pragma Import(C,QPaintDevice_numColors,"QPaintDevice_numColors");

function QPaintDevice_depth(handle: not null  QPaintDeviceH) return  Integer;   
pragma Import(C,QPaintDevice_depth,"QPaintDevice_depth");

 function  QPaintDevice_devicePixelRatioF(handle:not null QPaintDeviceH) return qreal;
 pragma Import(C,QPaintDevice_devicePixelRatioF, "QPaintDevice_devicePixelRatioF");
 
 function  QPaintDevice_colorCount(handle:not null QPaintDeviceH) return integer;
 pragma Import(C,QPaintDevice_colorCount, "QPaintDevice_colorCount");
 
 function  QPaintDevice_devicePixelRatioFScale return qreal;
 pragma Import(C,QPaintDevice_devicePixelRatioFScale, "QPaintDevice_devicePixelRatioFScale");
 

end Qt.QPaintDevice;
