include(config.pri)

TARGET = QtProjectTarget

TEMPLATE = app

include(src.pri)

test {
    message(Test build)

    QT += testlib
    TARGET = UnitTests

    include(tests.pri)

} else {
    message(Normal build)
}
