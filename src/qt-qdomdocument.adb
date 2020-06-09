--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt interface                                บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2005, 2009                     บ
-- บ Copyright (C) 2005                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
package body Qt.QDomDocument is

function  QDomDocument_create(name:QStringH) return QDomDocumentH is
begin
 return QDomDocument_create1(name);
end;

function  QDomDocument_create(doctype:QDomDocumentTypeH) return QDomDocumentH is
begin
 return QDomDocument_create2(doctype);
end;

function  QDomDocument_create(document:QDomDocumentH) return QDomDocumentH is
begin
 return QDomDocument_create3(document);
end;

function  QDomDocument_setContent(document:QDomDocumentH;ba:QByteArrayH;namespaceProcessing:integer;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer is
begin
  return QDomDocument_setContent1(document,ba,namespaceProcessing,errorMsg,errorLine,errorColumn);
end QDomDocument_setContent;

function  QDomDocument_setContent(document:QDomDocumentH;dev:QIODeviceH;namespaceProcessing:integer;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer is
begin
  return QDomDocument_setContent3(document,dev,namespaceProcessing,errorMsg,errorLine,errorColumn);
end QDomDocument_setContent;

function  QDomDocument_setContent(document:QDomDocumentH;text:QStringH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer is
begin
 return QDomDocument_setContent4(document,text,errorMsg,errorLine,errorColumn);
end QDomDocument_setContent;

function  QDomDocument_setContent(document:QDomDocumentH;ba:QByteArrayH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer is
begin
 return QDomDocument_setContent5(document,ba,errorMsg,errorLine,errorColumn);
end QDomDocument_setContent;

function  QDomDocument_setContent(document:QDomDocumentH;dev:QIODeviceH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer is
begin
 return QDomDocument_setContent7(document,dev,errorMsg,errorLine,errorColumn);
end QDomDocument_setContent;

end Qt.QDomDocument;
