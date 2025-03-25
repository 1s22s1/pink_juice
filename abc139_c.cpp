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

    vector<int> H(N);

    for (auto i : ranges::views::iota(0, N))
    {
        cin >> H.at(i);
    }

    int answer = -1;

    for (int i = 0; i < N;)
    {
        int j = i;
        while (j < N - 1 && H.at(j) >= H.at(j + 1))
        {
            j++;
        }

        answer = max(answer, j - i);
        i = j + 1;
    }

    cout << answer << endl;

    return 0;
}
