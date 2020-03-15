#include<stdio.h>
#include<stdlib.h>
#include <malloc.h>
#define LEN sizeof(struct student)
struct student
{
	long num;
	float score;
	struct student* next;
};
int n = 0;
struct student* insert(struct student* head, struct student* stu)
{
	struct student* p0 = stu, * p1 = head, * p2;
	if (head == NULL)
	{
		head = p0;
		p0->next = NULL;
	}
	else
	{
		while ((p0->num > p1->num) && (p1->next != NULL))

			{
				p2 = p1;
				p1 = p1->next;
			}
			if (p0->num <= p1->num)
			{
				if (head == p1)
				{
					head = p0;
					p0->next = p1;
				}
				else
				{
					p2->next = p0;
					p0->next = p1;
				}
			}
			else
			{
				p1->next = p0;
				p0->next = NULL;
			}
			n++;


	}
	return(head);
}
struct student* create()
{
    struct student* head=NULL;
	struct student* p;
	p = (struct student*)malloc(LEN);
	scanf("%ld %f", &p->num, &p->score);
	while (p->num != 0)
	{
	    head = insert(head, p);
		p = (struct student*)malloc(LEN);
		scanf("%ld %f", &p->num, &p->score);
	}
	free(p);
	return(head);
}

/*struct student* create ()
{
    struct student* head;
    struct student *p1,*p2;
    n=0;
    p1=p2=(struct student*)malloc(LEN);

    scanf("%ld%f",&p1->num, &p1->score);
    head=NULL;
    while(p1->num!=0)
    {
        n=n+1;
        if(n==1) head=p1;
        else p2->next=p1;
        p2=p1;
        p1=(struct student*)malloc(LEN);

        scanf("%ld %f",&p1->num, &p1->score);
    }
    p2->next=NULL;
    return(head);
}*/
struct student* del(struct student* head, long num)
{
	struct student* p1, * p2;
	if (head == NULL)
	{
		printf("NULL");
		return(head);
	}
	p1 = head;
	while(num!=p1->num&&p1->next!=NULL)
    {
        p2=p1;
        p1=p1->next;
    }

	if (num == p1->num)
	{
		if (p1 == head)
			head = p1->next;
		else p2->next = p1->next;
		printf("delete:%ld\n",num);
        n=n-1;
	}
	else printf("cant found\n");
	return(head);
}
void print(struct student* head)
{
    printf("list is:\n");
	struct student* p ;
	p=head;
	if (head != NULL)
	{
		do
		{
			printf("%ld %5.1f\n", p->num, p->score);
			p = p->next;
		} while (p != NULL);
	}
	else printf("NULL");
}
void main()
{
	struct student* head, * p;
	long delnum;
	int choice;
	printf("*****Create List!*****\n");
	printf("Please input records:(0,0 for exit)\n");
 	head = create();
	print(head);
	do
	{
		printf("\n1. INSERT\t 2.DELERT\t0.EXET\n");
		printf("Please choose:");
		scanf("%d", &choice);
		getchar();
		switch (choice)
		{
		case 1:
			printf("please input num and score:");
			p = (struct student*) malloc(LEN);
			scanf("%ld %f", &p->num, &p->score);
			head = insert(head, p);
			printf("Inserted:%ld\n", p->num);
			print(head);
			break;
		case 2:
			printf("Please input num:");
			scanf("%ld", &delnum);
			head = del(head,delnum);
			print(head);
		}
	} while (choice != 0);
}
