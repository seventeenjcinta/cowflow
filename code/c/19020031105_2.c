#include <stdio.h>
#include <stdlib.h>
#pragma warning(disable : 4996)
#define LEN sizeof(Node)

typedef struct Stu
{
	int num;
	float score;
	struct Stu* next;
} Node;

int n = 0;

Node* CreateNode();
Node* InsertNode(Node* head);
Node* DeleteNode(Node* head);
void PrintNode(Node* head);

int main()
{
	Node* head;
	int choice;
	
	printf("**********创建链表**********\n");
	head = CreateNode();
	PrintNode(head);
	printf("请输入下面的一个指令:\n");
	do
	{
		printf("1.插入 2.删除 0.退出\n");
		scanf("%d", &choice);
		if (!choice)
			break;

		switch (choice)
		{
		case 1:
			head = InsertNode(head);
			break;
		case 2:
			head = DeleteNode(head);
			break;
		}
		
		PrintNode(head);
	} while (1);

	system("pause");
	return 0;
}

Node* CreateNode()
{
	return (Node*)malloc(LEN);
}

Node* InsertNode(Node* head)
{
	int num;
	float score;

	printf("请输入学生的学号:");
	scanf("%d", &num);
	printf("请输入学生的成绩:");
	scanf("%f", &score);

	if (n == 0)
	{
		head->num = num;
		head->score = score;
		head->next = NULL;
	}
	else
	{
		Node* newNode = CreateNode();
		newNode->num = num;
		newNode->score = score;

		Node* now = head;
		Node* pre = head;
		
		while (newNode->num > now->num && now->next != NULL)
		{
			pre = now;
			now = now->next;
		}

		if (newNode->num < now->num)
		{
			if (newNode->num < pre->num)
			{
				newNode->next = pre;
				head = newNode;
			}
			else
			{
				pre->next = newNode;
				newNode->next = now;
			}
		}
		else
		{
			newNode->next = now->next;
			now->next = newNode;
		}
	}
	n++;
	return head;
}

Node* DeleteNode(Node* head)
{
	if (!n)
	{
		printf("链表为空!\n");
		return head;
	}

	int num;
	Node* find = head;
	Node* pre = head;
	printf("请输入删除的学生学号:");
	scanf("%d", &num);

	while (num > find->num && find->next != NULL)
	{
		pre = find;
		find = find->next;
	}

	if (num == find->num)
	{
		if (num == pre->num)
			head = pre->next;
		else
		{
			pre->next = find->next;
		}

		free(find);
		n--;
	}
	else
	{
		printf("%d不在链表内!\n", num);
	}

	if (head == NULL)
		head = CreateNode();

	return head;
}

void PrintNode(Node* head)
{
	printf("\n");
	printf("链表内有%d个节点：\n", n);
	printf("************************\n");
	while (head != NULL && n)
	{
		printf("%-d %-.2f\n", head->num, head->score);
		head = head->next;
	}
	printf("************************\n");
	printf("\n");
}