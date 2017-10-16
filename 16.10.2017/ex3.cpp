#include <iostream>
#include <map>
#include <string>
int main(int argc,char** argv)
{
    int k = 0;
    std::cin >> k;
    for(int i=0;true;++i)
    {
        int r=i;
        int n=0;
        while(r>1)
        {
            if(r % 3 == 0) r = r/ 3;
            else r = r - 1;
            n++;
        }
        if(n == k) {
            std::cout << i << std::endl;
            break;
        }
    }
    return 0;
}
