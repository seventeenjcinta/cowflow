#include <algorithm>
#include <stdio.h>
#include <cstring>
#include "km.h"


namespace km {

void KuhnMunkres::Init(int newN)
{
    memset(ma, 0, sizeof(ma));
    memset(leftExpectedValue, 0, sizeof(leftExpectedValue));
    memset(rightExpectedValue, 0, sizeof(rightExpectedValue));
    memset(link, 0, sizeof(link));
    n = newN;
}

void KuhnMunkres::AddChrome(int u, int v, int w)
{
    ma[u][v] = w;
}

void KuhnMunkres::Build()
{
    scanf("%d", &n);
    for(int i = 1; i <= n; i ++) {
        for(int j = 1; j <= n; j ++) {
            scanf("%d", &ma[i][j]);
            ma[i][j] = -ma[i][j];
        }
    }
}

int KuhnMunkres::Solve()
{
    int ans;

    ans = 0;
    for(int i = 1; i <= n; i ++) {
        memset(vis, 0, sizeof(vis));
        find(i);
    }   
    for(int i = 1; i <= n; i ++){
        ans += leftExpectedValue[i] + rightExpectedValue[i];
    }

    return ans;
}

void KuhnMunkres::find(int u)
{
    int leftIndex;
    int rightIndex;
    int index;
    int dis;

    index = 0;
    leftIndex = 0;
    rightIndex = 0;
    memset(pre, 0, sizeof(pre));
    memset(slack, 0x3f3f3f3f, sizeof(slack));
    link[rightIndex] = u;
    while(link[rightIndex]){
        leftIndex = link[rightIndex];
        dis = INF;
        vis[rightIndex] = 1;
        for(int i = 1; i <= n; i++) {
            if(!vis[i]) {
                if(slack[i] > leftExpectedValue[leftIndex] + rightExpectedValue[i] - ma[leftIndex][i]) {
                    slack[i] = leftExpectedValue[leftIndex] + rightExpectedValue[i] - ma[leftIndex][i];
                    pre[i] = rightIndex;
                }
                if(slack[i] < dis) {
                    dis = slack[i];
                    index = i;
                }
            }
        }
        for(int i = 0; i <= n; i ++) {
            if(vis[i]) {
                leftExpectedValue[link[i]] -= dis;
                rightExpectedValue[i] += dis;
            } else {
                slack[i] -= dis;
            }
        }
        rightIndex = index;
    }
    while(rightIndex) {
        link[rightIndex] = link[pre[rightIndex]];
        rightIndex = pre[rightIndex];
    }
}

}
