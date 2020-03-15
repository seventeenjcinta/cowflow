#include<stdio.h>
#include<stdlib.h>
struct Node
{
	long num;
	float score;
	struct Node *next;
};
#define LEN sizeof(struct Node)
int n;
void print(struct Node *head)
{
    int t=0;
	struct Node *p=head;
    printf("Now,There %d recards are:",n);
    
    if(head!=NULL)
    {
        do
        {
            printf("%ld***%4.1f\n",p->num,p->score);
            p=p->next;
            t++;
        }while(t!=n);
    }
    else
        printf("there nothing.");
}
struct Node *create(void)
{
	struct Node *p=(struct Node *)malloc(LEN),*head;
	struct Node *insert(struct Node *head,struct Node *p);
	scanf("%ld%f",&p->num,&p->score);
	while(p->num!=0)
	{
		head=insert(head,p);
		p=(struct Node *)malloc(LEN);
		scanf("%ld%f",&p->num,&p->score);
	}
	free(p);
    return(head);
}

struct Node *insert(struct Node *head,struct Node *p)
{
   struct Node *p1,*p2,*p3;
    p=(struct Node *)malloc(LEN);
    scanf("%ld%f",&p->num,&p->score);
    while(p->num!=0)
    {
        n+=1;
        if(n==1)
            p2=head=p;
        else
        {
            if(p->num<head->num)
            {
                p2=head;
                head=p;
                p2=head->next;
                p2=head;
            }
            else if(p->num>head->num)
            {
                p=head->next;
                p->next=NULL;
                p1=p;
            }
            else if(p->num>p1->num)
            {
                p=p1->next;
                p1=p;
                p1->next=NULL;
            }
            else
            {
                while(p->num>p2->num&&p2->next!=NULL)
                {
                    p3=p2;
                    p2=p2->next;
                }
                p->next=p2;
                p3->next=p;
            }
        }
        p=(struct Node *)malloc(LEN);
        scanf("%ld%f",&p->num,&p->score);
    }
    return(head);
}
struct Node *del(struct Node *head,long num)
{
     struct Node *p1=head,*p2;
     if(num<head->num||head==NULL)
        printf("there is nothing.");
     else
     {
         while(num>p1->num&&p1->next!=NULL)
            {
                p2=p1;
                p1=p1->next;
            }
         if(num!=p1->num)
            printf("there is nothing.");
         if(num==head->num)
         {
             head=head->next;
             free(p1);
             n--;
         }
         if(num==p1->num)
         {
             p2->next=p1->next;
             free(p1);
             n--;
         }
     }
};

void main()
{
    struct Node *head,*p;
    long num;
    int choice;
    printf("*****create list 1*****\n");
    printf("please input recorder,(0.0 for exit)\n");
    head=create();
    do
    {
        printf("\n1.INSERT\t 2.DELETE\t 0.EXIT\n");
        choice=-1;
        printf("please choose;");
        scanf("%d",&choice);
        getchar();
        switch(choice)
        {
        case 1:
            printf("please input num and score:");
            p=(struct Node *)malloc(LEN);
            scanf("%ld%f",&p->num,&p->score);//about if & is before the p.,yes ,of course.
            head=insert(head,p);
            printf("inserted: %ld\n",p->num);
            print(head);
            break;
        case 2:
            printf("please input num:");
            scanf("%ld",&num);
            head=del(head,num);
            print(head);
        }
    }while(choice!=0);

}
