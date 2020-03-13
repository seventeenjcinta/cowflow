#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct student)
int n;
struct student
{
	long num;
	float score;
	struct student *next;
 };
 void print(struct student *head)
 {
 
 	struct student *p;
 	p=head;
 	if(head!=NULL)
 	{
 		printf("\nNow,These %d records are :\n",n);
 		do
		 {
		 	printf("%ld,%5.1f\n",p->num,p->score); 
		 	p=p->next;
		}while(p!=NULL);
	}
	else 
		printf("\nSorry! No records now!\n ");
 	
 }
 
 struct student *insert(struct student *head,struct student *stu)
 {
 
	 struct student *p0,*p1,*p2;
 	p0=stu;
 	p1=head;
 	if(head==NULL)//等号不是赋值号 
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
	n++;
	return (head);
 }
struct student * create(struct student *head)
{
	struct student *p;
	p=(struct student *)malloc(LEN);
	scanf("%ld,%f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct student *)malloc(LEN);
		scanf("%ld,%f",&p->num,&p->score);
	}
	return(head);
}
struct student *del(struct student *head,long num)
{
	struct student *p1,*p2;
	if(head=NULL)
	{
		printf("List is null!\n");
		return(head);
	}
	p1=head;
	while(num!=p1->num&&p1->next!=NULL)
	{
		p2=p1;
		p1=p1->next;
	}
	if(num=p1->num)
	{
		
		if(p1=head)
			head=p1->next;
		else
			p2->next=p1->next;
		printf("Delete:",num);
		n--;
		free(p1);
	}
	else
		printf("Sorry!No records now!\n");
}
void main()
{
	struct student *head,*p;
	long del_num;
	int choice;
	struct student * create(struct student *head); 
	printf("*****Create list!*****\n");
	printf("Please input records:(0,0 for exit)\n");
	head = NULL;//head 不会默认为null，需要赋值 
	head=create(head);
	print(head);
	
	do
	{
		printf("\n1. INSERT\t2. DELETE \t0. EXIT\n");
		choice=-1;
		printf("Please Choose: ");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:
				printf("Please input num and score: ");
				p=(struct student *)malloc(LEN);
				scanf("%ld,%f",&p->num,&p->score);
				head=insert(head,p);
				printf("Inserted: %ld\n",p->num);
				print(head);
				break;
			case 2:
				printf("Please input num: ");
				scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
				
		}
		
	}while(choice!=0); 
} 
