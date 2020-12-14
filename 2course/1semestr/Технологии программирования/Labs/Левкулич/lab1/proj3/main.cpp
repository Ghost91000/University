#include <iostream>
#include <math.h>
#include <cmath>
using namespace std;

int main()
{
    double x,i;
    int a;
    a=15;
    for(i=a;i<=20;i++)
        {
            x=pow(cos(x)+pow(x,4.5),(1/i));
        cout<<x<<endl;

        }
    return 0;
}
