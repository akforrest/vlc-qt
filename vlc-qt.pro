#-------------------------------------------------
#
# Project created by QtCreator 2016-01-18T20:13:13
#
#-------------------------------------------------

QT       += widgets

QT       -= gui

DEFINES += VLC_QT_MAJOR=1
DEFINES += VLC_QT_MINOR=0
DEFINES += VLC_QT_PATCH=0

TARGET = vlc-qt
TEMPLATE = lib

DEFINES += VLCQT_LIBRARY VLCQT_CORE_LIBRARY VLCQT_WIDGET_LIBRARY

INCLUDEPATH += src/

SOURCES +=  src/core/Audio.cpp \
            src/core/Common.cpp \
            src/core/Enums.cpp \
            src/core/Equalizer.cpp \
            src/core/Error.cpp \
            src/core/Instance.cpp \
            src/core/Media.cpp \
            src/core/MediaList.cpp \
            src/core/MediaListPlayer.cpp \
            src/core/MediaPlayer.cpp \
            src/core/MetaManager.cpp \
            src/core/ModuleDescription.cpp \
            src/core/Video.cpp \
            src/core/VideoMemoryStream.cpp \
            src/core/VideoFrame.cpp

MOC_DIR = $$_PRO_FILE_PWD_/_generated/moc
RCC_DIR = $$_PRO_FILE_PWD_/_generated/rc
OBJECTS_DIR = $$_PRO_FILE_PWD_/_generated/obj

HEADERS +=  src/core/Audio.h \
            src/core/Common.h \
            src/core/Enums.h \
            src/core/Equalizer.h \
            src/core/Error.h \
            src/core/Instance.h \
            src/core/Media.h \
            src/core/MediaList.h \
            src/core/MediaListPlayer.h \
            src/core/MediaPlayer.h \
            src/core/MetaManager.h \
            src/core/ModuleDescription.h \
            src/core/SharedExportCore.h \
            src/core/Stats.h \
            src/core/Video.h \
            src/core/VideoDelegate.h \
            src/core/VideoFrame.h \
            src/core/VideoMemoryStream.h \
            src/Config.h

# VLC
VLC_ROOT_PATH = C:/dev/vlc-2.2.1-win32/vlc-2.2.1

INCLUDEPATH += $${VLC_ROOT_PATH}/sdk/include
INCLUDEPATH += $${VLC_ROOT_PATH}/sdk/include/vlc/plugins
LIBS += -L$${VLC_ROOT_PATH}
LIBS += -llibvlc -llibvlccore
