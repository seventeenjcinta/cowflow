#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct node)

struct node
{
	long num;
	float score;
	struct node *next;
};
int n;

struct node *del(struct node *head,long num)  //ɾ������
{
	struct node *p2,*p1=head;
	if(head==NULL)   //������ 
	{
		printf("No data can delete!\n");
	}
	else 
	{
		while( (num!=p1->num) && (p1->next!=NULL) )   //�ҵ�Ҫɾ��������
		{
			p2=p1;
			p1=p1->next;
		}
		if(p1->num==num)   //�ҵ��˾�ɾ�� 
		{
			if(p1==head)
				head=p1->next;
			else
				p2->next=p1->next;
			free(p1);
			n--;
		}
		else               //û�ҵ�
			printf("No data can delete!\n");
	}
	return(head);
}

struct node *insert(struct node *head,struct node *stu)   //�������� 
{
	struct node *p0=stu,*p1=head,*p2;
	if(head==NULL)   //��������� 
	{
		head=p0;
		p0->next=NULL;
	}
	else
	{
		while( (p0->num>p1->num) && (p1->next!=NULL) )  //�ƶ�ָ��ʹ�������� 
		{
			p2=p1;
			p1=p1->next;
		}
		if(p0->num<=p1->num)
		{
			if(p1==head)
				head=p0;    //�����ͷ���֮ǰ
			else
				p2->next=p0;  //�����м��� 
			p0->next=p1;
		}
		else
		{
			p1->next=p0;      //�����β���֮��
			p0->next=NULL;
		}
	}
	n++;
	return(head);
}

struct node *create()    //�������� 
{
	struct node *head=NULL,*p;
	p=(struct node *) malloc (LEN);   //��������̬�ռ� 
	scanf("%ld,%f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct node *) malloc (LEN);
		scanf("%ld,%f",&p->num,&p->score);
	}
	free(p);
	return(head);
}

void print(struct node *head)    //������� 
{
	struct node *p=head;
	printf("\nThe crruent list is:\n");
	if(head!=NULL)
		do
		{
			printf("%ld %.1f\n",p->num,p->score);
			p=p->next;
		}while(p!=NULL);
	else
		printf("Nothing!\n");
}

int main()
{
	struct node *head,*p;
	int choice;
	long del_num;
	
	printf("*****Create list!*****\n");
	printf("Please input records:(0,0) for EXIT\n");
	head=create();
	print(head);
	
	do
	{
		printf("\n1.INSERT\t2.DELETE\t0.EXIT\n");
		choice=-1;
		printf("Please choose:");
		scanf("%d",&choice);
		getchar();
		switch(choice)
		{
			case 1:
			        printf("Please input num and score:");
					p=(struct node *) malloc (LEN);
					scanf("%ld,%f",&p->num,&p->score);
					head=insert(head,p);
					printf("Inserted:%ld\n",p->num);
					print(head);
					break;
			case 2:
					printf("Please input num:");
					scanf("%ld",&del_num);
					head=del(head,del_num);
					print(head);
					break;	
		}
	}while(choice!=0);
	return 0;
}
