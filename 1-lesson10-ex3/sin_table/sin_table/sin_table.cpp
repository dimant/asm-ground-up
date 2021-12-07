#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>

#define _USE_MATH_DEFINES // for C
#include <math.h>

#include <stdint.h>

int main()
{
    float j[92];
    union f_u {
        float f;
        uint32_t u;
    } sin_val, sv1, sv2, sv3, sv4;

    FILE* fp;

    if ((fp = fopen("sindata.txt", "w")) == 0)
    {
        printf("File could not be opened for writing\n");
        exit(1);
    }

    for (int i = 0; i < 92; i++)
    {
        sin_val.f = (float) sin(M_PI * i / 180.0);
        j[i] = sin_val.f;
    }

    for (int i = 0; i < 92; i += 4)
    {
        sv1.f = j[i];
        sv2.f = j[i + 1];
        sv3.f = j[i + 1];
        sv4.f = j[i + 1];

        fprintf(fp, "DCD\t 0x%x, 0x%x, 0x%x, 0x%x\n", 
            sv1.u, sv2.u, sv3.u, sv4.u);
    }

    fclose(fp);

    return 0;
}
