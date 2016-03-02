#include <string>
#include "log.h"
QDebug operator<<(QDebug out, const std::string& str)
{
    out << str.c_str();
    return out;
}
