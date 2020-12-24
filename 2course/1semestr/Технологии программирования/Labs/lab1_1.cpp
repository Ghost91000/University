#include <iostream>
#include<math.h>
#include<locale.h>
#include<cmath>
using namespace std;

int main()
{
    double y,x;
    setlocale(0," ");
    x=2,5;
    cout<<"znachenye y pri x = 2,5 ravno -  ";
    y=sin(x)+3*pow(M_E,x);
    cout<<y<<endl;
    x=-4.4;
cout<<"znachenye y pri x = -4.4 ravno -  ";
    y=sin(x)+3*pow(M_E,x);
    cout<<y<<endl;
    x=0,001;
    cout<<"znachenye y pri x = 0,001 ravno -  ";
    y=sin(x)+3*pow(M_E,x);
    cout<<y;

    return 0;
}
