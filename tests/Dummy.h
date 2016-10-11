#ifndef DUMMY_H
#define DUMMY_H

#include <QObject>

class Dummy : public QObject
{
    Q_OBJECT
private slots:
    void should_be_just_dummy();
};

#endif // DUMMY_H
