#include <vector>
#include "function.h"
namespace netflow {

const int N = 10010;
const int INF = 0x3f3f3f3f;

struct Node
{
    int from;
    int to;
    int ne;
    int flow;
    double v;
};

class Netflow
{
private:
    Node node[N];
    int n;
    int m;
    int s;
    int t;
    int ma[N];
    int head[N];
    int top;
    /// SPFA
    double dis[N];
    int pre[N];	///
    int minn[N];
    int mincost[N];
    bool inq[N];
    int que[N];
    int queL;
    int queR;

public:
    Netflow();
    ~Netflow();
    void AddChrome(int from, int to, int flow, double v);
    void Init(std::vector<function::Function> funA, std::vector<function::Function> funB);
    int Spfa();
    double Mincostmaxflow();
    int GetS();
    int GetT();
};

}