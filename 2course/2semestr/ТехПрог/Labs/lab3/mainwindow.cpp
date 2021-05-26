у#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "QRegularExpression"
#include "QRegularExpressionMatch"

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


void MainWindow::on_pushButton_clicked()
{
    QString str = ui->textEdit->toPlainText();
    QRegularExpression regex("\\d+");
    QRegularExpressionMatch match = regex.match(str);
    QRegularExpressionMatchIterator iterator = regex.globalMatch(str);

    while (iterator.hasNext()){
        QRegularExpressionMatch match = iterator.next();
        QString str = match.captured();
        ui->lineEdit->setText(ui->lineEdit->text() + " " + str);
    }
}
