--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString; use Qt.QString;
package Qt.QPageSize  is

 -- Existing Qt sizes
  type PageSizeId is (
        A4,B5,Letter,Legal,Executive,A0,A1,A2,A3,A5,A6,A7,A8,A9,
        B0,B1,B10,B2,B3,B4,B6,B7,B8, B9,
        C5E,Comm10E,DLE,Folio,Ledger,Tabloid,Custom,

        -- New values derived from PPD standard
        A10,A3Extra,A4Extra,A4Plus,A4Small,A5Extra,B5Extra,

        JisB0,JisB1,JisB2,JisB3,JisB4,JisB5,JisB6,JisB7,JisB8,JisB9, JisB10,

        -- AnsiA = Letter,
        -- AnsiB = Ledger,
        AnsiC,AnsiD,AnsiE,LegalExtra,LetterExtra,LetterPlus,LetterSmall, TabloidExtra,

        ArchA,ArchB,ArchC,ArchD,ArchE,

        Imperial7x9,Imperial8x10,Imperial9x11,Imperial9x12,Imperial10x11,Imperial10x13,Imperial10x14,Imperial12x11,Imperial15x11,
        ExecutiveStandard,Note,Quarto,Statement,SuperA,SuperB,Postcard,DoublePostcard,
        Prc16K,Prc32K,Prc32KBig,FanFoldUS,FanFoldGerman,FanFoldGermanLegal,

        EnvelopeB4,EnvelopeB5,EnvelopeB6,EnvelopeC0,EnvelopeC1,EnvelopeC2,EnvelopeC3,EnvelopeC4,
        -- EnvelopeC5 = C5E,
        EnvelopeC6,EnvelopeC65,EnvelopeC7,
        -- EnvelopeDL = DLE,

        Envelope9,
        -- Envelope10 = Comm10E,
        Envelope11,Envelope12,Envelope14,EnvelopeMonarch,
        EnvelopePersonal,EnvelopeChou3,EnvelopeChou4,EnvelopeInvite,EnvelopeItalian,EnvelopeKaku2,EnvelopeKaku3,
        EnvelopePrc1,EnvelopePrc2,EnvelopePrc3,EnvelopePrc4,EnvelopePrc5,EnvelopePrc6,EnvelopePrc7,EnvelopePrc8,EnvelopePrc9,EnvelopePrc10,
        EnvelopeYou4);

        -- Last item, with commonly used synynoms from QPagedPrintEngine / QPrinter
        -- LastPageSize = EnvelopeYou4,NPageSize = LastPageSize,NPaperSize = LastPageSize,

        -- Convenience overloads for naming consistency
        -- AnsiA = Letter,AnsiB = Ledger, EnvelopeC5 = C5E,EnvelopeDL = DLE,Envelope10 = Comm10E;
  pragma convention(C,PageSizeId);
   
   -- NOTE: Must keep in sync with Qt.QPageLayout.Unit Qt.QPrinter.Unit
  type Unit is (Millimeter,Point,Inch,Pica,Didot,Cicero);
  pragma convention(C,Unit);
    
  type SizeMatchPolicy is (FuzzyMatch,FuzzyOrientationMatch,ExactMatch);
  pragma convention(C,SizeMatchPolicy);

 function  QPageSize_create return QPageSizeH;
 pragma Import(C,QPageSize_create, "QPageSize_create");
 
 function  QPageSize_create2(pSizeId:PageSizeId) return QPageSizeH;
 pragma Import(C,QPageSize_create2, "QPageSize_create2");
 
 function  QPageSize_create3(pointSize:QSizeH;name:QStringH := QString_create;matchPolicy:SizeMatchPolicy := FuzzyMatch) return QPageSizeH;
 pragma Import(C,QPageSize_create3, "QPageSize_create3");
 
 function  QPageSize_create4(size:QSizeFH;units:Unit;name:QStringH := QString_create; matchPolicy:SizeMatchPolicy := FuzzyMatch) return QPageSizeH;
 pragma Import(C,QPageSize_create4, "QPageSize_create4");
 
 function  QPageSize_create5(otherPageSize:QPageSizeH) return QPageSizeH;
 pragma Import(C,QPageSize_create5, "QPageSize_create5");
 
 procedure QPageSize_delete(handle:not null QPageSizeH);
 pragma Import(C,QPageSize_delete, "QPageSize_delete");
 
 procedure QPageSize_swap(handle:not null QPageSizeH;otherPageSize:QPageSizeH);
 pragma Import(C,QPageSize_swap, "QPageSize_swap");
 
 function  QPageSize_isEquivalentTo(handle:not null QPageSizeH;otherPageSize:QPageSizeH) return boolean;
 pragma Import(C,QPageSize_isEquivalentTo, "QPageSize_isEquivalentTo");
 
 function  QPageSize_isValid(handle:not null QPageSizeH) return boolean;
 pragma Import(C,QPageSize_isValid, "QPageSize_isValid");
 
 function  QPageSize_key(handle:not null QPageSizeH) return QStringH;
 pragma Import(C,QPageSize_key, "QPageSize_key");
 
 function  QPageSize_name(handle:not null QPageSizeH) return QStringH;
 pragma Import(C,QPageSize_name, "QPageSize_name");
 
 function  QPageSize_id(handle:not null QPageSizeH) return PageSizeId;
 pragma Import(C,QPageSize_id, "QPageSize_id");
 
 function  QPageSize_definitionSize(handle:not null QPageSizeH) return QSizeFH;
 pragma Import(C,QPageSize_definitionSize, "QPageSize_definitionSize");
 
 function  QPageSize_definitionSize2(psId:PageSizeId) return QSizeFH;
 pragma Import(C,QPageSize_definitionSize2, "QPageSize_definitionSize2");
 
 function  QPageSize_definitionUnits(handle:not null QPageSizeH) return Unit;
 pragma Import(C,QPageSize_definitionUnits, "QPageSize_definitionUnits");
 
 function  QPageSize_definitionUnits2(psId:PageSizeId) return Unit;
 pragma Import(C,QPageSize_definitionUnits2, "QPageSize_definitionUnits2");
 
 function  QPageSize_size(handle:not null QPageSizeH;units:Unit) return QSizeFH;
 pragma Import(C,QPageSize_size, "QPageSize_size");
 
 function  QPageSize_size2(psId:PageSizeId;units:Unit) return QSizeFH;
 pragma Import(C,QPageSize_size2, "QPageSize_size2");
 
 function  QPageSize_sizePoints(handle:not null QPageSizeH) return QSizeH;
 pragma Import(C,QPageSize_sizePoints, "QPageSize_sizePoints");
 
 function  QPageSize_sizePoints2(psId:PageSizeId) return QSizeH;
 pragma Import(C,QPageSize_sizePoints2, "QPageSize_sizePoints2");
 
 function  QPageSize_sizePixels(handle:not null QPageSizeH;resolution:integer) return QSizeH;
 pragma Import(C,QPageSize_sizePixels, "QPageSize_sizePixels");
 
 function  QPageSize_sizePixels2(psId:PageSizeId;resolution:integer) return QSizeH;
 pragma Import(C,QPageSize_sizePixels2, "QPageSize_sizePixels2");
 
 function  QPageSize_rect(handle:not null QPageSizeH;units:Unit) return QRectFH;
 pragma Import(C,QPageSize_rect, "QPageSize_rect");
 
 function  QPageSize_rectPoints(handle:not null QPageSizeH) return QRectH;
 pragma Import(C,QPageSize_rectPoints, "QPageSize_rectPoints");
 
 function  QPageSize_rectPixels(handle:not null QPageSizeH;resolution:integer) return QRectH;
 pragma Import(C,QPageSize_rectPixels, "QPageSize_rectPixels");
 
 function  QPageSize_key2(psId:PageSizeId) return QStringH;
 pragma Import(C,QPageSize_key2, "QPageSize_key2");
 
 function  QPageSize_name2(psId:PageSizeId) return QStringH;
 pragma Import(C,QPageSize_name2, "QPageSize_name2");
 
 function  QPageSize_id2( pointSize:QSizeH;matchPolicy:SizeMatchPolicy := FuzzyMatch) return PageSizeId;
 pragma Import(C,QPageSize_id2, "QPageSize_id2");
 
 function  QPageSize_id3(size:QSizeFH;units:Unit; matchPolicy:SizeMatchPolicy := FuzzyMatch) return PageSizeId;
 pragma Import(C,QPageSize_id3, "QPageSize_id3");
 
 function  QPageSize_id4(windowsId:integer) return PageSizeId;
 pragma Import(C,QPageSize_id4, "QPageSize_id4");
 
 function  QPageSize_windowsId(psId:PageSizeId) return integer;
 pragma Import(C,QPageSize_windowsId, "QPageSize_windowsId");

