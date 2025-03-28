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

    vector<int> h(N);
    for (auto i : ranges::views::iota(0, N))
    {
        cin >> h.at(i);
    }

    int answer = 0;

    for (int height = 1; height <= *max_element(h.begin(), h.end()); height++)
    {
        vector<int> line(N);

        for (auto i : ranges::views::iota(0, N))
        {
            if (height <= h.at(i))
            {
                line.at(i) = 1;
            }
            else
            {
                line.at(i) = 0;
            }
        }

        line.erase(unique(line.begin(), line.end()), line.end());

        answer += count(line.begin(), line.end(), 1);
    }

    cout << answer << endl;

    return 0;
}
