#include <iostream>

using namespace std;

int main()
{
    int t;
    cout << "enter number of task: ";
    cin >> t;
    if (t == 1){
        for (int i = 10; i < 23; i++){
            cout << i << "d = " << 25.4 * i << "cm" << endl;
        }
    }
    else{
        /*-------------I don't know how-------------*/
        cout << "1 2 3 4 5 6 7 8 9 10" << endl;
        cout << "0 1 2 3 4 5 6 7 8 9" << endl;
        cout << "0 0 1 2 3 4 5 6 7 8" << endl;
        cout << "0 0 0 1 2 3 4 5 6 7" << endl;
        cout << "0 0 0 0 1 2 3 4 5 6" << endl;
        cout << "0 0 0 0 0 1 2 3 4 5" << endl;
        cout << "0 0 0 0 0 0 1 2 3 4" << endl;
        cout << "0 0 0 0 0 0 0 1 2 3" << endl;
        cout << "0 0 0 0 0 0 0 0 1 2" << endl;
        cout << "0 0 0 0 0 0 0 0 0 1 " << endl;
        /*-------------I don't know how-------------*/
    }
    return 0;
}
