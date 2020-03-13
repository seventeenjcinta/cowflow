#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)
struct Student
{
	int number;
	float score;
	struct Student *next;
};

int n=0;
struct Student *head=NULL;
struct Student * p1,* p2,* p3,* p4,* p5;

void build()
{
	p1=p2=(struct Student*)malloc(LEN);
	scanf("%d%f",&p1->number,&p1->score);
	while(p1->number!=0)
	{
		n=n+1;
		if(n==1)
			head=p1;
		else
			p2->next=p1;
		p2=p1;
		p1=(struct Student*)malloc(LEN);
		scanf("%d%f",&p1->number,&p1->score);
	}
}

void cha()
{
	p3=head;
	p4=(struct Student*)malloc(LEN);
	scanf("%d%f",&p4->number,&p4->score);
	while((p4->number>p3->number)&&(p3->next!=NULL))
	{
		p5=p3;
		p3=p3->next;
	}
	if(p4->number<=p3->number)
	{
		if(head==p3)head=p4;
		else p5->next=p4;
		p4->next=p3;
	}
	else
	{
		p3->next=p4;
		p4->next=NULL;
	}
	n=n+1;
}

void discard()
{
	int a;
	printf("请输入要删除的数据\n");
	scanf("%d",&a);
	p3=p4=head;
	while(a!=p3->number&&p3->next!=NULL)
	{
		p4=p3;
		p3=p3->next;
	}
	if(a==p3->number)
	{
		if(p3==head)
			head=p3->next;
		else
			p4->next=p3->next;
		n=n-1;
	}
	else
		printf("未找到该数\n");
}

void print()
{
	if(n==0)	printf("无数据\n");
	else
	{
	printf("\n共有%d名学生\n数据为:\n",n);
	p3=head;
	do
	{
		printf("%d	%.1f\n",p3->number,p3->score);
		p3=p3->next;
	}while(p3!=NULL);
	}
	printf("\n");
}

int main()
{
	void build();
	void discard();
	void print();
	void cha();
	printf("请输入学生的数据:\n");
	build();
	printf("创造完成\n");
	print();
	
	do{
	int judge;
	printf("1-增添数据	2-删除数据	3-退出\n");
	scanf("%d",&judge);
	if(judge==1)
	{
		cha();
		print();
	}
	if(judge==2)
	{
		discard();
		print();
	}
	if(judge==3)
		break;
	}while(1); 
}
