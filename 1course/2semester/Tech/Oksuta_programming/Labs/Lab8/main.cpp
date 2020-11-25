#include <iostream>

using namespace std;

float v (float h, float r){
    return 3.14*r*r*h;
}

int main()
{
    float h1,h2,r1,r2;
    cout << "Enter height and radius of two cylinders" << endl;
    cout << "1: ";
    cin >> h1 >> r1;
    cout << endl;
    cout << "2: ";
    cin >> h2 >> r2;
    cout << "V1 / V2= " << v(h1,r1)/v(h1,r1) << " / " << v(h2,r2)/v(h1,r1) << endl;
    return 0;
}
