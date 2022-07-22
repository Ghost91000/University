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
#define WB 140 //������ ���������
#define HB 160 //���������������
#define D 100 //������� �����
int x,y;
AnsiString st="Citius, Altius, Fortius!";
// ��������� ���������� ������ �������� ���� �����
x =(ClientWidth-WB)/2;
y = (ClientHeight- HB)/2 - Canvas->Font->Size; // ���������
// �������� ���� ��������� � �����
Canvas ->Brush->Color= (TColor)RGB(255,255,255); //������ ������������� ���������
Canvas -> Rectangle(x-WB,y-HB/2,x+1.8*WB,y+HB);
int x1 = (ClientWidth- Canvas -> TextWidth(st))/2;
/*����� ������� ������ ������ �� ���� ��������� ������ ����, � ����� ����� ����� Ellipse ������� ����������, � �� ����, �������� �������� Brush->
Syle ������ ���� ����� bsClear */
Canvas -> Pen->Color= clWhite;
bsClear;
//����� ������
Canvas -> TextOutW(x1,y+HB+6,st); // ������ ����� � 2 �������
Canvas -> Pen->Width=5;
//������ ��� �����
//*3,2*D ������� �������, ���������� �������� ������� ����*/
x = x + (WB-3.2*D)/2;
y =y +(HB-1.8*D)/2;
Canvas -> Pen->Color= (TColor)RGB(0,0,225); //�����
Canvas -> Ellipse(x,y,x+D,y+D);
x= x +1.1*D;
Canvas -> Pen->Color= clBlack; //������
Canvas -> Ellipse(x,y,x+D,y+D);
x= x +1.1*D;
Canvas -> Pen->Color= (TColor)RGB(225,0,0);
//�������
Canvas -> Ellipse(x,y,x+D,y+D);
// ������ ������ ��� �����
x= x -D*0.55;
y = y + 0.6*D;
Canvas->Pen->Color=(TColor)RGB(0,128,0); //�������
Canvas -> Ellipse(x,y,x+D,y+D);
x= x-D*1.1;
Canvas -> Pen->Color= (TColor)RGB(250,217,25);//������
Canvas -> Ellipse(x,y,x+D,y+D);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
Form1 -> Close();
}
//---------------------------------------------------------------------------
