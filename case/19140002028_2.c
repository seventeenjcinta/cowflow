#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct student)
struct student
{
    long num;
    float score;
    struct student *next;
};
//链表的创建
struct student *create(int n)
{
    struct student *head,*pt,*prept;
    int i;
    pt=(struct student*)malloc(LEN);
    head=NULL;
    if(pt==NULL)
    {
         printf("no enough memory\n");
         exit(0);//正常运行程序并退出；
    }
    else
    {
        printf("please enter num and score:\n");
        scanf("%ld %f",&pt->num,&pt->score);
        head=pt;
        prept=pt;
    }
    for(i=1;i<n;i++)
    {
        pt=(struct student*)malloc(LEN);
        if(pt==NULL)//返回值为NULL，表示内存分配不成功
        {
            printf("no enough memory\n");
             exit(0);
        }
        else
        {
            printf("please enter num and score:\n");
            scanf("%ld %f",&pt->num,&pt->score);
            prept->next=pt;
            prept=pt;
       }
    }
    prept->next=NULL;
    return head;
}
//链表输出
struct student *print(struct student *head)
{
    struct student *pt;
    printf("these records are \n:");
    pt=head;
    if(pt!=NULL)
    {
        do
        {
            printf("%ld %6.2f\n",pt->num,pt->score);
            pt=pt->next;
        }while(pt!=NULL);
    }
}
//查找链表中第n个节点
struct student *findnode(struct student *head,int n)
{
    int i=1;
    struct student*pt;
    pt=head;
    while(i<n&&pt!=NULL)
    {
        pt=pt->next;
        i++;
    }
    return pt;
}
//链表最后一个节点的查找
struct student *findlast(struct student *head)
{
    struct student *pt;
    pt=head;
    while(pt->next!=NULL)
    {
        pt=pt->next;
    }
    return pt;
}
//在链表开头插入节点
struct student *insert1(struct student *head,struct student *pt)
{
    struct student *prept;
    prept=(struct student*)malloc(LEN);
    prept->next=pt;
    pt->next=head;
    return pt;
}
//在链表中插入节点
struct student *insert2(struct student *head,struct student *pt,int n)
{
    struct student *prept;
    prept=findnode(head,n);
    if(pt!=NULL)
    {
        pt->next=prept->next;
        prept->next=pt;
    }
    else printf("there is no such number!");
    return head;

}
//在链表最后插入节点
struct student *insert3(struct student *head,struct student *pt)
{
    struct student *prept;
    prept=findlast(head);
    prept->next=pt;
    pt->next=NULL;
    return head;
}
//链表节点的删除
struct student *delete(struct student*head,long del_num)
{
    struct student *pt,*prept;
    int n=1;
    if(head->num==del_num)
    {
        pt=head->next;
        free(head);
        head=pt;
    }
    else
    {
        pt=head;
        do
        {
            pt=pt->next;
            n++;
        }while(pt->num!=del_num);
        prept=findnode(head,n-1);
        if(pt!=NULL) prept->next=pt->next;
        else printf("no such node\n");

    }
    return head;
}
int main()
{
    struct student *head,*pt;
    long del_num;
    int choice,n,m;
    printf("*****Create list!*****\n");
    printf("how many do you want to create:");
    scanf("%d",&n);
    printf("please input records: (0,0 for exit)\n");
    head=create(n);
    print(head);
    do
    {
        printf("\n1. INSERT\t2. DELETE\t0.EXIT\n");
        printf("Please choose:\n");
        scanf("%d",&choice);
        getchar();
        switch(choice)
        {
        case 1:
            pt=(struct student*)malloc(LEN);
            printf("please enter num and score:");
            scanf("%ld %f",&pt->num,&pt->score);
            printf("please choose the position: 1.begin 2.middle 3.last\n");
            scanf("%d",&m);
            switch(m)
            {
                case 1: head=insert1(head,pt);
                        break;
                case 2: printf("please enter the position:");
                        scanf("%d",&n);
                        head=insert2(head,pt,n);
                        break;
                case 3: head=insert3(head,pt);
                        break;
            }
            printf("Inserted: %ld\n",pt->num);
            print(head);
            break;
        case 2:
            printf("Please input num:");
            scanf("%ld",&del_num);
            head=delete(head,del_num);
            print(head);
            break;
        }
    }while(choice!=1&&choice!=2);
    return 0;
}

