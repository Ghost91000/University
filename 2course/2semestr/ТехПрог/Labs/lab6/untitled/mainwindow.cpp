#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QColorDialog>
#include <QPalette>

QString styleB = "#ffffff";
QString styleF = "#000000";

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{

    ui->setupUi(this);
}


MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::UpdateStyle(){
    QString final = "color: " + styleF + ";background-color: " + styleB;
    ui->lineEdit->setText(final);
    ui->pushButton->setStyleSheet(final);
    ui->pushButton_2->setStyleSheet(final);
}

void MainWindow::on_pushButton_clicked()
{
    QColor r = QColorDialog::getColor();
    styleB = r.name();
    UpdateStyle();

}


void MainWindow::on_pushButton_2_clicked()
{
    QColor r = QColorDialog::getColor();
    styleF = r.name();
    UpdateStyle();
}

