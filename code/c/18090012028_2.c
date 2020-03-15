#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct student)
int n = 0;		//链表中结点的个数 
struct student           //声明结构体类型struct student
{
	long num;
	float score;
	struct student *next;
};
void meau()				//打印菜单函数 
{
	printf("\n1.INSERT \t2.DELETE \t0.EXIT\n");
}
struct student *insert(struct student *head,struct student *stu)  //链表插入元素 
{
	struct student *p0 = stu,*p1 = head,*p2;
	if(head == NULL)  //空表,插入头节点
	{
		head = p0;
		p0->next = NULL;
	}
	else
	{	
		//printf("%d!%d",head->next,head);
		while(p0->num > p1->num && p1->next != NULL)
		{
			p2 = p1;
			p1 = p1->next;
		}
		if(p0->num <= p1->num)  //插入的小 放前边 
		{
			if(p1 == head)//表头之前 
			{
				head = p0;
				p0->next = p1;
			}
			else//中间 
			{
				p2->next = p0;
				p0->next = p1;
			}
		}
		else//插入的大放后面  表尾之后 
		{
			p1->next = p0;
			p0->next = NULL;
		}
	}
	n++;
	return (head);
}
struct student *creat(void)			//创建链表 
{
	struct student *p,*head;
	head =  NULL;
	p = (struct student *)malloc(LEN);
	scanf("%ld,%f",&p->num,&p->score);
	while(p->score != 0)
	{
		head = insert(head,p);
		p = (struct student *)malloc(LEN);
		scanf("%ld,%f",&p->num,&p->score); 
	}	
	if(p->score == 0) free(p);	
	return (head);
}
struct student *del(struct student *head,long num)       //删除元素 
{
	int i = 0;
	struct student *p1 = head,*p2;
	while(num != p1->num && p1->next != NULL)
	{
		p2 = p1;
		p1 = p1->next;
	}
	
	if(p1->next == NULL)//未找到则无操作返回 head
	{
		printf("Not,found!\n");
		return (head);
	}
	
	if(p1 == head)//删除元素为头结点		
	{
		head = p1->next;
		free(p1);
		n--;
	}
	else//除元素为中间结点
	{
		p2->next = p1->next;
		n--;
	}

	return (head);
}

void print(struct student *p)				//打印链表 
{
	int i;
	if(n == 0) printf("\nNow,there is no record!\n");
	else if(n == 1) printf("\nNow,there %d record is:\n",n);	
	else printf("\nNow,there %d records are:\n",n);	
	while(p)//for(i = 0;i < n;i++)	可根据全局变量n来输出链表 
	{
		printf("%-3ld%5.1f\n",p->num,p->score);
		p = p->next;
	}
	printf("\n");
}
int main() 
{
	struct student *head,*p;
	long del_num;
	int choice; 
	
	printf("******Create list!******\n");
	printf("Please input records:<0,0 for exit>\n");
	head = creat();//创建链表 
	print(head);//打印链表 
	
	do
	{
		meau();//打印菜单 
		choice = -1;
		printf("\nPlease choose:");
		scanf("%d",&choice);
		
		switch(choice)
		{
			case 1:
					printf("Please input num and score:");
					p = (struct student *)malloc(LEN);
					scanf("%ld,%f",&p->num,&p->score);
					head = insert(head,p);
					printf("Inserted: %ld\n",p->num);
					print(head);
					break;
			case 2:
					printf("Please input num:");
					scanf("%ld",&del_num);
					head = del(head,del_num);
					print(head);
					break;
		}
	}while(choice != 0);

	return 0;
}
