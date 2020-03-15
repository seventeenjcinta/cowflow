#include <stdio.h>
#define LEN sizeof(struct Node)
int n = 0;
struct Node
{
	long num;
	float score;
	struct Node* next;
};
struct Node* insert(struct Node* head, struct Node* stu)
{
	struct Node* p0 = stu;
	struct Node* p1 = head;
	struct Node* p2=head;
	if (head == NULL)
	{
		head = p0;
		p0->next = NULL;
	}
	else
	{
		while (p1->num < p0->num&& p1->next != NULL)//可能有问题
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (p0->num <= p1->num)
		{
			if (p1 == head)//表头之前
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
	return head;
}
struct Node *create(struct Node *head)
{
	struct Node *p;
	p = (struct Node*)malloc(LEN);
	scanf("%ld,%f", &p->num, &p->score);
	while (p->num != 0)
	{
		head = insert(head, p);
		p = (struct Node*)malloc(LEN);
		scanf("%ld,%f", &p->num, &p->score);
	}
	return head;
}
struct Node *del(struct Node* head, long num)
{
	struct Node* p1 = head;
	struct Node* p2=head;
	if (head == NULL)
	{
		printf("List is null!\n");
		return head;
	}
	while (num != p1->num&&p1->next!=NULL)
	{
		p2 = p1;
		p1 = p1->next;
	}
	if (p1 == head)
	{
		head = p1->next;
		free(p1);
		n--;
	}
	else
	{
		p2->next = p1->next;
		free(p1);
		n--;
	}
	return head;
}
void print(struct Node* head)
{
	struct Node* p;
	p = head;
	while (p != NULL)
	{
		printf("%ld %f\n", p->num, p->score);
		p = p->next;
	}
}
int main()
{
	struct Node *head=NULL;
	struct Node *p;
	long del_num;
	int choice;
	printf("******Create list!******\n");
	printf("Please input records :(0,0 for exit)\n");
	head = create(head);
	print(head);
	do
	{
		printf("\n1. INSERT\t2. DELETE \t0. EXIT\n");
		choice = -1;
		printf("Please  Choose:");
		scanf("%d", &choice);
		getchar();
		switch (choice)
		{
		case 1:
			printf("Please input num and score:");
			p = (struct student *)malloc(LEN);
			scanf("%ld,%f", &p->num, &p->score);
			head = insert(head, p);
			printf("Inserted: %ld\n", p->num);
			print(head);
			break;
		case 2:
			printf("Please input num:");
			scanf("%ld", &del_num);
			head = del(head, del_num);
			print(head);
		}
	} while (choice != 0);
	system("pause");
	return 0;
}
