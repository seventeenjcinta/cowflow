#include<stdio.h>
#include<malloc.h>
#include<stdlib.h> 
# define LEN sizeof(struct Student)			//定义LEN为结构体长度 

int n=0;									//全局变量n为目前链表中的记录的个数 

struct Student								//定义的结构体类型 
{
	long num;
	float score;
	struct Student *next;
 };
 
struct Student *insert(struct Student *head,struct Student *p0)		//插入函数，实现链表的插入 
{
	struct Student *p2,*p1=head;
	if(head==NULL)										//当链表为空的时候的插入 
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while(p0->num>p1->num&&p1->next!=NULL)			//寻找插入的位置 
		{
			p2=p1;p1=p1->next;
		}
		if(p0->num<p1->num)
		{
			if(p1==head) head=p0;						//在表头插入 
			else p2->next=p0;							//在表中插入 
			p0->next=p1;
		}
		else
		{
			p1->next=p0;								//在表尾插入 
			p0->next=NULL;
		}
	}
	n++;
	return(head);
}

struct Student *create(struct Student *head)			//创建链表的函数，通过多次插入实现 
{
	struct Student *p;
	head=NULL;
	do
	{
		p=(struct Student *)malloc(LEN);
		scanf("%ld,%f",&p->num,&p->score);				//输入创建的数据 
		if(p->num!=0&&p->score!=0)
			head=insert(head,p);						//通过调用插入函数实现 
	}while(p->num!=0&&p->score!=0);						//判断创建终止条件 
	return(head); 
}

void print(struct Student *head)						//输出链表的函数 
{
	struct Student*p;
	printf("\nNow, These %d records are:\n",n);
	p=head;
	if(head!=NULL)
		do
		{
			printf("%5ld %7.1f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
}

struct Student *del(struct Student *head,long num)		//删除链表某数据的函数 
{
	struct Student *p1=head,*p2;
	if(head==NULL)										//链表为空的情况 
	{
		printf("The linkedList is empty, can not delete\n");
		return(head);
	}
	while(num>p1->num&&p1->next!=NULL)					//找到想要删除数据的位置 
	{
		p2=p1;p1=p1->next;
	}
	if(num==p1->num)
	{
		if(p1==head) head=p1->next;						//分表头和表中的情况删除 
		else p2->next=p1->next;
		free(p1);
		n--;
	}
	else
	{
		printf("Not found\n");							//未找到相应数据 
	}
	return(head);
}

int main()
{
	struct Student *head,*p;								//head为头指针 
	long del_num;											//del_num想要删除数据的序号 
	int choice;												//通过choice不同值对操作进行选择 
	printf("*****Create list!*****\n");	 
	printf("Please input records : (0,0 for exit)\n");
	head=create(head);
	print(head);
	
	do
	{
		printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");
		choice=-1;
		printf("Please Choose: ");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:													//插入数据 
				printf("Please input num and score: ");
				p=(struct Student *)malloc(LEN);
				scanf("%ld,%f",&p->num,&p->score);
				head=insert(head,p);
				printf("Inserted: %ld\n",p->num);
				print(head);
				break;
			case 2:													//删除数据 
				printf("Please input num:");
				scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
				break;
			case 0:													//结束程序 
				exit (0);
		}
	}while(1);
}
