#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(STU)
int count;
//定义结构体
typedef struct Student
{
	long num;
	double score;
	struct Student *next;
} STU;
//插入（类型:从头部,中间，尾部） 
STU *insert(STU *head,STU *stu)
{
	STU *p0=stu,*p1=head,*p2;
	if(head==NULL)
	{
		head=p0;
		p0->next =NULL;
	}
	else
	{
		//判断stu的分数是否正序，是，则继续往下走 
		while( (p0->num > p1->num)&&p1->next !=NULL)
		{
			p2=p1;p1=p1->next ;
		}
		//如果比参照物小 
		if(p0->num <=p1->num )
		{
			//如果p1和表头相等，那就表头插入 
			if(p1==head) 
			{
				head=p0;
				p0->next =p1;
			}
			//中间插入 
			else
			{
				p2->next =p0;
				p0->next =p1;
			}
		}
		//一直到最后都没找到一个比他大的，则表尾插入 
		else 
		{
			p1->next =p0;
			p0->next =NULL; 
		}
	}
	count++;
	return (head); 
}

//创建
//STU *create(void)
//{
//	STU *p,*head;
//	p=(STU *)malloc(LEN);
//	scanf("%ld %lf",&p->num ,&p->score );
//	while(p->num !=0)
//	{
//		head=insert(head,p);
//		p=(STU *)malloc(LEN);
//		scanf("%ld %lf",&p->num ,&p->score );
//	}
//	free(p);
//	return(head);
//} 
STU *create(void)
{
	STU *p;
	static STU *head=NULL;
	p=(STU *)malloc(LEN);
	scanf("%ld %lf",&p->num ,&p->score );
	while(p->num !=0)
	{
		head=insert(head,p);
		p=(STU *)malloc(LEN);
		scanf("%ld %lf",&p->num ,&p->score );
	}
	free(p);
	return(head);
}
//删除
STU *deleting(STU *head,long deleteNum)
{
	STU *p1=head,*p2;
	if(head==NULL)
	{
		printf("链表为空.\n");
		return head;
	}
	while(deleteNum!=p1->num &&p1!=NULL)
	{
		p2=p1;
		p1=p1->next; 
	}
	if(p1==NULL)
		printf("不存在该数据；\n");
	else if(p1==head)
	{
		head=head->next ;
		count--;
	}	
	else
	{
		p2->next =p1->next ;
		count--;
	}
	return head;
} 
//打印所有链表信息 
void printing(STU *head)
{
	STU *p=head;
//	STU *p;
//	p=(STU*)malloc(LEN);
	p=head;
	if(head==NULL)
		printf("空链表;\n");
	else
	{
		printf("一共有%d个信息；\n",count);
		do
		{
			printf("%-5ld %8.3lf\n",p->num ,p->score );
			p=p->next ;
		}while(p!=NULL);
//		while(p!=NULL)
//		{
//			printf("%ld %6.2f\n",p->num ,p->score );
//			p=p->next ;
//		}
	}
}

int main()
{
	STU *p;
	static STU *head=NULL;
	long del_num;
	int choice;
	
	printf("***********创建列表*****************\n");
	printf("请输入原始数据:(0 0为退出)\n");
	head=create();
	printing(head); 
	
	while(1)
	{
		printf("选择功能：1.插入数据；2.删除数据；0.退出\n");
		scanf("%d",&choice);
		if(choice==0) break;
		switch(choice)
		{
			case 1:
				p=(STU *)malloc(LEN);
				printf("请输入想要加入的数据（如2 3）:");
				scanf("%ld %lf",&p->num ,&p->score );
				head=insert(head,p);
				printf("插入:%ld\n",p->num );
				printing(head);
				break;
			case 2:
				printf("请输入想要删去的号码:");
				scanf("%ld",&del_num);
				head=deleting(head,del_num);
				printing(head);
				break;
		}
	}
	return 0;
}
