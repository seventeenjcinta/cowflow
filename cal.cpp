#include <cmath>
#include "cal.h"
#include "lcs.cpp"
#include "log.h"
namespace cal {

const int ALPHA = 2;
const double BETA = 0.5;
const double GAMMA = 1.5;

Cal::Cal(/* args */)
{
    /* empty */
}

Cal::~Cal()
{
    /* empty */
}

double Cal::Solve(std::vector<function::Function> funA, std::vector<function::Function> funB)
{
    int funASize;
    int funBSize;
    int s;
    int t;
    int lenSum;
    double ans;

    lenSum = 0;
    for(int i = 0; i < funA.size(); i ++) {
        lenSum += funA[i].len;
    }
    funASize = funA.size();
    funBSize = funB.size();
    netflow.Init(funA, funB);
    s = netflow.GetS();
    t = netflow.GetT();
    for(int i = 0; i < funASize; i ++) {
        netflow.AddChrome(s, i + 1, funA[i].len, 0);
        netflow.AddChrome(i + 1, s, 0, 0);
    }
    for(int i = 0; i < funBSize; i ++) {
        netflow.AddChrome(funASize + i + 1, t, funB[i].len, 0);
        netflow.AddChrome(t, funASize + i + 1, 0, 0);
    }
    for(int i = 0; i < funASize; i ++) {
        for(int j = 0; j < funBSize; j ++) {
            int c;
            double w;

            c = tau(funA[i], funB[j]);
            w = calWeight(funA[i], funB[j]);
            netflow.AddChrome(i + 1, funASize + j + 1, c, -w);
            netflow.AddChrome(funASize + j + 1, i + 1, 0, w);
        }
    }
    ans = netflow.Mincostmaxflow();
    LogInfo("min cost max flow: %lf\n", ans);

    return -ans / lenSum;
}

// double Cal::calWeight(function::Function funA, function::Function funB)
// {
//     double ans;
//     int tauAToB;
//     int tauBToA;
    
//     LogInfo("cal begin: %d %d\n", funA.len, funB.len);
//     tauAToB = tau(funA, funB);
//     tauBToA = tau(funB, funA);
//     LogInfo("AToB: %d  BToA: %d\n", tauAToB, tauBToA);
//     ans = std::max(tauAToB, tauBToA);
//     ans = 1.0 * ans / std::min(funA.len, funB.len);
//     ans = -ALPHA * ans + BETA;
//     LogInfo("ans: %lf\n", ans);
//     ans = 1 + exp(ans);
//     LogInfo("ans: %lf\n", ans);
//     ans = 1.0 / ans;
//     LogInfo("ans: %lf\n", ans);

//     return ans;
// }

double Cal::calWeight(function::Function funA, function::Function funB)
{
    double ans;
    int tauAToB;
    int tauBToA;
    
    LogInfo("cal begin: %d %d\n", funA.len, funB.len);
    tauAToB = tau(funA, funB);
    tauBToA = tau(funB, funA);
    LogInfo("AToB: %d  BToA: %d\n", tauAToB, tauBToA);
    ans = std::max(tauAToB, tauBToA);
    ans = 1.0 * ans / std::min(funA.len, funB.len);

    return ans;
}

int Cal::tau(function::Function funcA, function::Function funcB)
{
    int functionALen;
    int functionBLen;
    int intervalSize;
    int cmpStrSize;
    int ans;

    ans = 0;
    intervalSize = GAMMA * funcA.len;
    for(int i = 0; i < funcB.len; i ++) {
        int left;
        int right;
        std::vector<std::string> cmpFunc(funcB.len);
        // std::vector<std::string> cmpFunc(funcB.V.begin() + left, funcB.V.begin() + right - left + 1);

        left = i;
        right = std::min(left + intervalSize, funcB.len - 1);
        // printf("[%d %d] %d\n", left, right, funcB.len);
        LogDebug("[%d %d] %d\n", left, right, funcB.len);
        std::copy(funcB.V.begin() + left, funcB.V.begin() + right - left + 1, cmpFunc.begin());
        // LogDebug("[%d %d] %d\n", left, right, funcB.len);
        ans = std::max(ans, lcs::InstructionsLCS(funcA.V, cmpFunc));
    }

    return ans;
}

}
