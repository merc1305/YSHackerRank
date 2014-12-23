#import <Foundation/Foundation.h>

int main()
{
    int t;
    scanf("%d", &t);
    while (t--)
    {
        int n;
        scanf("%d", &n);
        int x = -1, y = -1;
        for (int i = n / 3; i >= 0;i--)
            if ((n - 3 * i) % 5 == 0)
            {
                x = i;
                y = (n - 3 * i) / 5;
                break;
            }
        if (x == -1)
        {
            printf("-1\n");
        }
        else
        {
            for (int i = 0; i < 3 * x; i++) printf("5");
            for (int i = 0; i < 5 * y; i++) printf("3");
            printf("\n");
        }
    }
    return 0;
}