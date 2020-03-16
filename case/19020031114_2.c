#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct Node)

int n = 0;  //ȫ�ֱ���n 

//�����ṹ�� 
struct Node
{
	long int num;
	double score;
	struct Node *next;
};

//����
struct Node *insert (struct Node *head, struct Node *stu)
{
	struct Node *p0 = stu, *p1 = head, *p2 = NULL;
	if (head == NULL)
	{
		head = p0;
		p0->next = NULL;
	}
	else 
	{
		while (p1->num < p0->num && p1->next != NULL)
		{
			p2 = p1;
			p1 = p1->next;
		}
		if(p0->num <= p1->num)
		{
			if(p1 == head)
			{
				p0->next = p1;
				head = p0;
			}
			else 
			{
				p0->next = p1;
				p2->next = p0;
			}
		}
		else
		{
			p1->next = p0;
			p0->next = NULL;
		}
	}
	n++; 
	return (head);
} 

//����
struct Node *create (struct Node *head)
{
	struct Node *p;
	p = (struct Node *) malloc(LEN);
	scanf("%ld,%lf", &p->num, &p->score);
	while (p->num != 0)
	{
		head = insert(head, p);
		p = (struct Node *) malloc(LEN);
		scanf("%ld,%lf", &p->num, &p->score);
	}
	free(p);
	printf("\n");
	return (head);
} 

//ɾ��
struct Node *del (struct Node *head, long int num)
{
	struct Node *p1 = head, *p2;
	if (head == NULL)
		printf("List is null!\n");
	else 
	{
		while (p1->num < num && p1->next != NULL)
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (p1->num == num)
		{
			if (p1 == head)
			{
				head = p1->next;
				printf("Deleted: %ld\n", num);
				n--;
			}
			else
			{
				p2->next = p1->next;
				printf("Deleted: %ld\n", num);
				n--;
			}
		}
		else
			printf("%ld not been found!\n", num);
	}
	printf("\n");
	return (head);
}

//��ӡ
struct Node *print (struct Node *head)
{
	int i; 
	struct Node *p1 = head, *p2;
	if (head == NULL)
		printf("Sorry! No records now!\n");
	else
	{
		printf("Now. These %d records are:\n", n);
		for (i = 0; i < n; i++, p1 = p1->next)
			printf("%d %-5.1f\n", p1->num, p1->score);
	}
	printf("\n");
	return (head);
} 

//������
int main()
{
	int choise;
	long int num;
	double score;
	struct Node stu1;
	struct Node *p0, *head = NULL;
	printf("*****Create List!*****\n");
	printf("Please input records : <0,0 for exit>\n");
	head = create(head);
	head = print(head);
	while(1)
	{
		printf("1. INSERT	2. DELEIE	0. EXIT\n");
		printf("Please Choose: ");
		scanf("%d", &choise);
		if (choise == 0)
			break;
		else if (choise == 1)
		{
			printf("Please input num and score: ");
			p0 = (struct Node *) malloc(LEN);
			scanf("%ld,%lf", &p0->num, &p0->score);
			head = insert(head, p0);
			printf("Insert: %d\n", p0->num);
		}
		else if (choise == 2)
		{
			printf("Please input num: ");
			scanf("%ld", &num);
			head = del(head, num);
		}
		printf("\n");
		head = print(head);
	}
	return 0;
} 
