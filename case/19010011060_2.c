#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#define LEN sizeof(struct.Student)
struct Birth	//生日 
{
	int year;
	int month;
	int day;
};
struct Student
{
	long num;	//学号 
	char name[10];	//姓名 
	char sex;	//性别 
	struct Birth birthday;	//生日 
	float score;	//分数 
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
	printf("学生信息为：\n");
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
	printf("请输入信息：(0.0退出)\n");
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
			case 1:	printf("请输入信息：");
					p=(struct student *) malloc(LEN);
					scanf("%ld%s%s%d-%d-%d%f",&p->num,&p->name[10],&p->sex,&p->birthday.year,&p->birthday.month,&p->birthday.day,&p->score);
					head=insert(head,p);
					printf("Inserted: %ld\n",p->num);
					print(head);
			case 2: printf("请输入信息：");
					scanf("%ld",dek_num);
					head=del(head,del_num);
					print(head);
			case 0:	exit(0);
		}
	}
}
