#include <iostream>
#include <map>
#include <string>
int main(int argc,char** argv)
{
    std::string s1,s2;
    std::cout << "Print PETYA word:";
    std::cin >> s1;
    std::cout << "Print VASYA word:";
    std::cin >> s2;
    std::map<char,int> map1,map2;
    for(auto& i : s1)
    {
        map1[i]+=1;
    }
    for(auto& i : s2)
    {
        map2[i]+= 1;
    }
    bool isOne = false;
    for(auto& i : map1)
    {
        int t = i.second - map2[i.first];
        if(t>0) {
            if(!isOne) std::cout << "Вася не использовал буквы: ";
            for(;t>0;t--) std::cout << i.first << ' ';
            isOne=true;
        }
    }
    if(!isOne) std::cout << "Вася использовал все буквы";
    std::cout << std::endl;
    return 0;
}
