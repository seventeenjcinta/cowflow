#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct student)
int n;                                                                    //��¼��������
struct student
{
	int num;
	float score;
	struct student* next;
};
struct student * insert(struct student* head, struct student* p0)         //���뺯��(ͷָ�룬���������)
{
	struct student* p1 = head, *p2;
	if (head == NULL)                                                     //�����ǰû�����ݣ�����������ݷ����һ��
	{
		head = p0;
		p0->next = NULL;
	}
	else
	{
		while ((p0->num > p1->num) && (p1->next != NULL))                 //�ҵ�Ӧ�����λ��
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (p0->num <= p1->num)                                           //��������ݴ�СӦС����һ��
		{
			if (p1 == head)                                               //�ڵ�һ��ǰ
				head = p0;
			else                                                          //���м�
				p2->next = p0;
			p0->next = p1;
		}
		else                                                              //��ĩβ
		{
			p1->next = p0;
			p0->next = NULL;
		}
	}
	n++;                                                                  //��������+1
	return(head);                                                         //����ͷָ��
}
struct student * delete(struct student* head,long num)                    //ɾ������(ͷָ�룬Ҫɾ�������ݵ����)
{
	struct student* p1 = head, * p2;
	if (head == NULL)                                                     //û�м�¼����ʱ
		printf("��ǰ�б���û������!");
	else                                                                  //������
	{
		while ((num > p1->num) && (p1->next != NULL))                     //�ҵ�ɾ�������ݵ�λ��
		{
			p2 = p1;
			p1 = p1->next;
		}
		if (num == p1->num)                                               //�ҵ���
		{
			if (p1 == head)                                               //Ҫɾ����һ��
				head = p1->next;
			else                                                          //�м��ĩβ
				p2->next = p1->next;
			free(p1);                                                     //�ͷſռ�
			n--;                                                          //��������-1
			printf("ɾ��: %d\n\n", num);
		}
		else                                                              //û�ҵ�
			printf("%d���ݲ�����!\n\n",num);
	}
	return(head);                                                         //����ͷָ��
}
struct student* create(void)                                              //������������
{
	struct student* head, * p1, * p2;
	n = 0;                                                                //��ʼ������Ϊ0
	p1 = p2 = (struct student*)malloc(LEN);
	scanf("%d��%f", &p1->num, &p1->score);
	head = NULL;                                                          //����������
	while (p1->num != 0)                                                   //��������������
	{
		n = n + 1;                                                        //����+1
		if (n == 1)                                                       //ֻ��һ��ʱ�����������ͷ
			head = p1;
		else                                                              //����ǰһ�����
			p2->next = p1;
		p2 = p1;
		p1 = (struct student*)malloc(LEN);
		scanf("%d��%f", &p1->num, &p1->score);
	}
	p2->next = NULL;                                                      //����������β
	printf("\n");
	return(head);                                                         //����ͷָ��
}
void print(struct student* head)                                          //������ݺ���
{
	struct student* p;
	p = head;                                                             //�ӵ�һ�鿪ʼ���
	if (head != NULL)                                                     //������Ϊ��
	{
		printf("����,%d����¼Ϊ:\n",n);
		do
		{
			printf("%d  %5.1f\n", p->num, p->score);
			p = p->next;                                                  //������һ��
		} while (p != NULL);                                              //ֱ������β��
		printf("\n");
	}
	else                                                                  //����Ϊ��ʱ
		printf("��ǰ�б���û������!\n\n");
}
int main()
{
	int choose;
	long del;
	struct student* head, *p;
	printf("*****�����б�!*****\n");
	printf("����������:(0Ϊ�˳�ָ��)\n");
	head = create();                                                       //�Ӵ����������з���head
	if(head != NULL)
		print(head);
REDO:
	printf("1.����  2.ɾ��  0.�˳�\n");
	printf("������ѡ��:");
	scanf("%d", &choose);
	if (choose == 0) exit(0);
	switch (choose)
	{
	case 1:                                                                //���ò��뺯��
		printf("������ѧ�źͷ���:");
		p = (struct student*) malloc(LEN);
		scanf("%d��%f", &p->num, &p->score);
		head = insert(head,p);
		printf("����: %d\n\n", p->num);
		print(head);
		break;
	case 2:                                                                 //����ɾ������
		if (head != NULL)
		{
			printf("������ѧ��:");
			scanf("%d", &del);
			head = delete(head, del);
			print(head);
		}
		else
			printf("��ǰ�б���û������!�޷�ִ��ɾ��ָ��!\n\n");
		break;
	default:printf("������Ч��ѡ��!\n"); break;                             //�ô�
	}
	goto REDO;
}