#include <string>
#include "log.h"
#ifndef BUILD_JNI
QDebug operator<<(QDebug out, const std::string& str)
{
    out << str.c_str();
    return out;
}
#endif
