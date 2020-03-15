#include<stdio.h>
#include<stdlib.h>   //提供malloc函数原型
#define LEN sizeof(struct stud)
int n;   //计算有多少个数据
struct stud
{
    long num;
    float score;
    struct stud *next;
};


struct stud *insert(struct stud *head,struct stud *stu)  //进行插入操作 传过来新添加元素的起始地址
{
    struct stud *p1,*p2;
    if(head == NULL)
    {
        head = stu;
        n++;
        return(head);
    }
    p1 = head;
    while((stu->num > p1->num) && (p1->next != NULL))
    {
        p2 = p1;
        p1 = p1->next;
    }                 //找p1直到大于等于stu的学号
    if(p1->num >= stu->num)
    {
        stu->next = p1;
        if(p1 != head)
            p2->next = stu;  //插入中间处理
        else
            head = stu;      //表头处理
    }
    else  //表尾处理
    {
        p1->next = stu;
    }
    n++;
    return(head);
}


struct stud *del(struct stud *head,int num)  //进行删除操作
{
    struct stud *p1,*p2,*temp;
    p1 = head;
    while(p1->num < num&& p1->next != NULL)
    {
        p2 = p1;
        p1 = p1->next; //找到临近该位置的学号  p2记录前一个学生
    }
    if(p1->num != num)
    {
        printf("\nI can't find this student.");
        return(head);
    }
    if(p1->num == num)
    {
        if(p1==head)
        {
            head = p1->next;
            free(p1);
        }        //处理表头
        else if(p1!=head && p1->next != NULL)
        {
            temp = p1;    //记录temp为要删除的元素，便于删除
            p1 = p1->next;  //跳过要删除的元素，到下一个
            p2->next = p1;   //被删除元素的前一个 指向 被删除元素的前一个
            free(temp);
        }    //处理中间
        else if(p1->next == NULL)
        {
            p2->next = NULL;
            free(p1);
        }   //处理表尾
    }
    n--;
    return(head);
}


int  print(struct stud * head) //打印链表操作
{
    if(head == NULL)
    {
        printf("\nSorry! No record!\n");
        return(0);
    }                     //如果链表为空，直接输出没有记录

    struct stud *p1;
    p1 = head;
    printf("\nNow record!\n");
    printf("Total students: %d\n",n);
    do
    {
        printf("%d %.1f\n",p1->num,p1->score);
        p1 = p1->next;
    }while(p1 != NULL); //注意判断的是p1而不是p1指向的next,p1有时候是学号地址，有时候是next所代表的值
    return(0);
}


struct stud *creat() //创建初始链表
{
    struct stud *head = NULL;
    struct stud *p1;
    printf("Please enter the information of students:\n");
    p1 = (struct stud*)malloc(LEN);
    scanf("%d%f",&p1->num,&p1->score);
    p1->next = NULL;    //读入初始数据
    while(p1->num != 0)
    {
        head = insert(head,p1); //进行插入
        p1 = (struct stud*)malloc(LEN);    //创建下一个数据
        scanf("%d%f",&p1->num,&p1->score);  //输入下一个数据
        p1->next = NULL;
    }
    free(p1);
    printf("----Create finished!----\n");
    return(head);
}


void main()
{
    int choice=-1;  //进行插入，删除的选择项
    int num;    //想要删除的学号
    struct stud *stu;  //想要插入的学生结构体变量
    struct stud *head;
    head = creat();
    printf("Your create data are:\n");
    print(head);

    printf("\n1.INSERT\t 2.DELETE\t 3.EXIT\n");   //进行插入，删除数据
    scanf("%d",&choice);
    while(choice != 0)
    {
        switch(choice)
        {
        case 1: printf("Please enter the data what you want to insert:(num.score)\n");
                stu = (struct stud*)malloc(LEN);
                scanf("%d %f",&stu->num,&stu->score);
                stu->next = NULL;
                head = insert(head,stu);
                print(head);
                break;

        case 2: printf("Please enter the data what you want to delete:(num)\n");
                scanf("%d",&num);
                head = del(head,num);
                print(head);
                break;

        }
        printf("\n1.INSERT\t 2.DELETE\t 3.EXIT\n");
        scanf("%d",&choice);
    }

}
