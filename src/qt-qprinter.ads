--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPageLayout;
package Qt.QPrinter             is

type  QPrinterPrinterMode is (QPrinterScreenResolution, QPrinterPrinterResolution, QPrinterHighResolution );
pragma Convention(C,QPrinterPrinterMode);

type  QPrinterOrientation is (QPrinterPortrait, QPrinterLandscape );
pragma Convention(C,QPrinterOrientation);

type  QPrinterPageOrder   is (QPrinterFirstPageFirst, QPrinterLastPageFirst );
pragma Convention(C,QPrinterPageOrder);

type  QPrinterColorMode   is (QPrinterGrayScale, QPrinterColor );
pragma Convention(C,QPrinterColorMode);

type  QPrinterPaperSource is (QPrinterOnlyOne, QPrinterLower, QPrinterMiddle, QPrinterManual, QPrinterEnvelope, QPrinterEnvelopeManual, QPrinterAuto, QPrinterTractor, QPrinterSmallFormat, QPrinterLargeFormat, QPrinterLargeCapacity, 
                              QPrinterCassette, QPrinterFormSource, QPrinterMaxPageSource );
pragma Convention(C,QPrinterPaperSource);

type QPrinterPrinterState is (QPrinterIdle, QPrinterActive, QPrinterAborted, QPrinterError );
pragma Convention(C,QPrinterPrinterState);

type QPrinterOutputFormat is (QPrinterNativeFormat, QPrinterPdfFormat, QPrinterPostScriptFormat );
pragma Convention(C,QPrinterOutputFormat);

type QPrinterPrintRange   is (QPrinterAllPages, QPrinterSelection, QPrinterPageRange );
pragma Convention(C,QPrinterPrintRange);

type QPrinterPageSize is (A4, B5, Letter, Legal, Executive,A0, A1, A2, A3, A5, A6, A7, A8, A9, B0, B1,B10, B2, B3, B4, B6, B7, B8, B9, C5E, Comm10E,DLE, Folio, Ledger, Tabloid, Custom,
-- New values derived from PPD standard
  A10,A3Extra,A4Extra,A4Plus,A4Small,A5Extra,B5Extra,
  JisB0,JisB1,JisB2,JisB3,JisB4,JisB5,JisB6,JisB7,JisB8,JisB9,JisB10,
  AnsiC,AnsiD,AnsiE,LegalExtra,LetterExtra,LetterPlus,LetterSmall,TabloidExtra,ArchA,ArchB,ArchC,ArchD,ArchE,Imperial7x9,Imperial8x10,Imperial9x11,Imperial9x12,Imperial10x11,Imperial10x13,Imperial10x14,Imperial12x11,Imperial15x11,
  ExecutiveStandard,Note,Quarto,Statement,SuperA,SuperB,Postcard,DoublePostcard,Prc16K,Prc32K,Prc32KBig,FanFoldUS,FanFoldGerman,FanFoldGermanLegal,
  EnvelopeB4,EnvelopeB5,EnvelopeB6,EnvelopeC0,EnvelopeC1,EnvelopeC2,EnvelopeC3,EnvelopeC4,EnvelopeC6,EnvelopeC65,EnvelopeC7,Envelope9,Envelope11,Envelope12,Envelope14,EnvelopeMonarch,EnvelopePersonal,
  EnvelopeChou3,EnvelopeChou4,EnvelopeInvite,EnvelopeItalian,EnvelopeKaku2,EnvelopeKaku3,
  EnvelopePrc1,EnvelopePrc2,EnvelopePrc3,EnvelopePrc4,EnvelopePrc5,EnvelopePrc6,EnvelopePrc7,EnvelopePrc8,EnvelopePrc9,EnvelopePrc10,EnvelopeYou4 
);
pragma Convention(C,QPrinterPageSize);

type QPrinterPaperSize is (A4, B5, Letter, Legal, Executive,A0, A1, A2, A3, A5, A6, A7, A8, A9, B0, B1,B10, B2, B3, B4, B6, B7, B8, B9, C5E, Comm10E,DLE, Folio, Ledger, Tabloid, Custom);
pragma Convention(C,QPrinterPaperSize);
  
