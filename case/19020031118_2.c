#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)
struct Student
    {long num;
    float score;
    struct Student *next;
    };
struct Student *create()    //创建列表
{
    struct Student *head;
    head=(struct Student *)malloc(LEN);
    head->next=NULL;
    return head;
}
struct Student *insert(struct Student *head,struct Student *stu)//插入数据
{
    struct Student *p=head;
    while(p->next!=NULL&&(stu->num>p->next->num))//特别注意&&左右不能写反,若stu最大,最后p->next=NULL,p->next->score运行出错
        p=p->next;
    if(p->next==NULL) //stu->score最大的情况 //其实两种情况可以并在一块写
    {
        p->next=stu;     //连接结点
        stu->next=NULL;  //与上一句不可以交换位置
    }
    else
    {
        stu->next=p->next;
         p->next=stu; //连接结点
    }
    return head ;
    }
struct Student *del(struct Student *head,long del_num,int n)
{
    struct Student *p1,*p2;
    int flag=0; //是否有输入学号的学生
    p1=head;
    if(head->next==NULL) return n;  //如果是空列表
    else
    {
        while((del_num!=p1->num)&&(NULL!=p1->next))
        {
            p2=p1;
            p1=p1->next;
            if(del_num==p1->num)
            {
                if(head==p1->next) head=p1->next;
                else p2->next=p1->next;
                free(p1);
                flag=1;
                n--;
            }
        }
        if(!flag) printf("***There is not this student in the list.\n");//没有此学生的数据
    }
    return n;
}
void print(struct Student *head,int n)              //输出数据
{
    struct Student *p;
    p=head->next;    //不是p=head;
    if(p!=NULL)      //如果是head!=NULL,或者!p,则程序return负数，错误
    {
        printf("**********The list has %d records:*********\n",n);
        printf("*   number    score                      *\n");
        do
        {
        printf("*   %ld%11.2f                    *\n",p->num,p->score);
            p=p->next;
        }while(p!=NULL);
    }
    else printf("There is no record.\n");
        printf("******************************************\n");
    printf("\n");
}
int main()
{
    struct Student *create();
    void print(struct Student *head,int n);
    struct Student *insert(struct Student *head,struct Student *stu);
    struct Student *del(struct Student *head,long del_num,int n);
    struct Student *head,*p;
    long del_num;
    int choice;
    int n=0;
    printf("Please input records:(0 for exit)\n");
    head=create();
    do
    {
        printf("1. Insert\t2. Delete\t0.Exit\n");
        choice=-1;
        printf("Your Choice:");
        scanf("%d",&choice);
        switch(choice)
        {
            case 1: printf("Please input number and score:");
                    p=(struct Student *)malloc(LEN);
                    scanf("%ld%f",&p->num,&p->score);
                    n++;
                    head=insert(head,p);    //调用create函数，插入数据
                    printf("Inserted:%ld\n",p->num);
                    printf("\n");
                    print(head,n);   //传过去指针head，输出现有学生的学号和成绩
                    break;
            case 2: printf("Please input number:");
                    scanf("%ld",&del_num);
                    n=del(head,del_num,n);  //调用delete函数，删除数据
                    printf("\n");
                    print(head,n);  //传过去指针head，输出现有学生的学号和成绩
         }
    }while(choice!=0);  //输入0退出
    return 0;
}
