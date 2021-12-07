#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>

#define _USE_MATH_DEFINES // for C
#include <math.h>

int main()
{
    float j[92];
    float sin_val;
    FILE* fp;

    if ((fp = fopen("sindata.txt", "w")) == 0)
    {
        printf("File could not be opened for writing\n");
        exit(1);
    }

    for (int i = 0; i < 92; i++)
    {
        sin_val = (float) sin(M_PI * i / 180.0);
        j[i] = sin_val;
    }

    for (int i = 0; i < 92; i += 4)
    {
        fprintf(fp, "DCD\t %f, %f, %f, %f\n", 
            j[i], j[i + 1], j[i + 2], j[i + 3]);
    }

    return 0;
}
