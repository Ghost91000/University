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
if (RadioButton1->Checked)
//��������� ��� ������ ���� char*
{
char St[100];
char *Sb;
AnsiString S,S1,S2; //��������������� ����������
S = Edit1 ->Text; // �����������
char *St1 =S.c_str();
// �������������� ������ AnsiString � ������ char*
S1 = Edit2 ->Text; // �����, ������� ���� ��������
char* St2 = S1.c_str();
S2 = Edit3 ->Text;// �����, ������� ���� ��������
char* St3 = S2.c_str();
Sb = strstr(St1, St2);
if(Sb)
{
*Sb = 0;
Sb += strlen(St2);
Label4 -> Caption = strcat(strcat(strcpy(St,St1),St3),Sb); }
else Label4 -> Caption = "����� �� ������";
}
else
//��������� ��� ������ ���� AnsiString
{
AnsiString S1,S2, S3;
int i;
S1 = Edit1->Text;
S2 = Edit2->Text;
S3 = Edit3->Text;
i=S1.Pos(S2);
if(i)
Label5->Caption=S1.SubString(1,i-1)+S3
+S1.SubString(i+S2.Length(),255);
else
Label5->Caption ="����� �� ������";
}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Form1 -> Close();
}
//---------------------------------------------------------------------------
