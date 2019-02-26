/****************************************************************************
** Meta object code from reading C++ file 'djiskraalgo.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../DjiskraInterface/djiskraalgo.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QVector>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'djiskraalgo.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_DjiskraAlgo_t {
    QByteArrayData data[17];
    char stringdata0[151];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_DjiskraAlgo_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_DjiskraAlgo_t qt_meta_stringdata_DjiskraAlgo = {
    {
QT_MOC_LITERAL(0, 0, 11), // "DjiskraAlgo"
QT_MOC_LITERAL(1, 12, 11), // "destChanged"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 11), // "pathChanged"
QT_MOC_LITERAL(4, 37, 15), // "distanceChanged"
QT_MOC_LITERAL(5, 53, 10), // "srcChanged"
QT_MOC_LITERAL(6, 64, 11), // "initialiser"
QT_MOC_LITERAL(7, 76, 14), // "array_distance"
QT_MOC_LITERAL(8, 91, 1), // "a"
QT_MOC_LITERAL(9, 93, 1), // "b"
QT_MOC_LITERAL(10, 95, 17), // "array_setDistance"
QT_MOC_LITERAL(11, 113, 1), // "s"
QT_MOC_LITERAL(12, 115, 4), // "dest"
QT_MOC_LITERAL(13, 120, 3), // "src"
QT_MOC_LITERAL(14, 124, 4), // "path"
QT_MOC_LITERAL(15, 129, 12), // "QVector<int>"
QT_MOC_LITERAL(16, 142, 8) // "distance"

    },
    "DjiskraAlgo\0destChanged\0\0pathChanged\0"
    "distanceChanged\0srcChanged\0initialiser\0"
    "array_distance\0a\0b\0array_setDistance\0"
    "s\0dest\0src\0path\0QVector<int>\0distance"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_DjiskraAlgo[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       4,   66, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   49,    2, 0x06 /* Public */,
       3,    0,   50,    2, 0x06 /* Public */,
       4,    0,   51,    2, 0x06 /* Public */,
       5,    0,   52,    2, 0x06 /* Public */,

 // methods: name, argc, parameters, tag, flags
       6,    0,   53,    2, 0x02 /* Public */,
       7,    2,   54,    2, 0x02 /* Public */,
      10,    3,   59,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Int, QMetaType::Int, QMetaType::Int,    8,    9,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::QString,    8,    9,   11,

 // properties: name, type, flags
      12, QMetaType::QString, 0x00495103,
      13, QMetaType::QString, 0x00495103,
      14, 0x80000000 | 15, 0x0049510b,
      16, QMetaType::Int, 0x00495103,

 // properties: notify_signal_id
       0,
       3,
       1,
       2,

       0        // eod
};

void DjiskraAlgo::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        DjiskraAlgo *_t = static_cast<DjiskraAlgo *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->destChanged(); break;
        case 1: _t->pathChanged(); break;
        case 2: _t->distanceChanged(); break;
        case 3: _t->srcChanged(); break;
        case 4: _t->initialiser(); break;
        case 5: { int _r = _t->array_distance((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 6: _t->array_setDistance((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< QString(*)>(_a[3]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (DjiskraAlgo::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DjiskraAlgo::destChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (DjiskraAlgo::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DjiskraAlgo::pathChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (DjiskraAlgo::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DjiskraAlgo::distanceChanged)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (DjiskraAlgo::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DjiskraAlgo::srcChanged)) {
                *result = 3;
                return;
            }
        }
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 2:
            *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QVector<int> >(); break;
        }
    }

#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        DjiskraAlgo *_t = static_cast<DjiskraAlgo *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->dest(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->src(); break;
        case 2: *reinterpret_cast< QVector<int>*>(_v) = _t->path(); break;
        case 3: *reinterpret_cast< int*>(_v) = _t->distance(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        DjiskraAlgo *_t = static_cast<DjiskraAlgo *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setDest(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setSrc(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->setPath(*reinterpret_cast< QVector<int>*>(_v)); break;
        case 3: _t->setDistance(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject DjiskraAlgo::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_DjiskraAlgo.data,
    qt_meta_data_DjiskraAlgo,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *DjiskraAlgo::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *DjiskraAlgo::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_DjiskraAlgo.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int DjiskraAlgo::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 4;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void DjiskraAlgo::destChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void DjiskraAlgo::pathChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void DjiskraAlgo::distanceChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void DjiskraAlgo::srcChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
