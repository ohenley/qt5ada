
add_library(Qt5::QOCIDriverPlugin MODULE IMPORTED)


_populate_Sql_plugin_properties(QOCIDriverPlugin RELEASE "sqldrivers/qsqloci.dll" FALSE)

list(APPEND Qt5Sql_PLUGINS Qt5::QOCIDriverPlugin)
set_property(TARGET Qt5::Sql APPEND PROPERTY QT_ALL_PLUGINS_sqldrivers Qt5::QOCIDriverPlugin)
set_property(TARGET Qt5::QOCIDriverPlugin PROPERTY QT_PLUGIN_TYPE "sqldrivers")
set_property(TARGET Qt5::QOCIDriverPlugin PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::QOCIDriverPlugin PROPERTY QT_PLUGIN_CLASS_NAME "QOCIDriverPlugin")
