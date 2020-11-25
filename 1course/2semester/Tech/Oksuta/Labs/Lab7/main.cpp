#include <iostream>
#include <string>
#include <string.h>

using namespace std;

int main()
{
    string str;
    int pos; /*position of "abc"*/
    int p;   /*position for search*/
    int n;
    p = 0;
    n = 0;

    cout << "vvedi stroku, v kotoroy ya naydu kol-vo vhojdeniy grup bukv 'abc'" << endl;
    cin >> str;

    while (p < str.size()-2){
        if (str.find("abc", p) != -1){
            pos = str.find("abc", p);
            str.replace(pos, 3, "|||");
            n++;
        }
        else{
            break;
        }
    }

    cout << "count: " << n << endl;

    return 0;
}


