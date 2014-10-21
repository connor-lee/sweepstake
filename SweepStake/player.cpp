#include "player.h"

player::player(std::string name, std::string email)
{
}

void player::getName()
{
    return _name;
}

void player::getEmail()
{
    return _email;
}

void player::setName(std::string name)
{
    _name = name;
}

void player::setEmail(std::string email)
{
    _email = email;
}
