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
void __fastcall TForm1::Button1Click(TObject *Sender)
{
float x1, y1; // ���������� ����� a1
float x2, y2; // ���������� ����� a2
int n1, n2; // ���������� ������������ �����������,
//� ������� ������� ������� a1 a2
float x, y; // ���������� �����, ������� ������� �� ��� �����.
float v, b;
// ��������������� ����������
x1 = StrToFloat(Editx1->Text);
y1 = StrToFloat(Edity1->Text);
x2 = StrToFloat(Editx2->Text);
y2 = StrToFloat(Edity2->Text);
n1 = StrToInt(Editn1->Text);
n2 = StrToInt(Editn2->Text);
v = (float) n1 / n2; // ��� ��� ��� ������� ����� �����
//��������� ����������� �� ������, �� ���������
//�������������� �������������� //���������� ������ ���� � �������������� ���
b = 1 + v;
x = (x1 + v*x2) / b;
y = (y1 + v*y2) / b;
LabZnx -> Caption = FloatToStr(x);
LabZny -> Caption = FloatToStr(y);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Form1-> Close();
}
//---------------------------------------------------------------------------
