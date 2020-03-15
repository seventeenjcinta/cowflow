#include<stdio.h>
#include<stdlib.h>
#include<malloc.h>
#define LEN sizeof(struct stud)
struct stud
{
	long number;
	float score;
	struct stud*next;
};
int n=0;
struct stud*insert(struct stud*head,struct stud*stu)//插入 
{
	struct stud*p0=stu,*p1=head,*p2;
	if(head==NULL)
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while((p0->number>p1->number)&&(p1->next!=NULL))
		{
			p2=p1;
			p1=(p1->next);
		}
		if(p0->number<=p1->number)
		{
			if(head==p1)//头插 
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
		else//尾插
		{
			p1->next=p0;
			p0->next=NULL;
		}
		n++;	
	}
	return (head);
}
struct stud*creat()//创建 
{
	struct stud*head=NULL;
		struct stud*p;
		p=(struct stud*)malloc(LEN);
		scanf("%ld%f",&p->number,&p->score);
		while(p->number!=0)
		{
			head=insert(head,p);
			p=(struct stud*)malloc(LEN);
			scanf("%ld,%f",&p->number,&p->score);
		}
		free(p);
		return (head);
}
struct stud* delet(struct stud*head,long number)//删除 
{
	struct stud*p1,*p2;
	if(head==NULL)
	{
		printf("NULL");
		return (head);
	}
	p1=head;
	while(number!=p1->number&&p1->next!=NULL)
	{
		p2=p1;
		p1=p1->next;
	}
	if(number==p1->number)
	{
		if(p1==head) head=p1->next;
		else p2->next=p1->next;
		printf("delete:%ld\n",number);
		n=n-1;	
	}
	else printf("cannot find\n");
	return(head);	
}


void print(struct stud*head)
{
	printf("The List Is:\n");
	struct stud*p;
	p=head;
	if(head!=NULL)
	{
		do
		{
			printf("%ld%5.1f\n",p->number,p->score);
			p=p->next;
		}while(p!=NULL);
	}
	else printf("NULL");
}


void main()
{
	struct stud*head,*p;
	long deletnum;
	int choice;
	printf("*****Create List*****\n");
	printf("Please Input Records:(0,0 for exit)\n");
	head=creat();
	print(head);
	do
	{	
		printf("\n1.INSERT\t2.DELET\t0.EXIT\n");
		printf("Please Choose:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:
			{
				printf("Please Input number And score:");
				p=(struct stud*)malloc(LEN);
				scanf("%ld%f",&p->number,&p->score);
				head=insert(head,p);
				printf("Insertd:%ld\n",p->number);
				print(head);
			}
				break;
			case 2:
			{	
				printf("Please Input number:");
				scanf("%ld",&deletnum);
				head=delet(head,deletnum);
				print(head);
	    	} 
	    	break;
		}
	}while(choice!=0);
}

 

















