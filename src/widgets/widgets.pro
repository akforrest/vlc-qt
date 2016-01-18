#-------------------------------------------------
#
# Project created by QtCreator 2016-01-18T20:13:13
#
#-------------------------------------------------

VLC_QT_TARGET_LIB = widgets

! include( ../../common.pri ) {
    error( "Couldn't find the common.pri file!" )
}

QT       += widgets gui

TARGET = vlc-qt-$${VLC_QT_TARGET_LIB}

DEFINES += VLCQT_WIDGETS_LIBRARY

SOURCES +=  ControlAudio.cpp \
            ControlVideo.cpp \
            WidgetSeek.cpp \
            WidgetSeekProgress.cpp \
            WidgetVideo.cpp \
            WidgetVolumeSlider.cpp

HEADERS +=  ControlAudio.h \
            ControlVideo.h \
            SharedExportWidgets.h \
            WidgetSeek.h \
            WidgetSeekProgress.h \
            WidgetVideo.h \
            WidgetVolumeSlider.h

LIBS += -lvlc-qt-core
