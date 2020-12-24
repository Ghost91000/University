#include <iostream>
#include<math.h>
#include<locale.h>
#include<cmath>
using namespace std;

int main()
{
    double y,x,z;

    cout<<"write Z and X"<<endl;
    cin>>z>>x;
    y=15/log(x)+atan(z/x)*(1/5);
    cout<<"Y = "<<y;
    return 0;
}
