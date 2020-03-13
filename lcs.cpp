#include <iostream>
#include <algorithm>
#include <cstring>
#include <vector>
#include <cstdio>

namespace lcs
{
    const int N = 1010;
    int dp[N][N];

    int InstructionsLCS(std::vector<std::string> ma, std::vector<std::string> mb)
    {
        int lenSizeA;
        int lenSizeB;

        memset(dp, 0, sizeof(dp));
        lenSizeA = ma.size();
        lenSizeB = mb.size();
        for(int i = 1; i <= lenSizeA; i ++) {
            for(int j = 1; j <= lenSizeB; j ++) {
                if(ma[i - 1] == mb[j - 1]) {
                    dp[i][j] = dp[i - 1][j - 1] + 1;
                } else {
                  dp[i][j] = std::max(dp[i - 1][j], dp[i][j - 1]);
                }
                // printf("dp = %d\n", dp[i][j]);
            }
        }    

        return dp[lenSizeA][lenSizeB];
    }

}
