#ifndef PLAYER_H
#define PLAYER_H

#include <string>

class player
{
public:
    player(std::string name, std::string email);
    std::string name();
    std::string email();
    void setName(std::string name);
    void setEmail(std::string email);

private:
    std::string _name;
    std::string _email;
};

#endif // PLAYER_H
