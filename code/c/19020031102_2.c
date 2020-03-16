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
	if (head == NULL)//�������½�һ���ڵ�
	{
		head = p0;
		p0->next = NULL;
	}
	else				//�ǿ�����
	{
		while (p1->next != NULL&&p1->num<=p0->num)
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (p1 == head)		//��ͷ֮ǰ
		{
			p1->next = head;
			head = p1;
		}
		else if (p1->next == NULL && p1->num <= p0->num)	//��β
		{
			p1->next = p0;
			p0->next = NULL;
		}
		else												//�м�
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
	if (head == NULL)			//������
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
	if (num == p1->num)					//�ҵ���ֵ
	{
		if (p1 == head)					//ͷ��
			head = p1->next;
		else
			p2->next = p1->next;		//�м�ͽ�β
		printf("Deleted: %ld\n",num);
		n = n - 1;
		free(p1);
	}
	else
		printf("δ�ҵ�����\n");		//δ�ҵ�
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
	printf("�������ʼѧ�źͳɼ���ѧ�ű�������:       (0.0 for exit)\n");
	head = creat();
	print(head);
	do
	{
		printf("\n������ָ� 1.����\t2.ɾ��\t0.�˳�\n");
		choice = -1;
		printf("Please choose: ");
		getchar();
		scanf("%d", &choice);
		getchar();
		switch (choice)
		{
		case 1:
			printf("������ѧ�źͳɼ�: ");
			p = (struct student*)malloc(len);
			scanf("%ld %f", &p->num, &p->score);
			head = insert(head, p);
			printf("����ѧ��: %ld\n", p->num);
			print(head);
			break;
		case 2:
			printf("������ѧ��: ");
			scanf("%ld",&del_num);
			head = dell(head, del_num);
			print(head);
			break;
		}
	} while (choice != 0);
	system("pause");
}