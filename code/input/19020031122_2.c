#include<stdio.h>
#include<malloc.h>
#define LEN sizeof(struct student)
struct student
{
	long num;
	float score;
	struct student * next;
};
int n;
int main()
{
	int select;
	struct student * creat();
	struct student * del(struct student * ,long);
	struct student * insert(struct student *,struct student *);
	void print(struct student *);
	struct student * head,stu;
	long del_num;
	printf("��������(�������ʱ��0����)��\n");
	head=creat();
	print(head);
	printf("��ѡ����Ĳ�����\n");
	while(1)
	{
		printf("1.ɾ��	2.¼��	3.�˳�\n");
		scanf("%d",&select);
		if(select==1)
		{
			printf("����Ҫɾ����ѧ����ѧ�ţ�");
			scanf("%ld",&del_num);
			head=del(head,del_num);
			print(head); 
		}
		else if(select==2)
		{
			printf("����Ҫ¼���ѧ����ѧ�ţ�");
			scanf("%ld",&stu.num);
			printf("����Ҫ¼���ѧ���ĳɼ���");
			scanf("%f",&stu.score);
			head=insert(head,&stu);
			print(head);
		}
		else break;
	}
	return 0;
}

struct student * creat() 
{
	struct student * head;
	struct student *p1,*p2;
	n=0;
	p1=p2=(struct student * ) malloc(LEN);
	printf("ѧ��	�ɼ�\n");
	scanf("%ld	%f",&p1->num,&p1->score);
	head=NULL;
	while(p1->num !=0)
	{
		n=n+1;
		if(n==1) head=p1;
		else p2->next =p1;
		p2=p1;
		p1=(struct student * )malloc(LEN);
		scanf("%ld	%f",&p1->num ,&p1->score );
	}
	p2->next =NULL;
	return(head);
}

struct student * del(struct student * head,long num)
{
	struct student *p1,*p2;
	if(head==NULL)
	{
		printf("�����ݣ�\n");
		return(head);
	}
	p1=head;
	while(num!=p1->num && p1->next !=NULL)
	{
		p2=p1;
		p1=p1->next;
	}
	if(num==p1->num )
	{
		if(p1==head) head=p1->next ;
		else p2->next =p1->next ;
		printf("ɾ����%ld\n",num);
		n=n-1;
	}
	else printf("û���ҵ�%ld��ѧ����\n",num);
	return(head);
}

struct student * insert(struct student * head,struct student * stud)
{
	struct student *p0,*p1,*p2;
	p1=head;
	p0=stud;
	if(head==NULL)
	{
		head=p0;
		p0->next =NULL;
	}
	else
	{
		while((p0->num >p1->num )&&(p1->next !=NULL))
		{
			p2=p1;
			p1=p1->next ;
		}
		if(p0->num <=p1->num )
		{
			if(head==p1) head=p0;
			else p2->next =p0;
			p0->next =p1;
		}
		else
		{
			p1->next =p0;
			p0->next =NULL;
		}
	}
	n=n+1;
	return(head);
}

void print(struct student * head)
{
	struct student * p;
	printf("\n�������£�\n",n);
	p=head;
	if(head!=NULL)
	do{
		printf("%2ld %5.1f\n",p->num,p->score);
		p=p->next;
	}while(p!=NULL);
}
