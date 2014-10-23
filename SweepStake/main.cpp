#include <QtWidgets/QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "datamodel.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    qmlRegisterType<DataModel>("datamodel", 1, 0, "DataModel");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
