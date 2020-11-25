#include <iostream>

using namespace std;

int main()
{
    setlocale(0,"Russian");
    cout<<"-----¹1-----"<<endl;
    int a,b,c,d;
    cin>>a>>b>>c;
    d=(a+b+c)>0 && (a+b+c)<10 ? a-b :a*b;
    cout<<d;



    return 0;
}

