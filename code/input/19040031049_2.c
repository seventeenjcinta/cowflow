#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct Node)
struct Node
{
	long num;
	float score;
	struct Node *next;
};
int n=0; 

struct Node *insert(struct Node *head,struct Node *p)
{
	struct Node *p0=p,*p1=head,*p2;
	if(head==NULL)
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while(p0->num>p1->num&&p1->next!=NULL)
		{
			p2=p1;
			p1=p1->next;
		}
		if(p0->num<=p1->num)
		{
			if(p1==head)
			{
				head=p0;
				p0->next=p1;
			}
			else
			{
				p2->next=p0;
				p0->next=p1;
			}
		}
		else
		{
			p1->next=p0;
			p0->next=NULL; 
		}
	}
	n++;
	return (head);
}

struct Node *del(struct Node *head,long num)
{
	struct Node *p1=head;
	struct Node *p2;
	if(head==NULL)
	{
		printf("������Ϊ������\n");
		return (head);
	}
	while(num!=p1->num&&p1->next!=NULL)
	{
		p2=p1;
		p1=p1->next;
	}
	if(num!=p1->num)
		printf("û�ҵ���Ҫɾ��������\n");
	else
	{
		if(p1==head)
		{
			head=p1->next;
			free(p1);
			n--;
		}
		else
		{
			p2->next=p1->next;
			free(p1);
			n--;
		}
	}
	return (head);
}

struct Node *creat(struct Node *head)
{
	struct Node *p;
	p=(struct Node *)malloc(LEN);
	scanf("%ld%f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct Node *)malloc(LEN);
		scanf("%ld%f",&p->num,&p->score); 
	}
	return (head); 
	free(p);
}

void print(struct Node *head)
{
	struct Node *p=head;
	printf("******�����ӡ��ʼ******\n");
	if(head!=NULL)
	{
		printf("����%d���ڵ�\n",n);
		do
		{
			printf("%ld    %3.2f\n",p->num,p->score);
			p=p->next;
		} while(p!=NULL);
	}
	else
	{
		printf("------");
	}
	printf("******�����ӡ����******\n");
} 
void main()
{
	struct Node *head,*p;
	long del_num;
	int choice;
	head=NULL;
	printf("******����������******\n");
	printf("�����������һ�����ڵ���������ݵ����:\n");
	head=creat(head);
	print(head);
	//printf("��ѡ�����:\n1.����\t2.ɾ��\t0.����\n"); 
	do
	{
		printf("\n1.����\t2.ɾ��\t0.����\n");
		choice=-1;
		printf("��ѡ�����:\n");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1: 
				printf("��������Ҫ�����num��score��ֵ:");
				p=(struct Node *)malloc(LEN);
				scanf("%ld%f",&p->num,&p->score) ;
				head=insert(head,p);
				printf("�����ֵ�����Ϊ:%ld\n",p->num);
				print(head);
				break;
			case 2:
			    printf("��������Ҫɾ�������ݵ����:\n");
			    scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
				break;
			case 3: 
				break;
			default: 
				break;
		}	
	}while(choice>0);
} 
