#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct stu)
struct stu
{
	long num;
	float score;
	struct stu *next;
};
int n;
struct stu *crate(void)
{
	struct stu*head;
	struct stu*p1,*p2;
	n=0;
	p1=(struct stu*)malloc(LEN);
	printf("请输入学生的学号和成绩:");
	scanf("%d%f",&p1->num,&p1->score);
	head=p1;
	p2=p1;
	p1=NULL;
	n=n+1;
	while(n<3)
	{
		p1=(struct stu*)malloc(LEN);
		printf("请输入学生的学号和成绩:");
		scanf("%d%f",&p1->num,&p1->score);
		p2->next=p1;
		p2=p1;
		n++;
	}
	return head;
}
void print(struct stu*p0)
{
	int i;
	for(i=1;i<=n;i++)
	{
		printf("%d,%.0f\n",p0->num,p0->score);
		p0=p0->next;
	}
}
struct stu *insert(struct stu *head,struct stu *p)
{
	struct stu*p1,*p2;
	p1=head;
	while(p1->next!=NULL&&p1->num<p->num)
	{
		p2=p1;
		p1=p1->next;
	}
	if(p1->num>=p->num)
	{
		if(p1==head)
			head=p;
		else
			p2->next=p;
			p->next=p1;
	}
	else
	{
		p1->next=p;
		p->next=NULL;
	}
	n++;
	return head;
}
struct stu*del(struct stu*head,struct stu*p)
{
	struct stu*p1=head,*p2;
	while(p1->next!=NULL&&p1->num!=p->num)
	{
		p2=p1;
		p1=p1->next;
	}
	if(p1->num==p->num)
	{
		if(p1==head)
		{
			p2=p1->next;
			head=p2;
		}
		else 
			p2->next=p1->next;
		n--;
	}
	return head;
}
void main()
{
	struct stu *head,*p;
	int choice;
	head=crate();
	print(head);
	do
	{
		printf("\n1. insert\t2.del\t0. exit\n");
		choice=-1;
		printf("please choice:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
		case 1:
				p=(struct stu*)malloc(LEN);
				printf("请输入学生的学号和成绩:");
				scanf("%d%f",&p->num,&p->score);
				head=insert(head,p);
				print(head);
				break;
		case 2:
				p=(struct stu*)malloc(LEN);
				printf("请输入学生的学号:");
				scanf("%d",&p->num);
				head=del(head,p);
				print(head);
				break;
		case 0:
				exit(0);
		}
	}
	while(choice!=-1);
}



	
