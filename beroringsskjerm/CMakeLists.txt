#ChatGPT was used to explain the CMakerList file - AM

cmake_minimum_required(VERSION 3.16)

project(beroringsskjerm VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required Qt components
find_package(Qt6 REQUIRED COMPONENTS Quick Quick3D)

# Create the executable target
qt_add_executable(appberoringsskjerm
    main.cpp
)

# Link the required Qt libraries to the target
target_link_libraries(appberoringsskjerm
    PRIVATE Qt6::Quick Qt6::Quick3D
)

# QML module (after the executable target is created)
qt_add_qml_module(appberoringsskjerm
    URI beroringsskjerm
    VERSION 1.0
    QML_FILES
        main.qml
        library/Info_popup.qml
        library/TopSectionPopup.qml
        library/MenuSection.qml
        library/SettingsPage.qml
        library/OverviewPage.qml
        library/ColorButton.qml
)

# Set properties for the target
set_target_properties(appberoringsskjerm PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# Install rules
install(TARGETS appberoringsskjerm
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
