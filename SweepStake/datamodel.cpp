#include "datamodel.h"

DataModel::DataModel(QObject *parent) : QObject(parent)
{
}


player* DataModel::getPlayer(int index)
{
    return _players[index];
}

void DataModel::addPlayer(QString name, QString email)
{
    player* _player = new player(name.toStdString().c_str(), email.toStdString().c_str());
    _players.push_back(_player);
}