function QPrinter_create(mode: QPrinterPrinterMode := QPrinterScreenResolution) return QPrinterH;   
pragma Import(C,QPrinter_create,"QPrinter_create");

function  QPrinter_create2( printer:QPrinterInfoH;mode:QPrinterPrinterMode := QPrinterScreenResolution) return QPrinterH;
pragma Import(C,QPrinter_create2, "QPrinter_create2");

procedure QPrinter_destroy(handle: not null  QPrinterH);   
pragma Import(C,QPrinter_destroy,"QPrinter_destroy");

function QPrinter_devType(handle: not null  QPrinterH) return  Integer;   
pragma Import(C,QPrinter_devType,"QPrinter_devType");

procedure QPrinter_setOutputFormat(handle: not null  QPrinterH; format: QPrinterOutputFormat);   
pragma Import(C,QPrinter_setOutputFormat,"QPrinter_setOutputFormat");

function QPrinter_outputFormat(handle: not null  QPrinterH) return  QPrinterOutputFormat;   
pragma Import(C,QPrinter_outputFormat,"QPrinter_outputFormat");

procedure QPrinter_setPrinterName(handle: not null  QPrinterH; p1: QStringH);   
pragma Import(C,QPrinter_setPrinterName,"QPrinter_setPrinterName");

function  QPrinter_printerName(handle: not null  QPrinterH) return QStringH;
pragma Import(C,QPrinter_printerName,"QPrinter_printerName");

procedure QPrinter_setOutputFileName(handle: not null  QPrinterH; p1: QStringH);   
pragma Import(C,QPrinter_setOutputFileName,"QPrinter_setOutputFileName");

function  QPrinter_outputFileName(handle: not null  QPrinterH) return QStringH;
pragma Import(C,QPrinter_outputFileName,"QPrinter_outputFileName");

procedure QPrinter_setPrintProgram(handle: not null  QPrinterH; p1: QStringH);   
pragma Import(C,QPrinter_setPrintProgram,"QPrinter_setPrintProgram");

function  QPrinter_printProgram(handle: not null  QPrinterH) return QStringH;
pragma Import(C,QPrinter_printProgram,"QPrinter_printProgram");

procedure QPrinter_setDocName(handle: not null  QPrinterH; p1: QStringH);   
pragma Import(C,QPrinter_setDocName,"QPrinter_setDocName");

function  QPrinter_docName(handle: not null  QPrinterH) return  QStringH;
pragma Import(C,QPrinter_docName,"QPrinter_docName");

procedure QPrinter_setCreator(handle: not null  QPrinterH; p1: QStringH);   
pragma Import(C,QPrinter_setCreator,"QPrinter_setCreator");

function  QPrinter_creator(handle: not null  QPrinterH) return QStringH;
pragma Import(C,QPrinter_creator,"QPrinter_creator");

procedure QPrinter_setOrientation(handle: not null  QPrinterH; p1: QPrinterOrientation);   
pragma Import(C,QPrinter_setOrientation,"QPrinter_setOrientation");

function QPrinter_orientation(handle: not null  QPrinterH) return  QPrinterOrientation;   
pragma Import(C,QPrinter_orientation,"QPrinter_orientation");

procedure QPrinter_setPageSize(handle: not null  QPrinterH; p1: QPrinterPageSize);   
pragma Import(C,QPrinter_setPageSize,"QPrinter_setPageSize");

function QPrinter_pageSize(handle: not null  QPrinterH) return  QPrinterPageSize;   
pragma Import(C,QPrinter_pageSize,"QPrinter_pageSize");

procedure QPrinter_setPageOrder(handle: not null  QPrinterH; p1: QPrinterPageOrder);   
pragma Import(C,QPrinter_setPageOrder,"QPrinter_setPageOrder");

function QPrinter_pageOrder(handle: not null  QPrinterH) return  QPrinterPageOrder;   
pragma Import(C,QPrinter_pageOrder,"QPrinter_pageOrder");

