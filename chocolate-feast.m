#import <Foundation/Foundation.h>

int main()
{
    int times, N, C, M;
    scanf("%d", &times);
    while(times--) {
        
        scanf("%d %d %d", &N, &C, &M);
        int num = N / C;
        int leftWarpers = num;
        while(leftWarpers - M >= 0) {
            leftWarpers -= M;
            leftWarpers++;
            num++;
        }
        printf("%d\n", num);
    }
    return 0;
}