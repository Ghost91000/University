#include <iostream>
using namespace std;

int main()
{
    setlocale(0,"");
    int A,B=0;
    cout<<"Введите натуральное число:  "<<endl;
    cin>>A;
    while(A!=0)
    {
        B*=10;
        B+=A%10;
        A=A/10;
    }
    cout<<"Новое число:  "<<B<<endl;
    return 0;
}
