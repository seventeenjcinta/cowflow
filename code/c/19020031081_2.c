#include <stdio.h>
#include <stdlib.h> //malloc���������棬������Ҫ����stdlib.hͷ�ļ�
#define LEN sizeof(struct Node)  //Ϊ�궨�壬��Ԥ��������б����룬�������г��ֵ�LEN�滻Ϊsizeof(struct Node)
int n=0; //ȫ�ֱ�����������������еĽڵ����

struct Node  //�����ṹ�����ͣ������������ָ����
{
	long num;
	double score;
	struct Node* next;
};

struct Node* insert(struct Node* head,struct Node* cha)
{
	struct Node* p2=NULL,*p1=head;
	if (head == NULL)  //���������������ǿձ�����
	{
		head = cha;
		cha->next = NULL;
	}
	else
	{
		while (p1->num < cha->num && p1->next != NULL)  //��Ϊ�ǿձ�ʱ�ҵ�������ĵ㣬��&&��ֹ����������ݱ������������������޷�����ѭ��
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (cha->num > p1->num)  //�������������Ӧ�����뵽����ĩβʱ
		{
			p1->next = cha;
			cha->next = NULL;
		}
		else
		{
			if (p1 == head)  //�������������Ӧ�����뵽����ͷʱ
			{
				cha->next = head;
				head = cha;
			}
			else  //��������������������м伴��p1��p2֮��ʱ
			{
				p2->next = cha;
				cha->next = p1;
			}
		}
	}
	n++;  //����������������һ����㣬��Ϊ��������ʱ�����˸ú�������nʼ��׼ȷ�Ĵ����������еĽ����
	return(head);
}

struct Node* creat(struct Node* head)  //����һ���µ��������������ò�������������Ķ�̬����
{
	struct Node* p;
	while (1)  //��ѭ���������û�����涨��������ѭ��
	{
		p = (struct Node*)malloc(LEN);  //malloc()�ķ�������Ϊvoid,������Ҫ����ǿ������ת��
		scanf("%ld %lf", &p->num, &p->score);
		p->next = NULL;
		if (p->num == 0 && p->score == 0)  //����û�����0 0���������������������ѭ����������һ��
		{
			free(p);  //��Ϊ��ʱ�Ѿ�������һ���ռ��p����p�в�û�д��������Ҫ�����ݣ����ͷ���ռ�
			break;
		}
		else
		{
			head=insert(head, p);  //�ò�����������̬����
		}
	}
	return(head);  //������ĵ�ַ����������
}

struct Node* del(struct Node* head, long de_num)
{
	struct Node* p1 = head, * p2=NULL;
	if (head == NULL)  //������Ϊ�յ����
	{
		putchar('\n');
		printf("There is no date, we can't delete!");
		return(head);
	}
	else
	{
		while (p1->num < de_num && p1->next != NULL)  //��Ϊ�����������򣩣�����ֻ��Ҫ�ҵ�һ�����ڵ���Ҫɾ�������ݵĽ��������ѭ����ͬʱҲӦ�÷�ֹѭ���޷����������
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (p1 == head && p1->num == de_num)  //��Ҫɾ���Ľ��λ�ڿ�ͷʱ����Ϊp1��ָ��Ľ����ܵ���Ҳ���ܴ���Ҫɾ���Ľ�㣬����ÿһ�ζ�Ӧ�ñȽ������Ƿ����
		{
			head = p1->next;
			free(p1);
		}
		else if (p1->next != NULL && p1->num == de_num)  //��ɾ���Ľ��λ���м�ʱ
		{
			p2->next = p1->next;
			free(p1);
		}
		else if (p1->next == NULL && p1->num == de_num)  //��ɾ���Ľ��λ��ĩβʱ
		{
			p2->next = NULL;
			free(p1);
		}
		else  //����㲻���м䣬���ڿ�ͷĩβ����Ϊû���ҵ������
		{
			putchar('\n');
			printf("There is no matching data!");
			n++;  //����ÿ����һ�θú���n����������Ĭ�ϼ�һ���ձ���⣩����ʱδ�ҵ���Ӧ�ø�ɾ������n��ֵӦ�ñ��ֲ���
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
	for (i = 0; i < n; i++)  //ͨ��n�������еĽڵ���������������
	{
		printf("%-5ld %-5.2lf", p->num, p->score);
		putchar('\n');
		p=p->next;  //�ı�p��ָ��Ϊ��һ�������׼��
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
	head = creat(head);  //��������
	print(head);  //�������
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
			head=insert(head, p);  //����һ�����
			print(head);
			break;
		case 2:
			printf("Please input num you want to delete:");
			scanf("%ld", &de_num); //����Ҫɾ���Ľ�����Ϣ������ʹ���˽���е�num��Ϣ��
			head=del(head, de_num);  //ɾ��һ�����
			print(head);
			break;
		}
	} while(choose!=0);  //���û�ѡ��0ʱ��������ֹ
}
