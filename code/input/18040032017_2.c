#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Node)
struct Node
{
	long num;
	float score;
	struct Node *next;
}; //����ṹ�� 
int n=0; //���������Ϊȫ�ֱ��� 
void print(struct Node *head) //������� 
{
	struct Node *p=head;
	if(head!=NULL)
	{
		printf("Now.These %d records are:\n",n);
		do
		{
			printf("%02ld,%7.3f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
	}
	else
	{
		printf("Sorry!No records now!\n"); //���Ϊ�ձ� 
	}
}
struct Node *insert(struct Node *head,struct Node *stu) //����һ����� 
{
	struct Node *p0=stu,*p1=head,*p2;
	if(head==NULL)//Ϊ�ձ�ʱ 
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
			if(p1==head) head=p0;  //��ͷ 
			else p2->next=p0; //�м� 
			p0->next=p1;
		}
		else   //��β 
		{
			p1->next=p0;
			p0->next=NULL;
		}
	}
	n++;  //���������� 
	return(head);
}
struct Node *create() //����һ����� 
{
	struct Node *p,*head=NULL;
	p=(struct Node *)malloc(LEN);
	scanf("%ld,%f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p); //���ڲ���ʱ�������Ѿ����ӣ��˺����в������ӽ����� 
		p=(struct Node *)malloc(LEN);
		scanf("%ld,%f",&p->num,&p->score);
	}
	free(p); //�ͷſռ� 
	return(head);
}
struct Node *del(struct Node *head,long num) //ɾ��һ����� 
{
	struct Node *p1=head,*p2;
	if(head==NULL) return(head);//�ձ��޷���ɾ�� 
	else
	{
		while(num!=p1->num&&p1->next!=NULL)
		{
			p2=p1;
			p1=p1->next;
		}
		if(num==p1->num)
		{
			if(p1!=head) p2->next=p1->next;	//�м�ͱ�β 
			else head=p1->next;//��ͷ��û�ҵ� 
			free(p1);   //�ͷſռ� 
			n--;    //���������� 
		}
	} 
	return(head);
}
int main()
{
	struct Node *head,*p;
	long del_num;
	int choice;
	printf("*****Create list!*****\n");
	printf("Please input records: (0,0 for exit)\n");
	head=create();
	print(head);
	do
	{
		printf("\n1.INSERT\t2.DELETE\t0.EXIT\n");
		choice=-1;
		printf("Please Choose:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:
				printf("Please input num and score:");
				p=(struct Node *)malloc(LEN);
				scanf("%d,%f",&p->num,&p->score);
				head=insert(head,p);
				printf("Inserted:%d\n",p->num);
				print(head);
				break;
			case 2:
				printf("Please input num:");
				scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
		}
	}while(choice!=0); 
	return 0; 
}
