#include <iostream>
#include <stdlib.h>
#include <time.h>

using namespace std;

int main()
{

    int arr[3][3];
    int ar[3][3];
    int temp, n, task, s;
    n = 0;
    s = 0;
    srand(time(NULL));
    cout << "vvedite nomer zadaniya ";
    cin >> task;
    if (task == 1){
        for (int i = 0;i < 3; i++){/*-----------------------1--------------------------*/
            for (int j = 0;j < 3; j++){
                arr[i][j] = rand()%100;
                cout << arr[i][j] << "   ";
            }
            cout << endl;
        }


        for (int i = 0;i < 3; i++){
            for (int j = 2;j > 0; j--){
                    if (n == 2) break;
                    if(arr[j][i] < arr[j - 1][i]){
                        temp = arr[j][i];
                        arr[j][i] = arr[j - 1][i];
                        arr[j - 1][i] = temp;
                        n++;
                    }
            }
            n=0;
        }

        cout << endl;

        for (int i = 0;i < 3; i++){
            for (int j = 0;j < 3; j++){
                    cout << arr[i][j] << "   ";
            }
            cout << endl;
        }
    }
    else if (task == 2){/*-----------------------2--------------------------*/
        for (int i = 0;i < 3; i++){
            for (int j = 0;j < 3; j++){
                arr[i][j] = rand()%100;
                cout << arr[i][j] << "   ";
            }
            cout << endl;
        }

        for (int i = 0;i < 3; i++){
            for (int j = 0;j < 3; j++){
                if (arr[j][i]%2 != 0){
                    s += arr[j][i];
                }
            }
            ar[0][i] = i;
            ar[1][i] = s;
            s = 0;
        }

        cout << endl;

        for (int i = 0;i < 2; i++){
            for (int j = 0;j < 3; j++){
                    cout << ar[i][j] << "   ";
            }
            cout << endl;
        }


            for (int i = 2;i > 0; i--){
                if(ar[1][i] > ar[1][i - 1]){
                    temp = ar[1][i];
                    ar[1][i] = ar[1][i-1];
                    ar[1][i-1] = temp;

                    temp = ar[0][i];
                    ar[0][i] = ar[0][i-1];
                    ar[0][i-1] = temp;
                }
            }

            cout << endl;

        for (int i = 0;i < 2; i++){
            for (int j = 0;j < 3; j++){
                    cout << ar[i][j] << "   ";
            }
            cout << endl;
        }

    }
    else cout << "fuck" << endl;

    return 0;
}
