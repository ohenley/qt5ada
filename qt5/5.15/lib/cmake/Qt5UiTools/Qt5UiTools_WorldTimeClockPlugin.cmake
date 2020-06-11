
add_library(Qt5::WorldTimeClockPlugin MODULE IMPORTED)


_populate_UiTools_plugin_properties(WorldTimeClockPlugin RELEASE "designer/worldtimeclockplugin.dll" FALSE)

list(APPEND Qt5UiTools_PLUGINS Qt5::WorldTimeClockPlugin)
set_property(TARGET Qt5::UiTools APPEND PROPERTY QT_ALL_PLUGINS_designer Qt5::WorldTimeClockPlugin)
set_property(TARGET Qt5::WorldTimeClockPlugin PROPERTY QT_PLUGIN_TYPE "designer")
set_property(TARGET Qt5::WorldTimeClockPlugin PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::WorldTimeClockPlugin PROPERTY QT_PLUGIN_CLASS_NAME "WorldTimeClockPlugin")
