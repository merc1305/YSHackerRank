#import <Foundation/Foundation.h>

int main()
{
    NSFileHandle *input;
    NSString *match = @"hackerrank";
    int amount,result=0;
    
    input = [NSFileHandle fileHandleWithStandardInput];
    
    NSString *inputData = [[NSString alloc] initWithData:[input availableData]
                                                encoding:NSUTF8StringEncoding];
    NSArray *inputDataArr = [inputData componentsSeparatedByString: @"\n"];
    amount = [inputDataArr[0] intValue];
    
    for (int j = 1; j <= amount; j++)
    {
        NSString *str = inputDataArr[j];
        NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] %@", match];
        if ([pred evaluateWithObject:str])
        {
            result++;
        }
    }
    printf("%d\n", result);
    return 0;
}