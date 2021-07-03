#include "mainwindow.h"
#include "ui_mainwindow.h"
MainWindow::MainWindow(QWidget *parent): QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("db.sqlite");
    db.open();
    q = new QSqlQuery();

    q->exec("CREATE TABLE base(login TEXT PRIMARY KEY, name TEXT, age INT, password TEXT);");
    q->exec("INSERT INTO base (login, name, age, password) VALUES ('Ghost91000','vlad',19,'qwerty');");
    q->exec("INSERT INTO base (login, name, age, password) VALUES ('Olega','Oleg',30,'123456');");
    q->exec("INSERT INTO base (login, name, age, password) VALUES ('qwerty','igor',23,'0000000');");
    q->exec("INSERT INTO base (login, name, age, password) VALUES ('vanya','Ivan',27,'ytrewq');");
    q->exec("INSERT INTO base (login, name, age, password) VALUES ('ku','Danila',29,'zxcvb');");


    modelReq = new QSqlTableModel(this,db);
    model = new QSqlTableModel(this, db);
    model->setTable("base");
    model->setHeaderData(0, Qt::Horizontal, QObject::tr("Login"));
    model->setHeaderData(1, Qt::Horizontal, QObject::tr("Name"));
    model->setHeaderData(2, Qt::Horizontal, QObject::tr("Age"));
    model->setHeaderData(3, Qt::Horizontal, QObject::tr("Password"));
    model->select();

    ui->tableView->setModel(model);
    ui->tableView_2->setModel(modelReq);
}

MainWindow::~MainWindow()
{
    model->submitAll();
    db.close();
    delete model;
    delete ui;
}


void MainWindow::on_pushButton_clicked()
{
    QString s = ui->lineEdit->text();
    QString req = "SELECT * FROM base WHERE login = '" + s + "';" ;
    qReq = new QSqlQuery(db);
    qReq->exec(req);
    modelReq->setQuery(*qReq);
}


void MainWindow::on_pushButton_2_clicked()
{
    QString s = ui->lineEdit_2->text();
    QString req = "SELECT * FROM base WHERE name = '" + s + "';" ;
    qReq = new QSqlQuery(db);
    qReq->exec(req);
    modelReq->setQuery(*qReq);
}


void MainWindow::on_pushButton_3_clicked()
{
    QString s = ui->lineEdit_3->text();
    QString req = "SELECT * FROM base WHERE age = " + s + ";" ;
    qReq = new QSqlQuery(db);
    qReq->exec(req);
    modelReq->setQuery(*qReq);
}

