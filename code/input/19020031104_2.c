#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct student)
struct student
{
	int num;
	float score;
	struct student* next;
};
int n;                                                           //数据组数
struct student * insert(struct student* head, struct student* p0)//插入函数
{
	struct student* p1 = head, *p2;
	if(head == NULL)
	{
		head = p0;
		p0->next = NULL;
	}
	else
	{
		while((p0->num > p1->num) && (p1->next != NULL))
		{
			p2 = p1;
			p1 = p1->next;
		}
		if(p0->num <= p1->num)
		{
			if(p1 == head)
				head = p0;
			else
				p2->next = p0;
			p0->next = p1;
		}
		else
		{
			p1->next = p0;
			p0->next = NULL;
		}
	}
	n++;
	return(head);
}
struct student * delete(struct student* head, int num)           //删除函数
{
	struct student* p1 = head, * p2;
	if(head == NULL)
		printf("Sorry! No records now!");
	else
	{
		while((p1->next != NULL) && (num > p1->num))
		{
			p2 = p1;
			p1 = p1->next;
		}
		if(num == p1->num)
		{
			if(p1 == head)
				head = p1->next;
			else
				p2->next = p1->next;
			free(p1);                                             //释放空间
			n--;
			printf("Deleted: %d\n\n", num);
		}
		else
			printf("%d not been found!\n\n",num);
	}
	return(head);
}
struct student*creat(void)                                        //创建链表函数
{
	struct student* head, * p1, * p2;
	n = 0;
	p1 = p2 = (struct student*)malloc(LEN);
	scanf("%d,%f", &p1->num, &p1->score);
	head = NULL;
	while(p1->num != 0)
	{
		n = n + 1;
		if(n == 1)
			head = p1;
		else
			p2->next = p1;
		p2 = p1;
		p1 = (struct student*)malloc(LEN);
		scanf("%d,%f", &p1->num, &p1->score);
	}
	p2->next = NULL;
	printf("\n");
	return(head);
}
void print(struct student* head)                                 //输出函数
{
	struct student* p;
	p = head;
	if (head != NULL)
	{
		printf("Now,These %d records are:\n",n);
		do
		{
			printf("%d  %5.1f\n", p->num, p->score);
			p = p->next;
		} while(p != NULL);
		printf("\n");
	}
	else
		printf("Sorry! No records now!\n\n");
}
int main()
{
	int choice;
	int del;
	struct student* head, *p;
	printf("*****Create list!*****\n");
	printf("Please input records:(num,score. 0,0 for exit)\n");
	head = creat();
	if(head != NULL)
		print(head);
label:
	printf("\n1.INSERT\t2.DELETE\t0.EXIT\n");
	printf("Please choose:");
	scanf("%d", &choice);
	if (choice == 0) exit(0);
	switch (choice)
	{
	case 1:
		printf("Please input num and score:");
		p = (struct student*) malloc(LEN);
		scanf("%d,%f", &p->num, &p->score);
		head = insert(head,p);
		printf("Inserted: %d\n\n", p->num);
		print(head);
		break;
	case 2:
		if (head != NULL)
		{
			printf("Please input num:");
			scanf("%d", &del);
			head = delete(head, del);
			print(head);
		}
		else
			printf("List is null!\nSorry! No records now!\n\n");
		break;
	default:printf("Wrong choice!\n"); break;
	}
	goto label;
}
