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
void __fastcall TForm1::Button3Click(TObject *Sender)
{
randomize();
int i,k,j,m,n;
k=0;
i=0;
j=0;
m=100;
n=100;
for (i=0;i<m;i++)
{
k= random(n); j=j+1;
ListBox1->Items->Add(k);
}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
int i, k, max, sum, m;
max=0;
sum=0;
m=100;
for (i=0;i<m;i++)
{
k=0;
k = StrToInt(ListBox1-> Items->Strings[i]);
if (k > max) max = k;
sum = sum+k;
}
Label4->Caption=max;
Label5->Caption=sum;
}
//---------------------------------------------------------------------------
