#include <iostream>

using namespace std;

int main()
{
    BEGIN:
    int grd;
    cin>>grd;
    if(grd>0 && grd<360)
    {
        int total = 2*grd;

        cout<<"Hr: "<<total / 60<<" Min: "<<total%60;
    }
    else
    {
        cout<<"incorrect input";
    goto BEGIN;

    }
}
