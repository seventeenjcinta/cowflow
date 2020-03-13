
#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#define LEN sizeof(struct Node)
struct Node
{
    long num;
    float score;
    struct Node *next;
};
int n=0;
void print(struct Node *head)
{
    struct Node *p;
    printf("\nNow,These %d records are:\n",n);
    p=head;
    if(head!=NULL)
        do
        {
            printf("%ld %.1f\n",p->num,p->score);
            p=p->next;
        }while(p!=NULL);
}
struct Node *insert(struct Node *head,struct Node *stu)
{
    struct Node *p0=stu,*p1=head,*p2;
    if(head==NULL)
    {
        head=p0;
        p0->next=NULL;
    }
    else
    {
        while(p1->next!=NULL&&p0->num>p1->num)
        {
            p2=p1;
            p1=p1->next;
        }
        if(p0->num<=p1->num)
        {
            if(p1==head) 
            {
                p0->next=p1;
                head=p0;
                   }
            else 
            {
                p2->next=p0;
                p0->next=p1;
                p1=p1->next;
            }
        }
        else 
        {
            p1->next=p0;
            p0->next=NULL;
        }
    }
    n++;
    return(head);
}
struct Node *creats()
{
    struct Node *p,*head;
    p=(struct Node *)malloc(LEN);
    scanf("%ld,%f",&p->num,&p->score);
    head=NULL;
    while(p->num!=0)
    {	
        head=insert(head,p);
        p=(struct Node *)malloc(LEN);
        scanf("%ld,%f",&p->num,&p->score);
    }
    return(head);
}
struct Node *del(struct Node *head,long num)
{
    struct Node *p1=head,*p2;
    if(head==NULL)
    {
        printf("There is no record.\n");
        return(head);
    }
    while(num>p1->num&&p1->next!=NULL)
    {
        p2=p1;
        p1=p1->next;
    }
   if(num==p1->num)
    {
        if(p1==head) head=p1->next; 
        else p2->next=p1->next; 
        free(p1);
        n--;
    }
    else printf("Not found\n");
    return(head);
}
void main()
{
    struct Node *head,*p;
    long int del_num;
    int choice;
    printf("Please input records(0,0 for exit)\n");
    head=creats();
    print(head);
    do
    {
        printf("\n1.INSERT\t2.DELETE\t0.EXIT\n");
        choice=-1;

 printf("Please Choice: ");
        scanf("%d",&choice);
        getchar();
        switch(choice)
        {
            case 1:
                    printf("Please input num and score:");
                    p=(struct Node *) malloc(LEN);
                    scanf("%ld,%f",&p->num,&p->score);
                    head=insert(head,p);
                    printf("Inserted: %ld\n",p->num);
                    print(head);
                    break;
            case 2:
                    printf("Please input num:");
                    scanf("%ld",&del_num);
                    head=del(head,del_num);
                    print(head);
        }
    }while(choice!=0);
}

