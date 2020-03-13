#include<stdio.h> 
#include<math.h> 
#define N 20
void print()
{
	printf("1.sin(x) 2.cos(x) 3.exp(x)");
} 
float intergal(float a,float b,float (*p)(float))
{
	float num=0;
	//float x=a;
	float h;
	h=(b-a)/N;
	float i;
	for(i=a;i<b;i+=h)
	{
		//num=num+((*p)(x+i*h)+(*p)(x+h*(i+1))*h)/2;//用梯形法求出每个梯形的面积之和 
		num=num+(((*p)(i)+(*p)(i+h))*h/2);//用梯形法求出每个梯形的面积之和 
	}
	return num;
}
/*float intergal(float a,float b,float (*p)(float))
{
	float num=0;
	float x=a;
	float h;
	h=(b-a)/N;//每个区间的长度为h 
	float i;
	for(i=0.0;i<N;i++)
	{
		num=num+((*p)(x+i*h)*h);//用矩形法求出每个小矩形之和 
	}
	return num;
}*/
float f1(float x)
{
	return sin(x);
}
float f2(float x)
{
	return cos(x);
}
float f3(float x)
{
	return exp(x);
}
int main()
{
	int n,i;
	float (*p)(float);
	float intergal(float x,float y,float (*p)(float));//intergal函数声明 
	float f1(float);//f1函数声明 
	float f2(float);//f2函数声明 
	float f3(float);//f3函数声明 
	print();//将每个函数打印出来 
	printf("\n");
	int choose;
	for(i=0;;i++)
	{
	printf("please input your choice: ");
	scanf("%d",&choose);
	if(choose==0) break;
	float a,b;
	printf("\n"); 
	printf("please input bot and top:") ;
	scanf("%f%f",&a,&b);
	switch(choose)
	{
		case 1:p=f1;break;
		case 2:p=f2;break;
		case 3:p=f3;break;
	}
	printf("\n");
	printf("the result is :\n");
	float result;
	result=intergal(a,b,p);
	printf("%f",result);
	printf("\n\n");
	print();
	printf("\n");
	}
	return 0;
}
