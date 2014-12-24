#import <Foundation/Foundation.h>

int main()
{
    NSFileHandle *input;
    
    NSString *match = @"hackerrank";
    int amount;
    
    input = [NSFileHandle fileHandleWithStandardInput];
    
    NSString *inputData = [[NSString alloc] initWithData:[input availableData]
                                                encoding:NSUTF8StringEncoding];
    NSArray *inputDataArr = [inputData componentsSeparatedByString: @"\n"];
    
    amount = [inputDataArr[0] intValue];
    
    for (int j = 1; j <= amount; j++)
    {
        NSString *str = inputDataArr[j];
        
        NSArray *redexArr = @[match,
                              [NSString stringWithFormat:@"^%@.+", match],
                              [NSString stringWithFormat:@".+%@$", match]
                              ];
        
        for (int i = 2; i>=-1; i--)
        {
            if (i <= -1)
            {
                printf("-1\n");
            } else
            {
                NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", redexArr[i]];
                if ([pred evaluateWithObject:str])
                {
                    printf("%d\n", i);
                    break;
                }
            }
        }
    }
    return 0;
}