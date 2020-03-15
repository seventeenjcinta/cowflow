#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct Node{
    int num;
    int score;
    struct Node *next;
};
typedef struct Node ListNode;
ListNode* CreateList(int n);
void InsertList(ListNode *h,int i,int num,int score, int  n);
void DeleteList(ListNode *h,int i,int n);
void PrintList(ListNode *h);
ListNode* CreateList(int n){
    ListNode *head,*pre,*p;
    int i=1;
    head = (ListNode*)malloc(sizeof(ListNode));//1 空地址 
    pre = head;//2 
    for(i=1;i<=n;i++){
        printf("请输入第%d个学生的学号：",i);
        p = (ListNode*)malloc(sizeof(ListNode));//3 
        scanf("%d",&p->num);
        printf("请输入第%d个学生的分数:",i);
        scanf("%d",&p->score);
        pre->next = p;
        pre = p; 
    }
    p->next = NULL;
    return head;
}
 
void PrintList(ListNode *h){
    ListNode *p;
    p=h->next;//head本指向NULL 
    while(p){//只要不为NULL就继续 
        printf("%d %d\n",p->num,p->score);
        p=p->next; 
    }
}
void main(){
    ListNode *h;
    int i=1,n,score;
    int num;
    while(i){
        printf("1--建立新的链表\n");
        printf("2--添加元素\n");
        printf("3--删除元素\n");
        printf("4--输出当前表中的元素\n");
        printf("0--退出\n");
        scanf("%d",&i);
        switch(i){
        	case 1:
                printf("n=");
                scanf("%d",&n);
                h = CreateList(n);
                printf("\n");
                printf("链表为:\n");
                PrintList(h);
                break;
            case 2:
                printf("请输入插入的位置:");
            	scanf("%d",&i);
                printf("学生的学号为:");
                scanf("%d",&num);
                printf("学生的成绩为:");
                scanf("%d",&score);
                InsertList(h,i,num,score,n);
                printf("\n");
                printf("链表为:\n");
                PrintList(h);
                break;
            case 3:
                printf("请输入要删除的位置:");
                scanf("%d",&i);
                DeleteList(h,i,n);
                printf("\n");
                printf("链表为 :\n");
                PrintList(h);
                break;
            case 4:
            	printf("\n");
                printf("链表为 :\n");
                PrintList(h);
                break;
            case 0:
                return ;
                break;
            default:
                printf("错误!请重试\n\n"); 
        }
    }
}
void InsertList(ListNode *h,int i,int num,int e, int n){
    ListNode *q,*p;
    int j;
    if(i<1 || i>n+1)
        printf("错误!请重试\n");
    else
    {
        j=0;
        p=h;
        while(j<i-1)//进行了i-1次 
		{
            p=p->next;
            j++;
        }
        q = (ListNode*)malloc(sizeof(ListNode)); 
        q->num=num;
        q->score = e;
        q->next = p->next; //达到i 
        p->next =q;//即把q赋给该地点 由上式知原位置结构体加一 
    }
}
void DeleteList(ListNode *h,int i,int n){
    ListNode *p,*q;
    int j;
    int score;
    int num; 
    if(i<1 || i>n)
        printf("错误!请重试.\n");
    else
    {
        j=0;
        p=h;
        while(j<i-1)
		{
            p = p->next;//i-1次 差1 
            j++;
        }
        q = p->next;//达到i。 
        p->next = q->next;//即将下一个结构体赋给原删除结构体处 
        num=q->num;
        score = q->score;
        free(q);
        printf("被删除者的学号为 %d,分数为 %d\n",num,score);//被删除者
    }
}

