#import <Foundation/Foundation.h>

int main()
{
    int testC=0,i=0,ch=0,it=0,step=0,conv=0;
    char string[10000];
    
    scanf("%d", &testC);
    int convArr[testC];
    
    for (i = 0; i < testC; i++)
    {
        scanf("%s",string);
        it = strlen(string);
        it = it/2;
        ch = strlen(string)-1;
        for (step = 0; step < it; step++, ch-- )
        {
            if (string[step] > string[ch]) conv += (string[step] - string[ch]);
            else conv += (string[ch] - string[step]);
        }
        convArr[i] = conv;
        conv = 0;
        it = 0;
        memset(string,0,strlen(string));
    }
    
    for (i = 0; i < testC; i++)
    {
        printf("%d\n",convArr[i]);
    }
    return 0;
}