----------------------------------------------------------------------
 function  QPageSize_create(pSizeId:PageSizeId) return QPageSizeH;
 function  QPageSize_create(pointSize:QSizeH;name:QStringH := QString_create;matchPolicy:SizeMatchPolicy := FuzzyMatch) return QPageSizeH;
 function  QPageSize_create(size:QSizeFH;units:Unit;name:QStringH := QString_create; matchPolicy:SizeMatchPolicy := FuzzyMatch) return QPageSizeH;
 function  QPageSize_create(otherPageSize:QPageSizeH) return QPageSizeH;
 function  QPageSize_definitionSize(psId:PageSizeId) return QSizeFH;
 function  QPageSize_definitionUnits(psId:PageSizeId) return Unit;
 function  QPageSize_size(psId:PageSizeId;units:Unit) return QSizeFH;
 function  QPageSize_sizePoints(psId:PageSizeId) return QSizeH;
 function  QPageSize_sizePixels(psId:PageSizeId;resolution:integer) return QSizeH;
 function  QPageSize_key(psId:PageSizeId) return QStringH;
 function  QPageSize_name(psId:PageSizeId) return QStringH;
 function  QPageSize_id( pointSize:QSizeH;matchPolicy:SizeMatchPolicy := FuzzyMatch) return PageSizeId;
 function  QPageSize_id(size:QSizeFH;units:Unit; matchPolicy:SizeMatchPolicy := FuzzyMatch) return PageSizeId;
 function  QPageSize_id(windowsId:integer) return PageSizeId; 

end;
