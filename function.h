#ifndef _FUNCTION_H_
#define _FUNCTION_H_
#include <iostream>
#include <vector>

namespace function {

struct Function
{
    std::string name;
    int len;
    std::vector<std::string> V;
};

std::vector<Function> parseAssembler(const std::string fileI, const std::string fileO);

}
#endif