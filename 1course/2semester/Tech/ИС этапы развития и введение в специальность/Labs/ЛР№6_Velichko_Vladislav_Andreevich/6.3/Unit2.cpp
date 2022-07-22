//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
TPoint points[4];
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button5Click(TObject *Sender)
{
Image1->Canvas->Brush->Color= clGreen;
Image1->Canvas->Pie(310,10,390,90,390,30,310,35);
Image1->Canvas->TextOut(340,60,"Pie");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button1Click(TObject *Sender)
{
Image1->Canvas->Font->Style<<fsBold;
Image1->Canvas->Arc(10,10,90,90,90,50,10,50);
Image1->Canvas->TextOut(40,60,"Arc");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button2Click(TObject *Sender)
{
Form2->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button3Click(TObject *Sender)
{
Image1->Canvas->Brush->Color= clRed;
Image1->Canvas->Chord(110,10,190,90,190,50,110,50);
Image1->Canvas->TextOut(135,60,"Chord");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button4Click(TObject *Sender)
{
Image1->Canvas->Brush->Color= clBlue;
Image1->Canvas->Ellipse(210,10,290,50);
Image1->Canvas->TextOut(230,60,"Ellipse");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button6Click(TObject *Sender)
{
Image1->Canvas->Brush->Color=clAqua ;
points[0].x =30;
points[0].y =150;
points[1].x =40;
points[1].y =130;
points[2].x =40;
points[2].y =140;
points[3].x =60;
points[3].y =130;
points[4].x =170;
points[4].y =150;
Image1->Canvas->Polygon(points,4);
Image1->Canvas->TextOut(30,170,"Polygon");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button7Click(TObject *Sender)
{
points[0].x = 200;
points[0].y = 100;
points[1].x = 220;
points[1].y = 150;
points[2].x = 250;
points[2].y = 120;
points[3].x = 280;
points[3].y = 180;
points[4].x = 300;
points[4].y = 150;
Image1->Canvas->Polyline(points,4);
Image1->Canvas->TextOut(250,170,"Polyline");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button8Click(TObject *Sender)
{
Image1->Canvas->Brush->Color= clLime;
Image1->Canvas->Rectangle(330,170,480,100);
Image1->Canvas->TextOut(340,170,"Rectangle");
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button9Click(TObject *Sender)
{
Image1->Canvas->Brush->Color= clMaroon;
Image1->Canvas->RoundRect(500,170,580,100,20,20);
Image1->Canvas->TextOut(540,170,"RoundRect");
}
//---------------------------------------------------------------------------
