#include <iostream>

using namespace std;

int main()
{
    int a,b;
    cin>>a>>b;
    cout<<"      "<<endl;
    cout<<(a/b)*(a%b)*(b/a)*(b%a)+1;
    return 0;
}
