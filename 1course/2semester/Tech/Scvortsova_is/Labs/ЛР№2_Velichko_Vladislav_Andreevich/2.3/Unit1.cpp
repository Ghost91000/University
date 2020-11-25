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
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Form1->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
const unsigned int A=8, B=6, C=5, D=4;
unsigned int grade;
grade =StrToInt( Edit1->Text);
switch (grade)
{
case 10:
Label4->Caption= "Поздравляем, вы получили 5";
break;
case 9:
Label4->Caption= "Поздравляем, вы получили 5";
break;
case A:
Label4->Caption= "Поздравляем, вы получили 5";
break;
case B:
Label4->Caption ="Хорошо, у вас 4";
break;
case C:
Label4->Caption ="У вас всего лишь 3";
break;
case 'D':
Label4->Caption= "Плохо, у вас 2";
break;
default:
Label4->Caption= "Ужасно! Учите лучше!";
}
}
//---------------------------------------------------------------------------
