#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool
    {
        int num;
        scanf("%d", &num);
        
        char cstring[100000];
        NSString *str;
        for (int i = 0; i<num; i++)
        {
            scanf("%s", cstring);
            str = [NSString stringWithCString:cstring encoding:1];
            if ([str length] > 1)
            {
                NSString *cLetter = [str substringWithRange:NSMakeRange(0,1)];
                NSString *substr;
                int n = 0;
                for (int i = 1; i<[str length]; i++)
                {
                    substr = [str substringWithRange:NSMakeRange(i,1)];
                    if ([cLetter isEqualToString:substr]) n++;
                    else cLetter = substr;
                }
                printf("%d\n", n);
            } else
            {
                printf("1\n");
            }
        }
    }
    return 0;
}