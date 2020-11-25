#include <iostream>
#include <stdlib.h>

using namespace std;

int main()
{
    int m,n,q;
    int v[1];
    n = 0;
    int arr[10];

    cout << "lab1; task 1 or 2? ";
    cin >> q;
    if(q == 1){
        cout << "vvedite delitel" << endl;
        cin >> m;
        for(int i=0;i<10;i++){
            arr[i] = rand()%100;
            if (arr[i]%m <= m-1 && arr[i]%m >= 0){
                cout << arr[i] << endl;
                n++;
            }
        }
        cout << "count: " << n << endl;
    }
    else if (q == 2){
        for (int i = 0; i < 10; i++){
            arr[i] = rand()%2;
            if (arr[i] == 0 && n < 2){
                v[i] = i;
                n++;
            }
        }


        for (int i = 0; i < 10;i++){
            cout << arr[i] << endl;
        }
        cout <<  endl;
        for (int i = 0; i < 10;i++){
            if(i == v[i]){
                continue;
            }
            cout << arr[i] << endl;
        }

    }
    else cout << "fff";

    return 0;
}
