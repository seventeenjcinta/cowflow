#include <stdio.h>
#include <stdlib.h>
#include <malloc.h> 
#define LEN sizeof(struct student)
struct student*creat();//������������
struct student*del(struct student*,long);//ɾ����������
struct student*insert(struct student*,struct student*);//���뺯������ 
void print(struct student*);//����������� 

struct student
{
	long num;
	float score;
	struct student*next;
};
int n;

void main()
{
	struct student *head,*p;
	long del_num;
	int choice;
	printf("*****��������!*****\n");
	printf("������(0,0��ʾֹͣ����)��\n");//������ʾ 
	head=creat();//������������ͷָ�� 
	printf(head);//���ȫ���ڵ� 
	 
	do 
	{
		printf("\n1.���\t2.ɾ��\t0.�˳�\n");//ѡ���б� 
		choice=-1;
		printf("��ѡ��\n");
		scanf("%d",&choice);
		getchar();
		switch(choice) //����ѡ 
		{
			case 1:
				printf("������Ҫ��ӵ�ѧ�źͳɼ���");//��ʾҪ����Ľڵ� 
				p=(struct student*)malloc(LEN); //�����½ڵ� 
				scanf("%ld,%f",&p->num,&p->score);//����Ҫ����Ľڵ� 
				head=insert(head,p);//���ú���insert 
				print(head);//������������� 
				break;
			case 2:
				printf("������Ҫɾ����ѧ�ţ�");//��ʾҪɾ���Ľڵ� 
				scanf("%ld",&del_num);//����Ҫɾ���Ľڵ� 
				head=del(head,del_num);//���������ͷ��ַ����ֵ��head 
				if(n!=0) 
				print(head);//���ȫ������ 
		}
	}
	while(choice!=0);
} 

//��������ĺ��� 
struct student*creat()
	{
		struct student *head;
		struct student *p1,*p2;
		n=0;
		p1=p2=(struct student*)malloc(LEN);
		scanf("%ld,%f",&p1->num,&p1->score);
		head=NULL;
		while(p1->num!=0)
		{
			n=n+1;
			if(n==1)head=p1;
			else p2->next=p1;
			p2=p1; 
			p1=(struct student*)malloc(LEN);
			scanf("%ld,%f",&p1->num,&p1->score); 
		} 
		p2->next=NULL;
		return(head);
	}

//sɾ���ڵ㺯��
struct student*del(struct student*head,long num)
{
	struct student*p1,*p2;
	if(head==NULL)
		{
		printf("\n���ǿձ�\n");
		return(head); 
		} 
 p1=head;
 while(num!=p1->num&&p1->next!=NULL)
 {p2=p1;p1=p1->next;}
 if(num==p1->num)
 {
 	if(p1==head)head=p1->next;
 	else p2->next=p1->next; 
 	printf("ɾ����%ld\n",num);
 	n=n-1;
 }
 else printf("%ld�Ҳ�����\n",num);
 return(head); 
} 
 //����ڵ㺯��
 struct student*insert(struct student*head,struct student*p)
 {
 	struct student*p0,*p1,*p2;
 	p1=head;
 	p0=p;
 	if(head==NULL)
 	 {head=p0;p0->next=NULL;}
	else 
	{while((p0->num>p1->num)&&(p1->next!=NULL))
	{
		p2=p1;
		p1=p1->next;
	 } 
	}
	if(p0->num<=p1->num)
	{
		if(head==p1)head=p0;
		else p2->next=p0;
		p0->next=p1; 
	}
	else
	{
		p1->next=p0;
		p0->next=NULL;
	}
	n=n+1;
	return(head);
 }
 //������������print����
 void print(struct student*head)
 {
 	struct student*p;
 	printf("������\n");
	p=head;
	if(head!=NULL);
		do
		{
			printf("%ld %5.1f\n",p->num,p->score);
			p=p->next;
		 } while(p!=NULL); 
  } 
