-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QSsl is

  type QSslKeyListH is new QListH;
  type QSslCipherListH is new QListH;
  type QSslErrorListH is new QListH;
  type QSslCertificateListH is new QListH;

 type KeyType is (PrivateKey, PublicKey);
 pragma convention(C,KeyType);

 type EncodingFormat is ( Pem, Der);
 pragma convention(C,EncodingFormat);

 type KeyAlgorithm is (Opaque, Rsa, Dsa);
 pragma convention(C,KeyAlgorithm);

 type AlternativeNameEntryType is (EmailEntry, DnsEntry);
 pragma convention(C,AlternativeNameEntryType);

 type  SslProtocol  is new integer range -1 .. 7; 

   SslV3          : constant SslProtocol := 0; 
   SslV2          : constant SslProtocol := 1; 
   TlsV1_0        : constant SslProtocol := 2; 
   TlsV1_1        : constant SslProtocol := 3;
   TlsV1_2        : constant SslProtocol := 4;
   AnyProtocol    : constant SslProtocol := 5;
   TlsV1SslV3     : constant SslProtocol := 6;
   SecureProtocols: constant SslProtocol := 7; 
   UnknownProtocol: constant SslProtocol := -1;

 type  SslOption is new integer; 

     SslOptionDisableEmptyFragments       : constant SslOption:= 16#01#;
     SslOptionDisableSessionTickets       : constant SslOption := 16#02#;
     SslOptionDisableCompression          : constant SslOption := 16#04#;
     SslOptionDisableServerNameIndication : constant SslOption := 16#08#;
     SslOptionDisableLegacyRenegotiation  : constant SslOption := 16#10#;

------------------------------------------------------------------------
 function  QSslErrorList_create return QSslErrorListH;
 pragma Import(C,QSslErrorList_create, "QSslErrorList_create");
 
 procedure QSslErrorList_clear(handle:not null QSslErrorListH);
 pragma Import(C,QSslErrorList_clear, "QSslErrorList_clear");
 
 function  QSslErrorList_isEmpty(handle:not null QSslErrorListH) return boolean;
 pragma Import(C,QSslErrorList_isEmpty, "QSslErrorList_isEmpty");
 
 function  QSslErrorList_count(handle:not null QSslErrorListH) return integer;
 pragma Import(C,QSslErrorList_count, "QSslErrorList_count");
 
 procedure QSslErrorList_append(handle:not null QSslErrorListH;err: QSslErrorH);
 pragma Import(C,QSslErrorList_append, "QSslErrorList_append");
 
 procedure QSslErrorList_prepend(handle:not null QSslErrorListH; err:QSslErrorH);
 pragma Import(C,QSslErrorList_prepend, "QSslErrorList_prepend");
 
 procedure QSslErrorList_insert(handle:not null QSslErrorListH;pos: integer; err:QSslErrorH);
 pragma Import(C,QSslErrorList_insert, "QSslErrorList_insert");
 
 procedure QSslErrorList_move(handle:not null QSslErrorListH; fromPos,toPos: integer);
 pragma Import(C,QSslErrorList_move, "QSslErrorList_move");
 
 procedure QSslErrorList_swap(handle:not null QSslErrorListH; fromPos,toPos: integer);
 pragma Import(C,QSslErrorList_swap, "QSslErrorList_swap");
 
 function  QSslErrorList_at(handle:not null QSslErrorListH; pos:integer) return QSslErrorH;
 pragma Import(C,QSslErrorList_at, "QSslErrorList_at");
 
 procedure QSslErrorList_removeAt(handle:not null QSslErrorListH;pos:integer);
 pragma Import(C,QSslErrorList_removeAt, "QSslErrorList_removeAt");
 
 procedure QSslErrorList_replace(handle:not null QSslErrorListH;pos:integer; err:QSslErrorH);
 pragma Import(C,QSslErrorList_replace, "QSslErrorList_replace");
 
 function  QSslErrorList_removeOne(handle:not null QSslErrorListH;err:QSslErrorH) return boolean;
 pragma Import(C,QSslErrorList_removeOne, "QSslErrorList_removeOne");
 
 function  QSslErrorList_takeAt(handle:not null QSslErrorListH;pos:integer) return QSslErrorH;
 pragma Import(C,QSslErrorList_takeAt, "QSslErrorList_takeAt");
 
 function  QSslErrorList_takeFirst(handle:not null QSslErrorListH) return QSslErrorH;
 pragma Import(C,QSslErrorList_takeFirst, "QSslErrorList_takeFirst");
 
 function  QSslErrorList_takeLast(handle:not null QSslErrorListH) return QSslErrorH;
 pragma Import(C,QSslErrorList_takeLast, "QSslErrorList_takeLast");
 
 function  QSslErrorList_indexOf(handle:not null QSslErrorListH;err:QSslErrorH; fromPos :integer := 0) return integer;
 pragma Import(C,QSslErrorList_indexOf, "QSslErrorList_indexOf");
 
 function  QSslErrorList_lastIndexOf(handle:not null QSslErrorListH;err:QSslErrorH; fromPos :integer := -1) return integer;
 pragma Import(C,QSslErrorList_lastIndexOf, "QSslErrorList_lastIndexOf");
 
 function  QSslErrorList_contains(handle:not null QSslErrorListH;err:QSslErrorH) return boolean;
 pragma Import(C,QSslErrorList_contains, "QSslErrorList_contains");
 
end;
