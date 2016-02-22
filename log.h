#ifndef LOGGING
#define LOGGING
#include <iostream>
#include <qdebug.h>

#define LOG_FATAL std::cout<<"Fatal"
#define LOG_INFO  std::cout
#define LOG_WARNING std::cout<<"Warning"
#define LOG_ERROR std::cout<<"Error"

#define LOG_IF(info,condition) condition ? LOG_ERROR : LOG_INFO
#define CHECK(condition) condition ? LOG_ERROR : LOG_INFO


#define CHECK_EQ(val1, val2) val1 == val2 ? LOG_INFO : LOG_ERROR
#define CHECK_NE(val1, val2) val1 != val2 ? LOG_INFO : LOG_ERROR
#define CHECK_LE(val1, val2) val1 <= val2 ? LOG_INFO : LOG_ERROR
#define CHECK_LT(val1, val2) val1 < val2 ? LOG_INFO : LOG_ERROR
#define CHECK_GE(val1, val2) val1 >= val2 ? LOG_INFO : LOG_ERROR
#define CHECK_GT(val1, val2) val1 > val2 ? LOG_INFO : LOG_ERROR


template <typename T>
T* CheckNotNull( T* t) {
  if (t == NULL) {
    LOG_FATAL<<"Must not Null";
  }
  return t;
}
#define CHECK_NOTNULL(v) CheckNotNull((v))
#endif // LOGGING
