#pragma GCC optimize("O3")
#include <bits/stdc++.h>
#ifndef ONLINE_JUDGE
#include "D:\Asus_F15\Desktop\contest\debug.h"
#else
#define dbg(x...)
#define dbgc(x...)
#endif
using namespace std;
#define ll long long
#define ld long double
#define No cout << "No\n"
#define no cout << "no\n"
#define NO cout << "NO\n"
#define Yes cout << "Yes\n"
#define yes cout << "yes\n"
#define YES cout << "YES\n"
#define Case(a) cout << "Case " << a << ": "
#define CaseN(a) cout << "Case " << a << ":\n"

void solve(ll tc)
{
    ld x1, y1, x2, y2, x3, y3, x4, y4;
    while (cin >> x1 >> y1 >> x2 >> y2 >> x3 >> y3 >> x4 >> y4)
    {
        vector<pair<ld, ld>> points;
        // make pair for each point and insert
        points.push_back({x1, y1});
        points.push_back({x2, y2});
        points.push_back({x3, y3});
        points.push_back({x4, y4});
        // sort the points
        sort(points.begin(), points.end());
        // make set for each pair of points
        set<pair<ld, ld>> s1;
        s1.insert({x1, y1});
        s1.insert({x2, y2});
        s1.insert({x4, y4});
        s1.insert({x3, y3});

        ld smx = 0, smy = 0;
        for (auto i : s1)
        {
            smx += i.first;
            smy += i.second;
        }

        ld subx = 0, suby = 0;
        for (int i = 0; i < 3; i++)
        {
            // compare points[i] and points[i+1] using &&
            if (points[i].first == points[i + 1].first && points[i].second == points[i + 1].second)
            {
                subx = points[i].first;
                suby = points[i].second;
            }
        }

        cout << fixed << setprecision(3) << smx - 2 * subx << " " << smy - 2 * suby << "\n";
    }
}

int32_t main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    ll tc = 1;
    // cin >> tc;
    for (ll t = 1; t <= tc; t++)
    {
        solve(t);
    }
    return 0;
}
