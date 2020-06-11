
add_library(Qt5::AnalogClockPlugin MODULE IMPORTED)


_populate_UiTools_plugin_properties(AnalogClockPlugin RELEASE "designer/customwidgetplugin.dll" FALSE)

list(APPEND Qt5UiTools_PLUGINS Qt5::AnalogClockPlugin)
set_property(TARGET Qt5::UiTools APPEND PROPERTY QT_ALL_PLUGINS_designer Qt5::AnalogClockPlugin)
set_property(TARGET Qt5::AnalogClockPlugin PROPERTY QT_PLUGIN_TYPE "designer")
set_property(TARGET Qt5::AnalogClockPlugin PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::AnalogClockPlugin PROPERTY QT_PLUGIN_CLASS_NAME "AnalogClockPlugin")
