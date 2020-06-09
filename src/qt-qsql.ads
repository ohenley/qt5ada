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

package Qt.QSql is

 type Location is ( AfterLastRow,BeforeFirstRow);
 pragma Convention(C,Location);
 
 for Location use (
    AfterLastRow => -2,
    BeforeFirstRow => -1);
 
 type ParamTypeFlag is (flagIn,flagOut,flagInOut,flagBinary);
 pragma Convention(C,ParamTypeFlag);
    
 
 for ParamTypeFlag use (
     flagIn     => 1,
     flagOut    => 2,
     flagInOut  => 3,
     flagBinary => 4);
 
 type TableType is (Tables,SystemTables,Views,AllTables);
 pragma Convention(C,TableType);
     
 for TableType use (
     Tables       => 1,
     SystemTables => 2,
     Views        => 4,
     AllTables    => 16#ff#);
 
 type NumericalPrecisionPolicy is (HighPrecision,LowPrecisionInt32,LowPrecisionInt64,LowPrecisionDouble);
 pragma Convention(C,NumericalPrecisionPolicy);
 
 for NumericalPrecisionPolicy use (
         HighPrecision        => 0,
         LowPrecisionInt32    => 1,
         LowPrecisionInt64    => 2,
         LowPrecisionDouble   => 4);
 
end; 
