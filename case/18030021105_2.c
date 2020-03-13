#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct Node)

struct Node
{
	long num;
	float score;
	struct Node *next;
};
int n;

struct Node *insert (struct Node *head, struct Node *stu)
{
	struct Node *p0 =stu, *p1 = head, *p2;
	if (p0->num < p1->num) {head = p0; p0->next = p1;return(head);}
	while(p0->num > p1->num && p1->next != NULL)//寻找结点 
	{
		p2 = p1; 
		p1 = p1->next;
	}
	if (p0->num <= p1->num) 
	{
		p0->next = p1;
		p2->next = p0;
		return(head);
	}
	else
	{
		p1->next = p0;
		p0->next = NULL;
		return(head); 
	}
}

struct Node *del(struct Node *head, long num)
{
	struct Node *p1, *p2;
	p1 = head;
	if (num == p1->num) { head = p1->next; free(p1); n--;return(head);}
	while(num != p1->num && p1->next != NULL)//寻找结点 
	{
		p2 = p1; p1 = p1->next;
	}
	if (num == p1->num)
	{
		p2->next = p1->next;
		free(p1);
	}
	else printf("该节点不存在\n");
	return(head);
}

struct Node *create()
{
	struct Node *head, *p1, *p2;
	n=0;
	p1=p2=(struct Node *)malloc(LEN);
	printf("输入链表初值（0,0退出）：\n");
	scanf("%ld,%f", &p1->num, &p1->score);
	head = NULL;
	while(p1->num != 0)
	{
		n++;
		if(n==1)head = p1;
		else p2->next = p1;
		p2 = p1;
		p1 = (struct Node *)malloc(LEN);
		scanf("%ld,%f", &p1->num, &p1->score);
	} 
	p2->next = NULL;
	return(head);
}

void print(struct Node *head)
{
	struct Node *p = head;
	if(head != NULL)
	{
		do
		{
			printf("%ld %.1f\n", p->num, p->score);
			p = p -> next;
		}while(p != NULL);
	}
}

int main()
{
	struct Node *p, *head;
	p = create();
	print(p);
	int a;
	long num;
	printf("\n1.INSERT 2.DELETE 0.EXIT\n请选择：");
	scanf("%d", &a);
	while (1)
	{
		if (a==0) break;
		else if (a==1) 
		{
			printf("请输入：");
			head = (struct Node *)malloc(LEN);
			scanf("%ld,%f", &head->num, &head->score);
			head->next = NULL;
			p = insert(p,head);
			print(p); putchar('\n'); 
		}
		else if (a==2) 
		{	
			if (p == NULL) printf("链表为空\n");
			else
			{
				printf("请输入：");
				scanf("%ld", &num);
				p = del(p, num); 
			} 
			print(p); putchar('\n');
		}
		printf("1.INSERT 2.DELETE 0.EXIT\n请选择：");
		scanf("%d", &a);
	}
	return 0;
}
