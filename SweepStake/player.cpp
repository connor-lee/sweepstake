#include "player.h"

player::player(std::string name, std::string email)
{
}

std::string player::name()
{
    return _name;
}

std::string player::email()
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
