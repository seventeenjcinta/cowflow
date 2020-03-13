#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Node)

struct Node                             //结构体
{
    long num;
    float score;
    struct Node *next;
};

int n = 0;                                                         //全局变量，记录节点个数

struct Node *insert(struct Node *head, struct Node *stu)           //单向有序链表的插入
{
    struct Node *p0 = stu, *p1 = head, *p2 = NULL;
    if(head == NULL)
    {
        head = p0;
        p0 -> next = NULL;
    }
    else
    {
        while(p0 -> num > p1 -> num && p1 -> next != NULL)
        {
            p2 = p1;
            p1 = p1 -> next;
        }
        if(p0 -> num <= p1 -> num)
        {
            if(p1 == head)
            {
                head = p0;
                p0 -> next = p1;
            }
            else
            {
                p2 -> next = p0;
                p0 -> next = p1;
            }
        }
        else
        {
            p1 -> next = p0;
            p0 -> next = NULL;
        }
    }
    n++;
    return head;
}

struct Node *create()                                               //单向有序链表的创建
{
    struct Node *head = NULL, *p;
    p = (struct Node *)malloc(LEN);
    scanf("%ld,%f", &p -> num, &p -> score);
    while(p -> num != 0)
    {
        head = insert(head, p);
        p = (struct Node *)malloc(LEN);
        scanf("%ld,%f", &p -> num, &p -> score);
    }
    return head;
}

struct Node *del(struct Node *head,long num)                        //单向有序链表的删除
{
    struct Node *p1 = head, *p2 = NULL;
    if(head == NULL)
    {
        printf("该链表为空\n");
        return head;
    }
    else
    {
        while(num > p1 -> num && p1 -> next != NULL)
        {
            p2 = p1;
            p1 = p1 -> next;
        }
        if(num == p1->num)
        {
            if(p1 == head)
            {
                head = p1 -> next;
                free(p1);
            }
            else
            {
                p2 -> next = p1 -> next;
                free(p1);
            }
            n--;
        }
        else
            printf("没找到\n");
    }
    return head;
}

void print(struct Node *head)
{
    struct Node *p;
    p=head;
    if(head != NULL)
        do
        {
            printf("%ld %.1f\n", p -> num, p -> score);
            p = p -> next;
        }while(p != NULL);
}

int main()
{
    struct Node *head,*p;
    long del_num;
    int choice;
    printf("请输入学号和成绩：（输入0,0结束）\n");
    head = create();
    print(head);
    printf("共%d个学生", n);
    do
    {
        printf("\n1.insert\t2.delete\t0.exit\n");
        choice = -1;
        printf("请选择：");
        scanf("%d", &choice);
        getchar();
        switch (choice)
        {
            case 1:
                printf("请输入学号和成绩：");
                p = (struct Node *) malloc(LEN);
                scanf("%ld,%f", &p -> num, &p -> score);
                head = insert(head, p);
                printf("插入的学号:%ld\n", p->num);
                print(head);
                break;
            case 2:
                printf("请输入学号：");
                scanf("%ld", &del_num);
                head = del(head, del_num);
                print(head);
        }
        printf("共%d个学生\n", n);
    }while(choice != 0);
    return 0;
}
