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
    head = (ListNode*)malloc(sizeof(ListNode));//1 �յ�ַ 
    pre = head;//2 
    for(i=1;i<=n;i++){
        printf("�������%d��ѧ����ѧ�ţ�",i);
        p = (ListNode*)malloc(sizeof(ListNode));//3 
        scanf("%d",&p->num);
        printf("�������%d��ѧ���ķ���:",i);
        scanf("%d",&p->score);
        pre->next = p;
        pre = p; 
    }
    p->next = NULL;
    return head;
}
 
void PrintList(ListNode *h){
    ListNode *p;
    p=h->next;//head��ָ��NULL 
    while(p){//ֻҪ��ΪNULL�ͼ��� 
        printf("%d %d\n",p->num,p->score);
        p=p->next; 
    }
}
void main(){
    ListNode *h;
    int i=1,n,score;
    int num;
    while(i){
        printf("1--�����µ�����\n");
        printf("2--���Ԫ��\n");
        printf("3--ɾ��Ԫ��\n");
        printf("4--�����ǰ���е�Ԫ��\n");
        printf("0--�˳�\n");
        scanf("%d",&i);
        switch(i){
        	case 1:
                printf("n=");
                scanf("%d",&n);
                h = CreateList(n);
                printf("\n");
                printf("����Ϊ:\n");
                PrintList(h);
                break;
            case 2:
                printf("����������λ��:");
            	scanf("%d",&i);
                printf("ѧ����ѧ��Ϊ:");
                scanf("%d",&num);
                printf("ѧ���ĳɼ�Ϊ:");
                scanf("%d",&score);
                InsertList(h,i,num,score,n);
                printf("\n");
                printf("����Ϊ:\n");
                PrintList(h);
                break;
            case 3:
                printf("������Ҫɾ����λ��:");
                scanf("%d",&i);
                DeleteList(h,i,n);
                printf("\n");
                printf("����Ϊ :\n");
                PrintList(h);
                break;
            case 4:
            	printf("\n");
                printf("����Ϊ :\n");
                PrintList(h);
                break;
            case 0:
                return ;
                break;
            default:
                printf("����!������\n\n"); 
        }
    }
}
void InsertList(ListNode *h,int i,int num,int e, int n){
    ListNode *q,*p;
    int j;
    if(i<1 || i>n+1)
        printf("����!������\n");
    else
    {
        j=0;
        p=h;
        while(j<i-1)//������i-1�� 
		{
            p=p->next;
            j++;
        }
        q = (ListNode*)malloc(sizeof(ListNode)); 
        q->num=num;
        q->score = e;
        q->next = p->next; //�ﵽi 
        p->next =q;//����q�����õص� ����ʽ֪ԭλ�ýṹ���һ 
    }
}
void DeleteList(ListNode *h,int i,int n){
    ListNode *p,*q;
    int j;
    int score;
    int num; 
    if(i<1 || i>n)
        printf("����!������.\n");
    else
    {
        j=0;
        p=h;
        while(j<i-1)
		{
            p = p->next;//i-1�� ��1 
            j++;
        }
        q = p->next;//�ﵽi�� 
        p->next = q->next;//������һ���ṹ�帳��ԭɾ���ṹ�崦 
        num=q->num;
        score = q->score;
        free(q);
        printf("��ɾ���ߵ�ѧ��Ϊ %d,����Ϊ %d\n",num,score);//��ɾ����
    }
}

