#ifndef LOGGING
#define LOGGING
#include <qdebug.h>
#if defined(CAFFE_SHARED_LIBRARY)
#  define CAFFE_SHAREDSHARED_EXPORT Q_DECL_EXPORT
#else
#  define CAFFE_SHAREDSHARED_EXPORT Q_DECL_IMPORT
#endif



QDebug operator<<(QDebug out, const std::string& str);


#define LOG_FATAL qCritical()<<"Fatal:"
#define LOG_INFO  qDebug()
#define LOG_WARNING qWarning()
#define LOG_ERROR qCritical()


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
