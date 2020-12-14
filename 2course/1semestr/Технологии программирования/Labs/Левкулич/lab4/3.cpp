#include <iostream>

using namespace std;

int main()
{
    int a=0;

    A:
        a++;
        if(a%2 == 0)
        {
            cout<<a<<"   ";

        }
        if(a>10)
        {
            goto B;
        }
        goto A;
    B:
    cout<<"   ";
    return 0;
}
