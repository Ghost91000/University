//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
int i, j;
const int Amax=6;
const int Bmax=6;
int Array[Amax][Bmax];
float cr;
float S;
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
	randomize();
	Label4->Caption = IntToStr(Amax-1);
	Label5 ->Caption = IntToStr(Bmax-1);
	AnsiString Ctr;
	i=0;
	for (i=1;i<6;i++)
	{
	StringGrid1->Cells[i][0]= "столбец"+IntToStr(i);
	}
	for (i=1;i<6;i++)
	{
	StringGrid1->Cells[0][i]= "строка"+IntToStr(i);
	}
	for(i=1; i<6;i++)
	{
	for(j=1; j<6;j++)
	{
	Array[i][j] =random(10);
	StringGrid1->Cells[i][j]= IntToStr(Array[i][j]);
	}
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button4Click(TObject *Sender)
{
	Form2->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button3Click(TObject *Sender)
{
	S=0;
	for(int i=3; i<6;i++)
	{
	for(int j=1; j<i;j++)
	{
	S = S + Array[i][j];
	}
	}
	Label7->Caption = FloatToStr(S);
}
//---------------------------------------------------------------------------
int Sum2( int A1[][6])
{
	int n1 =6; int S2 =0;
	for (int i=1;i<n1;i++)
	{
	for (int j=1;j<n1;j++)
	{
	S2+=A1[i][j];
	}
	} return S2;
}void __fastcall TForm2::Button2Click(TObject *Sender)
{
ShowMessage("Сумма элементов= "+IntToStr(Sum2(Array)));
}
//---------------------------------------------------------------------------

