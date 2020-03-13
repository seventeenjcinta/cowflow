#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct Node)

struct Node
{
	long num;
	float score;
	struct Node*next;
};

int n;

struct Node *creat()//建立链表函数 
{
	struct Node*head;
	struct Node*p1,*p2;
	n=0;
	p1=(struct Node*)malloc(LEN);
	scanf("%ld %f",&p1->num,&p1->score);
	head=NULL;
	while(p1->num!=0)
	{
		n++;
		if(n==1) head=p1;
		else p2->next=p1;
		p2=p1;
		p1=(struct Node*)malloc(LEN);
		scanf("%ld %f",&p1->num,&p1->score);
	}
	p2->next=NULL;
	return (head);
}

struct Node *insert(struct Node *head,struct Node *stud)//输入 
{
	struct Node *p0,*p1,*p2=NULL;
	p1=head;
	p0=stud;
	if(head==NULL)
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while((p0->num>p1->num)&&(p1->next!=NULL))
		{
			p2=p1;
			p1=p1->next;
		}
		if(p0->num<=p1->num)
		{
			if(p1==head)
			{
				head=p0;
				p0->next=p1;
			}
			else
			{ 
				p2->next=p0;
				p0->next=p1;
			}
		}
		else
		{
			p1->next=p0;
			p0->next=NULL;
		}
	}
	return (head);
}

struct Node *del(struct Node *head,long num)//删除结点 
{
	struct Node *p1=head,*p2;
	if(head==NULL) 
	{
		printf("List is null!\n");
		return (head);
	}
	while(num!=p1->num&&p1->next!=NULL)
	{
		p2=p1;
		p1=p1->next;
	}
	if(num==p1->num)
	{
		printf("Deleted:%ld\n",num);
		if(p1==head) head=p1->next;
		else p2->next=p1->next;
		n--;
		free(p1);
	}
	else printf("Sorry, %ld not been found!\n",num);
	return (head);
}

void print(struct Node *head) //输出 
{
	struct Node *p;
	p=head;
	if(head!=NULL)
	{
		printf("\nNow,these %d records are:\n",n);
		do
		{
			printf("%-2ld %5.1lf\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
	}
	else printf("\nSorry, no records now!\n");
}

int main() 
{
	struct Node *head,*p;
	long del_num;
	int choice;
	printf("*****Create list!*****");
	printf("\nPease input records:<0.0 for exit>\n");
	head=creat();
	print(head);
	do
	{
		printf("\n1.INSERT \t2.DELETE \t0.EXIT\n");
		choice=-1;
		printf("Please Choose:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 2:
					printf("Please input num:");
					scanf("%ld",&del_num);
					head=del(head,del_num);
					print(head);
					break;
			case 1:
					printf("Please input num and score:");
					p=(struct Node*)malloc(LEN);
					scanf("%ld %f",&p->num,&p->score);
					n++;
					head=insert(head,p);
					printf("Inserted:%ld\n",p->num);
					print(head);
		}
	}while(choice!=0);
	return 0;
}
