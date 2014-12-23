#import <Foundation/Foundation.h>

int main()
{
    int t;
    scanf("%d", &t);
    while (t--)
    {
        int n;
        scanf("%d", &n);
        long long ans = 1;
        for (int i = 0; i < n - 1; i++)
        {
            int num;
            scanf("%d", &num);
            ans = (ans * num) % 1234567;
        }
        printf("%lld\n", ans);
    }
    return 0;
}