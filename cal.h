#ifndef _CAL_H_
#define _CAL_H_
#include <vector>
#include "netflow.h"
#include "function.h"

namespace cal {
class Cal
{
private:
    netflow::Netflow netflow;
    double calWeight(function::Function funA, function::Function funB);
    int tau(function::Function funcA, function::Function funcB);
public:
    Cal();
    ~Cal();
    double Solve(std::vector<function::Function> funA, std::vector<function::Function> funB);
};

}
#endif