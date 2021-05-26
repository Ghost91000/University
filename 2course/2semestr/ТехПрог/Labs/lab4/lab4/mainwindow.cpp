#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "vector"

#include <QMessageBox>
QString str = "";
QVector<QString> words{
    "Алчевск","Луганск", "Брянка", "Стаханов", "Красный луч"
};
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

   QString input = ui->lineEdit->text();
   ui->lineEdit->clear();
   bool WinCondition = true;
   if (str != ""){
       if (input[0].toLower() != str[str.length()- 1]){
           QMessageBox box;
           box.setText("Вы проиграли!!!");
           box.show();
           int ret = box.exec();
           WinCondition = false;
           this->close();
       }
   }
   QChar ch = input[input.length() - 1];

   if (words.length() != 0){
       for (int i = 0;i < words.length(); i++){
       if (words[i][0].toLower() == ch){
           ui->textEdit->setText(ui->textEdit->toPlainText() + words[i] + "\n");
           str = words[i];
           words.remove(i);
           WinCondition = false;
           break;
            }
        }

    }
   if (WinCondition){
       QMessageBox box;
       box.setText("Вы выиграли!!!");
       box.show();
       int ret = box.exec();
       this->close();
   }
}

