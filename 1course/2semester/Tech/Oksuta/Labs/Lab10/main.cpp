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

void print (stud c){
    cout << "Name:        " << c.n << endl;
    cout << "Surname:     " << c.sn << endl;
    cout << "Middle name: " << c.ln << endl;
    cout << "Year:        " << c.yr << endl;
    cout << "Female\Male:  " << c.fm << endl;
    cout << "City:        " << c.cy << endl;
    cout << "Marks:       " << c.mk << endl;
}

int main()
{

    stud f;
    f.sn = "golokolencev";
    f.n = "valeriy";
    f.ln = "alekseevich";
    f.yr = 50;
    f.fm = "m";
    f.cy = "luhansk";
    f.mk = 5;

    stud s;
    s = {"familiya", "imya", "otchestvo", 100, "f", "gorod", 33};

    if (f.fm == "m"){
        print(f);
    }

    return 0;
}
