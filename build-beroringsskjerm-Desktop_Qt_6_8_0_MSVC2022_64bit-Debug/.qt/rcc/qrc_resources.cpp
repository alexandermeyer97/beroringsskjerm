/****************************************************************************
** Resource object code
**
** Created by: The Resource Compiler for Qt version 6.8.0
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#ifdef _MSC_VER
// disable informational message "function ... selected for automatic inline expansion"
#pragma warning (disable: 4711)
#endif

static const unsigned char qt_resource_data[] = {
  // resources.qrc
  0x0,0x0,0x0,0x88,
  0x3c,
  0x52,0x43,0x43,0x3e,0xd,0xa,0x20,0x20,0x20,0x20,0x3c,0x71,0x72,0x65,0x73,0x6f,
  0x75,0x72,0x63,0x65,0x20,0x70,0x72,0x65,0x66,0x69,0x78,0x3d,0x22,0x2f,0x22,0x3e,
  0xd,0xa,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x3c,0x66,0x69,0x6c,0x65,0x3e,
  0x6d,0x6f,0x64,0x65,0x6c,0x73,0x2f,0x63,0x61,0x72,0x2e,0x67,0x6c,0x62,0x3c,0x2f,
  0x66,0x69,0x6c,0x65,0x3e,0x20,0x20,0x3c,0x21,0x2d,0x2d,0x20,0x45,0x6e,0x73,0x75,
  0x72,0x65,0x20,0x74,0x68,0x69,0x73,0x20,0x70,0x61,0x74,0x68,0x20,0x69,0x73,0x20,
  0x63,0x6f,0x72,0x72,0x65,0x63,0x74,0x20,0x2d,0x2d,0x3e,0xd,0xa,0x20,0x20,0x20,
  0x20,0x3c,0x2f,0x71,0x72,0x65,0x73,0x6f,0x75,0x72,0x63,0x65,0x3e,0xd,0xa,0x3c,
  0x2f,0x52,0x43,0x43,0x3e,0xd,0xa,
  
};

static const unsigned char qt_resource_name[] = {
  // resources.qrc
  0x0,0xd,
  0x8,0x52,0x80,0x63,
  0x0,0x72,
  0x0,0x65,0x0,0x73,0x0,0x6f,0x0,0x75,0x0,0x72,0x0,0x63,0x0,0x65,0x0,0x73,0x0,0x2e,0x0,0x71,0x0,0x72,0x0,0x63,
  
};

static const unsigned char qt_resource_struct[] = {
  // :
  0x0,0x0,0x0,0x0,0x0,0x2,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x1,
0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,
  // :/resources.qrc
  0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0,
0x0,0x0,0x1,0x91,0xff,0xc4,0x54,0xa2,

};

#ifdef QT_NAMESPACE
#  define QT_RCC_PREPEND_NAMESPACE(name) ::QT_NAMESPACE::name
#  define QT_RCC_MANGLE_NAMESPACE0(x) x
#  define QT_RCC_MANGLE_NAMESPACE1(a, b) a##_##b
#  define QT_RCC_MANGLE_NAMESPACE2(a, b) QT_RCC_MANGLE_NAMESPACE1(a,b)
#  define QT_RCC_MANGLE_NAMESPACE(name) QT_RCC_MANGLE_NAMESPACE2( \
        QT_RCC_MANGLE_NAMESPACE0(name), QT_RCC_MANGLE_NAMESPACE0(QT_NAMESPACE))
#else
#   define QT_RCC_PREPEND_NAMESPACE(name) name
#   define QT_RCC_MANGLE_NAMESPACE(name) name
#endif

#if defined(QT_INLINE_NAMESPACE)
inline namespace QT_NAMESPACE {
#elif defined(QT_NAMESPACE)
namespace QT_NAMESPACE {
#endif

bool qRegisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);
bool qUnregisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);

#ifdef QT_NAMESPACE
}
#endif

int QT_RCC_MANGLE_NAMESPACE(qInitResources_resources)();
int QT_RCC_MANGLE_NAMESPACE(qInitResources_resources)()
{
    int version = 3;
    QT_RCC_PREPEND_NAMESPACE(qRegisterResourceData)
        (version, qt_resource_struct, qt_resource_name, qt_resource_data);
    return 1;
}

int QT_RCC_MANGLE_NAMESPACE(qCleanupResources_resources)();
int QT_RCC_MANGLE_NAMESPACE(qCleanupResources_resources)()
{
    int version = 3;
    QT_RCC_PREPEND_NAMESPACE(qUnregisterResourceData)
       (version, qt_resource_struct, qt_resource_name, qt_resource_data);
    return 1;
}

#ifdef __clang__
#   pragma clang diagnostic push
#   pragma clang diagnostic ignored "-Wexit-time-destructors"
#endif

namespace {
   struct initializer {
       initializer() { QT_RCC_MANGLE_NAMESPACE(qInitResources_resources)(); }
       ~initializer() { QT_RCC_MANGLE_NAMESPACE(qCleanupResources_resources)(); }
   } dummy;
}

#ifdef __clang__
#   pragma clang diagnostic pop
#endif