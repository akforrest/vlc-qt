#-------------------------------------------------
#
# Project created by QtCreator 2016-01-18T20:13:13
#
#-------------------------------------------------

DEFINES += LIBVLCQT_VERSION="1.0.0"
DEFINES += LIBVLCQT_VERSION_VCS="2c15d72"
DEFINES += LIBVLCQT_VERSION_MAJOR=1
DEFINES += LIBVLCQT_VERSION_MINOR=0
DEFINES += LIBVLCQT_VERSION_PATCH=0
DEFINES += LIBVLCQT_VERSION_QML_MAJOR=1
DEFINES += LIBVLCQT_VERSION_QML_MINOR=0
DEFINES += LIBVLC_VERSION=0x020200

TEMPLATE = lib
android {
    CONFIG += staticlib
}

VLC_QT_ROOT = $$PWD

CONFIG(debug, debug|release) {
    BUILD_MODE = debug
}
else {
    BUILD_MODE = release
}

VLC_SDK = sdk
TARGET_OS = win

android {
    VLC_SDK = sdk_android
    TARGET_OS = android
}

DESTDIR = $$PWD/../vlc-qt-build/$${TARGET_OS}
LIBS += -L$${DESTDIR}

INCLUDEPATH += $${VLC_QT_ROOT}/src

MOC_DIR = $${VLC_QT_ROOT}/_generated/$${VLC_QT_TARGET_LIB}/$${BUILD_MODE}/moc
RCC_DIR = $${VLC_QT_ROOT}/_generated/$${VLC_QT_TARGET_LIB}/$${BUILD_MODE}/rc
OBJECTS_DIR = $${VLC_QT_ROOT}/_generated/$${VLC_QT_TARGET_LIB}/$${BUILD_MODE}/obj

# VLC
VLC_ROOT_PATH = C:/dev/vlc-2.2.1

INCLUDEPATH += $${VLC_ROOT_PATH}/$${VLC_SDK}/include
INCLUDEPATH += $${VLC_ROOT_PATH}/$${VLC_SDK}/include/vlc/plugins

android {
    DEFINES += __MINGW32__

    LIBS += $${VLC_ROOT_PATH}/android_so/libvlcjni.so
}
else {
    LIBS += -L$${VLC_ROOT_PATH}
    LIBS += -llibvlc -llibvlccore
}

TARGET = $${LIBNAME}
win32 {
    CONFIG(debug, debug|release) {
        TARGET = $${TARGET}d
    }
}

# HEADERS
header_files.files = $$HEADERS
header_files.path = $${DESTDIR}/include/$${LIBNAME}
INSTALLS += header_files


