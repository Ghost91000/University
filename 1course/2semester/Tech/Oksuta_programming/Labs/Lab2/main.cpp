#include <iostream>

using namespace std;

int main()
{
    int t;
    cout << "enter number of task: ";
    cin >> t;
    if (t == 1){
        float a, b, x, y, z;

        cout << "chto(x,y,z): ";
        cin >> x, y, z;

        cout << "kuda(a,b): ";
        cin >> a, b;
        cout << endl;
        if ( (a < x && a < y) || (a < x && b < z) || (a < z || b < y) ) {
            cout << "da";
        }
        else{
            cout << "net";
        }
    }
    else{
        int n;
        cout << "vvedi cifru 0-9: ";
        cin >> n;
        switch (n){
        case 1:
            cout << "one";
            break;
        case 2:
            cout << "two";
            break;
        case 3:
            cout << "three";
            break;
        case 4:
            cout << "four";
            break;
        case 5:cout << "five";
            break;
        case 6:
            cout << "six";
            break;
        case 7:
            cout << "seven";
            break;
        case 8:
            cout << "eight";
            break;
        case 9:
            cout << "nine";
            break;

        }
    }
    return 0;
}
