#include <stdio.h>
#include <stdlib.h>
#include <malloc.h> 
#define LEN sizeof(struct student)
struct student*creat();//创建函数声明
struct student*del(struct student*,long);//删除函数声明
struct student*insert(struct student*,struct student*);//插入函数声明 
void print(struct student*);//输出函数声明 

struct student
{
	long num;
	float score;
	struct student*next;
};
int n;

void main()
{
	struct student *head,*p;
	long del_num;
	int choice;
	printf("*****创建链表!*****\n");
	printf("请输入(0,0表示停止输入)：\n");//输入提示 
	head=creat();//建立链表，返回头指针 
	printf(head);//输出全部节点 
	 
	do 
	{
		printf("\n1.添加\t2.删除\t0.退出\n");//选择列表 
		choice=-1;
		printf("请选择：\n");
		scanf("%d",&choice);
		getchar();
		switch(choice) //多项选 
		{
			case 1:
				printf("请输入要添加的学号和成绩：");//提示要插入的节点 
				p=(struct student*)malloc(LEN); //开辟新节点 
				scanf("%ld,%f",&p->num,&p->score);//输入要插入的节点 
				head=insert(head,p);//调用函数insert 
				print(head);//输出插入后的链表 
				break;
			case 2:
				printf("请输入要删除的学号：");//提示要删除的节点 
				scanf("%ld",&del_num);//输入要删除的节点 
				head=del(head,del_num);//返回链表的头地址，赋值给head 
				if(n!=0) 
				print(head);//输出全部链表 
		}
	}
	while(choice!=0);
} 

//建立链表的函数 
struct student*creat()
	{
		struct student *head;
		struct student *p1,*p2;
		n=0;
		p1=p2=(struct student*)malloc(LEN);
		scanf("%ld,%f",&p1->num,&p1->score);
		head=NULL;
		while(p1->num!=0)
		{
			n=n+1;
			if(n==1)head=p1;
			else p2->next=p1;
			p2=p1; 
			p1=(struct student*)malloc(LEN);
			scanf("%ld,%f",&p1->num,&p1->score); 
		} 
		p2->next=NULL;
		return(head);
	}

//s删除节点函数
struct student*del(struct student*head,long num)
{
	struct student*p1,*p2;
	if(head==NULL)
		{
		printf("\n这是空表\n");
		return(head); 
		} 
 p1=head;
 while(num!=p1->num&&p1->next!=NULL)
 {p2=p1;p1=p1->next;}
 if(num==p1->num)
 {
 	if(p1==head)head=p1->next;
 	else p2->next=p1->next; 
 	printf("删除：%ld\n",num);
 	n=n-1;
 }
 else printf("%ld找不到！\n",num);
 return(head); 
} 
 //插入节点函数
 struct student*insert(struct student*head,struct student*p)
 {
 	struct student*p0,*p1,*p2;
 	p1=head;
 	p0=p;
 	if(head==NULL)
 	 {head=p0;p0->next=NULL;}
	else 
	{while((p0->num>p1->num)&&(p1->next!=NULL))
	{
		p2=p1;
		p1=p1->next;
	 } 
	}
	if(p0->num<=p1->num)
	{
		if(head==p1)head=p0;
		else p2->next=p0;
		p0->next=p1; 
	}
	else
	{
		p1->next=p0;
		p0->next=NULL;
	}
	n=n+1;
	return(head);
 }
 //定义输出链表的print函数
 void print(struct student*head)
 {
 	struct student*p;
 	printf("操作后：\n");
	p=head;
	if(head!=NULL);
		do
		{
			printf("%ld %5.1f\n",p->num,p->score);
			p=p->next;
		 } while(p!=NULL); 
  } 
