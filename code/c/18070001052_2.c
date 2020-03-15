#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(STU)
int count;
//����ṹ��
typedef struct Student
{
	long num;
	double score;
	struct Student *next;
} STU;
//���루����:��ͷ��,�м䣬β���� 
STU *insert(STU *head,STU *stu)
{
	STU *p0=stu,*p1=head,*p2;
	if(head==NULL)
	{
		head=p0;
		p0->next =NULL;
	}
	else
	{
		//�ж�stu�ķ����Ƿ������ǣ������������ 
		while( (p0->num > p1->num)&&p1->next !=NULL)
		{
			p2=p1;p1=p1->next ;
		}
		//����Ȳ�����С 
		if(p0->num <=p1->num )
		{
			//���p1�ͱ�ͷ��ȣ��Ǿͱ�ͷ���� 
			if(p1==head) 
			{
				head=p0;
				p0->next =p1;
			}
			//�м���� 
			else
			{
				p2->next =p0;
				p0->next =p1;
			}
		}
		//һֱ�����û�ҵ�һ��������ģ����β���� 
		else 
		{
			p1->next =p0;
			p0->next =NULL; 
		}
	}
	count++;
	return (head); 
}

//����
//STU *create(void)
//{
//	STU *p,*head;
//	p=(STU *)malloc(LEN);
//	scanf("%ld %lf",&p->num ,&p->score );
//	while(p->num !=0)
//	{
//		head=insert(head,p);
//		p=(STU *)malloc(LEN);
//		scanf("%ld %lf",&p->num ,&p->score );
//	}
//	free(p);
//	return(head);
//} 
STU *create(void)
{
	STU *p;
	static STU *head=NULL;
	p=(STU *)malloc(LEN);
	scanf("%ld %lf",&p->num ,&p->score );
	while(p->num !=0)
	{
		head=insert(head,p);
		p=(STU *)malloc(LEN);
		scanf("%ld %lf",&p->num ,&p->score );
	}
	free(p);
	return(head);
}
//ɾ��
STU *deleting(STU *head,long deleteNum)
{
	STU *p1=head,*p2;
	if(head==NULL)
	{
		printf("����Ϊ��.\n");
		return head;
	}
	while(deleteNum!=p1->num &&p1!=NULL)
	{
		p2=p1;
		p1=p1->next; 
	}
	if(p1==NULL)
		printf("�����ڸ����ݣ�\n");
	else if(p1==head)
	{
		head=head->next ;
		count--;
	}	
	else
	{
		p2->next =p1->next ;
		count--;
	}
	return head;
} 
//��ӡ����������Ϣ 
void printing(STU *head)
{
	STU *p=head;
//	STU *p;
//	p=(STU*)malloc(LEN);
	p=head;
	if(head==NULL)
		printf("������;\n");
	else
	{
		printf("һ����%d����Ϣ��\n",count);
		do
		{
			printf("%-5ld %8.3lf\n",p->num ,p->score );
			p=p->next ;
		}while(p!=NULL);
//		while(p!=NULL)
//		{
//			printf("%ld %6.2f\n",p->num ,p->score );
//			p=p->next ;
//		}
	}
}

int main()
{
	STU *p;
	static STU *head=NULL;
	long del_num;
	int choice;
	
	printf("***********�����б�*****************\n");
	printf("������ԭʼ����:(0 0Ϊ�˳�)\n");
	head=create();
	printing(head); 
	
	while(1)
	{
		printf("ѡ���ܣ�1.�������ݣ�2.ɾ�����ݣ�0.�˳�\n");
		scanf("%d",&choice);
		if(choice==0) break;
		switch(choice)
		{
			case 1:
				p=(STU *)malloc(LEN);
				printf("��������Ҫ��������ݣ���2 3��:");
				scanf("%ld %lf",&p->num ,&p->score );
				head=insert(head,p);
				printf("����:%ld\n",p->num );
				printing(head);
				break;
			case 2:
				printf("��������Ҫɾȥ�ĺ���:");
				scanf("%ld",&del_num);
				head=deleting(head,del_num);
				printing(head);
				break;
		}
	}
	return 0;
}
