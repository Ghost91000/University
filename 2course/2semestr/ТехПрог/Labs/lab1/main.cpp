#include "mainwindow.h"

#include <QApplication>
#include <QVBoxLayout>
#include <QLCDNumber>
#include <QLabel>
#include <QFont>

class Window : QWidget{
public:
    Window(QWidget* parent = 0) : QWidget(parent){
        this->resize(300,200);
        this->setWindowTitle("QT");

        QVBoxLayout* QVBox = new QVBoxLayout(this);

        QLCDNumber* number = new QLCDNumber(this);
        number->display(22.22);

        QLabel* label = new QLabel(this);
        QFont font = label->font();
        font.setPixelSize(20);
        font.setUnderline(true);
        label->setFont(font);
        label->setText("My first QT programm");

        QVBox->addWidget(number);
        QVBox->addWidget(label,0,Qt::AlignCenter);

        this->setLayout(QVBox);
        this->show();
    }
};

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Window* w = new Window();

    return a.exec();
}
