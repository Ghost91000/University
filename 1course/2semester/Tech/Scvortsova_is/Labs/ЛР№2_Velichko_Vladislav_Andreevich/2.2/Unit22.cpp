//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit22.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
	unsigned short a,x;
	float z,z1,b;
	const float b1 =1;
	b = b1 / 3;
	a = StrToInt(Edit1->Text);
	x = StrToFloat(Edit2->Text);
	if(a==2 && (x>0 && x<=4))
	{
	z =sqrt(float (a*x));
	//вывод результата в окно Memo
	Memo1->Lines->Add(FloatToStr(z));
	}
	else {if (a==3 && (x>4 && x<=16))
	{
	z1 =float (a*a*x);
	z = pow(z1,b); // функция возведения в степень (Z1)b
	Memo1->Lines->Add(FloatToStr(z));
	}
	else
	{
	b =b1/5;
	z1 =float (a*a*a*x);
	z = pow(z1,b);
	Memo1->Lines->Add(FloatToStr(z));
	}
	}
}
//---------------------------------------------------------------------------
