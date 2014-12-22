#import <Foundation/Foundation.h>
NSString *alph;

int somefunc(NSString* str)
{
    if ([str length]>0)
    {
        if ([alph length]<1) return 0;
        
        NSString *tAlph = alph;
        for (int i = 0; i<[alph length]; i++)
        {
            NSString *cLetter = [alph substringWithRange:NSMakeRange(i,1)];
            
            BOOL isMatch = NO;
            for (int j = 0; j<[str length]; j++)
            {
                if ([[str substringWithRange:NSMakeRange(j,1)] isEqualToString:cLetter]) isMatch = YES;
            }
            
            if (isMatch)
            {
                if ([tAlph length]>1) tAlph = [tAlph stringByReplacingOccurrencesOfString:cLetter withString:@""];
                else tAlph = @"";
            }
        }
        alph = tAlph;
    }
    return 1;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char cstring[1002];
        alph = @"abcdefghijklmnopqrstuvwxyz";
        NSString *str;
        
        
        scanf("%s", cstring);
        str = [NSString stringWithCString:cstring encoding:1];
        
        NSString *tstr = @"";
        int n = 0;
        
        while ([str length]>0 && [alph length]>0)
        {
            str = [str lowercaseString];
            somefunc(str);
            tstr = str;
            str = @"";
            scanf("%s", cstring);
            str = [NSString stringWithCString:cstring encoding:1];
            str = [str lowercaseString];
            if ([tstr isEqualToString:str]) break;
        }
        
        if ([alph length]<1)
        {
            printf("pangram");
        }
        else
        {
            printf("not pangram");
        }
    }
    return 0;
}


