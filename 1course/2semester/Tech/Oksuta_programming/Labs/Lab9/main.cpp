#include <iostream>
#include <math.h>
#include <stdlib.h>

using namespace std;

double sum(double i, double n, double x){
    double ans;
    ans = 0;

    for (int j = i; j < n; j++){
        ans += pow(x,j);
    }

    return ans;
}

double mul(double i, double n, double x){
    double ans;
    ans = 1;

    for (int j = i; j < n; j++){
        ans *= pow(x,j);
    }

    return ans;
}

int main()
{
    double n, m, x, y;
    cout << "Enter n, m, x, y" << endl;
    cin >> n, m, x, y;

    cout << pow(sum(1,n,x), 1/m) * mul(1,m,y) - (sum(1,m,y) * mul(1,n,x));

    return 0;
}
