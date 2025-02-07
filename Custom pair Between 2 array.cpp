#include <bits/stdc++.h>
using namespace std;
struct tmp
{
    int val;
    int index;
};
tmp a[4], b[4];
bool comp(tmp x, tmp y)
{
    if (b[x.index].val < b[y.index].val)
        return true;
    if (b[x.index].val == b[y.index].val)
    {
        if (a[x.index].val < a[y.index].val)
            return true;
    }
    return false;
}
int main()
{
    ios_base::sync_with_stdio(false), cin.tie(nullptr), cout.tie(nullptr);
    for (int i = 0; i < 4; i++)
    {
        cin >> a[i].val;
        a[i].index = i;
    }
    for (int i = 0; i < 4; i++)
    {
        cin >> b[i].val;
        b[i].index = i;
    }
    sort(a, a + 4, comp);
    for (int i = 0; i < 4; i++)
    {
        cout << a[i].val << " ";
    }
    cout << "\n";
}
