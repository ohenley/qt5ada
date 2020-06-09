--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2016                      บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
package body Qt.QUrl is

 function  QUrl_create(url:QStringH) return QUrlH is
 begin
   return  QUrl_create1(url);
 end;

 function  QUrl_create(url:QStringH;mode:ParsingMode) return QUrlH is
 begin
   return  QUrl_create2(url,mode);
 end;

 function  QUrl_create(copy:QUrlH) return QUrlH is
 begin
   return  QUrl_create3(copy);
 end;

 procedure QUrl_setUrl(handle: not null QUrlH; url:QStringH;mode:ParsingMode) is
 begin
   QUrl_setUrl1(handle, url,mode);
 end;

 function  QUrl_fromEncoded( url:QByteArrayH; mode:ParsingMode) return QUrlH is
 begin
   return  QUrl_fromEncoded1(url, mode);
 end;

 function  QUrl_port(handle: not null QUrlH; defaultPort:integer) return integer is
 begin
   return  QUrl_port1(handle, defaultPort);
 end;

function  QUrl_fromUserInput(userInput,workingDirectory:QStringH;option:UserInputResolutionOptions := DefaultResolution) return QUrlH is
begin
  return  QUrl_fromUserInput2(userInput,workingDirectory,option);
end;

end Qt.QUrl;
