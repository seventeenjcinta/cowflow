#include <stdio.h>
#include <malloc.h>
#define LEN sizeof(struct Nade) 
struct Nade
{
	long num;
	float score;
	struct Nade *next;
};
int n=0;
struct Nade *creat()
{
	printf("请输入要输入的数据(输入0 0结束):\n");
	struct Nade *head;
	struct Nade *p1,*p2;
	p1=p2=(struct Nade *) malloc(LEN);
	scanf("%ld%f",&p1->num,&p1->score);
	head=NULL;
	while (p1->num!=0)
	{
		n=n+1;
		if (n==1) head=p1;
		else p2->next=p1;
		p2=p1;
		p1=(struct Nade *)malloc(LEN);
		scanf("%ld%f",&p1->num,&p1->score);
	}
	p2->next=NULL;
	return (head);
}

void print(struct Nade *head)
{
	int i,m=n;
	struct Nade *p,*p1,*min,*to,*tom;
	tom=to=min=p1=(struct Nade *) malloc(LEN);
	tom=to;
	p=head;
	for(i=0;i<n;i++)
	{
		to->num=p->num;
		to->score=p->score;
		printf("%ld \n",to->num);
		to=to->next;
		p=p->next;
	 }
	 to=NULL; 
	p1=tom;
	min=tom;
	printf("数据为:\n");
	while(m>0)
	{
		for(i=0;i<n;i++)
		{
			if (p1->num!=0 && min->num > p1->num)
			{
				min=p1;
				p1=p1->next;
			}
			else p1=p1->next;
			if (p1==NULL) break;
		}
		printf("%ld %5.1f\n",min->num,min->score);
		min->num=0;
		p1=tom;
		for(i=0;i<n;i++)
		{
			if (p1->num!=0)
			{
				min=p1;
				break; 
			} 
			else p1=p1->next;
		}
		m--;
	}
}

int insert (struct Nade *head)
{
	int num;
		struct Nade *p;
		p=(struct Nade *) malloc(LEN);
		scanf("%ld %f",&p->num,&p->score);
		p->next=head;
		head=p;
		n++;
		return(head);

}
int del(struct Nade *head)
{
	int m,num;
	struct Nade *p,*p0;
	p=(struct Nade *) malloc(LEN);
	p=head;
	printf("请输入要删除的位数:");
	scanf("%d",&m);
	if (m==0) return;
	else if (m==1)
	{
		p=head->next;
		head=p;
		
	}
	else
	{
		for (num=2;num<m;num++)
		{
			p=p->next;
			if(p->next==NULL) break; 
		}
		p0=p->next;
		p->next=p0->next;
	}
	return (head);
}
int main()
{
	int choice,m;
	struct Nade *head;
	printf("*****创建链表*****\n");
	head=creat();
	print(head);
	do
	{
		printf("1 插入. 2 删除  0 退出\n");
		scanf("%d",&choice);
		switch(choice)
		{
			case 1:printf("要插入的数据:");head=insert(head);print(head);break;
			case 2:head=del(head);print(head);break;
		}
	}while(choice!=0);
	return 0;
}
