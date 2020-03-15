#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)//��sizeof�����ṹ��struct Student�ĳ��ȣ���ֹ�˷Ѵ洢�ռ� 
struct Student
{
	long num;
	float score;
	struct Student * next;
};
int n=0;
struct Student *insert(struct Student *head,struct Student *stud)//��������Ԫ�ص��Ӻ��� 
{
	struct Student *p1,*p2;
	p2=NULL;
	p1=head;
	if(head==NULL)//��Ϊ������������Ԫ��Ϊ���е�Ԫ�� 
	{
		head=stud;
		stud->next=NULL;
	}
	else
	{
		while(p1->num<stud->num&&p1->next!=NULL)//�����ҵ��������λ�� 
		{
			p2=p1;
			p1=p1->next;	
		} 
		if(p1->num<stud->num)//�������λ��Ϊ�����ĩβ 
		{
			p1->next=stud;
			stud->next=NULL;
		}
		else
		{
			if(p1==head)//�������λ��Ϊ����Ŀ�ͷ 
			{
				stud->next=head;
				head=stud;
			}
			else//�������λ��Ϊ������м䲿�� 
			{
				p2->next=stud;
				stud->next=p1;
			}
		}
	}
	n++;//ÿ����һ�����������Ԫ��������һ 
	return(head);
}
struct Student *del(struct Student *head,long num)//����ɾ��Ԫ�ص��Ӻ��� 
{
	struct Student *p1,*p2;
	if(head==NULL)//��Ϊ�ձ���û��Ԫ�ؿ���ɾ�� 
	{
		printf("List is null!\n");
		return(head);
	}
	p1=head;
	while(p1->num!=num&&p1->next!=NULL)//�����ҵ���ɾ����Ԫ�� 
	{
		p2=p1;
		p1=p1->next;
	}
	if(num==p1->num)//�����������д��ڴ�ɾ������ 
	{
		if(p1==head)//����ɾ����Ԫ��Ϊ��ʼԪ�� 
		{
			head=p1->next;
			free(p1);
		}
		else if(p1->next!=NULL)//����ɾ����Ԫ��ΪĩβԪ�� 
		{
			p2->next=p1->next;
			free(p1);
		}
		else//����ɾ����Ԫ����������м䲿λ 
		{
			p2->next=NULL;
			free(p1);
		}
		printf("Deleted %d\n",num);
	}
	else//�������в����ڴ�ɾ��Ԫ�� 
	{
		printf("\nThere is no matching data!");
		n++;//��û��ɾ��Ԫ�أ���������Ԫ���������� 
	}
	n--;
	return(head);
}
struct Student *creat(struct Student *head)//��������������Ӻ��� 
{
	struct Student *p;
	while(1)
	{
		p=(struct Student *)malloc(LEN);
		scanf("%ld %f",&p->num,&p->score);
		p->next=NULL;
		if(p->num==0&&p->score==0)//�����������Ϊ0 0 
		{
			free(p);//�ͷ�p�Ĵ洢�ռ� 
			break;
		}
		else
			head=insert(head,p);//���������Ԫ�ز��룬������������������ 
	}
	return(head);
}
void print(struct Student *head)//����������������Ӻ��� 
{
	int i;
	struct Student *p=head;
	printf("\nNow there %d records are:\n", n);
	for(i=0;i<n;i++)
	{
		printf("%-5d %-5.2f\n",p->num,p->score);
		p=p->next;
	}
}
int main()
{
	struct Student *head,*p;
	long del_num;//del_numΪ������Ҫ��ɾ����Ԫ�ص�num 
	int choice;
	printf("*****Creat list!*****\n");
	printf("Please input records : (0 0 for exit)\n");//������0 0��ֹͣ����num��score 
	head=NULL;
	head=creat(head);//�������� 
	print(head);//������� 
	do
	{
		printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");
		printf("Please Choose: ");
		scanf("%d",&choice);
		switch(choice)
		{
			case 1://ѡ��1��ʱ��������� 
				printf("Please input num and score:");
				p=(struct Student *)malloc(LEN);
				scanf("%ld %f",&p->num,&p->score);//����Ҫ����Ԫ�ص�num��score 
				printf("Inserted: %ld\n",p->num);
				head=insert(head,p);//�����µ�Ԫ�أ������µ��������������������� 
				print(head);//�������Ԫ����� 
				break;
			case 2:
				printf("Please input num: ");
				scanf("%ld",&del_num);//����Ҫ��ɾ��Ԫ�ص�num 
				head=del(head,del_num);//���ض�Ԫ��ɾ���������µ��������������������� 
				print(head);//�������Ԫ����� 
				break;		
		}
	}while(choice!=0);//��choice��Ϊ0��ʱ�����ѭ�� 
	return 0;
}
