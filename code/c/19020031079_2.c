#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)
struct Student
{
    long num;
    float score;
    struct Student *next;
};
int n=0;
int main()
{
    struct Student *creat(void);
    void print(struct Student *head);
    struct Student *insert(struct Student *head,struct Student *stu);
    struct Student *delete(struct Student *head,long num);
    struct Student *head,*p;
    long del_num;
    int choice;
    printf("Please input records:(0 0 for exit)\n");
    head=creat();
    print(head);
    while(1)
    {
        printf("\n1.INSERT 2.DELETE 0.EXIT\n");
        printf("Please input choice:");
        scanf("%d",&choice);
        if (choice==0)
            break;
        switch(choice)
        {
            case 1:
                    printf("Please input student num and score:");
                    p=(struct Student *)malloc(LEN);
                    scanf("%ld %f",&p->num,&p->score);
                    head=insert(head,p);
                    print(head);
                    break;
            case 2:
                    printf("Please input number:");
                    scanf("%ld",&del_num);
                    head=delete(head,del_num);
                    if (n!=0)
                        print(head);
        }
    }
    return 0;
}
struct Student *creat(void)
{
    struct Student *head,*p1,*p2;
    p1=p2=(struct Student *)malloc(LEN);
    scanf("%ld %f",&p1->num,&p1->score);
    head=NULL;
    while(p1->num!=0)
    {
        n++;
        if (n==1)
            head=p1;
        else
            p2->next=p1;
        p2=p1;
        p1=(struct Student *)malloc(LEN);
        scanf("%ld %f",&p1->num,&p1->score);
    }
    p2->next=NULL;
    free(p1);
    return head;
}
void print(struct Student *head)
{
    struct Student *p=head;
    printf("These %d student records are:\n",n);
    if (head!=NULL)
        do
        {
            printf("%ld %5.1f\n",p->num,p->score);
            p=p->next;
        }while(p!=NULL);
}
struct Student *insert(struct Student *head,struct Student *stu)
{
    struct Student *p1=head,*p2;
    if (head==NULL)
    {
        head=stu;
        stu->next=NULL;
    }
    else
    {
        while(stu->num>p1->num&&p1->next!=NULL)
        {
            p2=p1;
            p1=p1->next;
        }
        if (stu->num<=p1->num)
        {
            if (p1==head)
            {
                head=stu;
                stu->next=p1;
            }
            else
            {
                p2->next=stu;
                stu->next=p1;
            }
        }
        else
        {
            p1->next=stu;
            stu->next=NULL;
        }
    }
    n++;
    return head;
}
struct Student *delete(struct Student *head,long num)
{
    struct Student *p1=head,*p2;
    if (head==NULL)
    {
        printf("List is null.\n");
        return head;
    }
    while(p1->num!=num&&p1->next!=NULL)
    {
        p2=p1;
        p1=p1->next;
    }
    if (num==p1->num)
    {
        if (p1==head)
            head=p1->next;
        else
            p2->next=p1->next;
        n--;
    }
    else
        printf("No this student.\n");
    if (n==0)
        printf("List is null.\n");
    return head;
}
