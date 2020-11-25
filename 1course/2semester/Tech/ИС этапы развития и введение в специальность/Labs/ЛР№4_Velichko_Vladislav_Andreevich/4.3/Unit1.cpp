//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

int *abc;

__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
	srand( time( 0 ) );
}

void SortArray(int* m, int n)
{
	 for(int i = n - 1; i >= 1; i--)
	   for(int j = 0; j < i; j++)
	   {
			   if(m[j] > m[j+1])
			   {
					   int foo = m[j];
					   m[j] = m[j+1];
					   m[j+1] = foo;
			   }
	   }
}

void __fastcall TForm1::Button1Click(TObject *Sender)
{
	ListBox1->Clear();
	ListBox2->Clear();

	abc = new int[StrToInt(Edit1->Text)];
	for (int i = 0; i < StrToInt(Edit1->Text); i++) {
		 abc[i] = rand() % StrToInt(Edit2->Text)  + 1;
		 ListBox1->Items->Add(abc[i]);
	}

	SortArray(abc,StrToInt(Edit1->Text));

	for(int i = 0; i < StrToInt(Edit1->Text); i ++){
		ListBox2->Items->Add(abc[i]);
	}
}

//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Form1-> Close();
}
//---------------------------------------------------------------------------

