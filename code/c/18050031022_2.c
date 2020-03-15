#include<stdio.h>
#include<stdlib.h>

#define LEN sizeof(struct Node)

int n=0;

struct Node
{
	long num;
	float score;
	struct Node *next;
};

struct Node *insert(struct Node *head,struct Node *stu)
{
	struct Node *p0=stu,*p1=head,*p2;
	if(head==NULL)
	{
		head=p0;
		p0->next=NULL;
	}else
	{
		while(p0->num>p1->num&&p1->next!=NULL)
		{
			p2=p1;
			p1=p1->next;
		}
		if(p0->num<=p1->num)
		{
			if(p1==head)
				head=p0;
			else
				p2->next=p0;
			p0->next=p1;
		}else
		{
			p1->next=p0;
			p0->next=NULL;
		}
	}
	n++;
	return (head);
}

struct Node *create()	 
 {
 	struct Node*p,*head=NULL;
 	printf("Please input number and score:\n");
	printf("(input '0' '0' to end)\n");
 	p=(struct Node *)malloc(LEN);
 	scanf("%ld %f",&p->num,&p->score);
 	while(p->num!=0)
 	{
 		head=insert(head,p);
 		p=(struct Node *)malloc(LEN);
 		scanf("%ld %f",&p->num,&p->score);
	}
	free(p);
	return(head);
 }

struct Node *del( struct Node *head,long num)
{
	struct Node *p1=head,*p2;
	if(head==NULL)
	{
		printf("invaild input\n");
		return (head);
	}
	else
	{
		while(num>p1->num&&p1->next!=NULL)	
		{
			p2=p1;
			p1=p1->next;
		}
		if(num==p1->num)	
		{
			if(p1==head)	
				head=p1->next;	
			else	
				p2->next=p1->next;	 
			free(p1);
			n--;
		}else	printf("can't find the target'\n");
	}
	return(head); 
}


void print(struct Node *head)	
{
	struct Node *p=head;
	if(head!=NULL)
	{
		do
		{
			printf("%ld %.3f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
	}
	else
		printf("Sorry! No records now!\n");
	putchar('\n');
}

void main()
{
	struct Node *head,*pt;
	int choice;long num;
	printf("*****Create list!*****\n");
	head=create();
	printf("The original data is£º\n");
	print(head);
	while(1)
	{
		printf("1.INSERT  2.DELETE  0.exit\n");
		printf("please choose£º");
		scanf("%d",&choice);
		switch(choice)
		{
			case 1:	pt=create();
					head=insert(head,pt);
					printf("Now these %d records are:\n",n-1);
					print(head);
					break;
			case 2:	printf("Please input number£º\n");
					scanf("%ld",&num);
					head=del(head,num);
					printf("Now these %d records are:\n",n-1);
					print(head);
					break;
			case 0:	exit(0);
		}
	}
}

