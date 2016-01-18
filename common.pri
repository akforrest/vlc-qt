#-------------------------------------------------
#
# Project created by QtCreator 2016-01-18T20:13:13
#
#-------------------------------------------------

DEFINES += LIBVLCQT_VERSION=0x020200
DEFINES += LIBVLCQT_VERSION_VCS=0x020200
DEFINES += LIBVLCQT_VERSION_MAJOR=1
DEFINES += LIBVLCQT_VERSION_MINOR=0
DEFINES += LIBVLCQT_VERSION_PATCH=0
DEFINES += LIBVLCQT_VERSION_QML_MAJOR=1
DEFINES += LIBVLCQT_VERSION_QML_MINOR=0
DEFINES += LIBVLC_VERSION=0x020200

TEMPLATE = lib

VLC_QT_ROOT = $$PWD

CONFIG(debug, debug|release) {
    BUILD_MODE = debug
}
else {
    BUILD_MODE = release
}

DESTDIR = $$PWD/../vlc-qt-build
LIBS += -L$${DESTDIR}

INCLUDEPATH += $${VLC_QT_ROOT}/src

MOC_DIR = $${VLC_QT_ROOT}/_generated/$${VLC_QT_TARGET_LIB}/$${BUILD_MODE}/moc
RCC_DIR = $${VLC_QT_ROOT}/_generated/$${VLC_QT_TARGET_LIB}/$${BUILD_MODE}/rc
OBJECTS_DIR = $${VLC_QT_ROOT}/_generated/$${VLC_QT_TARGET_LIB}/$${BUILD_MODE}/obj

# VLC
VLC_ROOT_PATH = C:/dev/vlc-2.2.1-win32/vlc-2.2.1

INCLUDEPATH += $${VLC_ROOT_PATH}/sdk/include
INCLUDEPATH += $${VLC_ROOT_PATH}/sdk/include/vlc/plugins
LIBS += -L$${VLC_ROOT_PATH}
LIBS += -llibvlc -llibvlccore

win32 {
    CONFIG(debug, debug|release) {
        TARGET = $${TARGET}d
    }
}

# HEADERS
header_files.files = $$HEADERS
header_files.path = $${DESTDIR}/include/$${TARGET}
INSTALLS += header_files

INCLUDEPATH += $${DESTDIR}/include


