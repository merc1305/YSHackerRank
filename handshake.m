#import <Foundation/Foundation.h>

int main()
{
    int t,c,n;
    scanf("%d", &t);
    
    while(t--)
    {
        c = 0;
        scanf("%d",&n);
        while(n--)
        {
            if(n>0)
            {
                c += n;
            }
        }
        printf("%d\n", c);
    }
    return 0;
}