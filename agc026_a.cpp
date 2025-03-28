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

    int answer = 0;

    for (int i = 0; i < N;)
    {
        int j = i;
        while (j < N && a.at(i) == a.at(j))
        {
            j++;
        }

        answer += (j - i) / 2;
        i = j;
    }

    cout << answer << endl;

    return 0;
}
