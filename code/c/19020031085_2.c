#include <stdio.h>
#include <stdlib.h>
#define LEN  sizeof(struct student)
struct student
{
    long num;
    double score;
    struct student *next;
};
int n=0;
struct student *creat()
{
	void arr(struct student * head);
    int m;//m用来接收选择的条件
    int Y;//Y用来接收想要删除的学号
    int X;//X用来循环中所有数据的次数
    struct student * head;
    struct student *p1,*p2,*p3;
    p3=p1=p2=head=(struct student *)malloc(LEN);
	head->next=NULL;
    printf("Please inter num and score:");
    scanf("%ld%lf",&p1->num,&p1->score);
    printf("\n");
    printf("1:INSTER   2:DELETE    0:EXIT\n");
    printf("Please chose:");
    scanf("%d",&m);
    while(1)
    {
        if(m==1)//选择1增加链表的长度
        {
            n=n+1;
            if(n==0)//全部删除后重新构造
            {
                p1=p2=head=(struct student *)malloc(LEN);
                head->next=NULL;
                printf("enter:");
                scanf("%ld%lf",&p1->num,&p1->score);
            }
            else//在有数据的情况下增加长度
            {
                p1=(struct student*)malloc(LEN);//创建一个新的空间
                printf("enter:");
                scanf("%ld%lf",&p1->num,&p1->score);
                if(p1->num<=p2->num)
                {
                    p1->next=p2;
                    head=p1;
                }
                else
                {

                    while(p2->next!=NULL&&p1->num>p2->next->num)
                    {
                        p2=p2->next;
                    }
                    p1->next=p2->next;
                    p2->next=p1;
                }
            }
        }
        else if(m==2)//删除节点
        {
            p2=head;
            p3=head;
            printf("which record do you want to del:");
            scanf("%ld",&Y);
            for(X=0;X<=n;X++)//循环寻找删除点
            {
                if(Y==p2->num)//头节点
                {
                    head=head->next;
                    free(p2);
                    n--;
                    break;
                }
                else if(Y==p3->num)//中间和尾节点
                {
                    p2->next=p3->next;
                    free(p3);
                    n--;
                    break;
                }
                p2=p3;
                p3=p3->next;
                if(X==n)//找不到需要删除的数据
                {
                    printf("There don't have the record\n");
                    break;
                }
            }
            p2=head;
        }
        else if(m==0)
            return ;
        arr(head);
        printf("\n");
        printf("1:INSTER   2:DELETE    0:EXIT\n");
        printf("Please chose:");
        scanf("%d",&m);
    }
    return 0;
}
void arr(struct student * head)//打印
{
    struct student *p;
    if(n!=-1)
    {
        printf("\nNow,These %d records are:\n",n+1);
        p=head;
        if(head!=NULL)
        {
            do
            {
                printf("%ld %5.1lf\n",p->num,p->score);
                p=p->next;
            }while(p!=NULL);
        }
    }
    if(n==-1)
        printf("There have no records\n");
}
int main()
{
    struct student *head;
    head=creat();
    return 0;
}
