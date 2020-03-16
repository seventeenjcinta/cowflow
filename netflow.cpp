#include "log.h"
#include "netflow.h"
#include <cstring>
#define EPS 1e-8
namespace netflow {

Netflow::Netflow()
{
    /* empty */
}

Netflow::~Netflow()
{
    /* empty */
}

void Netflow::AddChrome(int from, int to, int flow, double v)
{
    LogInfo("add edge %d -> %d = %d %lf\n", from, to, flow, v);
	node[top].from = from;
	node[top].to = to;
	node[top].flow = flow;
	node[top].v = v;
	node[top].ne = head[from];
	head[from] = top;
	top ++;
}

void Netflow::Init(std::vector<function::Function> funA, std::vector<function::Function> funB)
{
    n = funA.size() + funB.size() + 2;
    m = 2 * (funA.size() + funB.size() + funA.size() * funB.size());   // 双向边
    s = n - 1;
    t = n;
    top = 0;
	memset(head, -1, sizeof(head));
    LogInfo("n = %d m = %d s = %d t = %d\n", n, m, s, t);
}

int Netflow::Spfa()
{
	for(int i = 0; i <= t; i ++){
		inq[i] = 0;
		dis[i] = INF;
		pre[i] = -1;
	}
	mincost[s] = INF;
	mincost[t] = 0;
	queR = queL = 0;
	dis[s] = 0;
	minn[s] = INF;
	inq[s] = true;
	que[queR] = s;
	queR ++;
	while(queL != queR){
		int now;

		if(queL >= N || queR >= N) {
			exit(0);
		}
		now = que[queL];
		queL ++;
		inq[now] = false;
		for(int i = head[now]; i != -1; i = node[i].ne) {
			int v;

            /// cout << 123123 << endl;
			v = node[i].to;
			if(node[i].flow > 0 && dis[v] - dis[now] - node[i].v > EPS) {
				dis[v] = dis[now] + node[i].v;
				pre[v] = i;	/// amazing  直接存边的编号
				// printf("pre[%d] = %d %d\n", v, pre[v], i);
				/// pre[v] = u;
				mincost[v] = std::min(mincost[now], node[i].flow);
				if(!inq[v]) {
					inq[v] = true;
					que[queR] = v;
					queR ++;
				}
			}
		}
	}

	return mincost[t];
}

double Netflow::Mincostmaxflow()
{
	double ans;
	int res;

	ans = 0;
	while(true){
		res = Spfa();
		if(!res){
			break;
		}
		// printf("%d\n", res);
		for(int i = pre[t]; i != -1; i = pre[node[i].from]) {
			ans += res * node[i].v;
			node[i].flow -= res;
			node[i ^ 1].flow += res;
			// printf("pre = %d %d %d\n", i,  node[i].from, pre[node[i].from]);
			// if(i == 48) {
			// 	int ww; scanf("%d", &ww);
			// }
			// 
		}
	}

	return ans;
}

int Netflow::GetS()
{
    return s;
}

int Netflow::GetT()
{
    return t;
}

}