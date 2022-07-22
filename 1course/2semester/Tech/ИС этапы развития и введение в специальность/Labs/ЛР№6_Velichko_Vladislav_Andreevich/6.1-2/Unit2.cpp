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
float x, y; //���������� �������
int px,py; // ���������� �������
for (px = 0; px <= Image1->Width; px++)
{
//x � ���������� ����� �������, ��������������� ������� � ����������� px
x = px*4 * Pi/Image1->Width;
y = sin(x);
//py � ���������� �������, ��������������� ���������� y �����
py = Image1 -> Height - (y + 1)* Image1 -> Height/2;
// ��������������� ���� ������� ��� ����������� �� ������
Image1->Canvas-> Pixels[px][py] = clBlack;
}
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button2Click(TObject *Sender)
{
const float Pi= 3.14159;
float x, y; //���������� ����� �������
int px,py;// ���������� �������, ���������������
Image2->Canvas->MoveTo(0,Image2->Height/2); //����� � ������������ x,y
for (px = 0; px <= Image2->Width; px++)
{
//x � ����������, ��������������� �������
//� ����������� px
x = px*4 * Pi/Image2->Width;
y = sin(x);
// y � ���������� �������, ��������������� ���������� y
py = Image2 -> Height - (y + 1)* Image2 -> Height/2;
// ���������� ����� �� ������ �������
Image2->Canvas->LineTo(px,py);
}
}
//---------------------------------------------------------------------------
