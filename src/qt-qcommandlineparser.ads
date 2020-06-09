--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString ; use Qt.QString;
package Qt.QCommandLineParser  is

type SingleDashWordOptionMode is (ParseAsCompactedShortOptions,ParseAsLongOptions);
pragma Convention(C,SingleDashWordOptionMode);

 function  QCommandLineParser_create return QCommandLineParserH;
 pragma Import(C,QCommandLineParser_create, "QCommandLineParser_create");
 
 procedure QCommandLineParser_destroy(handle:QCommandLineParserH);
 pragma Import(C,QCommandLineParser_destroy, "QCommandLineParser_destroy");
 
 procedure QCommandLineParser_setSingleDashWordOptionMode(handle:QCommandLineParserH; parsingMode:SingleDashWordOptionMode);
 pragma Import(C,QCommandLineParser_setSingleDashWordOptionMode, "QCommandLineParser_setSingleDashWordOptionMode");
 
 function  QCommandLineParser_addOption(handle:QCommandLineParserH;clOption:QCommandLineOptionH) return boolean;
 pragma Import(C,QCommandLineParser_addOption, "QCommandLineParser_addOption");
 
 function  QCommandLineParser_addVersionOption(handle:QCommandLineParserH) return QCommandLineOptionH;
 pragma Import(C,QCommandLineParser_addVersionOption, "QCommandLineParser_addVersionOption");
 
 function  QCommandLineParser_addHelpOption(handle:QCommandLineParserH) return QCommandLineOptionH;
 pragma Import(C,QCommandLineParser_addHelpOption, "QCommandLineParser_addHelpOption");
 
 procedure QCommandLineParser_setApplicationDescription(handle:QCommandLineParserH;description:QStringH);
 pragma Import(C,QCommandLineParser_setApplicationDescription, "QCommandLineParser_setApplicationDescription");
 
 function  QCommandLineParser_applicationDescription(handle:QCommandLineParserH) return QStringH;
 pragma Import(C,QCommandLineParser_applicationDescription, "QCommandLineParser_applicationDescription");
 
 procedure QCommandLineParser_addPositionalArgument(handle:QCommandLineParserH;name,description:QStringH; syntax:QStringH := QString_create);
 pragma Import(C,QCommandLineParser_addPositionalArgument, "QCommandLineParser_addPositionalArgument");
 
 procedure QCommandLineParser_clearPositionalArguments(handle:QCommandLineParserH);
 pragma Import(C,QCommandLineParser_clearPositionalArguments, "QCommandLineParser_clearPositionalArguments");
 
 procedure QCommandLineParser_process(handle:QCommandLineParserH;arguments:QStringListH);
 pragma Import(C,QCommandLineParser_process, "QCommandLineParser_process");
 
 procedure QCommandLineParser_process2(handle:QCommandLineParserH;app:QCoreApplicationH);
 pragma Import(C,QCommandLineParser_process2, "QCommandLineParser_process2");
 
 function  QCommandLineParser_parse(handle:QCommandLineParserH;arguments:QStringListH) return boolean;
 pragma Import(C,QCommandLineParser_parse, "QCommandLineParser_parse");
 
 function  QCommandLineParser_errorText(handle:QCommandLineParserH) return QStringH;
 pragma Import(C,QCommandLineParser_errorText, "QCommandLineParser_errorText");
 
 function  QCommandLineParser_isSet(handle:QCommandLineParserH;name:QStringH) return boolean;
 pragma Import(C,QCommandLineParser_isSet, "QCommandLineParser_isSet");
 
 function  QCommandLineParser_value(handle:QCommandLineParserH;name:QStringH) return QStringH;
 pragma Import(C,QCommandLineParser_value, "QCommandLineParser_value");
 
 function  QCommandLineParser_values(handle:QCommandLineParserH;name:QStringH) return QStringListH;
 pragma Import(C,QCommandLineParser_values, "QCommandLineParser_values");
 
 function  QCommandLineParser_isSet2(handle:QCommandLineParserH;option:QCommandLineOptionH) return boolean;
 pragma Import(C,QCommandLineParser_isSet2, "QCommandLineParser_isSet2");
 
 function  QCommandLineParser_value2(handle:QCommandLineParserH;option:QCommandLineOptionH) return QStringH;
 pragma Import(C,QCommandLineParser_value2, "QCommandLineParser_value2");
 
 function  QCommandLineParser_values2(handle:QCommandLineParserH;option:QCommandLineOptionH) return QStringListH;
 pragma Import(C,QCommandLineParser_values2, "QCommandLineParser_values2");
 
 function  QCommandLineParser_positionalArguments(handle:QCommandLineParserH) return QStringListH;
 pragma Import(C,QCommandLineParser_positionalArguments, "QCommandLineParser_positionalArguments");
 
 function  QCommandLineParser_optionNames(handle:QCommandLineParserH) return QStringListH;
 pragma Import(C,QCommandLineParser_optionNames, "QCommandLineParser_optionNames");
 
 function  QCommandLineParser_unknownOptionNames(handle:QCommandLineParserH) return QStringListH;
 pragma Import(C,QCommandLineParser_unknownOptionNames, "QCommandLineParser_unknownOptionNames");
 
 procedure QCommandLineParser_showHelp(handle:QCommandLineParserH; exitCode:integer := 0);
 pragma Import(C,QCommandLineParser_showHelp, "QCommandLineParser_showHelp");
 
 function  QCommandLineParser_helpText(handle:QCommandLineParserH) return QStringH;
 pragma Import(C,QCommandLineParser_helpText, "QCommandLineParser_helpText");
 
------------------------------------------------------------------
 procedure QCommandLineParser_process(handle:QCommandLineParserH;app:QCoreApplicationH);
 function  QCommandLineParser_isSet(handle:QCommandLineParserH;option:QCommandLineOptionH) return boolean;
 function  QCommandLineParser_value(handle:QCommandLineParserH;option:QCommandLineOptionH) return QStringH;
 function  QCommandLineParser_values(handle:QCommandLineParserH;option:QCommandLineOptionH) return QStringListH;
end;
