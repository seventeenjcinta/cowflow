#include<stdio.h>
#include<stdlib.h>

int sum = 0;

struct student
{
    long num;
    float score;
    struct student * next;
};

void print(struct student * head)
{
    struct student * p1;
    p1 = head;
    if (head == NULL) return;
    else
    {
        do
        {
            printf("%-4d%-.2f\n", p1->num, p1->score);
            p1 = p1->next;
        }while(p1 != NULL);
    }
}

struct student *insert(struct student * head, struct student * p)
{
    struct student * p1, * p2;
    p1 = head;
    if(head == NULL)
    {
        p->next = head;
        return p;
    }
    if(p->num <= head->num)
    {
         p->next = head;
         return p;
    }
    else
    {
        while(p->num > p1->num&&p1->next!=NULL)
        {
            p2 = p1;
            p1 = p1->next;
        }
        if(p1->next == NULL && p->num > p1->num)
        {
            p1->next = p;
            return head;
        }
        else
        {
            p2->next = p;
            p ->next = p1;
            return head;
        }
    }

}

struct student *create()
{
    struct student * head;
    head = NULL;
    return head;
}

struct studen *del(struct student *head, long num)
{
    struct student*p1, *p2;
    p1 = head;
    if (head == NULL)
    {
        printf("空表无法删除！\n");
        return(head);
    }
    if(num == head->num)
    {
        head = p1->next;
        free(p1);
        return head;
    }
    while(num!=p1->num&&p1->next!=NULL)
    {
        p2 = p1;
        p1 = p1->next;
    }
    if(num!=p1->num)
    {
        printf("没找到需要被删除的数据！\n");
        return head;
    }

    else
    {
        p2->next = p1->next;
        free(p1);
        sum--;
        return head;
    }



}

void main()
{
    struct student *head, *p;
    long del_num;
    int choice;
    int LEN = sizeof(struct student);

    printf("*****Create List!*****\n");
    printf("Please input records : (0 for exit)\n");
    head = create();
    print(head);

    do
    {
        printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");

        printf("Please Choose:\n");
        scanf("%d", &choice);
        getchar();
        switch(choice)
        {
        case 1:
            printf("Please input a num and a score:");
            p = (struct student *)malloc(LEN);
            scanf("%ld%f", &p->num, &p->score);
            p->next = NULL;
            head = insert(head, p);
            printf("Inserted: %ld\n", p->num);
            print(head);
            break;
        case 2:
            printf("Please input a num:");
            scanf("%ld", &del_num);
            head = del(head, del_num);
            print(head);
        }
    }while(choice!=0);
}
