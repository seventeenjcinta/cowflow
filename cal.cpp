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
            w = calWeight(funA[i], funB[j], c);
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

double Cal::calWeight(function::Function funA, function::Function funB, int tauAToB)
{
    double ans;
    int tauBToA;
    
    LogInfo("cal begin: %d %d\n", funA.len, funB.len);
    // tauAToB = tau(funA, funB);
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
    int left;
    int right;
    int ans;

    intervalSize = GAMMA * funcA.len;
    left = 0;
    right = left + intervalSize;
    ans = lcs::InstructionsLCS(funcA.V, funcB.V, 0, funcA.len - 1, 0, funcB.len - 1);
    for(int i = 0; i < funcB.len; i ++) {
        if(right < funcB.len) {
            ans = std::max(ans, lcs::InstructionsLCS(funcA.V, funcB.V, 0, funcA.len - 1, left, right));
        } else {
            break;
        }
        left ++;
        right ++;
    }

    return ans;
}

}
