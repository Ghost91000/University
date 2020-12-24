#include <iostream>
#include <string>
#include <cmath>
#include <vector>

using namespace std;

void lab2_1() {
    BEGIN:
    int grade;
    cin >> grade;

    if (grade > 0 && grade <= 360) {
        int total = 2 * grade;
        cout << "H: " << total / 60 << " M: " << total % 60;
    }
    else {
        cout << "incorrect input";
        goto BEGIN;
    }
}

void lab2_2() {
    BEGIN:
    int input;
    cin >> input;
    
    string i = to_string(input);

    if (i.length() == 4) {
        cout << i[3] << i[2] << i[1] << i[0];
    }
    else {
        cout << "incorrect input";
        goto BEGIN;
    }
}

void lab2_3() {
    
    int a;
    int b;
    cin >> a;
    cin >> b;

    cout << (a / b) * (a % b) + (b / a) * (b % a) + 1;

}