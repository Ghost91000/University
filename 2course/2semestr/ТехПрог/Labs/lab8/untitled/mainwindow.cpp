#include "mainwindow.h"
#include "ui_mainwindow.h"
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->tableWidget->setRowCount(1);
    ui->tableWidget->setItem(0,0,new QTableWidgetItem("name"));
    update();
}

MainWindow::~MainWindow()
{
    delete ui;
}

