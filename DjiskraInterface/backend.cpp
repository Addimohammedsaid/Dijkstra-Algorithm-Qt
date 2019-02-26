#include "backend.h"

BackEnd::BackEnd(QObject *parent) : QObject (parent)
{

}

QString BackEnd::backend_Dest(){

    QString var = "hello";

    return var;
}
