#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <cstdlib>


using namespace std;

int write(){

    return 0;
}

int main()
{
    char buff[50];
    fstream fout;
    fout.open("1.txt");


    fout.getline(buff, 50);
    cout << buff;
    fout.close();

    int n,m;
    int arr[n][m];
    int boo = 0;
    int coun = 0;
    int arr1[m];

    for (int i = 0; i < n; i++){
        for (int j = 0; j < m; j++){
            cin >> arr[i][j];
            if (arr[i][j] == 0 && boo == 0){
                arr1[coun] = i;
                coun++;
                boo = 1;
            }
        }
        boo = 0;
    }


    for (int i = 0; i < n; i++){
        for (int j = 0; j < m; j++){
            cout << arr[i][j] << "; ";
        }
        cout << endl;
    }
     for (int i = 0; i < coun; i++){
        cout << arr1[i] << " ";
    }



    return 0;
}
