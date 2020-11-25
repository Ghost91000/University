#include <iostream>
#include <string>
#include <string.h>

using namespace std;

struct stud
    {
        string sn;
        string n;
        string ln;
        int yr;
        string fm;
        string cy;
        float mk;
    };
    stud arr[3];

int main()
{
    stud s = {"familiya", "imya", "otchestvo", 100, "m", "gorod", 33};
    stud s1 = {"familiya1", "imya1", "otchestvo1", 1001, "f", "gorod1", 331};
    stud s2 = {"familiya2", "imya2", "otchestvo2", 1002, "m", "gorod2", 332};

    arr[0] = s;
    arr[1] = s1;
    arr[2] = s2;

    int n = 0;
    for (int i = 0;i < 3; i++){
        if (arr[i].fm == "m"){
            cout << "Name:        " << arr[i].n << endl;
            cout << "Surname:     " << arr[i].sn << endl;
            cout << "Middle name: " << arr[i].ln << endl;
            cout << "Year:        " << arr[i].yr << endl;
            cout << "Female\Male:  " << arr[i].fm << endl;
            cout << "City:        " << arr[i].cy << endl;
            cout << "Marks:       " << arr[i].mk << endl;
        }
        cout << endl;
        n++;
    }
    cout << "count: " << n-1;

    return 0;
}
