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
void __fastcall TForm1::Button3Click(TObject *Sender)
{
Form1->Close();
}
//---------------------------------------------------------------------------
//объ€вление переменных, видимость которых в пределах
//модул€, производитс€ перед функцией обработки событи€.
int i;
float a1,a2,x,s,d, d1 ;
void __fastcall TForm1::Button1Click(TObject *Sender)
{
x = StrToFloat(Edit1->Text);
d = StrToFloat(Edit2->Text);
s=1;
i=1;
d1=1;
a1 = 1;
a2 = 0;
while(d1 >= d) //цикл while
{
i = i+1;
a2=a1*x/i;
s = s+a2;
d1 = a2;
}
Edit3->Text = s;
Edit4->Text = i;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
do //цикл do
{
i = i+1;
a2=a1*x/i;
s = s+a2;
d1 = a2;
}
while(d1 >= d);
Edit5->Text = s;
Edit6->Text = i;
}
//---------------------------------------------------------------------------
