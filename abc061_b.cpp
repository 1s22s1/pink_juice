#include <bits/stdc++.h>

using namespace std;

#define endl '\n';

int init()
{
    cin.tie(nullptr);
    ios_base::sync_with_stdio(false);

    return 0;
}

int main()
{
    init();

    int N, M;
    cin >> N >> M;

    vector<vector<int>> G(N);

    for (auto i : ranges::views::iota(0, M))
    {
        int a, b;
        cin >> a >> b;

        G[a - 1].push_back(b - 1);
        G[b - 1].push_back(a - 1);
    }

    for (auto const &g : G)
    {
        cout << g.size() << endl;
    }

    return 0;
}
