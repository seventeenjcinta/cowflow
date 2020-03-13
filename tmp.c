#include <stdio.h>

int Solve()
{
    int n;
    int ans;

    ans = 0;
    n = 20;
    for(int i = 0; i < n; i ++) {
        if(i % 2) {
            continue;
        }
        ans += i;
    }

    return ans;
}

int main()
{
    
    printf("%d\n", Solve());

    return 0;
}