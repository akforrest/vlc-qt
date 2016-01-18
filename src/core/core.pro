#-------------------------------------------------
#
# Project created by QtCreator 2016-01-18T20:13:13
#
#-------------------------------------------------

VLC_QT_TARGET_LIB = core

TARGET = VLCQtCore

HEADERS +=  Audio.h \
            Common.h \
            Enums.h \
            Equalizer.h \
            Error.h \
            Instance.h \
            Media.h \
            MediaList.h \
            MediaListPlayer.h \
            MediaPlayer.h \
            MetaManager.h \
            ModuleDescription.h \
            SharedExportCore.h \
            Stats.h \
            Video.h \
            VideoDelegate.h \
            VideoFrame.h \
            VideoMemoryStream.h

! include( ../../common.pri ) {
    error( "Couldn't find the common.pri file!" )
}

DEFINES += VLCQT_CORE_LIBRARY

SOURCES +=  Audio.cpp \
            Common.cpp \
            Enums.cpp \
            Equalizer.cpp \
            Error.cpp \
            Instance.cpp \
            Media.cpp \
            MediaList.cpp \
            MediaListPlayer.cpp \
            MediaPlayer.cpp \
            MetaManager.cpp \
            ModuleDescription.cpp \
            Video.cpp \
            VideoMemoryStream.cpp \
            VideoFrame.cpp

