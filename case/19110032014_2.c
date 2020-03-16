#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct student)

struct student
{
    long num;
    char name[20];
    struct student *next;
};
int n;
struct student *last, *blast;
void print(struct student *head)
{
    struct student *p;
    p=head;
    if(head=NULL)
    {
        printf("�ձ�!!!");
        return;
    }
    printf("����ѧ����ϢΪ:\n");
    while(p!=NULL)
    {
        printf("%ld %s\n",p->num,p->name);
        p=p->next;
    }
}
struct student *creat(void)
{
    int i=0;
    struct student *head;
    struct student *p1, *p2;
    n=0;
    p1=(struct student *)malloc(LEN);
    p2=p1;
    head=NULL;
    printf("������ѧ����Ϣ:\n");
    printf("%d )",i+1);
    scanf("%ld,%s",&p1->num,&p1->name);
    if(p1->num==0)head=NULL;
    while(p1->num!=0)
    {
        n=n+1;
        i+=1;
        if(n==1)head=p1;
        else p2->next=p1;
        p2=p1;
        p1=(struct student *)malloc(LEN);
        printf("%d )",i+1);
        scanf("%ld,%s",&p1->num,&p1->name);
    }
    last=p2;
    p2->next=NULL;
    return(head);
}
struct student *bfin(struct student *head,struct student *last)
{
    int i;
    for(i=0;i<n;i++)
        if(blast->next==last)
            break;
    return(blast);
}
struct student *ins(struct student *head,struct student *stu)
{
    struct student *p2;
    struct student *p0=stu;
    struct student *p1=head;
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
        if(p0->num<p1->num)
        {
            if(p1==head)
            {
                head=p0;
                p0->next=p1;
            }
            else
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
    return(head);
}
struct student *del(struct student *head,long num)
{
    struct student *p1, *p2;
    p1=head;
    p2=head;
    if(head==NULL)
    {
        printf("�ձ�!!!");
        return(head);
    }
    while(p1->num!=num)
    {
        p2=p1;
        p1=p1->next;
    }
    if(p1==head)
    {
        head=p1->next;
        p1->next=NULL;
    }
    else
    {
        p2->next=p1->next;
        p1->next=NULL;
    }
    free(p1);
    return(head);
}
struct student *sort(struct student *head)
{
    struct student *p1, *p2, *pm, *bm, *p;
    while(last!=head)
    {
        pm=head;
        p2=head;
        p1=head;
        blast=bfin(head,last);
        while(p1!=last)
        {
            if(p1->num>pm->num)
                pm=p1;
            p2=p1;
            p1=p2->next;
        }
        if(pm->num>last->num)
        {
            if(pm==head)
            {
                pm->next=last->next;
                last->next=head->next;
                blast->next=pm;
                head=last;
            }
            else
            {
                p=pm;
                bm=bfin(head,pm);
                pm->next=last->next;
                last->next=p->next;
                bm->next=last;
                blast->next=pm;
            }
        }
        last=blast;
    }
    return (head);
}
void main()
{
    int m, i;
    struct student *head, *stu, *p;
    long num;
    stu=(struct student *)malloc(LEN);
    head=creat();
    head=sort(head);
    print(head);
    printf("������������ѧ����Ϣ");
    scanf("%ld,%s",&stu->num,&stu->name);
    head=ins(head,stu);
    print(head);
    while(1)
    {
        printf("1.insert  2.delete  0.exit\n��ѡ��:");
        scanf("%d",&m);
        switch(m)
        {
            case 1: p=(struct student *)malloc(LEN);
                    printf("������ѧ����Ϣ:");
                    scanf("%ld,%s",&p->num,&p->name);
                    head=ins(head,p);
                    print(head);
                    i++;break;
            case 2: printf("��������ɾ����ѧ��ѧ��");
                    scanf("%ld",&num);
                    head=del(head,num);
                    print(head);break;
            case 0: exit(0);
        }
    }
}
