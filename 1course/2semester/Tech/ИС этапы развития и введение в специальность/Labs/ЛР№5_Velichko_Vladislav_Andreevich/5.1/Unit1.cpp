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
//ѕрограмма дл€ строки типа char*
{
char St[100];
char *Sb;
AnsiString S,S1,S2; //вспомогательна€ переменна€
S = Edit1 ->Text; // предложение
char *St1 =S.c_str();
// преобразование строки AnsiString в строку char*
S1 = Edit2 ->Text; // слово, которое надо заменить
char* St2 = S1.c_str();
S2 = Edit3 ->Text;// слово, которое надо вставить
char* St3 = S2.c_str();
Sb = strstr(St1, St2);
if(Sb)
{
*Sb = 0;
Sb += strlen(St2);
Label4 -> Caption = strcat(strcat(strcpy(St,St1),St3),Sb); }
else Label4 -> Caption = "“екст не найден";
}
else
//ѕрограмма дл€ строки типа AnsiString
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
Label5->Caption ="“екст не найден";
}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Form1 -> Close();
}
//---------------------------------------------------------------------------
