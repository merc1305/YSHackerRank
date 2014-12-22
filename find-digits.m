#import <Foundation/Foundation.h>

int main()
{
    int tCase,i,place = 0;
    double num,tNum,mod = 0;
    
    scanf("%d", &tCase);
    int places[tCase];
    
    for(i = 0; i < tCase; i++)
    {
        scanf("%lf", &num);
        tNum = num;
        while (tNum > 0.1)
        {
            mod = fmod(tNum,10.0);
            if (fmod(num,mod) == 0) place++;
            tNum = tNum/10 - (mod/10);
        }
        places[i] = place;
        place = 0;
    }
    
    for (i = 0; i < tCase; i++)
    {
        printf("%d\n",places[i]);
    }
    return 0;
}