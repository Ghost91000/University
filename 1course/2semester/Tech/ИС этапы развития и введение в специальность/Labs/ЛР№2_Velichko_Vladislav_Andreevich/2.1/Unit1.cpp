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
//поиск максимального и минимального числа
int a,b,c,d;
a = StrToInt(Edit1->Text);
b = StrToInt(Edit2->Text);
if (a >= b)
{
c = a;
d = b;
}
else
{ c = b;
d = a;
}
// выбор выводимого числа в метку в зависимости от включенной радиокнопки
if (RadioButton1->Checked)
{
Label5->Caption = "";
Label4->Caption = "max";
Label5->Caption = IntToStr(c);
}
else
{Label4->Caption ="min";
Label5->Caption = IntToStr(d);
}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Form1->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::RadioGroup1Click(TObject *Sender)
{
//изменения шрифта текста в метке Label5
if (RadioGroup1->ItemIndex == 0) Label5->Font->Name = "Times New Roman";
if (RadioGroup1->ItemIndex ==1) Label5->Font->Name ="Calibri";
if (RadioGroup1->ItemIndex == 2) Label5->Font->Name = "Tahoma";
}
//---------------------------------------------------------------------------
void __fastcall TForm1::RadioGroup2Click(TObject *Sender)
{
// изменение цвета текста в метке Label6
if (RadioGroup2->ItemIndex ==0) Label5->Font->Color =clRed;
if (RadioGroup2->ItemIndex ==1) Label5->Font->Color =clBlue;
if (RadioGroup2->ItemIndex ==2) Label5->Font->Color =clBlack;
if (RadioGroup2->ItemIndex ==3) Label5->Font->Color =clGreen;
}
//---------------------------------------------------------------------------
