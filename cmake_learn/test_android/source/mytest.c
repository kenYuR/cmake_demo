#include "stdio.h"
#include "mytestConfig.h"
#include "mytest.h"


void mytest_print_version()
{
    printf("version:%d.%d\n", MYTEST_VERSION_MAJOR, MYTEST_VERSION_MINOR);
}
