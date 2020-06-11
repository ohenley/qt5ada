
add_library(Qt5::TicTacToePlugin MODULE IMPORTED)


_populate_Designer_plugin_properties(TicTacToePlugin RELEASE "designer/taskmenuextension.dll" FALSE)

list(APPEND Qt5Designer_PLUGINS Qt5::TicTacToePlugin)
set_property(TARGET Qt5::Designer APPEND PROPERTY QT_ALL_PLUGINS_designer Qt5::TicTacToePlugin)
set_property(TARGET Qt5::TicTacToePlugin PROPERTY QT_PLUGIN_TYPE "designer")
set_property(TARGET Qt5::TicTacToePlugin PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::TicTacToePlugin PROPERTY QT_PLUGIN_CLASS_NAME "TicTacToePlugin")
