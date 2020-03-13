#include<stdio.h>
#include <stdlib.h>
#pragma warning(disable:4996)
#define len sizeof(struct student)
struct student
{
	long num;
	float score;
	struct student *next;
};
int n;
struct student*creat()
{
	struct student*head = NULL;
	struct student*p1=NULL, *p2=NULL;
	n = 0;
	p1 = p2 = (struct student*)malloc(len);
	scanf("%ld %f",&p1->num,&p1->score);
	while (p1->num != 0)
	{
		n++;
		if (n == 1)
			head = p1;
		else p2->next = p1;
		p2 = p1;
		p1= (struct student*)malloc(len);
		scanf("%ld %f", &p1->num, &p1->score);
	}
	p2->next = NULL;
	return head;
}
struct student*insert(struct student* head, struct student*p)
{
	struct student* p0 = p;
	struct student* p1=head, * p2=NULL;
	if (head == NULL)//空链表新建一个节点
	{
		head = p0;
		p0->next = NULL;
	}
	else				//非空链表
	{
		while (p1->next != NULL&&p1->num<=p0->num)
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (p1 == head)		//表头之前
		{
			p1->next = head;
			head = p1;
		}
		else if (p1->next == NULL && p1->num <= p0->num)	//结尾
		{
			p1->next = p0;
			p0->next = NULL;
		}
		else												//中间
		{
			p2->next = p0;
			p0->next = p1;
		}
	}
	n = n + 1;
	return head;
}
struct student*dell(struct student*head,long num)
{
	struct student*p1, *p2=NULL;
	if (head == NULL)			//空链表
	{
		printf("List is Null\n");
		return head;
	}
	p1 = head;
	while (num != p1->num&&p1->next != NULL)
	{
		p2 = p1; 
		p1 = p1->next;
	}
	if (num == p1->num)					//找到数值
	{
		if (p1 == head)					//头部
			head = p1->next;
		else
			p2->next = p1->next;		//中间和结尾
		printf("Deleted: %ld\n",num);
		n = n - 1;
		free(p1);
	}
	else
		printf("未找到数据\n");		//未找到
	return head;
}
void print(struct student *head)
{
	struct student *p;
	p = head;
	printf("\nThe list is: \n");
	if (head != NULL)
	{
		while (p != NULL && p->num != 0)
		{
			printf("%-3d     %.1f\n", p->num, p->score);
			p = p->next;
		}
	}
}
void main()
{
	struct student*head, *p;
	long del_num;
	int choice;
	printf("*********Creat list!***********\n");
	printf("请输入初始学号和成绩（学号保持有序）:       (0.0 for exit)\n");
	head = creat();
	print(head);
	do
	{
		printf("\n请输入指令： 1.插入\t2.删除\t0.退出\n");
		choice = -1;
		printf("Please choose: ");
		getchar();
		scanf("%d", &choice);
		getchar();
		switch (choice)
		{
		case 1:
			printf("请输入学号和成绩: ");
			p = (struct student*)malloc(len);
			scanf("%ld %f", &p->num, &p->score);
			head = insert(head, p);
			printf("插入学号: %ld\n", p->num);
			print(head);
			break;
		case 2:
			printf("请输入学号: ");
			scanf("%ld",&del_num);
			head = dell(head, del_num);
			print(head);
			break;
		}
	} while (choice != 0);
	system("pause");
}