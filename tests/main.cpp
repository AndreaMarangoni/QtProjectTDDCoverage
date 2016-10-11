#include <QCoreApplication>
#include <QTest>

#include "Dummy.h"

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);
    
    Dummy dummy;
    
    return QTest::qExec(&dummy, argc, argv);
}
