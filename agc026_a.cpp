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

    int N;
    cin >> N;

    vector<int> a(N);
    for (auto i : ranges::views::iota(0, N))
    {
        cin >> a.at(i);
    }

    vector<pair<int, int>> compressed_a;

    for (int i = 0; i < N;)
    {
        int j = i;
        while (j < N && a.at(i) == a.at(j))
        {
            j++;
        }

        compressed_a.push_back({a.at(i), j - i});
        i = j;
    }

    int answer = 0;

    for (const auto &p : compressed_a)
    {
        answer += p.second / 2;
    }

    cout << answer << endl;

    return 0;
}
