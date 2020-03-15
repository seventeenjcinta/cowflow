#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)

struct Student
{
    long num;
    float score;
    struct Student *next;
};
int n;

struct Student *create()
{
    struct Student *head;
    struct Student *p1,*p2;
    p1=p2=(struct Student *)malloc(LEN);
    scanf("%ld,%f",&p1->num,&p1->score);
    head=NULL;
    while(p1->num!=0)
    {
        n=n+1;
        if(n==1)    head=p1;
        else    p2->next=p1;
        p2=p1;
        p1=(struct Student *)malloc(LEN);
        scanf("%ld,%f",&p1->num,&p1->score);
    }
    p2->next=NULL;
    return  (head);
}
void print(struct Student *head)
{
    if(head!=NULL)
    {
        printf("Now,the records are:\n");
        do
        {
            printf("%ld,%.1f\n",head->num,head->score);
            head=head->next;
        }while(head!=NULL);
    }
    else
        printf("Can't carry out the process!\n");
}
void sort(struct Student *head)
{
    int i,j,t;
    struct Student *p;
    for(i=1;i<n;i++)
    {
        p=head;
        for(j=0;j<n-i;j++)
        {
            if(p->num>(p->next)->num)
            {
                t=p->num;
                p->num=(p->next)->num;
                (p->next)->num=t;
            }
            p=p->next;
        }
    }
}
struct Student *insert(struct Student *head,struct Student *p)
{
    struct Student *p1,*p2;
    p1=head;
    if(head==NULL)
    {
        head=p;
        head->next=NULL;
    }
    else
    {
        while((p->num>p1->num)&&(p1->next!=NULL))
        {
            p2=p1;
            p1=p1->next;
        }
        if(p->num<=p1->num)
        {
            if(p1==head)    head=p;
            else    p2->next=p;
            p->next=p1;
        }
        else
        {
            p1->next=p;
            p->next=NULL;
        }
    }
    n=n+1;
    return (head);
}
struct Student *delete(struct Student *head,long del_num)
{
    struct Student *p1,*p2;
    p1=head;
    if(p1==NULL)   printf("Can't carry out the process!\n");
    else
    {
        while((del_num!=p1->num)&&(p1->next!=NULL))
        {
            p2=p1;
            p1=p1->next;
        }
        if(del_num==p1->num)
        {
            if(p1==head)    head=p1->next;
            else    p2->next=p1->next;
        }
        else    printf("Please input the number again!\n");
        n=n-1;
        return (head);
    }
}
void main()
{
    struct Student *head,*p;
    long del_num;
    int choice;
    printf("Please input some datas(input 0,0 for exit):\n");
    head=create();
    sort(head);
    print(head);
    while(1)
    {
        printf("***********MENU*************\n");
        printf("0.exit  1.insert  2.delete\n");
        printf("Please choose one:");
        scanf("%d",&choice);
        switch(choice)
        {
            case 0: exit(0);
            case 1: printf("Please input the number and the score:");
                    p=(struct Student *)malloc(LEN);
                    scanf("%ld,%f",&p->num,&p->score);
                    head=insert(head,p);
                    print(head);
                    break;
            case 2: printf("Please input the num you want to delete:");
                    scanf("%ld",&del_num);
                    head=delete(head,del_num);
                    print(head);
                    break;
        }
    }
}
