#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#define LEN sizeof(struct student)
int n;//全局变量n为链表中节点的个数 
struct student
{
	int num;
	float score;
	struct student *next;
};
int main()
{
	struct student *delect(struct student *head,int num);
	void output(struct student *head);
	struct student *create(void);
	struct student *insert(struct student *head,struct student *p0);
	struct student *head=NULL;
	struct student *p=NULL;
	int m,num,i;
	while(1)
	{
	p=(struct student*)malloc(LEN);
	p->next=NULL;
	printf("choose one number:(0-3)\n");
	printf("0:exit 1:create 2:delect 3:insert\n");
	scanf("%d",&m);
	switch(m)
	{
		case 0: exit(0);
		case 1: printf("please input the data:\n");head=create();break; 
		case 2: printf("please input the num of student you want to delect:\n");scanf("%d",&num);head=delect(head,num);break;
		case 3: printf("please input the data:\n");scanf("%d%f",&p->num,&p->score);head=insert(head,p);break;
		default : printf("你是个锤子!\n");
	}
	printf("共有%d个学生的数据\n",n);
	output(head);
	}
	return 0; 
}
struct student *insert(struct student *head,struct student *p0)//插入节点同时排序 
{
	struct student *p1,*p2;
	if(p0->num!=0)//考虑插入的数据无效 
	{
		if(head==NULL)//考虑空表 
			head=p0;
		else
		{
			p1=head;
			p2=head->next;
			if(head->num>p0->num) 
			{
				p0->next=head;
				head=p0;
			}
			else	
			{
				while(p2&&(p2->num)<(p0->num))
				{
					p1=p2;
					p2=p2->next;
				}
				p0->next=p2;
				p1->next=p0;
			}
		}
		n++;
	}
	return(head);
}
struct student *create(void)//创建 
{
	struct student *insert(struct student *head,struct student *p0);
 	struct student *p=NULL,*head=NULL;
	p=(struct student*)malloc(LEN);
 	p->next=NULL;
 	scanf("%d%f",&p->num,&p->score);
 	do
 	{
 		head=insert(head,p);
 		p=(struct student*)malloc(LEN);
 		p->next=NULL;
 		scanf("%d%f",&p->num,&p->score);
 	}while(p->num!=0);
 	free(p);
	return(head); 
}
struct student *delect(struct student *head,int num)//删除 
 {
 	struct student *p1=NULL,*p2=NULL;
 	p2=head;
 	if(head==NULL)//考虑链表为空的情况 
 		{
		 	n++;
 			printf("sorry!There is no data.\n");
 		} 
 	else 
	{	
		if(head->num==num)//在链表头找到数据 
 		 	head=head->next;
 		else
 		{
			while(p2&&p2->num<num)//while(p2->num<num&&p2)--这样写是错误的， 
 			{							//'且'逻辑符号如果前面结果为0，将不再进行第二个条件的判定
 				p1=p2;
 				p2=p2->next;
			}
			if(p2)
				(p1->next)=(p2->next);//在链表中间或者链表尾找到数据 
			else
			{	
				printf("The number is not included in this data.\n");//找不到数据
				n++;
			}
		}
	}
	n--;
	return(head);
 }
void output(struct student *head)//输出 
{
	struct student *p=NULL;
	p=head;
	if(p)// 链表不为空时 
		do
		{
			printf("%d %.2f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
 } 
