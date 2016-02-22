#ifndef LOGGING
#define LOGGING

#include <qdebug.h>

#define LOG_FATAL qCritical()<<"Fatal"
#define LOG_INFO  qInfo()
#define LOG_WARNING qWarning()
#define LOG_ERROR qCritical()

#define LOG_IF(info,condition) condition ? qCritical() : qInfo()
#define CHECK(condition) condition ? qCritical() : qInfo()


#define CHECK_EQ(val1, val2) val1 == val2 ? qInfo() : qCritical()
#define CHECK_NE(val1, val2) val1 != val2 ? qInfo() : qCritical()
#define CHECK_LE(val1, val2) val1 <= val2 ? qInfo() : qCritical()
#define CHECK_LT(val1, val2) val1 < val2 ? qInfo() : qCritical()
#define CHECK_GE(val1, val2) val1 >= val2 ? qInfo() : qCritical()
#define CHECK_GT(val1, val2) val1 > val2 ? qInfo() : qCritical()


template <typename T>
T* CheckNotNull( T* t) {
  if (t == NULL) {
    LOG_FATAL<<"Must not Null";
  }
  return t;
}
#define CHECK_NOTNULL(v) CheckNotNull((v))
#endif // LOGGING
