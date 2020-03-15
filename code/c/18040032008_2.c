#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Node)
int n;
struct Node	//定义结构体 
{
	long num;
	float score;
	struct Node *next;
};

void print(struct Node *head)	//输出链表的子函数 
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
		printf("Sorry! No records now!\n");
}

struct Node * insert(struct Node *head,struct Node *stu)	//链表中正序插入的子函数 
{
	struct Node *p1=head,*p2;
	if(head==NULL)	//空表p0即为第一项 
	{
		head=stu;
		stu->next=NULL;
	}
	else
	{
		while(stu->num>p1->num&&p1->next!=NULL)	//遍历 
		{
			p2=p1;
			p1=p1->next;
		}
		if(stu->num<=p1->num)	//在遍历中找到了插入位置 
		{
			if(p1==head)	head=stu;	//插在表头之前
			else	p2->next=stu;	//插在p1和p2中间 
			stu->next=p1; 
		}
		else 	//插在表尾之后 
		{
			p1->next=stu;
			stu->next=NULL; 
		} 
	}
	n++;
	return(head);
 } 
 
 struct Node *create()	//创建链表的函数 
 {
 	struct Node*p,*head=NULL;
 	p=(struct Node *)malloc(LEN);
 	scanf("%ld,%f",&p->num,&p->score);
 	while(p->num!=0)
 	{
 		head=insert(head,p);
 		p=(struct Node *)malloc(LEN);
 		scanf("%ld,%f",&p->num,&p->score);
	}
	free(p);
	return(head);
 }
 
struct Node *del( struct Node *head,long num)
{
	struct Node *p1=head,*p2;
	if(head==NULL)	return(head);
	else
	{
		while(num>p1->num&&p1->next!=NULL)	//遍历 
		{
			p2=p1;
			p1=p1->next;
		}
		if(num==p1->num)	//找到了删除项 
		{
			if(p1==head)	head=p1->next;	//删除表头 
			else	p2->next=p1->next;	//删除表尾或中间项 
			free(p1);
			n--;
		}
		//没找到删除项则不需要进行操作 
	}
	return(head); 
}

int main()	//主函数 
{
	struct Node *head,*p;
	long del_num;
	int choice;
	
	printf("*****Create list!*****\n");
	printf("Please input records : (0.0 for exit)\n");
	head=create();
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
					printf("Please input num and score：");
					p=(struct Node *) malloc(LEN);
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
	 return 0;
 } 
