//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormPaint(TObject *Sender)
{
#define WB 140 //ширина полотнища
#define HB 160 //высотаполотнища
#define D 100 //диаметр колец
int x,y;
AnsiString st="Citius, Altius, Fortius!";
// определим координаты левого верхнего угла флага
x =(ClientWidth-WB)/2;
y = (ClientHeight- HB)/2 - Canvas->Font->Size; // полотнище
// выбираем цвет полотнища Ц белый
Canvas ->Brush->Color= (TColor)RGB(255,255,255); //–исуем пр€моугольник полотнища
Canvas -> Rectangle(x-WB,y-HB/2,x+1.8*WB,y+HB);
int x1 = (ClientWidth- Canvas -> TextWidth(st))/2;
/*„тобы область вывода текста не была закрашена цветом фона, а также чтобы метод Ellipse рисовал окружность, а не круг, значение свойства Brush->
Syle должно быть равно bsClear */
Canvas -> Pen->Color= clWhite;
bsClear;
//вывод девиза
Canvas -> TextOutW(x1,y+HB+6,st); // ширина колец Ц 2 пиксел€
Canvas -> Pen->Width=5;
//первый р€д колец
//*3,2*D Цширина области, занимаема€ кольцами первого р€да*/
x = x + (WB-3.2*D)/2;
y =y +(HB-1.8*D)/2;
Canvas -> Pen->Color= (TColor)RGB(0,0,225); //синий
Canvas -> Ellipse(x,y,x+D,y+D);
x= x +1.1*D;
Canvas -> Pen->Color= clBlack; //черный
Canvas -> Ellipse(x,y,x+D,y+D);
x= x +1.1*D;
Canvas -> Pen->Color= (TColor)RGB(225,0,0);
//красный
Canvas -> Ellipse(x,y,x+D,y+D);
// рисуем второй р€д колец
x= x -D*0.55;
y = y + 0.6*D;
Canvas->Pen->Color=(TColor)RGB(0,128,0); //зеленый
Canvas -> Ellipse(x,y,x+D,y+D);
x= x-D*1.1;
Canvas -> Pen->Color= (TColor)RGB(250,217,25);//желтый
Canvas -> Ellipse(x,y,x+D,y+D);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
Form1 -> Close();
}
//---------------------------------------------------------------------------
