#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct Node)
//单向有序列表的创建,插入,与删除
struct Node
{
    long num;
    float score;
    struct Node *next;
};
int n;
struct Node *del(struct Node *head,int del_num)             //delete
{
    struct Node *p1,*p2;
    p1 = head;
    if(head == NULL)
    {printf("Don't find this number!\n");
    return head;}
    while(p1->num != del_num && p1->next != NULL)
    {
        p2 = p1;
        p1 = p1->next;
    }
    if(p1->next != NULL)
    {
        if(p1 == head)
        {
            free(p1);
            n --;
            head = p1->next;
        }
        else
        {
            free(p1);
            n --;
            p2->next = p1->next;
        }
    }
    else
        {
            if(p1->num == del_num)
            {
                if(p1 == head)
                {
                free(p1);
                head = NULL;
                }
                else
                {
                    free(p1);
                    p2->next = NULL;
                }
            }
            else printf("Don't find this number!\n");
        }

    return head;


}
struct Node *insert(struct Node *head,struct Node *p)                   //insert
{
    struct Node *p0 = p;
    struct Node *p1 = head;
    struct Node *p2;
    if(head == NULL)
    {
        head = p0;
        p0->next = NULL;
    }
    else
    {
        while(p0->num > p1->num && p1->next != NULL)
        {
            p2 = p1;
            p1 = p1->next;
        }
        if(p0->num <= p1->num)
        {
            if(p1 == head)          //beginning
            {
                head = p0;
                p0->next = p1;
            }
            else                    //mid
            {
                p2->next = p0;
                p0->next = p1;

            }
        }
        else                        //end
        {
                p1->next = p0;
                p0->next = NULL;
        }

    }
    return (head);
}
struct Node *create()                   //create
{
    struct Node *head;
    struct Node *p;
    head = NULL;
    p =(struct Node*)malloc(LEN);
    scanf("%ld,%f",&p->num,&p->score);
    while(p->num != 0)
    {
        head = insert(head,p);
        p = (struct Node*)malloc(LEN);
        scanf("%ld,%f",&p->num,&p->score);
    }
    return (head);
}
void print(struct Node *head)               //print
{
    struct Node *p;
    p = head;
    if(head != NULL)
        do
        {
            printf("%ld %5.1f\n",p->num,p->score);
            p = p->next;
        }while(p != NULL);
    else
        printf("This is an empty list!");
}
int main()
{
    long del_num;
    int choice;
    struct Node *head,*p;

    printf("*****Create List!*****\n");
    printf("Please input record : (0,0 for exit)\n");
    head = create();
    print(head);
    do
    {
        printf("\n1.INSERT\t2.DELETE\t3.EXIT\n");
        choice = -1;
        scanf("%d",&choice);
        getchar();
        switch(choice)
        {
            case 1: printf("Please input number and score:");
                    p = (struct Node *)malloc(LEN);
                    scanf("%ld,%f",&p->num,&p->score);
                    head = insert(head,p);
                    printf("Inserted:%ld\n",p->num);
                    print(head);
                    break;
            case 2:
                    printf("Please input number:");
                    scanf("%ld",&del_num);
                    head = del(head,del_num);
                    print(head);
                    break;


        }
    }while(choice != 3);
return 0;
}
