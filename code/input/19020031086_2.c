#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct student)
int n;
struct student
{
    long num;
    float score;
    struct student *next;
};
struct student *insert(struct student *head,struct student *stu)
{
    struct student *p0=stu,*p1=head,*p2;
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
        if(p0->num<=p1->num)
        {
            if(p1==head){head=p0;p0->next=p1;}
            else{p2->next=p0;p0->next=p1;}
        }
        else{p1->next=p0;p0->next=NULL;}
    }
    n++;
    return(head);
};
struct student *create(void)
{
    struct student *p,*head=NULL;
    p=(struct student *)malloc(LEN);
    scanf("%ld,%f",&p->num,&p->score);
    while(p->num!=0)
    {
        head=insert(head,p);
        p=(struct student *)malloc(LEN);
        scanf("%ld,%f",&p->num,&p->score);
    }
    free(p);
    return(head);
};
void print(struct student *head)
{
    struct student *p=head;
    if(head!=NULL)
    {
        printf("\nNow,there %d records are:\n",n);
        do
        {
            printf("%ld%8.1f\n",p->num,p->score);
            p=p->next;
        }
        while(p!=NULL);
    }
    else printf("\nSorry!No records now!\n");
}
struct student *del(struct student *head,long num)
{
    struct student *p1=head,*p2;
    //if(head==NULL){printf("Sorry!No words records!");return(head);}
    if(head!=NULL)
    {
        while((num!=p1->num)&&(p1->next!=NULL))
        {
            p2=p1;
            p1=p1->next;
        }
        if(num!=p1->num)printf("%ld not been found!\n",num);
        else
        {
            printf("Deleted:%ld\n",num);
            if(p1!=head){p2->next=p1->next;free(p1);n--;}
            else{head=p1->next;free(p1);n--;}
        }
        return(head);
    }
};
void main()
{
    struct student *head,*p;
    long del_num;
    int choice;
    printf("*****Create list!*****\n");
    printf("Please input records:(0,0 for exit)\n");
    head=create();
    print(head);
    do
    {
        printf("\n1.insert     2.delete     0.exit\n");
        choice=-1;
        printf("Please choose:");
        scanf("%d",&choice);
        getchar();//去掉输入进来的回车
        switch(choice)
        {
        case 1:
            printf("Please input num and score:");
            p=(struct student *)malloc(LEN);
            scanf("%ld,%f",&p->num,&p->score);
            head=insert(head,p);
            printf("Inserted:%ld\n",p->num);
            print(head);
            break;
        case 2:
            printf("Please input num:");
            scanf("%ld",&del_num);
            head=del(head,del_num);
            print(head);
        }
    }
    while(choice!=0);
}
