#include<stdio.h>
#include<stdlib.h>//mallocͷ�ļ� 
#define LEN sizeof(struct Node)
//������������Ĵ���/����/ɾ�� 
//ȫ�ֱ���n�������� 
int n=0;
/*
8 9
2 8
10 7
1 6
0 0
*/
struct Node
{
	long num;
	float score;
	struct Node *next;
};
//������� 
struct Node *insert(struct Node *head,struct Node *pt)
{
	struct Node *p0=pt;
	struct Node *p1=head;
	struct Node *p2;
	if(head==NULL)
	{head=p0;p0->next=NULL;n++;}
	else
	{
		///�ڶ�������ȷ��������ѭ�� 
		while(p0->num>p1->num&&p1->next!=NULL)
		{
			//������\�����ھͺ���
			p2=p1;p1=p1->next;
		}
		//����p2->num<p0->num<=p1->num����ʱ�临�Ӷ� 
		//����λ���ڱ�ͷ���м� 
		if(p0->num<=p1->num)
		{
			//��ͷ 
			if(p1==head) {head=p0;p0->next=p1;}
			//�м� 
			else {p2->next=p0;p0->next=p1;}
		}
		//����λ���ڱ�β 
		else
		{p1->next=p0;p0->next=NULL;}
	}
	//������Լ� 
	n++;
	return(head);
}
//�������� 
struct Node *create(struct Node *head)
{
	struct Node *p;
	//ǿ������ת�� 
	p=(struct Node *)malloc(LEN);
	scanf("%ld %f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct Node *)malloc(LEN);
		scanf("%ld %f",&p->num,&p->score);
	}
	//�ͷ����һ���մ洢�ռ�/������Լ� 
	free(p);n--;
	return(head);
}
//����ɾ�� 
struct Node *del(struct Node *head,long num)
{
	if(head==NULL)
	{
		printf("*****not been found*****\n",num);
		return(head);
	}
	struct Node *p1=head,*p2;
	while(num!=p1->num&&p1->next!=NULL)
	{p2=p1;p1=p1->next;}
	//�ҵ� 
	if(num==p1->num)
	{
		//ɾ��λ���ڱ�ͷ 
		if(p1==head) head=p1->next;
		//ɾ��λ�����м���β(��βͬ����ֵNULL)
		else p2->next=p1->next;
		//�ͷ�p1�洢�ռ��ҽ�����Լ� 
		free(p1);n--;
		return(head);
	}
	//û�ҵ�
	else
	{
		printf("*****not been found*****\n");
		return(head);
	}
}
//��ӡ���� 
void *print(struct Node *head)
{
	struct Node *p=head;
	if(head!=NULL)
	{
		printf("*****%d records in total*****\n",n);
		do
		{
			printf("%ld %.1f\n",p->num,p->score);
			p=p->next;
		}
		while(p!=NULL);
	}
	else
		printf("*****sorry,no records*****\n");
}

int main()
{
	//head����ֵNULL 
	struct Node *head=NULL;
	struct Node *p;
	long del_num;
	int choice;
	
	printf("*****create list*****\n");
	printf("please input records:(0 0 for exit)\n");
	head=create(head);
	printf("*****create finished*****\n");
	print(head);
	
	do
	{
		printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");
		choice=-1;
		printf("please choose:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:
				printf("please input num and score:");
				p=(struct Node *)malloc(LEN);
				scanf("%ld %f",&p->num,&p->score);
				head=insert(head,p);
				printf("inserted:%ld\n",p->num);
				print(head);
				break;
			case 2:
				printf("please input num:");
				scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
		}
	}while(choice!=0);
	return(0);
}

