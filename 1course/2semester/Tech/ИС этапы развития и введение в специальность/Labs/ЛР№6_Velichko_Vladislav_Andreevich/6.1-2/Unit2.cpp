//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
const float Pi= 3.14159;
float x, y; //координата функции
int px,py; // координата пиксела
for (px = 0; px <= Image1->Width; px++)
{
//x – координата точки функции, соответствующая пикселю с координатой px
x = px*4 * Pi/Image1->Width;
y = sin(x);
//py – координата пикселя, соответствующая координате y точки
py = Image1 -> Height - (y + 1)* Image1 -> Height/2;
// устанавливается цвет пикселя для отображения на холсте
Image1->Canvas-> Pixels[px][py] = clBlack;
}
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button2Click(TObject *Sender)
{
const float Pi= 3.14159;
float x, y; //координаты точки функции
int px,py;// Координаты пикселя, соответствующие
Image2->Canvas->MoveTo(0,Image2->Height/2); //точке с координатами x,y
for (px = 0; px <= Image2->Width; px++)
{
//x – координата, соответствующая пикселю
//с координатой px
x = px*4 * Pi/Image2->Width;
y = sin(x);
// y – координата пикселя, соответствующая координате y
py = Image2 -> Height - (y + 1)* Image2 -> Height/2;
// проводится линия на втором графике
Image2->Canvas->LineTo(px,py);
}
}
//---------------------------------------------------------------------------
