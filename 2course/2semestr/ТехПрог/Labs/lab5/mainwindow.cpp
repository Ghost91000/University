#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    QString str = QFileDialog::getOpenFileName(this,tr("OPEN"),"",tr("Text Files (*.txt);;All (*.*)"));
    if (str !=""){
        QFile f(str);
        f.open(QIODevice::ReadOnly);
        QTextStream in(&f);
        QFileInfo fileInfo(f.fileName());
        ui->textEdit->setText(f.fileName() + "\nBirth Date: " + fileInfo.birthTime().toString() + "\nSize: " + QString::number(fileInfo.size()) );
        ui->textBrowser->setText(in.readAll());
        f.close();
    }



}

MainWindow::~MainWindow()
{
    delete ui;
}

