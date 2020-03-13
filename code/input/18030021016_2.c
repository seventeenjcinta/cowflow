#include<stdio.h>
#include<stdlib.h>
#include<malloc.h>
#define LEN sizeof(struct student)
struct student
{
	long num;
	float score;
	struct student* next;
};
int n;
void print(struct student* head)
{
	struct student* p = head;
	printf("ѧ�� �ɼ�\n");
	if (head != NULL)
	{
		do {
			printf("%-5ld%-f\n", p->num, p->score);
			p = p->next;
		} while (p != NULL);
	}
}
struct student* insert(struct student* head, struct student* stu)
{
	struct student* p0 = stu, * p1 = head, * p2;
	p2 = (struct student*)malloc(LEN);
	if (head == NULL) { head = p0; p0->next = NULL; }
	else
	{
		while ((p0->num > p1->num)&& (p1->next != NULL)) { p2 = p1; p1 = p1->next; }
		if ((p0->num) <= (p1->num) )
		{
			if (p1 == head) { head = p0; p0->next = p1; }
			else { p2->next = p0; p0->next = p1; }
		}
		else { p1->next = p0; p0->next = NULL; }
	}
	n++;
	return head;
}
struct student* del(struct student* head, long num)
{
	struct student* p1 = head, * p2;
	p2 = (struct student*)malloc(LEN);
	if (head == NULL) { printf("������\n"); return head; }
	while ((num != p1->num) && (p1->next != NULL)) { p2 = p1; p1 = p1->next; }
	if (num == p1->num)
	{
		if (p1 == head) { head = p1->next; free(p1); n--; }
		else { p2->next = p1->next; free(p1); }
	}
	else { printf("û�ҵ���Ӧ����\n"); }
	n--;
	return head;
}
struct student* create()						//����һ���б�
{
	struct student* p, * head;
	head = (struct student*)malloc(LEN);
	head = NULL;
	p = (struct student*)malloc(LEN);			//Ϊp����ռ�
	printf("Please input rewords:(0,0 for exit)\n");
	scanf("%ld,%f", &p->num, &p->score);
	while (p->num != 0)
	{
		head = insert(head, p);
		p = (struct student*)malloc(LEN);
		scanf("%ld,%f", &p->num, &p->score);
	}
	free(p);
	return head;
}
int main()
{
	struct student* head, * p;
	long del_num;
	int choice;

	printf("*****Creat list*****\n");
	head = create();
	print(head);

	do {
		printf("\n1.insert\t2.DELETE\t0.EXIT\n");
		choice = -1;
		printf("Please choose:");
		scanf("%d",&choice);
		getchar();
		switch (choice)
		{
		case 1:
			printf("Please input num and score:");
			p = (struct student*)malloc(LEN);
			scanf("%ld,%f", &p->num, &p->score);
			head = insert(head, p);
			printf("Inserted:%ld\n", p->num);
			print(head);
			break;
		case 2:
			printf("Please input num:");
			scanf("%ld", &del_num);
			head = del(head, del_num);
			print(head);
		}
	} while (choice != 0);
}
