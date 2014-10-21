#ifndef PLAYER_H
#define PLAYER_H

using namespace std;

class player
{
public:
    player(std::string name, std::string email);
    void getName();
    void getEmail();
    void setName(string name);
    void setEmail(string email);

private:
    string _name;
    string _email;
};

#endif // PLAYER_H
