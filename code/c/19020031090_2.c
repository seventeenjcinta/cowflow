#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct student)                                 //LEN:即为结构体struct student的长度

struct student
{
    long num;
    float score;
    struct student *next;
};
int n=0;                                                           //n为全局变量，并赋初值为0，各函数均可使用它

struct student *create()                                           //定义一个create函数，它是指针类型，即此函数带回一个指针值，它指向一个struct student类型数据
{
    struct student *insert(struct student *head,struct student *stud);
    struct student *head,*p;
    p=(struct student *)malloc(LEN);                               //使p指向开辟的新单元，并强制类型转换（malloc带回的是不指向任何类型数据的指针，即void*类型）
    scanf("%ld,%f",&p->num,&p->score);                             //输入第1个学生的学号和成绩
    head=NULL;                                                     //head最初为空指针
    while(p->num!=0)
    {
        head=insert(head,p);
        p=(struct student *)malloc(LEN);                           //开辟第二个单元并使p指向它（开辟动态存储区，把起始地址赋给p1）
        scanf("%ld,%f",&p->num,&p->score);
    }
    free(p);                                                       //释放动态存储空间
    return(head);                                                  //create函数的返回值是所建立的链表的第1个节点的地址
};

void print(struct student *head)                                   //定义print函数：输出链表
{
    struct student *p;
    p=head;
    if(head!=NULL)                                                 //若不是空表
    {
        printf("\nNow,These %d records are:\n",n);
        do
        {
            printf("%ld %5.1f\n",p->num,p->score);                 //输出一个结点中的学号和成绩
            p=p->next;                                             //p->next是p指向的结点中的next成员，即第1个结点中的next成员，p->next中存放了第2个结点的地址。因此，p=p->next的作用是将p原来所指向的结点中next的值赋给p，使p指向下一个结点
        }while(p!=NULL);                                           //当p不是“空地址”
    }
    else
        printf("\nSorry! No records now!\n");
}

struct student *insert(struct student *head,struct student *stu)   //定义一个插入结点的函数，p0指向要插入的单元
{
    struct student *p0=stu,*p1=head,*p2;
    if(head==NULL)
    {
        head=p0;
        p0->next=NULL;
    }                                                              //若链表为空，插入p0指向的单元，使之成为结点。此时链表只有一个节点
    else                                                           //若链表非空
    {
        while(p0->num>p1->num&&p1->next!=NULL)                     //正序
        {
            p2=p1;
            p1=p1->next;
        }
        if(p0->num<=p1->num)
        {
            if(p1==head)
                head=p0;
            else
                p2->next=p0;
            p0->next=p1;                                            //合并同类项
         }
        else                                                        //当p0->num>p1->num时
        {
            p1->next=p0;
            p0->next=NULL;                                          //链到最后
        }
    }
    n++;                                                            //插入一个结点，n加1
    return(head);
};

struct student *del(struct student *head,long num)                  //定义一个删除结点的函数
{
    struct student *p1=head,*p2;
    if(head==NULL)                                                  //若为空链表
    {
        printf("\nList is null!\n");
        return(head);
    }
    else                                                            //若链表非空
    {
        while(num!=p1->num&&p1->next!=NULL)
        {
            p2=p1;
            p1=p1->next;
        }
        if(num==p1->num)                                            //找着了
        {
            if(p1==head)                                            //表头
                head=p1->next;
            else                                                    //中间、表尾可以合并：p1->num:指p1指向的结点里的数据；p1->next:指p1指向的结点的下一个结点里的数据
                p2->next=p1->next;
            printf("Deleted:%ld\n",num);
            n--;                                                    //删除一个结点，n减1
        }
        else                                                        //没找着
            printf("%ld not been found!\n",num);
    }
    return(head);
};

int main()
{
    struct student *head,*p;
    long del_num;
    int choice;
    printf("*****Create list!*****\n");
    printf("Please input records:(0,0 for exit)\n");
    head=create();
    print(head);
    do                                                                //实现重复输入
    {
        printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");
        choice=-1;
        printf("Please Choose:");
        scanf("%d",&choice);
        getchar();                                                    //吞换行符
        switch(choice)
        {
            case 1:
                printf("Please input num and score:");
                p=(struct student *)malloc(LEN);
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
                break;
        }
    }while(choice!=0);
    return 0;
}
