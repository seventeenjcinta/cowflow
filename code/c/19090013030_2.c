#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct stu)
/* run this program using the console pauser or add your own getch, system("pause") or input loop */
struct stu       //����ṹ�� 
{
	float grade;
	long num;
	struct stu *next;
};
int n=0;
struct stu * insert(struct stu *head,struct stu*stud)//�����γ��������� 
{                                                     
	struct stu *p0=stud,*p1=head,*p2;
	if(head==NULL)                                  // �ձ�ʱ 
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while(p1->num<p0->num&&p1->next!=NULL)
		{
			p2=p1;
			p1=p1->next;
		}
		if(p0->num<=p1->num)
		{
			if(p1==head)                   //���뵽ͷλ��ʱ 
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
		else                         //���뵽βλ�� 
		{
			p1->next=p0;
			p0->next=NULL;
		}
	}
	n++;
	return(head);
}

struct stu * delete(struct stu*head,long num)//ɾ����㺯�� 
{
	struct stu*p1=head,*p2;
	if(head==NULL)
	{
		printf("no date in the excel\n");
	}
	else
	{
		while(p1->num!=num&&p1!=NULL)
		{
			p2=p1;
			p1=p1->next;
		}
		if(p1!=head&&p1!=NULL)
		{
			p2->next=p1->next;
			free(p1);
			n--;
		}
		if(p1==NULL)
			printf("There is no the searching the date");
		if(p1==head)
		{
			head=p1->next;
			free(p1);
			n--;
		}

	}
	return(head);
}

struct stu * creat()   //�������� 
{
	struct stu *head=NULL,*p;
	do
	{		
		p=(struct stu *)malloc(LEN);
		scanf("%ld,%f",&p->num,&p->grade);
		if(p->num!=0)
		{
			head=insert(head,p);
		}
	}while(p->num!=0);
	free(p);
	return(head);
}

void print(struct stu*head)        // ��� 
{  
	struct stu*p1=head;
	while(p1!=NULL)
	{
		printf("%ld\t%.2f\n",p1->num,p1->grade);
		p1=p1->next;
	}
}

int main()          
{
	struct stu stud;
	int choice;
	long num;
	struct stu *head=NULL,*p;
	printf("please input date (num,grade),(0,0 for exit)\n");
	head=creat();
	//printf("%d",n);
	print(head);
	do                     
	{
		printf("1.	INSERT\t2.	DELETE\t3.	EXIT\n");
		scanf("%d",&choice);
		getchar();
		switch(choice) 
		{
			case 1:
					printf("please input num and score:\n");
					p=(struct stu *)malloc(LEN);
					scanf("%ld,%f",&p->num,&p->grade);
					head=insert(head,p);
					printf("Now the %d records are :\n",n);
					print(head);
					break;
			case 2: 
					if(head==NULL)
						printf("no date to delete\n");
					else
					{
						printf("please input the num to delect :\n");
						scanf("%ld",&num);
						head=delete(head,num);
						printf("Now the %d records are :\n",n);
						print(head);
					}
					break;
			case 3: break;
		}
	}while(choice!=3);
	return 0;
}
