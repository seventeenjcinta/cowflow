#include<stdio.h>
#include<stdlib.h>//malloc头文件 
#define LEN sizeof(struct Node)
//单项有序链表的创建/插入/删除 
//全局变量n代表结点数 
int n=0;
/*
8 9
2 8
10 7
1 6
0 0
*/
struct Node
{
	long num;
	float score;
	struct Node *next;
};
//有序插入 
struct Node *insert(struct Node *head,struct Node *pt)
{
	struct Node *p0=pt;
	struct Node *p1=head;
	struct Node *p2;
	if(head==NULL)
	{head=p0;p0->next=NULL;n++;}
	else
	{
		///第二个条件确保能跳出循环 
		while(p0->num>p1->num&&p1->next!=NULL)
		{
			//排正序\若大于就后移
			p2=p1;p1=p1->next;
		}
		//满足p2->num<p0->num<=p1->num减少时间复杂度 
		//插入位置在表头或中间 
		if(p0->num<=p1->num)
		{
			//表头 
			if(p1==head) {head=p0;p0->next=p1;}
			//中间 
			else {p2->next=p0;p0->next=p1;}
		}
		//插入位置在表尾 
		else
		{p1->next=p0;p0->next=NULL;}
	}
	//结点数自加 
	n++;
	return(head);
}
//创建链表 
struct Node *create(struct Node *head)
{
	struct Node *p;
	//强制类型转换 
	p=(struct Node *)malloc(LEN);
	scanf("%ld %f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct Node *)malloc(LEN);
		scanf("%ld %f",&p->num,&p->score);
	}
	//释放最后一个空存储空间/结点数自减 
	free(p);n--;
	return(head);
}
//有序删除 
struct Node *del(struct Node *head,long num)
{
	if(head==NULL)
	{
		printf("*****not been found*****\n",num);
		return(head);
	}
	struct Node *p1=head,*p2;
	while(num!=p1->num&&p1->next!=NULL)
	{p2=p1;p1=p1->next;}
	//找到 
	if(num==p1->num)
	{
		//删除位置在表头 
		if(p1==head) head=p1->next;
		//删除位置在中间或表尾(表尾同样赋值NULL)
		else p2->next=p1->next;
		//释放p1存储空间且结点数自减 
		free(p1);n--;
		return(head);
	}
	//没找到
	else
	{
		printf("*****not been found*****\n");
		return(head);
	}
}
//打印链表 
void *print(struct Node *head)
{
	struct Node *p=head;
	if(head!=NULL)
	{
		printf("*****%d records in total*****\n",n);
		do
		{
			printf("%ld %.1f\n",p->num,p->score);
			p=p->next;
		}
		while(p!=NULL);
	}
	else
		printf("*****sorry,no records*****\n");
}

int main()
{
	//head赋初值NULL 
	struct Node *head=NULL;
	struct Node *p;
	long del_num;
	int choice;
	
	printf("*****create list*****\n");
	printf("please input records:(0 0 for exit)\n");
	head=create(head);
	printf("*****create finished*****\n");
	print(head);
	
	do
	{
		printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");
		choice=-1;
		printf("please choose:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:
				printf("please input num and score:");
				p=(struct Node *)malloc(LEN);
				scanf("%ld %f",&p->num,&p->score);
				head=insert(head,p);
				printf("inserted:%ld\n",p->num);
				print(head);
				break;
			case 2:
				printf("please input num:");
				scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
		}
	}while(choice!=0);
	return(0);
}

