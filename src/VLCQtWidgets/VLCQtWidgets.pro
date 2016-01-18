#-------------------------------------------------
#
# Project created by QtCreator 2016-01-18T20:13:13
#
#-------------------------------------------------

VLC_QT_TARGET_LIB = widgets

LIBNAME = VLCQtWidgets

HEADERS +=  ControlAudio.h \
            ControlVideo.h \
            SharedExportWidgets.h \
            WidgetSeek.h \
            WidgetSeekProgress.h \
            WidgetVideo.h \
            WidgetVolumeSlider.h

! include( ../../common.pri ) {
    error( "Couldn't find the common.pri file!" )
}

QT       += widgets gui

DEFINES += VLCQT_WIDGETS_LIBRARY

SOURCES +=  ControlAudio.cpp \
            ControlVideo.cpp \
            WidgetSeek.cpp \
            WidgetSeekProgress.cpp \
            WidgetVideo.cpp \
            WidgetVolumeSlider.cpp

VLC_QT_CORE_LIB = VLCQtCore
win32 {
    CONFIG(debug, debug|release) {
        VLC_QT_CORE_LIB = $${VLC_QT_CORE_LIB}d
    }
}
LIBS += -l$${VLC_QT_CORE_LIB}
