#include<iostream>
#include<cstdarg>
#include<cstdio>
#include<string>
#include<cassert>
void fun(const char* format, ...){
    char info[400] = {0};//请确保info可以放下转换的字符
    va_list args;
    va_start(args, format);    
    vsprintf(info,format,args);
    va_end(args); 
    std::string s(info);
    if(sizeof(info) <= s.size()){
        assert("parameter too long");
    }   
    std::cout << s << '\n';
}
int main(){
    fun("%s %d %f\n","789012", 34, 67.89);
    return 0;
}