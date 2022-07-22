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
int i,j;
String Old,Nov,st1;
String d,c;
Old = Edit1->Text;
Nov = "àáâãäå¸æçèéêëìíîïðñòóôõö÷øùúûüýþÿ";
int n = Old.Length();
Edit2->Text = Old[1];
Edit3->Text= n;
for(i=1; i<=Old.Length();i++)
{
for(j=1;j<=Nov.Length(); j++)
{
if (Old[i]==Nov[j]) st1+=Nov[j];
}
}
Edit4->Text = st1;
}
//---------------------------------------------------------------------------
