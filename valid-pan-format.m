#import <Foundation/Foundation.h>

int main()
{
    int n=0;
    scanf("%d", &n);
    char cstring[11];
    NSString *str;
    
    for (int i = 0; i < n; i++)
    {
        scanf("%s", cstring);
        str = [NSString stringWithCString:cstring encoding:1];
        
        NSPredicate *panPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"[A-Z]{5}[0-9]{4}[A-Z]"];
        if ([panPredicate evaluateWithObject:str]) printf("YES\n");
        else printf("NO\n");
    }
    return 0;
}