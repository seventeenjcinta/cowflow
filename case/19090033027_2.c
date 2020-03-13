#include<stdio.h>
#include<malloc.h>
#include<stdlib.h> 
# define LEN sizeof(struct Student)			//����LENΪ�ṹ�峤�� 

int n=0;									//ȫ�ֱ���nΪĿǰ�����еļ�¼�ĸ��� 

struct Student								//����Ľṹ������ 
{
	long num;
	float score;
	struct Student *next;
 };
 
struct Student *insert(struct Student *head,struct Student *p0)		//���뺯����ʵ������Ĳ��� 
{
	struct Student *p2,*p1=head;
	if(head==NULL)										//������Ϊ�յ�ʱ��Ĳ��� 
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while(p0->num>p1->num&&p1->next!=NULL)			//Ѱ�Ҳ����λ�� 
		{
			p2=p1;p1=p1->next;
		}
		if(p0->num<p1->num)
		{
			if(p1==head) head=p0;						//�ڱ�ͷ���� 
			else p2->next=p0;							//�ڱ��в��� 
			p0->next=p1;
		}
		else
		{
			p1->next=p0;								//�ڱ�β���� 
			p0->next=NULL;
		}
	}
	n++;
	return(head);
}

struct Student *create(struct Student *head)			//��������ĺ�����ͨ����β���ʵ�� 
{
	struct Student *p;
	head=NULL;
	do
	{
		p=(struct Student *)malloc(LEN);
		scanf("%ld,%f",&p->num,&p->score);				//���봴�������� 
		if(p->num!=0&&p->score!=0)
			head=insert(head,p);						//ͨ�����ò��뺯��ʵ�� 
	}while(p->num!=0&&p->score!=0);						//�жϴ�����ֹ���� 
	return(head); 
}

void print(struct Student *head)						//�������ĺ��� 
{
	struct Student*p;
	printf("\nNow, These %d records are:\n",n);
	p=head;
	if(head!=NULL)
		do
		{
			printf("%5ld %7.1f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
}

struct Student *del(struct Student *head,long num)		//ɾ������ĳ���ݵĺ��� 
{
	struct Student *p1=head,*p2;
	if(head==NULL)										//����Ϊ�յ���� 
	{
		printf("The linkedList is empty, can not delete\n");
		return(head);
	}
	while(num>p1->num&&p1->next!=NULL)					//�ҵ���Ҫɾ�����ݵ�λ�� 
	{
		p2=p1;p1=p1->next;
	}
	if(num==p1->num)
	{
		if(p1==head) head=p1->next;						//�ֱ�ͷ�ͱ��е����ɾ�� 
		else p2->next=p1->next;
		free(p1);
		n--;
	}
	else
	{
		printf("Not found\n");							//δ�ҵ���Ӧ���� 
	}
	return(head);
}

int main()
{
	struct Student *head,*p;								//headΪͷָ�� 
	long del_num;											//del_num��Ҫɾ�����ݵ���� 
	int choice;												//ͨ��choice��ֵͬ�Բ�������ѡ�� 
	printf("*****Create list!*****\n");	 
	printf("Please input records : (0,0 for exit)\n");
	head=create(head);
	print(head);
	
	do
	{
		printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");
		choice=-1;
		printf("Please Choose: ");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:													//�������� 
				printf("Please input num and score: ");
				p=(struct Student *)malloc(LEN);
				scanf("%ld,%f",&p->num,&p->score);
				head=insert(head,p);
				printf("Inserted: %ld\n",p->num);
				print(head);
				break;
			case 2:													//ɾ������ 
				printf("Please input num:");
				scanf("%ld",&del_num);
				head=del(head,del_num);
				print(head);
				break;
			case 0:													//�������� 
				exit (0);
		}
	}while(1);
}
