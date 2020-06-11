
add_library(Qt5::MultiPageWidgetPlugin MODULE IMPORTED)


_populate_Designer_plugin_properties(MultiPageWidgetPlugin RELEASE "designer/containerextension.dll" FALSE)

list(APPEND Qt5Designer_PLUGINS Qt5::MultiPageWidgetPlugin)
set_property(TARGET Qt5::Designer APPEND PROPERTY QT_ALL_PLUGINS_designer Qt5::MultiPageWidgetPlugin)
set_property(TARGET Qt5::MultiPageWidgetPlugin PROPERTY QT_PLUGIN_TYPE "designer")
set_property(TARGET Qt5::MultiPageWidgetPlugin PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::MultiPageWidgetPlugin PROPERTY QT_PLUGIN_CLASS_NAME "MultiPageWidgetPlugin")
