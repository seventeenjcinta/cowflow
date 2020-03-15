//单项有序链表的创建、插入与删除
#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#define LEN sizeof(struct Student)
struct Student
{
    long num;    //学号
    float score; //成绩
    struct Student *next;
};

int main()
{
    struct Student *del(struct Student * head, long num);
    struct Student *create();
    struct Student *insert(struct Student * head, struct Student * stu);
    void print(struct Student * head);

    struct Student *head = NULL, *stu;
    long del_num = 0;
    int choice;
    printf("请输入数据(学号+成绩)：");
    head = create();
    scanf("%ld%f", &head->num, &head->score);
    if ((head->num == 0) && (head->score == 0))
        exit(0);
    printf("%ld  %.2f\n", head->num, head->score);

    while (1)
    {
        printf("\n1.插入\t2.删除\t3.退出\n请选择：");
        scanf("%d", &choice);
        if (choice == 0)
            return 0;
        switch (choice)
        {
        case 1:
            if (head == NULL)
            {
                printf("请输入数据(学号+成绩)：");
                head = create();
                scanf("%ld%f", &head->num, &head->score);
                if ((head->num == 0) && (head->score == 0))
                    exit(0);
                printf("%ld  %.2f\n", head->num, head->score);
            }
            else
            {
                printf("请输入数据(学号+成绩)：");
                stu = (struct Student *)malloc(LEN);
                if (stu != NULL)
                    scanf("%ld%f", &stu->num, &stu->score);
                head = insert(head, stu);
                print(head);
            }
            break;
        case 2:
            if (head == NULL)
            {
                printf("不能对空链表进行删除操作！\n");
                break;
            }
            printf("\n请输入需要删除项的学号：");
            scanf("%ld", &del_num);
            head = del(head, del_num);
            print(head);
            break;
        case 3:
            exit(0);
        }
    }
    return 0;
}

struct Student *insert(struct Student *head, struct Student *stu)
{
    struct Student *p0 = stu;
    struct Student *p1 = head;
    struct Student *p2 = head;
    while (p1->num <= p0->num && p1->next != NULL)
    {
        p2 = p1;
        p1 = p1->next; //比新插入的num小的换，p1移到下一个节点
    }
    if (p0->num < p1->num)
    {
        if (p1 == head)
        {
            p0->next = head;
            head = p0;
        }
        else
        {
            p0->next = p1;
            p2->next = p0;
        }
    }
    else
    {
        p0->next = p1->next; //如果一直到最后都比新插入的小，则把新的放在尾结点后面
        p1->next = p0;
    }
    return head;
};

struct Student *create()
{
    struct Student *head = NULL;
    head = (struct Student *)malloc(LEN);
    if (head != NULL)
        head->next = NULL;
    return head;
};

struct Student *del(struct Student *head, long num)
{
    struct Student *p2 = NULL;
    struct Student *p1 = head;

    while (p1->num != num && p1->next != NULL) //遍历，寻找匹配的节点
    {
        p2 = p1;       //p2是p1的前一结点
        p1 = p1->next; //p1移到下一节点
    }
    if (p1->num != num)
        printf("没有找到数据！\n");
    if (p1->num == num) //找到了
    {
        if (p1 == head) //如果是头节点
        {
            head = head->next;
        }
        else
        {
            p2->next = p1->next; //中间和尾节点
        }
        free(p1);
    }
    return head;
};

void print(struct Student *head)
{
    struct Student *p = NULL;
    p = head;
    while (p != NULL)
    {
        printf("%ld %.2f\n", p->num, p->score);
        p = p->next;
    }
    if (head == NULL)
        printf("链表为空！\n");
}
