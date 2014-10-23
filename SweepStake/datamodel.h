#ifndef DATAMODEL_H
#define DATAMODEL_H

#include "player.h"

#include <vector>
#include <QObject>

class DataModel : public QObject
{
Q_OBJECT

    Q_PROPERTY(QString getPlayer READ getPlayer NOTIFY getPlayerChanged)

public:
    DataModel(QObject *parent = 0);
    player* getPlayer(int index);
    Q_INVOKABLE void addPlayer(QString name, QString email);

private:
    std::vector<player*> _players;

signals:
    void getPlayerChanged();

};

#endif // DATAMODEL_H
