
defineTest(which) {
  file=$$1

  win32 {
      WHICH=where
      DEVNULL=NUL
  }
  else:unix {
      WHICH=which
      DEVNULL=/dev/null
  }

  WHICHOUT = $$system( $$WHICH $$file 2>$$DEVNULL )
  isEmpty( WHICHOUT ) {
    return(false)
  } else {
    return(true)
  }
}

QT += core
CONFIG += c++14

INCLUDEPATH += $$PWD

ROOT_DIR = $$PWD
SHADOW_DIR = stage

which(ccache) {
    !build_pass:message("Using ccache")
    QMAKE_CC=ccache $$QMAKE_CC
    QMAKE_CXX=ccache $$QMAKE_CXX
}

which(lcov) {
    !build_pass:message("Using lcov")

    unix {

        QMAKE_LDFLAGS += --coverage
        QMAKE_CXXFLAGS += --coverage

        LIBS += \
                -lgcov
    }
    else:macx {

        LDFLAGS=-lprofile_rt

        QMAKE_LDFLAGS += -fprofile-arcs -ftest-coverage
        QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage

    }
}
