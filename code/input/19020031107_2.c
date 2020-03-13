#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#define LEN sizeof(struct student)
struct student
{
	long int num;
	float score;
	struct student * next;
};
int n;
struct student *create()
{
	struct student * head;
	struct student * p1, * p2;
	n = 0;
	p1 = p2 = (struct student*)malloc(LEN);
	scanf ("%ld %f",&p1->num,&p1->score);
	head = NULL;
	while(p1->num!=0)
	{
		n+=1;
		if (n==1)
			head = p1;
		else
			p2->next=p1;
		p2 = p1;
		p1 = (struct student*)malloc(LEN);
		scanf ("%ld%f",&p1->num,&p1->score);
	}
	p2 -> next =NULL;
	return(head);                                 
}
void print (struct student * head)
{
	struct student *p;
	p = head;
	if (head != NULL)
	{
		printf ("\n这些记录是:\n");
		do
		{
			printf ("%ld %5.1f\n",p->num,p->score);
			p=p->next;
		}while (p != NULL);
	}
	else 
		printf ("没有数据!\n"); 
}
struct student *del(struct student *head,int num)
{
	struct student *p1;
	struct student *p2;
	p1=head;
	if (head == NULL)
	{
		printf ("这个链表是空的");
		return(head);
	}
	while (p1->num != num && p1->num != 0)
	{
		p2 = p1;
		p1 = p1 -> next;
	}
	if (p1->num==num)
	{
		if (p1==head)
			head = p1->next;
		else
			p2->next=p1->next;
	}
	
	printf ("删除成功"); 
	return (head);
} 
struct student *insert(struct student *head,struct student*stud)
{
	struct student *p1;
	stud->next=head;
	head = stud;
	return(head); 
}

void main()
{
	struct student *head, *p;
	long int num;
	long del_num;
	int choice;
	printf ("*****创建列表*****\n");
	
	head = create();
	print (head);
	do
	{
		printf ("\n1.插入\t2.删除 \t0.退出\n");
		choice = -1;
		printf ("请选择");
		scanf ("%d",&choice);
		getchar();
		switch (choice)
		{
			case 1:
					printf ("请输入学号和成绩：");
					p = (struct student *) malloc(LEN);
					scanf ("%ld%f",&p->num,&p->score);
					head = insert (head,p);
					printf ("插入：%ld\n",p->num);
					print (head);
					break;
			case 2:
					printf ("请输入学号：");
					scanf ("%ld",&del_num);
					head = del(head,del_num);
					print (head);
		} 
	}while (choice != 0);
}
