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

package Qt.QPrinterInfo is

type  QPrintPreviewWidgetViewMode is (QPrintPreviewWidgetSinglePageView, QPrintPreviewWidgetFacingPagesView,QPrintPreviewWidgetAllPagesView );
pragma Convention(C,QPrintPreviewWidgetViewMode);

type  QPrintPreviewWidgetZoomMode  is (QPrintPreviewWidgetCustomZoom,QPrintPreviewWidgetFitToWidth,QPrintPreviewWidgetFitInView );
pragma Convention(C,QPrintPreviewWidgetZoomMode);

type  QPrinterPrinterMode  is (QPrinterScreenResolution,QPrinterPrinterResolution,QPrinterHighResolution );
pragma Convention(C,QPrinterPrinterMode);

type  QPrinterOrientation is (QPrinterPortrait, QPrinterLandscape );
pragma Convention(C,QPrinterOrientation);

type  QPrinterPageOrder is   (QPrinterFirstPageFirst, QPrinterLastPageFirst );
pragma Convention(C,QPrinterPageOrder);

type  QPrinterColorMode is   (QPrinterGrayScale, QPrinterColor );
pragma Convention(C,QPrinterColorMode);

type  QPrinterPaperSource is (QPrinterOnlyOne, QPrinterLower, QPrinterMiddle,QPrinterManual, QPrinterEnvelope, QPrinterEnvelopeManual,QPrinterAuto, QPrinterTractor,
       QPrinterSmallFormat, QPrinterLargeFormat,QPrinterLargeCapacity, QPrinterCassette, QPrinterFormSource,QPrinterMaxPageSource );
pragma Convention(C,QPrinterPaperSource);

type  QPrinterPrinterState is ( QPrinterIdle, QPrinterActive, QPrinterAborted, QPrinterError );
pragma Convention(C,QPrinterPrinterState);

type  QPrinterOutputFormat is (QPrinterNativeFormat, QPrinterPdfFormat, QPrinterPostScriptFormat );
pragma Convention(C,QPrinterOutputFormat);

type  QPrinterPrintRange is ( QPrinterAllPages, QPrinterSelection, QPrinterPageRange );
pragma Convention(C,QPrinterPrintRange);

type  QPrinterUnit is (QPrinterMillimeter, QPrinterPoint, QPrinterInch, QPrinterPica, QPrinterDidot, QPrinterCicero, QPrinterDevicePixel );
pragma Convention(C,QPrinterUnit);

type  QPrinterDuplexMode is (QPrinterDuplexNone,QPrinterDuplexAuto,QPrinterDuplexLongSide,QPrinterDuplexShortSide );
pragma Convention(C,QPrinterDuplexMode);

subtype QPrinterPageSize is cardinal; 

    QPrinterA4         : constant integer := 16#0#;
    QPrinterB5         : constant integer := 16#1#;
    QPrinterLetter     : constant integer := 16#2#;
    QPrinterLegal      : constant integer := 16#3#;
    QPrinterExecutive  : constant integer := 16#4#;
    QPrinterA0         : constant integer := 16#5#;
    QPrinterA1         : constant integer := 16#6#;
    QPrinterA2         : constant integer := 16#7#;
    QPrinterA3         : constant integer := 16#8#;
    QPrinterA5         : constant integer := 16#9#;
    QPrinterA6         : constant integer := 16#a#;
    QPrinterA7         : constant integer := 16#b#;
    QPrinterA8         : constant integer := 16#c#;
    QPrinterA9         : constant integer := 16#d#;
    QPrinterB0         : constant integer := 16#e#;
    QPrinterB1         : constant integer := 16#f#;
    QPrinterB10        : constant integer := 16#10#;
    QPrinterB2         : constant integer := 16#11#;
    QPrinterB3         : constant integer := 16#12#;
    QPrinterB4         : constant integer := 16#13#;
    QPrinterB6         : constant integer := 16#14#;
    QPrinterB7         : constant integer := 16#15#;
    QPrinterB8         : constant integer := 16#16#;
    QPrinterB9         : constant integer := 16#17#;
    QPrinterC5E        : constant integer := 16#18#;
    QPrinterComm10E    : constant integer := 16#19#;
    QPrinterDLE        : constant integer := 16#1a#;
    QPrinterFolio      : constant integer := 16#1b#;
    QPrinterLedger     : constant integer := 16#1c#;
    QPrinterTabloid    : constant integer := 16#1d#;
    QPrinterCustom     : constant integer := 16#1e#;
    QPrinterNPageSize  : constant integer := 16#1e#;
    QPrinterNPaperSize : constant integer := 16#1e#;

 

function  QPrinterInfo_create return QPrinterInfoH;
pragma Import(C,QPrinterInfo_create, "QPrinterInfo_create");

procedure QPrinterInfo_destroy(handle: not null QPrinterInfoH);
pragma Import(C,QPrinterInfo_destroy, "QPrinterInfo_destroy");

function  QPrinterInfo_create2(handle: not null QPrinterInfoH) return QPrinterInfoH;
pragma Import(C,QPrinterInfo_create2, "QPrinterInfo_create2");

function  QPrinterInfo_create3(printer: QPrinterH) return QPrinterInfoH;
pragma Import(C,QPrinterInfo_create3 , "QPrinterInfo_create3");

function  QPrinterInfo_printerName(handle: not null  QPrinterInfoH) return QStringH;
pragma Import(C,QPrinterInfo_printerName , "QPrinterInfo_printerName");

function  QPrinterInfo_isNull(handle: not null  QPrinterInfoH) return integer;
pragma Import(C,QPrinterInfo_isNull, "QPrinterInfo_isNull");

function  QPrinterInfo_isDefault(handle: not null  QPrinterInfoH) return integer;
pragma Import(C,QPrinterInfo_isDefault, "QPrinterInfo_isDefault");

function  QPrinterInfo_supportedPaperSizes(handle : QPrinterInfoH) return QObjectListH;
pragma Import(C,QPrinterInfo_supportedPaperSizes, "QPrinterInfo_supportedPaperSizes");

function  QPrinterInfo_availablePrinters return QObjectListH;
pragma Import(C,QPrinterInfo_availablePrinters, "QPrinterInfo_availablePrinters");

function  QPrinterInfo_defaultPrinter return QPrinterInfoH;
pragma Import(C,QPrinterInfo_defaultPrinter, "QPrinterInfo_defaultPrinter");

function  QPrinterInfo_create(handle: not null QPrinterInfoH) return QPrinterInfoH;
function  QPrinterInfo_create(printer: QPrinterH) return QPrinterInfoH;

end Qt.QPrinterInfo;
