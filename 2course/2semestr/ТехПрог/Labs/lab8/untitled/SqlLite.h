#ifndef SQLLITE_H
#define SQLLITE_H
#include <QString>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSql>
class SqlLite{
    QSqlDatabase db;

    SqlLite(){
        db = QSqlDatabase::addDatabase("QSQLITE");
        db.open();
    }
};

#endif // SQLLITE_H
