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
//���������� �������
String UCas(String R, String R1);
}
//����������� �������
String UCas(String R, String R1)
{
String b = AnsiUpperCase(R[1]); //������ ����� ����� �������� ��������� � ����������� � ���������� b
String C = R.Delete(1,1); // ��������� ������ ����� �� �����
R1 = b+C;// � ����� �������������� ��������� ������ �����
return R1;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Form1->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
String S1, b,C,R1;
S1= Edit1->Text;
Edit2->Text = UCas(S1,R1);// ����� �������
}
//---------------------------------------------------------------------------
