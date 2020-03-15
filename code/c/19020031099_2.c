#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct node)

struct node
{
	long num;
	float score;
	struct node *next;
};
int n;

struct node *del(struct node *head,long num)  //删除链表
{
	struct node *p2,*p1=head;
	if(head==NULL)   //空链表 
	{
		printf("No data can delete!\n");
	}
	else 
	{
		while( (num!=p1->num) && (p1->next!=NULL) )   //找到要删除的链表
		{
			p2=p1;
			p1=p1->next;
		}
		if(p1->num==num)   //找到了就删除 
		{
			if(p1==head)
				head=p1->next;
			else
				p2->next=p1->next;
			free(p1);
			n--;
		}
		else               //没找到
			printf("No data can delete!\n");
	}
	return(head);
}

struct node *insert(struct node *head,struct node *stu)   //插入链表 
{
	struct node *p0=stu,*p1=head,*p2;
	if(head==NULL)   //插入空链表 
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while( (p0->num>p1->num) && (p1->next!=NULL) )  //移动指针使链表有序 
		{
			p2=p1;
			p1=p1->next;
		}
		if(p0->num<=p1->num)
		{
			if(p1==head)
				head=p0;    //插入表头结点之前
			else
				p2->next=p0;  //插入中间结点 
			p0->next=p1;
		}
		else
		{
			p1->next=p0;      //插入表尾结点之后
			p0->next=NULL;
		}
	}
	n++;
	return(head);
}

struct node *create()    //创建链表 
{
	struct node *head=NULL,*p;
	p=(struct node *) malloc (LEN);   //开辟链表动态空间 
	scanf("%ld,%f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct node *) malloc (LEN);
		scanf("%ld,%f",&p->num,&p->score);
	}
	free(p);
	return(head);
}

void print(struct node *head)    //输出链表 
{
	struct node *p=head;
	printf("\nThe crruent list is:\n");
	if(head!=NULL)
		do
		{
			printf("%ld %.1f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
	else
		printf("Nothing!\n");
}

int main()
{
	struct node *head,*p;
	int choice;
	long del_num;
	
	printf("*****Create list!*****\n");
	printf("Please input records:(0,0) for EXIT\n");
	head=create();
	print(head);
	
	do
	{
		printf("\n1.INSERT\t2.DELETE\t0.EXIT\n");
		choice=-1;
		printf("Please choose:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:
			        printf("Please input num and score:");
					p=(struct node *) malloc (LEN);
					scanf("%ld,%f",&p->num,&p->score);
					head=insert(head,p);
					printf("Inserted:%ld\n",p->num);
					print(head);
					break;
			case 2:
					printf("Please input num:");
					scanf("%ld",&del_num);
					head=del(head,del_num);
					print(head);
					break;	
		}
	}while(choice!=0);
	return 0;
}
