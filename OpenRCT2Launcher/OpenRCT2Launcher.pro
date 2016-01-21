#-------------------------------------------------
#
# Project created by QtCreator 2016-01-15T22:23:35
#
#-------------------------------------------------

QT       += core gui widgets network webkitwidgets

TARGET = OpenRCT2Launcher
TEMPLATE = app


SOURCES += main.cpp\
           mainwindow.cpp \
           updater.cpp

HEADERS  += mainwindow.h \
            updater.h \
    platform.h

FORMS    += mainwindow.ui

CONFIG += c++11

# the libarchive code is intentionally using deprecated code
# to maintain compatibility with libarchive 2
QMAKE_CXXFLAGS += -Wno-deprecated

macx {
    INCLUDEPATH += /usr/local/opt/libarchive/include
}

LIBS += -larchive
