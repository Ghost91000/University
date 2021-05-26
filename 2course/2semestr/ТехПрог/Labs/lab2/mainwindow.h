#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QPushButton>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void pushButtonClicked();
    void Calculate();
    void Clear();
    void on_radioButtonDec_clicked();

    void on_radioButtonBin_clicked();

    void on_radioButtonHex_clicked();

private:
    Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
