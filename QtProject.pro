include(config.pri)

TARGET = QtProjectTarget

TEMPLATE = app

include(src/src.pri)

test {
    message(Test build)

    QT += testlib
    TARGET = UnitTests

    include(tests/tests.pri)

} else {
    message(Normal build)
}
