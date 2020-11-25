#include <iostream>
#include <math.h>

using namespace std;

int main()
{
    int t;
    cout << "enter number of task: ";
    cin >> t;
    if (t == 1){
        int y;
        y = 0;
        float k, p, r;
        cout << "kredit: ";
        cin >> k;
        cout << "procent: ";
        cin >> p;
        cout << "pribil: ";
        cin >> r;

        if (((k+(k/100*p))-r) < k){
            while(k > 0){
                k = (k+(k/100*p))-r;
                y++;
            }
            cout << y << " years";
        }
        else{
            cout << "eto na vsu life";
        }


    }
    else{
        int n;
        float x, ar;
        x = 1;
        n = 1;
        ar = 0;
        cout << "enter n and x: ";
        cin >> n, x;
        ar = x - pow(x,3)/3 + pow(x,5)/5;
        for (int i = 1; i < n; i++){
            ar += pow(-1,n)*(pow(x,2*n-1))/(2*n+1);
        }
        cout << "arctgx = " << ar;
    }
    return 0;
}
