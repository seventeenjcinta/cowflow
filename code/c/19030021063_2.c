#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)
struct Student
{
	long num;
	float score;
	struct Student *next;
};
int n;
struct Student *insert(struct Student *head,struct Student *stu)
{
	struct Student *p1=head,*p2,*p=stu;
	if(head==NULL)
	{
		head=p;
		p->next=NULL;
	}
	else
	{
		while(p1->next!=NULL&&p1->num<p->num)
		{
			p2=p1;
			p1=p1->next;
		}
		if(p->num<=p1->num)
		{
			if(p1==head)
			{
				head=p;
				p->next=p1;
			}
			else
			{
				p2->next=p;
				p->next=p1;
			}
		}
		else
		{
			p1->next=p;
			p->next=NULL;
		}
	}
	n++;
	return(head);
}
struct Student *creat(void)
{
	struct Student *p,*head=NULL;
	p=(struct Student *)malloc(LEN);
	scanf("%ld%f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct Student *)malloc(LEN);
		scanf("%ld%f",&p->num,&p->score);
	}
	free(p);
	return(head);
}
struct Student *del(struct Student *head,int num)
{
	struct Student *p1=head,*p2;
	if(head==NULL)
	{
		printf("链表为空\n");
		return(head);
	}
	else
	{
		while(p1->next!=NULL&&num>p1->num)
		{
			p2=p1;
			p1=p1->next;
		}
		if(num=p1->num)
			if(p1==head)
			{
				head=p1->next;
				free(p1);
			}
			else
			{
				p2->next=p1->next;
				free(p1);
			}
		else
			printf("NOT FIND!");
	}
	n--;
	return(head);
}
void print(struct Student *head)
{
	struct Student *p;
	if(head==NULL)
		printf("链表为空\n");
	else
		printf("\nNow,These %d records are:\n",n);
	p=head;
	if(head!=NULL)
		do
		{
			printf("%ld %5.1f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
}
void main()
{
	struct Student *head,*p;
	long del_num;
	int choice=-1;
	printf("***creat list!***\n");
	printf("please input records:(0,0 for exit)\n");
	head=creat();
	print(head);
	do
	{
		printf("\n1:insert\t2:delete\t0:exit\n");
		printf("please choose pattern:");
		scanf("%d",&choice);
		switch(choice)
		{
		case 1:
				printf("please input num and score:");
				p=(struct Student*)malloc(LEN);
				scanf("%ld%f",&p->num,&p->score);
				head=insert(head,p);
				printf("inserted:%ld\n",p->num);
				print(head);
				break;
		case 2:
				printf("please input del_num.");
				scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
		}
	}
	while(choice!=0);
}