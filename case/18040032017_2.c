#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Node)
struct Node
{
	long num;
	float score;
	struct Node *next;
}; //定义结构体 
int n=0; //定义结点个数为全局变量 
void print(struct Node *head) //输出链表 
{
	struct Node *p=head;
	if(head!=NULL)
	{
		printf("Now.These %d records are:\n",n);
		do
		{
			printf("%02ld,%7.3f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
	}
	else
	{
		printf("Sorry!No records now!\n"); //输出为空表 
	}
}
struct Node *insert(struct Node *head,struct Node *stu) //插入一个结点 
{
	struct Node *p0=stu,*p1=head,*p2;
	if(head==NULL)//为空表时 
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while(p0->num>p1->num&&p1->next!=NULL)
		{
			p2=p1;
			p1=p1->next;
		}
		if(p0->num<=p1->num)
		{
			if(p1==head) head=p0;  //表头 
			else p2->next=p0; //中间 
			p0->next=p1;
		}
		else   //表尾 
		{
			p1->next=p0;
			p0->next=NULL;
		}
	}
	n++;  //结点个数增加 
	return(head);
}
struct Node *create() //创建一个结点 
{
	struct Node *p,*head=NULL;
	p=(struct Node *)malloc(LEN);
	scanf("%ld,%f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p); //由于插入时结点个数已经增加，此函数中不再增加结点个数 
		p=(struct Node *)malloc(LEN);
		scanf("%ld,%f",&p->num,&p->score);
	}
	free(p); //释放空间 
	return(head);
}
struct Node *del(struct Node *head,long num) //删除一个结点 
{
	struct Node *p1=head,*p2;
	if(head==NULL) return(head);//空表无法再删除 
	else
	{
		while(num!=p1->num&&p1->next!=NULL)
		{
			p2=p1;
			p1=p1->next;
		}
		if(num==p1->num)
		{
			if(p1!=head) p2->next=p1->next;	//中间和表尾 
			else head=p1->next;//表头和没找到 
			free(p1);   //释放空间 
			n--;    //结点个数减少 
		}
	} 
	return(head);
}
int main()
{
	struct Node *head,*p;
	long del_num;
	int choice;
	printf("*****Create list!*****\n");
	printf("Please input records: (0,0 for exit)\n");
	head=create();
	print(head);
	do
	{
		printf("\n1.INSERT\t2.DELETE\t0.EXIT\n");
		choice=-1;
		printf("Please Choose:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:
				printf("Please input num and score:");
				p=(struct Node *)malloc(LEN);
				scanf("%d,%f",&p->num,&p->score);
				head=insert(head,p);
				printf("Inserted:%d\n",p->num);
				print(head);
				break;
			case 2:
				printf("Please input num:");
				scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
		}
	}while(choice!=0); 
	return 0; 
}
