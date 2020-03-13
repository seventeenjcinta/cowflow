#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct student)
int n,m;
struct student
{
    long num;
    float score;
    struct student *next;
};
struct student *del(struct student *head,long num)
{
    struct student *p1,*p2;
    p1=head;
    if (head==NULL)
    {
        m=1;
        return (head);
    }
    while (num!=p1->num&&p1->next!=NULL)
    {
        p2=p1;
        p1=p1->next;
    }
    if (num==p1->num)
    {
        if (p1==head)
        {
            head=p1->next;
            free(p1);
            n--;
        }
        else
        {
            p2->next=p1->next;
            free(p1);
            n--;
        }
    }
    else //没有此结点
    {
        m=1;
        printf("%ld not been found!\n",num);
    }
    return(head);
}
struct student *insert(struct student *head,struct student *stu)
{
    struct student *p0=stu,*p1=head,*p2;
    if (head==NULL)
    {
        head=p0;
        p0->next=NULL;
        return (head);
    }
    while (p0->num>p1->num&&p1->next!=NULL)
    {
        p2=p1;
        p1=p1->next;
    }
    if (p0->num<=p1->num)
    {
        if (p1==head) //插入表头之前
        {
            p0->next=p1;
            head=p0;
        }
        else          //插入表头的中间
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
    n++;
    return head;
}
struct student *create()
{
    struct student *p1,*p2;
    struct student *head;
    head=NULL;
    p1=p2=(struct student *)malloc(LEN);
    scanf("%ld %f",&p1->num,&p1->score);
    while (p1->num!=0)
    {
        n++;
        if (n==1) head=p1;
        else p2->next=p1;
        p2=p1;
        p1=(struct student *)malloc(LEN);
        scanf("%ld %f",&p1->num,&p1->score);
    }
    p2->next=NULL;
    return head;
}
void print(struct student *head)
{
    struct student *p=head;
    if (head!=NULL)
    {
        printf("Now,these %d records are:\n",n);
        do
        {
            printf("%ld %.1f",p->num,p->score);
            putchar('\n');
            p=p->next;
        }while (p!=NULL);
    }
    else
    {
        printf("Sorry! No records now!");
        putchar('\n');
    }
}
void main()
{
    struct student *p,*head;
    int choice;
    long del_num;
    printf("*****Create List*****\n");
    printf("Please input records:(0 0 for exit)\n");
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
            case 1:printf("Please input num and score:");
                   p=(struct student *)malloc(LEN);
                   scanf("%ld %f",&p->num,&p->score);
                   head=insert(head,p);
                   printf("Inserted:%ld\n",p->num);
                   print(head);
                   break;
            case 2:printf("Please input num:");
                   scanf("%d",&del_num);
                   head=del(head,del_num);
                   if (m==0)
                      printf("Deleted:%ld\n",del_num);
                   putchar('\n');
                   print(head);
        }
    }while (choice!=0);
}
