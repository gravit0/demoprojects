#include <iostream>
#include <list>
#include <string>
int main(int argc,char** argv)
{
    std::string s1;
    std::list<int> nums;
    std::cout << "Print number:";
    std::cin >> s1;
    int size = s1.size();
    int it = size;
    while(it>0)
    {
        std::string newstr = s1.substr(it- 1,1);
        int num = std::stoi(newstr);
        nums.push_back(num);
        it--;
    }
    long long int sum = 0;
    int rarr[] = {1,3,2,6,4,5,1};
    int cpos = 0;
    for(auto& i : nums)
    {
        sum += i*rarr[cpos];
        cpos++;
        if(cpos>6) cpos = 1;
    }
    std::cout << sum % 7 << std::endl;
    return 0;
}
