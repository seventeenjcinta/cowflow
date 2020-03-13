#include <stdio.h>
#include <stdlib.h> //malloc函数在里面，所以需要包含stdlib.h头文件
#define LEN sizeof(struct Node)  //为宏定义，在预处理过程中被编译，将程序中出现的LEN替换为sizeof(struct Node)
int n=0; //全局变量，方便输出链表中的节点个数

struct Node  //声明结构体类型，包含数据域和指针域
{
	long num;
	double score;
	struct Node* next;
};

struct Node* insert(struct Node* head,struct Node* cha)
{
	struct Node* p2=NULL,*p1=head;
	if (head == NULL)  //如果待插入的链表是空表的情况
	{
		head = cha;
		cha->next = NULL;
	}
	else
	{
		while (p1->num < cha->num && p1->next != NULL)  //当为非空表时找到待插入的点，用&&防止待插入的数据比所有数都大以至于无法跳出循环
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (cha->num > p1->num)  //当待插入的数据应当插入到链表末尾时
		{
			p1->next = cha;
			cha->next = NULL;
		}
		else
		{
			if (p1 == head)  //当待插入的数据应当插入到链表开头时
			{
				cha->next = head;
				head = cha;
			}
			else  //当待插入的数据在链表中间即在p1和p2之间时
			{
				p2->next = cha;
				cha->next = p1;
			}
		}
	}
	n++;  //代表链表中增加了一个结点，因为创建链表时调用了该函数，故n始终准确的代表了链表中的结点数
	return(head);
}

struct Node* creat(struct Node* head)  //创建一个新的链表，核心是利用插入来创建有序的动态链表
{
	struct Node* p;
	while (1)  //死循环，依靠用户输入规定的数跳出循环
	{
		p = (struct Node*)malloc(LEN);  //malloc()的返回类型为void,所以需要进行强制类型转换
		scanf("%ld %lf", &p->num, &p->score);
		p->next = NULL;
		if (p->num == 0 && p->score == 0)  //如果用户输入0 0，代表创建链表结束，跳出循环，进行下一步
		{
			free(p);  //因为此时已经开辟了一个空间给p，但p中并没有存放我们想要的数据，故释放其空间
			break;
		}
		else
		{
			head=insert(head, p);  //用插入来创建动态链表
		}
	}
	return(head);  //将链表的地址返回主函数
}

struct Node* del(struct Node* head, long de_num)
{
	struct Node* p1 = head, * p2=NULL;
	if (head == NULL)  //当链表为空的情况
	{
		putchar('\n');
		printf("There is no date, we can't delete!");
		return(head);
	}
	else
	{
		while (p1->num < de_num && p1->next != NULL)  //因为链表有序（正序），所以只需要找到一个大于等于要删除的数据的结点便可跳出循环，同时也应该防止循环无法跳出的情况
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (p1 == head && p1->num == de_num)  //当要删除的结点位于开头时，因为p1所指向的结点可能等于也可能大于要删除的结点，所以每一次都应该比较两者是否相等
		{
			head = p1->next;
			free(p1);
		}
		else if (p1->next != NULL && p1->num == de_num)  //当删除的结点位于中间时
		{
			p2->next = p1->next;
			free(p1);
		}
		else if (p1->next == NULL && p1->num == de_num)  //当删除的结点位于末尾时
		{
			p2->next = NULL;
			free(p1);
		}
		else  //当结点不在中间，不在开头末尾，即为没有找到的情况
		{
			putchar('\n');
			printf("There is no matching data!");
			n++;  //由于每调用一次该函数n（结点个数）默认加一（空表除外），此时未找到则不应该该删除，故n的值应该保持不变
		}
	}
	n--;
	return(head);
}

void print(struct Node* head)
{
	int i;
	struct Node* p=head;
	putchar('\n');
	printf("Now there %d records are:\n", n);
	for (i = 0; i < n; i++)  //通过n（链表中的节点个数）来控制输出
	{
		printf("%-5ld %-5.2lf", p->num, p->score);
		putchar('\n');
		p=p->next;  //改变p的指向，为下一次输出做准备
	}
}

int main()
{
	int choose;
	long de_num;
	struct Node* head,*p;
	printf("****** Create list! ******\n");
	printf("Please input records:<0 0 for exit>\n");
	head = NULL;
	head = creat(head);  //创建链表
	print(head);  //输出链表
	do
	{
		putchar('\n');
		printf("1. INSERT\t2. DELETE\t0. EXIT\n");
		printf("Please choose:");
		scanf("%d", &choose);
		switch (choose)
		{
		case 1:
			printf("Please input num and score:");
			p = (struct Node*)malloc(LEN);
			scanf("%ld %lf", &p->num, &p->score);
			printf("Inserted:%ld", p->num);
			putchar('\n');
			head=insert(head, p);  //插入一个结点
			print(head);
			break;
		case 2:
			printf("Please input num you want to delete:");
			scanf("%ld", &de_num); //输入要删除的结点的信息（这里使用了结点中的num信息）
			head=del(head, de_num);  //删除一个结点
			print(head);
			break;
		}
	} while(choose!=0);  //当用户选择0时，程序终止
}
