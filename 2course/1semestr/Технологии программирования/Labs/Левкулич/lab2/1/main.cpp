#include <cmath>
#include <iostream>

using namespace std;
int main()
{
    setlocale(0,"Russian");
                                                    cout << "№1"<<endl;
    double x, y, z;
      x=2.5;
    y = sin(x)+ 3 *exp(x);
cout <<"x = "<< x << "\n"<<"y="<<y<<"\n"<<endl;
x = -4.4;
y = sin(x)+ 3 *exp(x);
cout <<"x = "<< x << "\n"<<"y="<<y<<"\n"<<endl;
x = 0.001;
y = sin(x)+ 3 *exp(x);
cout <<"x = "<< x << "\n"<<"y="<<y<<"\n"<<endl;
                                                    cout<<"№2"<<"\nВведите число x:\n"<<"x = ";
cin>>z;
cin>>x;
y=15/log(x) + atan(z/x) * 1/5;
cout<<"y = "<<y<< endl;
                                                    cout<<"№3"<<"\nВведите  x:\n"<<"x = ";
cin>>x;
for (int i=15; i<=20; i++);
cout<<"y = "<<y << endl;

return 0;

}