procedure QPrinter_setResolution(handle: not null  QPrinterH; p1: Integer);   
pragma Import(C,QPrinter_setResolution,"QPrinter_setResolution");

function QPrinter_resolution(handle: not null  QPrinterH) return  Integer;   
pragma Import(C,QPrinter_resolution,"QPrinter_resolution");

procedure QPrinter_setColorMode(handle: not null  QPrinterH; p1: QPrinterColorMode);   
pragma Import(C,QPrinter_setColorMode,"QPrinter_setColorMode");

function QPrinter_colorMode(handle: not null  QPrinterH) return  QPrinterColorMode;   
pragma Import(C,QPrinter_colorMode,"QPrinter_colorMode");

procedure QPrinter_setCollateCopies(handle: not null  QPrinterH; collate: Boolean);   
pragma Import(C,QPrinter_setCollateCopies,"QPrinter_setCollateCopies");

function QPrinter_collateCopies(handle: not null  QPrinterH) return  Boolean;   
pragma Import(C,QPrinter_collateCopies,"QPrinter_collateCopies");

procedure QPrinter_setFullPage(handle: not null  QPrinterH; p1: Boolean);   
pragma Import(C,QPrinter_setFullPage,"QPrinter_setFullPage");

function QPrinter_fullPage(handle: not null  QPrinterH) return  Boolean;   
pragma Import(C,QPrinter_fullPage,"QPrinter_fullPage");

procedure QPrinter_setNumCopies(handle: not null  QPrinterH; p1: Integer);   
pragma Import(C,QPrinter_setNumCopies,"QPrinter_setNumCopies");

function QPrinter_numCopies(handle: not null  QPrinterH) return  Integer;   
pragma Import(C,QPrinter_numCopies,"QPrinter_numCopies");

procedure QPrinter_setPaperSource(handle: not null  QPrinterH; p1: QPrinterPaperSource);   
pragma Import(C,QPrinter_setPaperSource,"QPrinter_setPaperSource");

function QPrinter_paperSource(handle: not null  QPrinterH) return  QPrinterPaperSource;   
pragma Import(C,QPrinter_paperSource,"QPrinter_paperSource");

function  QPrinter_supportedResolutions(handle: not null  QPrinterH) return QIntListH;
pragma Import(C,QPrinter_supportedResolutions,"QPrinter_supportedResolutions");

procedure QPrinter_setFontEmbeddingEnabled(handle: not null  QPrinterH; enable: Boolean);   
pragma Import(C,QPrinter_setFontEmbeddingEnabled,"QPrinter_setFontEmbeddingEnabled");

function QPrinter_fontEmbeddingEnabled(handle: not null  QPrinterH) return  Boolean;   
pragma Import(C,QPrinter_fontEmbeddingEnabled,"QPrinter_fontEmbeddingEnabled");

procedure QPrinter_setDoubleSidedPrinting(handle: not null  QPrinterH; enable: Boolean);   
pragma Import(C,QPrinter_setDoubleSidedPrinting,"QPrinter_setDoubleSidedPrinting");

function QPrinter_doubleSidedPrinting(handle: not null  QPrinterH) return  Boolean;   
pragma Import(C,QPrinter_doubleSidedPrinting,"QPrinter_doubleSidedPrinting");

function  QPrinter_paperRect(handle: not null  QPrinterH) return QRectH;
pragma Import(C,QPrinter_paperRect,"QPrinter_paperRect");

function  QPrinter_pageRect(handle: not null  QPrinterH) return QRectH;
pragma Import(C,QPrinter_pageRect,"QPrinter_pageRect");

function  QPrinter_paperRect2(handle: not null  QPrinterH) return QRectFH;
pragma Import(C,QPrinter_paperRect2,"QPrinter_paperRect2");

function  QPrinter_pageRect2(handle: not null  QPrinterH) return QRectFH;
pragma Import(C,QPrinter_pageRect2,"QPrinter_pageRect2");

