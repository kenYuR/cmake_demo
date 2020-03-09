#include "stdio.h"
#include "mytestConfig.h"

int main()
{
    printf("version:%d.%d\n", MYTEST_VERSION_MAJOR, MYTEST_VERSION_MINOR);
    return 0;
}
