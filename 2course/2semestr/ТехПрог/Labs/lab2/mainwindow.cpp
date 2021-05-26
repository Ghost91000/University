#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QDebug>
#include <QRegularExpression>
#include <QVector>
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    connect(ui->pushButton0,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton1,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton2,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton3,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton4,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton5,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton6,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton7,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton8,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButton9,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButtonD,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButtonM,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButtonP,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));
    connect(ui->pushButtonMul,  SIGNAL(clicked()), this, SLOT(pushButtonClicked()));

    connect(ui->pushButtonCalc,  SIGNAL(clicked()), this, SLOT(Calculate()));
    connect(ui->pushButtonClr,  SIGNAL(clicked()), this, SLOT(Clear()));
}

void MainWindow::Calculate(){
    QString str = ui->lineEdit->text();
    double sums = 0;
    QVector<QChar> opps;

    QStringList list = str.split(QRegularExpression("[\\+|\\-|\\*|\\/]"));
    qDebug() << list.size();

    for (int i = 0; i < str.length(); i++){
        QChar ch = str[i];
        if (ch == '+' || ch == '-' || ch == '*' || ch == '/' ){
            opps.push_back(ch);
        }
    }

    qDebug() << list.size();
    for (int i = 1; i < list.size(); i++){
        qDebug() << list.size();
        double sum = 0;
        QChar tempOpp = opps[i - 1];
        qDebug() << tempOpp;
        if (opps[i - 1] == '+'){
            sum = list[i-1].toDouble() + list[i].toDouble();
        }

        if (opps[i - 1] == '-'){
            sum = list[i-1].toDouble() - list[i].toDouble();
        }

        if (opps[i - 1] == '*'){
            sum = list[i-1].toDouble() * list[i].toDouble();
        }
        if (opps[i - 1] == '/'){
            sum = list[i-1].toDouble() / list[i].toDouble();
        }
        list[i] = QString::number(sum);
    }
    if (ui->radioButtonDec->isChecked())
    {
        ui->lcdNumber->setDecMode();
    }
    else if (ui->radioButtonBin->isChecked())
    {
        ui->lcdNumber->setBinMode();
    }
    else
    {
        ui->lcdNumber->setHexMode();
    }
    qDebug() << ui->lcdNumber->mode();
    ui->lcdNumber->display(list[list.size() - 1].toDouble());


}

void MainWindow::Clear(){
    ui->lineEdit->clear();
    ui->lcdNumber->display(0);
}

void MainWindow::pushButtonClicked(){
    QPushButton* button = qobject_cast<QPushButton*>(sender());

    ui->lineEdit->setText(ui->lineEdit->text() + button->text());
}

void MainWindow::on_radioButtonDec_clicked()
{
    if (ui->radioButtonDec->isChecked()){
        ui->radioButtonDec->setChecked(false);
    }else{
        ui->radioButtonDec->setChecked(true);
        ui->radioButtonBin->setChecked(false);
        ui->radioButtonHex->setChecked(false);
    }
}

void MainWindow::on_radioButtonBin_clicked()
{
    if (ui->radioButtonBin->isChecked()){
        ui->radioButtonBin->setChecked(false);
    }else{
        ui->radioButtonDec->setChecked(false);
        ui->radioButtonBin->setChecked(true);
        ui->radioButtonHex->setChecked(false);
    }
}

void MainWindow::on_radioButtonHex_clicked()
{
    if (ui->radioButtonHex->isChecked()){
        ui->radioButtonHex->setChecked(false);
    }else{
        ui->radioButtonDec->setChecked(false);
        ui->radioButtonBin->setChecked(false);
        ui->radioButtonHex->setChecked(true);
    }
}


MainWindow::~MainWindow()
{
    delete ui;
}


