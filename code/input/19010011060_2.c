#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#define LEN sizeof(struct.Student)
struct Birth	//���� 
{
	int year;
	int month;
	int day;
};
struct Student
{
	long num;	//ѧ�� 
	char name[10];	//���� 
	char sex;	//�Ա� 
	struct Birth birthday;	//���� 
	float score;	//���� 
	struct Student * next;
}stu[3];
struct Student *creat(struct Student *head)
{
	struct Student *p;
	p=(struct Student *)malloc(LEN);
	scanf("%ld%s%s%d-%d-%d%f",&p->num,&p->name[10],&p->sex,&p->birthday.year,&p->birthday.month,&p->birthday.day,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct Student *)malloc(LEN);
		scanf("%ld%s%s%d-%d-%d%f",&p->num,&p->name[10],&p->sex,&p->birthday.year,&p->birthday.month,&p->birthday.day,&p->score);
	}
	free(p);
	return(head);
}
print(struct Student **head)
{
	struct Student *temp;
	Student *temp=head;
	printf("ѧ����ϢΪ��\n");
	while(temp->next)
	{
		temp=temp->next;
		
	}
}

void main()
{
	struct Student *head,*p;
	long del_num;
	int choice;
	
	printf("********Create List!********\n");
	printf("��������Ϣ��(0.0�˳�)\n");
	head=create();
	printf(head);
	
	do
	{
		printf("\n1. INSERT\t2. DELETE \t0. EXIT\n");
		choice=-1;
		printf("Please Choose: ");
		scanf("%d".&choice);
		gerchar();
		switch(choice)
		{
			case 1:	printf("��������Ϣ��");
					p=(struct student *) malloc(LEN);
					scanf("%ld%s%s%d-%d-%d%f",&p->num,&p->name[10],&p->sex,&p->birthday.year,&p->birthday.month,&p->birthday.day,&p->score);
					head=insert(head,p);
					printf("Inserted: %ld\n",p->num);
					print(head);
			case 2: printf("��������Ϣ��");
					scanf("%ld",dek_num);
					head=del(head,del_num);
					print(head);
			case 0:	exit(0);
		}
	}
}
