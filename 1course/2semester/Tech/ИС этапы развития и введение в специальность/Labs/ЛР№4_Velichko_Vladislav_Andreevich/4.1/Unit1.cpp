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
//ѕеременные объ€вл€ютс€ вне функции обработчика событи€ и они будут видны во всех процедурах формы
//--------------------------------------------------------------------------
int N, i, s1, b;
int Array[100];
float cr;
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
AnsiString Ctr; N =0;
i=0;
for(i =0; i<99;i++)
{
Array[i] =random(100); N = Array[i];
Ctr = IntToStr(N);
ListBox1->Items->Add(Ctr);
}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
Form1->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
cr=0;
b=1;
s1=0;
for( i=0; i<99; i++)
{
s1 = s1+Array[i];
if (Array[i] > b) b = Array[i];
}
cr=(float)s1/100;
Edit1->Text= FloatToStr(cr);
Edit2->Text= IntToStr(b);
Edit3->Text= IntToStr(s1);
}
//---------------------------------------------------------------------------
