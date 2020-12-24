#include <iostream>

using namespace std;


int main()
{
    int a[5];
    cin>>a[0];
    cin>>a[1];
    cin>>a[2];
    cin>>a[3];
    cin>>a[4];
    int i = -1;
    A:
        i++;
        if(a[i] >= a[0]&& a[i] >= a[1] && a[i] >= a[2] && a[i] >= a[3] && a[i] >= a[4])
        {
            cout << a[i];

        }
    else{
        goto A;
    }

    return 0;
}
