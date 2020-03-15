#include<stdio.h>
#include<malloc.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)
struct Student
{
    long num;
    float score;
    struct Student *next;
};
int n;
struct Student *order(struct Student *head)
{
    struct Student *p1,*p2,temp;
    p1=head;
    while((head!=NULL)||(head->next!=NULL))
    {
        p2=p1->next;
        while(p2!=NULL)
        {
            if(p1->num>p2->num)
            {
                temp=*p1;
                *p1=*p2;
                *p2=temp;
                temp.next=p1->next;
                p1->next=p2->next;
                p2->next=temp.next;
            }
            p2=p2->next;
        }
        p1=p1->next;
    }
    return(head);
}
struct Student *creat()
{
    struct Student *head,*p1,*p2;
    n=0;
    p1=p2=(struct Student *)malloc(LEN);
    head=NULL;
    scanf("%ld,%f",&p1->num,&p1->score);
    while(p1->num!=0)
    {
        n=n+1;
        if(n==1) head=p1;
        else p2->next=p1;
        p2=p1;
        p1=(struct Student *)malloc(LEN);
        scanf("%ld,%f",&p1->num,&p1->score);
    }
    p2->next=NULL;
    return(head);
}
void print(struct Student *head)
{
    struct Student *p;
    printf("\nNow, These %d records are:\n",n);
    p=head;
    if(head!=NULL)
        do
        {
            printf("%ld %5.1f\n",p->num,p->score);
            p=p->next;
        }while(p!=NULL);
}
struct Student *insert(struct Student *head,struct Student *stud)
{
    struct Student *p0,*p1,*p2;
    p1=head;
    p0=stud;
    if(head==NULL)
    {
        head=p0;
        p0->next=NULL;
    }
    else
    {
        while((p0->num>p1->num)&&(p1->next!=NULL))
        {
            p2=p1;
            p1=p1->next;
        }
    }
    if(p0->num<=p1->num)
    {
        if(head==p1) head=p0;
        else p2->next=p0;
        p0->next=p1;
    }
    else
    {
        p1->next=p0;
        p0->next=NULL;
    }
    n=n+1;
    return(head);
}
struct Student *delect(struct Student *head,long num)
{
    struct Student *p1,*p2;
    if(head==NULL)
    {
        printf("\nlist null!\n");
        return(head);
    }
    p1=head;
    while(num!=p1->num&&p1->next!=NULL)
    {
        p2=p1;
        p1=p1->next;
    }
    if(num==p1->num)
    {
        if(p1==head) head=p1->next;
        else p2->next=p1->next;
        printf("delect:%ld\n",num);
        n=n-1;
    }
    else
        printf("%ld not been found!\n",num);
    return(head);
}
int main()
{
    struct Student *head,*stu;
    long del_num;
    int t;
    printf("input records:\n");
    head=creat();
    print(head);
    do
    {
        printf("\n1.Insert     2.Delect     0.Exit");
        printf("请选择：");
        scanf("%d",&t);
        switch(t)
        {
            case 1:printf("请输入学号和成绩：");
                   stu=(struct Student *)malloc(LEN);
                   scanf("%ld,%f",&stu->num,&stu->score);
                   head=insert(head,stu);
                   printf("插入的是：%ld\n",stu->num);
                   print(head);
                   break;
            case 2:printf("请输入学号：");
                   scanf("%ld",&del_num);
                   head=delect(head,del_num);
                   print(head);
                   break;
            case 0:exit(0);
        }
    }while(t!=0);
    return 0;
}
