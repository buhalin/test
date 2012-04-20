#include<stdio.h>
#include"e.h"

extern int a;
extern void add(int*);
extern void mysin();
void main(){
add(&a);
printf("the result is:%d\n",a);
mysin();
}
