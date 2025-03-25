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

    int max_height = *max_element(h.begin(), h.end());
    int answer = 0;

    for (auto cur_h : ranges::views::iota(0, max_height))
    {
        vector<int> line_height(N);
        for (auto i : ranges::views::iota(0, N))
        {
            if (cur_h >= h.at(i))
            {
                line_height.at(i) = 0;
            }
            else
            {
                line_height.at(i) = 1;
            }
        }

        for (int i = 0; i < N;)
        {
            int j = i;
            while (j < N && line_height.at(i) == line_height.at(j))
            {
                j++;
            }

            if (line_height.at(i) == 1)
            {
                answer++;
            }

            i = j;
        }
    }

    cout << answer << endl;

    return 0;
}
