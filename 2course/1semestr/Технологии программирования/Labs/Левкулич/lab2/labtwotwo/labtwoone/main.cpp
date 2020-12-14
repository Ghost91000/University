#include <iostream>
#include <math.h>
#include "conio.h"
#include <clocale>

using namespace std;

int main()
{
    setlocale(0,"");
    unsigned int a,b,c,d;
 cout<<"Введите число градусов"<<endl;
 cin>>a;
 if(a<361)
 {
     b=a*2;
     c=b/60;
     d=b%60;
     cout<<c<<" Часов "<<d<<" Минут "<<endl;
 }else
 cout<<" Нет такого числа"<<endl;


    return 0;
}
