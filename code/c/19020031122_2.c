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
	printf("输入数据(输入完成时按0保存)：\n");
	head=creat();
	print(head);
	printf("请选择你的操作：\n");
	while(1)
	{
		printf("1.删除	2.录入	3.退出\n");
		scanf("%d",&select);
		if(select==1)
		{
			printf("输入要删除的学生的学号：");
			scanf("%ld",&del_num);
			head=del(head,del_num);
			print(head); 
		}
		else if(select==2)
		{
			printf("输入要录入的学生的学号：");
			scanf("%ld",&stu.num);
			printf("输入要录入的学生的成绩：");
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
	printf("学号	成绩\n");
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
		printf("无数据！\n");
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
		printf("删除：%ld\n",num);
		n=n-1;
	}
	else printf("没有找到%ld号学生！\n",num);
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
	printf("\n数据如下：\n",n);
	p=head;
	if(head!=NULL)
	do{
		printf("%2ld %5.1f\n",p->num,p->score);
		p=p->next;
	}while(p!=NULL);
}
