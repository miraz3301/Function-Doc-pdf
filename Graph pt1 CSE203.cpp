#include<iostream>
#include<algorithm>
#include<queue>
#include<vector>
#define ll long long int
using namespace std;
vector<ll>par(100+1);
vector<ll>v;
vector<ll>level(110);
vector<bool>vis(100+1,false);
void path2(ll des)
{
    if(des==-1)return;
    path2(par[des]);
    cout<<des<<" ";
}
void bfs(vector<ll>*Aj,ll st,ll n)
{
    cout<<"BFS: ";
    queue<ll>q;
    q.push(st);
    vis[st]=true;
    par[st]=-1;
    level[st]=0;
    while(!q.empty())
    {
        ll parent=q.front();
        q.pop();
        cout<<parent<<" ";
        v.push_back(parent);
        for(ll x:Aj[parent])
        {
            if(!vis[x])
            {
                q.push(x);
                vis[x]=true;
                par[x]=parent;
                level[x]=level[parent]+1;
            }
        }

    }
    cout<<endl;
}
vector<bool>vis2(100+1,false);
void bfs2(vector<ll>*Aj,ll st,ll n)
{

    queue<ll>q;
    q.push(st);
    vis2[st]=true;
    while(!q.empty())
    {
        ll parent=q.front();
        q.pop();
        cout<<parent<<" ";
        for(ll x:Aj[parent])
        {
            if(!vis2[x])
            {
                q.push(x);
                vis2[x]=true;
            }
        }

    }
    cout<<endl;
}
vector<bool>vis3(100+1,false);
vector<ll>dis(1000,0);
vector<ll>ppr(1000,0);
void dfs(vector<ll>*Aj,ll st,ll n)
{

    cout<<st<<" ";
    vis3[st]=true;
    for(ll x:Aj[st])
    {
        if(!vis3[x])
        {
            ppr[x]=st;
            dis[x]=dis[st]+1;
            dfs(Aj,x,n);
        }
    }
}
void path3(ll des)
{
    if(des==-1)return;
    path3(ppr[des]);
    cout<<des<<" ";
}
int main()
{
    ll n,e;
    cin>>n>>e;
    vector<ll>Aj[n+1];
    for(ll i=0;i<e;i++)
    {
        ll x,y;
        cin>>x>>y;
        Aj[x].push_back(y);
    }

    cout<<endl<<"the connections: "<<endl;
    for(ll i=0;i<=n;i++)
    {
        cout<<i<<": ";
        for(ll x:Aj[i])cout<<x<<" ";
        cout<<endl;
    }
    cout<<endl;
    bfs(Aj,1,n);
    cout<<endl<<"paths using while loop:"<<endl;
    for(ll x:v)
    {
        vector<ll>pat;
        cout<<x<<": ";
        ll st=x;
        while(1)
        {
            if(st==-1)break;
            pat.push_back(st);
            st=par[st];
        }
        reverse(pat.begin(),pat.end());
        for(ll xx:pat)cout<<xx<<" ";
        cout<<endl;
    }
    cout<<endl<<"paths using recursion:"<<endl;
    for(ll x:v)
    {
        cout<<x<<": ";
        path2(x);
        cout<<endl;
        cout<<"level of "<<x<<" is: "<<level[x]<<endl;
    }
    cout<<"all graphs:"<<endl;
    ll cnt=0;
    for(ll i=1;i<=n;i++)
    {
        if(!vis2[i])
        {

            if(Aj[i].size())
            {
                cnt++;
                bfs2(Aj,i,n);
            }
        }
    }
    cout<<"number of graphs: "<<cnt<<endl;
    cout<<"DFS: ";
    dfs(Aj,1,n);
    cout<<endl<<"distance using dfs:\n";
    for(ll x:v)
    {
        cout<<x<<": ";
        cout<<dis[x]<<endl;
    }
    ppr[1]=-1;
    cout<<endl<<"paths using recursion(dfs):"<<endl;
    for(ll x:v)
    {
        cout<<x<<": ";
        path3(x);
        cout<<endl;
    }

}

