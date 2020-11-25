#include <iostream>
#include <clocale>
#include <math.h>
#include <string>

using namespace std;
//стоит использовать приватные переменные

void usl_op(){
    float x,y;
    cout << "hard level" << endl;
    cout << "Координаты точки x,y" << endl;
    cin >> x,y;
    if (y > -2 && y < 2 - x*x){
        cout << "no" << endl;
    }
    else{
        cout << "yes" << endl;
    }
}

void op_vib_var(){
    int i;
    float l;
    cout << "hard level" << endl;
    cout << "index of city(48,44,46,45) and lenght" << endl;
    cin >> i;
    cin >> l;
    switch(i){
        case 48:
            cout << "cost: " << 15*l << endl;
            break;
        case 44:
            cout << "cost: " << 18*l << endl;
            break;
        case 46:
            cout << "cost: " << 13*l << endl;
            break;
        case 45:
            cout << "cost: " << 11*l << endl;
            break;
        default:
            cout << "incorrect" << endl;
    }
}

void cicle(){
    int k,x1,p2;
    float ans, pp;
    ans = 0;
    pp = 1;
    cout << "hard level" << endl;
    cout << "enter k" << endl;
    cin >> k;
    for (int x = 1; x < k; x++){
            x1 = x;

            if (pow(x1-3,2) == 0){
                continue;
            }

        for (int p = x; p < 2*k; p++){
            int p1 = p;
            if (p1+2 == 0){
                continue;
            }
            pp *= (pow(p1, 3)-8)/(p1+2);
        }

        ans += pow(-1,x1)/pow(x1-3,2)*pp;
        pp = 1;
    }
    cout << ans << endl;
}

void cycle_usl(){
    int n;
    string ans;
    cout << "hard level" << endl;
    cout << "lenght of array: ";
    cin >> n;
    float *arr = new float[n];
    for (int i = 0; i < n; i++){
        cout << "[" << i+1 << "]: ";
        cin >> arr[i];
    }
    for (int i = 0; i < n; i++){
        if (arr[i] > -5 && arr[i] < 5){
            cout << arr[i] << ";";
        }
    }
}

void unlimited_summ(){
    int n;
    float ans, x;
    cout << "enter the quantity and x:" << endl;
    cin >> n, x;
    for (int i = 1; i < n+1; i++){
        ans += (pow(x,i)*cos(i*3.14/3))/i;
    }
    cout << ans << endl;
}

void func(){
    cout << "hard level" << endl;
    for (float i = 1.0; i < 3; i += 0.2){
        if (((i*i - (i + 1)/(3 - i)) && i <= 2) == (pow(sin(pow(i-1,2)),3) && i > 2) ){
            cout << exp( i*i - (i + 1)/(3 - i) ) << "- подходит" << endl;
        }
        else{
            cout << i << " - No" << endl;
        }
    }
}

void mass(){
    cout << "hard level" << endl;
    int n,k;
    int *arr = new int[n];
    cout << "enter lenght of array: ";
    cin >> n;
    for (int i = 0; i < n; i++){
        cout << "[" << i+1 << "]: ";
        cin >> arr[i];
    }
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            if (arr[i] == arr[j]){
                k++;
            }
        }
        if (k > 2){
            cout << "pos: " << i << "; i = " << arr[i] << endl;
            k = 0;
        }
    }
}

void duble_mass(){
    // надо разобраться с рандомом
    int arr[4][4];
    int num, bol;
    cout << "hard level" << endl;
    //randomize();
    for (int i = 0;i < 4; i++){
        //num = random(10);
        //bol = random(1);
        for (int j = 0;j < 4; j++){
            if (j == 0){
                arr[j][i] = num;
            }
            else{
                if(bol == 1){
                    arr[j][i] = arr[j-1][i] + 1;
                }
                else{
                    arr[j][i] = arr[j-1][i] - 1;
                }
            }
        }
    }


    for (int i = 0; i < 4; i ++){
        for (int j = 0; j < 4; j++){
            //cout << setw(4) << arr[i][j];
        }
        cout << endl;
    }


}

double recurs (int e){
    double a, b;
    cout << "введи a и b: ";
    cin >> a, b;
    b = (a + b) / 2;
    return(b);
}

void Srecurs(){
    int n;
    cout << "кол-во повторений: ";
    cin >> n;
    cout << recurs(n);
}



int main()
{
    int n;
    setlocale(LC_CTYPE, "rus");
    do{
        cout << "" << endl;
        cout << "12 вариант; Величко Владислав" << endl;
        cout << "" << endl;
        cout << "1 -> 2.2 Условные операторы" << endl;
        cout << "2 -> 2.1 Оператор выбора вариантов" << endl;
        cout << "3 -> 3.1 Оператор цикла с параметров" << endl;
        cout << "4 -> 3.2 Операторы цикла с предусловием и с постусловием" << endl;
        cout << "5 -> 3.3 Вычисление бесконечных сумм" << endl;
        cout << "6 -> 3.4 Табулирование функций" << endl;
        cout << "7 -> 4.1 Одномерные массивы" << endl;
        cout << "8 -> 4.2 Двухмерные массивы /not available" << endl;
        cout << "9 -> 5.1. Функции" << endl;
        cout << "10 -> 5.2. Библиотеки" << endl;
        cout << "11 -> " << endl;
        cout << "12 -> " << endl;
        cout << "13 -> " << endl;
        cout << "14 -> " << endl;
        cout << "15 -> " << endl;


        cin >> n;
        cout << "" << endl;
        switch(n){
            case 1:
                usl_op();
                break;
            case 2:
                op_vib_var();
                break;
            case 3:
                cicle();
                break;
            case 4:
                cycle_usl();
                break;
            case 5:
                unlimited_summ();
                break;
            case 6:
                func();
                break;
            case 7:
                mass();
                break;
            case 8:
                duble_mass();
                break;
            case 9:
                Srecurs();
                break;
            case 10:
                lib();
                break;
            default:
                cout << "incorrect number" << endl;
        }
    }while(true);
    return 0;
}
