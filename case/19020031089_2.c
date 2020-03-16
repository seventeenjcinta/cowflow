#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#define LEN sizeof(struct student)
int n;//ȫ�ֱ���nΪ�����нڵ�ĸ��� 
struct student
{
	int num;
	float score;
	struct student *next;
};
int main()
{
	struct student *delect(struct student *head,int num);
	void output(struct student *head);
	struct student *create(void);
	struct student *insert(struct student *head,struct student *p0);
	struct student *head=NULL;
	struct student *p=NULL;
	int m,num,i;
	while(1)
	{
	p=(struct student*)malloc(LEN);
	p->next=NULL;
	printf("choose one number:(0-3)\n");
	printf("0:exit 1:create 2:delect 3:insert\n");
	scanf("%d",&m);
	switch(m)
	{
		case 0: exit(0);
		case 1: printf("please input the data:\n");head=create();break; 
		case 2: printf("please input the num of student you want to delect:\n");scanf("%d",&num);head=delect(head,num);break;
		case 3: printf("please input the data:\n");scanf("%d%f",&p->num,&p->score);head=insert(head,p);break;
		default : printf("���Ǹ�����!\n");
	}
	printf("����%d��ѧ��������\n",n);
	output(head);
	}
	return 0; 
}
struct student *insert(struct student *head,struct student *p0)//����ڵ�ͬʱ���� 
{
	struct student *p1,*p2;
	if(p0->num!=0)//���ǲ����������Ч 
	{
		if(head==NULL)//���ǿձ� 
			head=p0;
		else
		{
			p1=head;
			p2=head->next;
			if(head->num>p0->num) 
			{
				p0->next=head;
				head=p0;
			}
			else	
			{
				while(p2&&(p2->num)<(p0->num))
				{
					p1=p2;
					p2=p2->next;
				}
				p0->next=p2;
				p1->next=p0;
			}
		}
		n++;
	}
	return(head);
}
struct student *create(void)//���� 
{
	struct student *insert(struct student *head,struct student *p0);
 	struct student *p=NULL,*head=NULL;
	p=(struct student*)malloc(LEN);
 	p->next=NULL;
 	scanf("%d%f",&p->num,&p->score);
 	do
 	{
 		head=insert(head,p);
 		p=(struct student*)malloc(LEN);
 		p->next=NULL;
 		scanf("%d%f",&p->num,&p->score);
 	}while(p->num!=0);
 	free(p);
	return(head); 
}
struct student *delect(struct student *head,int num)//ɾ�� 
 {
 	struct student *p1=NULL,*p2=NULL;
 	p2=head;
 	if(head==NULL)//��������Ϊ�յ���� 
 		{
		 	n++;
 			printf("sorry!There is no data.\n");
 		} 
 	else 
	{	
		if(head->num==num)//������ͷ�ҵ����� 
 		 	head=head->next;
 		else
 		{
			while(p2&&p2->num<num)//while(p2->num<num&&p2)--����д�Ǵ���ģ� 
 			{							//'��'�߼��������ǰ����Ϊ0�������ٽ��еڶ����������ж�
 				p1=p2;
 				p2=p2->next;
			}
			if(p2)
				(p1->next)=(p2->next);//�������м��������β�ҵ����� 
			else
			{	
				printf("The number is not included in this data.\n");//�Ҳ�������
				n++;
			}
		}
	}
	n--;
	return(head);
 }
void output(struct student *head)//��� 
{
	struct student *p=NULL;
	p=head;
	if(p)// ������Ϊ��ʱ 
		do
		{
			printf("%d %.2f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
 } 
