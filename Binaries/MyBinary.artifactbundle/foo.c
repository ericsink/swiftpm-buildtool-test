
#include <stdio.h>

int main(int argc, char** argv) 
{
    FILE* fp = fopen(argv[1], "w");
    fprintf(fp, "let magic = 42\n");
    fclose(fp);
    return 0;
}