--$ifdef DARWIN or LINUX --
function  QPrinter_printerSelectionOption(handle: not null  QPrinterH) return QStringH;
pragma Import(C,QPrinter_printerSelectionOption,"QPrinter_printerSelectionOption");
procedure QPrinter_setPrinterSelectionOption(handle: not null  QPrinterH; p1: QStringH);   
pragma Import(C,QPrinter_setPrinterSelectionOption,"QPrinter_setPrinterSelectionOption");
--$endif--

function QPrinter_newPage(handle: not null  QPrinterH) return  Boolean;   
pragma Import(C,QPrinter_newPage,"QPrinter_newPage");

function QPrinter_abort(handle: not null  QPrinterH) return  Boolean;   
pragma Import(C,QPrinter_abort,"QPrinter_abort");

function QPrinter_printerState(handle: not null  QPrinterH) return  QPrinterPrinterState;   
pragma Import(C,QPrinter_printerState,"QPrinter_printerState");

function QPrinter_paintEngine(handle: not null  QPrinterH) return  QPaintEngineH;   
pragma Import(C,QPrinter_paintEngine,"QPrinter_paintEngine");

function QPrinter_printEngine(handle: not null  QPrinterH) return  QPrintEngineH;   
pragma Import(C,QPrinter_printEngine,"QPrinter_printEngine");

procedure QPrinter_setFromTo(handle: not null  QPrinterH; fromPage: Integer; toPage: Integer);   
pragma Import(C,QPrinter_setFromTo,"QPrinter_setFromTo");

function QPrinter_fromPage(handle: not null  QPrinterH) return  Integer;   
pragma Import(C,QPrinter_fromPage,"QPrinter_fromPage");

function QPrinter_toPage(handle: not null  QPrinterH) return  Integer;   
pragma Import(C,QPrinter_toPage,"QPrinter_toPage");

procedure QPrinter_setPrintRange(handle: not null  QPrinterH; qrange: QPrinterPrintRange);
pragma Import(C,QPrinter_setPrintRange,"QPrinter_setPrintRange");

function QPrinter_printRange(handle: not null  QPrinterH) return  QPrinterPrintRange;   
pragma Import(C,QPrinter_printRange,"QPrinter_printRange");

 function  QPrinter_setPageLayout(handle:not null QPrinterH; pageLayout:QPageLayoutH) return boolean;
 pragma Import(C,QPrinter_setPageLayout, "QPrinter_setPageLayout");
 
 function  QPrinter_setPageSize2(handle:not null QPrinterH;pageSize:QPageSizeH) return boolean;
 pragma Import(C,QPrinter_setPageSize2, "QPrinter_setPageSize2");
 
 function  QPrinter_setPageOrientation(handle:not null QPrinterH;orientation:Qt.QPageLayout.Orientation) return boolean;
 pragma Import(C,QPrinter_setPageOrientation, "QPrinter_setPageOrientation");
 
 function  QPrinter_setPageMargins(handle:not null QPrinterH;margins:QMarginsFH) return boolean;
 pragma Import(C,QPrinter_setPageMargins, "QPrinter_setPageMargins");
 
 function  QPrinter_setPageMargins2(handle:not null QPrinterH;margins:QMarginsFH;units: Qt.QPageLayout.Unit) return boolean;
 pragma Import(C,QPrinter_setPageMargins2, "QPrinter_setPageMargins2");
 
 function  QPrinter_pageLayout(handle:not null QPrinterH) return QPageLayoutH;
 pragma Import(C,QPrinter_pageLayout, "QPrinter_pageLayout");
 
--------------------------------------------------------------------------------------------------------------------------
function  QPrinter_create( printer:QPrinterInfoH;mode:QPrinterPrinterMode := QPrinterScreenResolution) return QPrinterH;
function  QPrinter_paperRect(handle: not null  QPrinterH) return QRectFH;
function  QPrinter_pageRect(handle: not null  QPrinterH) return QRectFH;
 function  QPrinter_setPageSize(handle:not null QPrinterH;pageSize:QPageSizeH) return boolean;
 function  QPrinter_setPageMargins(handle:not null QPrinterH;margins:QMarginsFH;units: Qt.QPageLayout.Unit) return boolean;

end Qt.QPrinter;
