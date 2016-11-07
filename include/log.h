#ifndef LOGGING
#define LOGGING
#if defined(CAFFE_SHARED_LIBRARY)
# define CAFFE_SHAREDSHARED_EXPORT Q_DECL_EXPORT
#else // if defined(CAFFE_SHARED_LIBRARY)
# define CAFFE_SHAREDSHARED_EXPORT Q_DECL_IMPORT
#endif // if defined(CAFFE_SHARED_LIBRARY)
#ifdef BUILD_JNI
#include <iostream>
#else
#include <qdebug.h>
#endif
#include <iostream>


#ifdef BUILD_JNI
#define LOG_INFO std::cout
#define LOG_WARNING std::cout
#define LOG_ERROR std::cerr
#define LOG_FATAL std::cerr
#else

QDebug operator<<(QDebug out, const std::string& str);
#define _LOG_INFO QMessageLogger(Q_NULLPTR, 0, Q_NULLPTR).info
#define _LOG_WARNING QMessageLogger(Q_NULLPTR, 0, Q_NULLPTR).warning
#define _LOG_ERROR QMessageLogger(Q_NULLPTR, 0, Q_NULLPTR).critical

#define LOG_INFO _LOG_INFO()
#define LOG_WARNING _LOG_WARNING()
#define LOG_ERROR _LOG_ERROR()
#define LOG_FATAL _LOG_ERROR()
#endif

#define LOG_IF(info, condition) \
    if (!(condition)) LOG_ERROR << "Check failed: [" << # condition << "] "
#define CHECK(condition) \
    if (!(condition)) LOG_ERROR << "Check failed: [" << # condition << "] "


#define CHECK_EQ(val1, val2) CHECK(val1 == val2)
#define CHECK_NE(val1, val2) CHECK(val1 != val2)
#define CHECK_LE(val1, val2) CHECK(val1 <= val2)
#define CHECK_LT(val1, val2) CHECK(val1 < val2)
#define CHECK_GE(val1, val2) CHECK(val1 >= val2)
#define CHECK_GT(val1, val2) CHECK(val1 > val2)


template<typename T>
T* CheckNotNull(T *t) {
    if (t == NULL) {
        LOG_FATAL << "Must not Null";
    }
    return t;
}

#define CHECK_NOTNULL(v) CheckNotNull((v))
#endif // LOGGING
