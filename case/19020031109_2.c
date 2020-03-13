#include <stdio.h>
#include <stdlib.h>

#define LEN sizeof(Student)

typedef struct Node
{
	long num;
	float score;
	struct Node* next;
}Student;

int n = 0;


Student *insert(Student *head, Student *p0)//head：表头结点 p0：待插入结点
{
	Student *p1 = head, *p2;
	if (head == NULL)//表头不存在则p0作为表头
	{
		head = p0;
		p0->next = NULL;
	}
	else
	{
		while (p0->num > p1->num && p1->next != NULL)
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (p0->num <= p1->num)
		{
			if (p1 == head)//表头前
				head = p0;
			else//中间
				p2->next = p0;
			p0->next = p1;
		}
		else//表尾后
		{
			p1->next = p0;
			p0->next = NULL;
		}
	}
	n++;
	return head;
}

Student *create()//创建
{
	Student *head, *p;
	head = NULL;
	p = (Student*)malloc(LEN);
	scanf("%ld,%f", &p->num, &p->score);
	while(p->num != 0)
	{
		head = insert(head, p);
		p = (struct Node*)malloc(LEN);
		scanf("%ld,%f", &p->num, &p->score);
	}
	free(p);
	return head;
}

Student *del(Student *head, long num)//删除
{
	Student *p1 = head, *p2;
	if(head == NULL)//没有数据
		printf("No record now!\n");
	else
	{
		while (num > p1->num && p1->next != NULL)
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (num == p1->num)
		{
			if (p1 == head)//表头
				head = p1->next;
			else//中间
				p2->next = p1->next;
            printf("Deleted the num %ld\n", num);
			free(p1);
			n--;
		}
		else//数据不存在
		{
			printf("The record doesn't exit!\n");
		}
	}
	return head;
}


void print(Student *head)
{
	Student *p;
	printf("\nNow, these %d records are:\n", n);
	p = head;
	while(p != NULL)
	{
		printf("%ld %5.1f\n", p->num, p->score);
		p = p->next;
	}
}


int main()
{
	Student *head, *p;
	long del_num;
	int choice;

	printf("*****Create a list!*****\n");
	printf("Please input records(0,0 for exit):\n");
	head = create();
	print(head);

	do
	{
	    putchar('\n');
		printf("1. INSERT\t2. DELETE\t0. EXIT\n");
		printf("Please choose: ");
		scanf("%d", &choice);
		switch (choice)
		{
			case 1:
				printf("Please input a num and a score: ");
				p = (Student*)malloc(LEN);
				scanf("%ld,%f", &p->num, &p->score);
				head = insert(head, p);
				printf("Inserted the num %ld\n", p->num);
				print(head);
				break;
			case 2:
				printf("Please input a num: ");
				scanf("%ld", &del_num);
				head = del(head, del_num);
				print(head);
		}
	}while (choice != 0);
}
