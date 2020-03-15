#include <stdio.h>
#include <malloc.h>
#define LEN sizeof(struct Node)
#include <stdlib.h>

int n=0;
struct Node
{
	long num;
	float score;
    struct Node *next;
};

struct Node *build(struct Node *head)
{
	struct Node *insert(struct Node *head , struct Node *stud);
	struct Node *p;
	p=(struct Node *)malloc(LEN);
	scanf("%ld %f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct Node *)malloc(LEN);
		scanf("%ld %f",&p->num,&p->score);
	}
	free(p);
	return(head);
}


struct Node * insert(struct Node * head , struct Node * stud)
{
	struct Node * p0=stud;
	struct Node *p1=head;
	struct Node *p2;
	if(head==NULL)
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
			if(p1==head)
			{
				head=p0;
				p0->next=p1;
			}else
			{
				p2->next=p0;
				p0->next=p1;
			}
		}
		else
		{
			p1->next=p0;
			p0->next=NULL;
		}
	}
	n++;
	return (head);
}

struct Node * del(struct Node * head , long num)
{
	struct Node *p1=head;
	struct Node *p2;
	if(head==NULL)
	{
		printf("链表为空，不能删除。\n");
		return (head);
	}else
	{
		while(num!=p1->num&&p1->next!=NULL)
		{
			p2=p1;
			p1=p1->next;
		}
		if(num==p1->num)
		{
			if(p1==head)
			{
				head=p1->next;
				free(p1);
				n--;
			}
			else
			{
				p2->next = p1->next;
				free(p1);
				n--;
			}
		}
		if(num!=p1->num&&p1->next==NULL)
			printf("数据不在列表中，不能删除。\n");
	}
	return (head);
}

void print(struct Node *head)
{
	struct Node *p1=head;
	if(head!=NULL)
	{
		do
		{
			printf("%ld %f\n",p1->num,p1->score);
			p1=p1->next;
		}while(p1!=NULL);
	}else printf("此为空表。\n");
}

int main()
{
	struct Node *head=NULL;
	struct Node *p;
	long num;
	int choice;
	while(1)
	{
		printf("1、build	2、insert	3、delete	4、exit\n");
		printf("请选择，并输入所选选项的序号：");
		scanf("%d",&choice);
		if(choice==4)exit(0);
		else{
			switch(choice)
			{
				case 1:
                {
                    printf("请输入学生的学号以及成绩：\n");
                    head=build(head);
                    print(head);
                    break;
                }
				case 2:
                {
                    printf("请输入学生的学号以及成绩：");
                    p=(struct Node *)malloc(LEN);
                    scanf("%ld %f",&p->num,&p->score);
                    head=insert(head,p);
                    print(head);
                    break;
                }
				case 3:
                {
                    printf("请输入学生的学号：");
                    scanf("%ld",&num);
                    head=del(head,num);
                    print(head);
                    break;
                }
			}
		}
	}
	return 0;
}
