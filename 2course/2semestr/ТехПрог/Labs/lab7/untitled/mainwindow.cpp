#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QColor>
#include <QPainter>
#include <QPen>
#include <QTimer>
#include <QTimerEvent>
#include <QThread>
#include <QMessageBox>
int R = 200;
int degrees = 5;
QTimer* t;
void MainWindow::Redraw(){
    degrees += 1;
    update();
}
void QWidget::paintEvent(QPaintEvent *event){
    QPainter p(this);
    QColor white(Qt::white);
    QBrush whitePen(white);
    p.setBrush(whitePen);
    p.fillRect(0,0,0,0,whitePen);

    QColor red(Qt::red);
    QPen pen(red);
    pen.setWidth(5);
    p.setPen(pen);

    int x = (int)(250 + R * cos (degrees * M_PI/180));
    int y = (int)( 250 + R * sin (degrees * M_PI/180));
    p.drawLine(250,250,x,y);

}
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    w = new QWidget;
    w->setMinimumSize(500,500);
    this->setMaximumSize(500,500);
    this->setCentralWidget(w);
    ui->setupUi(this);
    this->show();

    t = new QTimer();
    t->setInterval(10);
    connect(t, SIGNAL(timeout()),this, SLOT(Redraw()));
    t->start();
};



MainWindow::~MainWindow()
{
    delete ui;
}
/*
    QPainter p(widget);
    QColor red(Qt::red);
    QPen pen(red);
    p.setPen(pen);
    p.drawLine(0,0,100,100);
*/


