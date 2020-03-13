namespace km {

const int N = 2200;
const int INF = 0x3f3f3f3f;

class KuhnMunkres
{
public:
	KuhnMunkres()
	{
        /* empty */
	}
	~KuhnMunkres()
	{
        /* empty */
	}
	void Build();
    int Solve();
    void Init(int n);
    void AddChrome(int u, int v, int w);

private:
    int n;
    int ma[N][N];                   // 邻接矩阵
    bool vis[N];     
    int link[N];
    int leftExpectedValue[N];        // 左集合期望
    int rightExpectedValue[N];       // 右集合期望
    int pre[N];           
    int slack[N];                     // 松弛
    void find(int u);                 
};

}