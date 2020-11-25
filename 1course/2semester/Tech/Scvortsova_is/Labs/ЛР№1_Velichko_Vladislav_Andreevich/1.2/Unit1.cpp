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
float a, b, c, A,B,C,S;
const float e = 180;
float A1, B1, C1, d;
a =StrToFloat(Edit1->Text);
b=StrToFloat(Edit2->Text);
A= StrToFloat(Edit3->Text); A1 = M_PI*A/180;
d = (b/a)* sin(A1); B1 = asin(d);
B = 180* B1/M_PI; C =e-(A+B);
C1 = M_PI*C/180;
c=a*sin(C1)/sin(A1);
S= 0.5*a*b*sin(C1);
Edit4->Text = FloatToStr(B);
Edit5->Text = FloatToStr(C);
Edit6->Text = FloatToStr(c);
Edit7->Text = FloatToStr(S);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Form1-> Close();
}
//---------------------------------------------------------------------------
