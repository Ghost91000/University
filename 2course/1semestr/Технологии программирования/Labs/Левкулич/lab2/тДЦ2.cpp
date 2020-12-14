#include <iostream>

using namespace std;

int main()

{
   setlocale(0,"Russian");
   int x;
   cout<<"Введите четырехзначное число "<<endl;;
   cout<<"Четырехзначное число - ";
   cin>>x;
   cout<<"Обратное число - ";
   cout<<x%10;
   x/=10;
   cout<<x%10;
   x/=10;
   cout<<x%10;
   x/=10;
   cout<<x%10;
   x/=10;
   cout<<endl<<endl;
    return 0;
}
