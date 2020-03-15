#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct student)                                 //LEN:��Ϊ�ṹ��struct student�ĳ���

struct student
{
    long num;
    float score;
    struct student *next;
};
int n=0;                                                           //nΪȫ�ֱ�����������ֵΪ0������������ʹ����

struct student *create()                                           //����һ��create����������ָ�����ͣ����˺�������һ��ָ��ֵ����ָ��һ��struct student��������
{
    struct student *insert(struct student *head,struct student *stud);
    struct student *head,*p;
    p=(struct student *)malloc(LEN);                               //ʹpָ�򿪱ٵ��µ�Ԫ����ǿ������ת����malloc���ص��ǲ�ָ���κ��������ݵ�ָ�룬��void*���ͣ�
    scanf("%ld,%f",&p->num,&p->score);                             //�����1��ѧ����ѧ�źͳɼ�
    head=NULL;                                                     //head���Ϊ��ָ��
    while(p->num!=0)
    {
        head=insert(head,p);
        p=(struct student *)malloc(LEN);                           //���ٵڶ�����Ԫ��ʹpָ���������ٶ�̬�洢��������ʼ��ַ����p1��
        scanf("%ld,%f",&p->num,&p->score);
    }
    free(p);                                                       //�ͷŶ�̬�洢�ռ�
    return(head);                                                  //create�����ķ���ֵ��������������ĵ�1���ڵ�ĵ�ַ
};

void print(struct student *head)                                   //����print�������������
{
    struct student *p;
    p=head;
    if(head!=NULL)                                                 //�����ǿձ�
    {
        printf("\nNow,These %d records are:\n",n);
        do
        {
            printf("%ld %5.1f\n",p->num,p->score);                 //���һ������е�ѧ�źͳɼ�
            p=p->next;                                             //p->next��pָ��Ľ���е�next��Ա������1������е�next��Ա��p->next�д���˵�2�����ĵ�ַ����ˣ�p=p->next�������ǽ�pԭ����ָ��Ľ����next��ֵ����p��ʹpָ����һ�����
        }while(p!=NULL);                                           //��p���ǡ��յ�ַ��
    }
    else
        printf("\nSorry! No records now!\n");
}

struct student *insert(struct student *head,struct student *stu)   //����һ��������ĺ�����p0ָ��Ҫ����ĵ�Ԫ
{
    struct student *p0=stu,*p1=head,*p2;
    if(head==NULL)
    {
        head=p0;
        p0->next=NULL;
    }                                                              //������Ϊ�գ�����p0ָ��ĵ�Ԫ��ʹ֮��Ϊ��㡣��ʱ����ֻ��һ���ڵ�
    else                                                           //������ǿ�
    {
        while(p0->num>p1->num&&p1->next!=NULL)                     //����
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
            p0->next=p1;                                            //�ϲ�ͬ����
         }
        else                                                        //��p0->num>p1->numʱ
        {
            p1->next=p0;
            p0->next=NULL;                                          //�������
        }
    }
    n++;                                                            //����һ����㣬n��1
    return(head);
};

struct student *del(struct student *head,long num)                  //����һ��ɾ�����ĺ���
{
    struct student *p1=head,*p2;
    if(head==NULL)                                                  //��Ϊ������
    {
        printf("\nList is null!\n");
        return(head);
    }
    else                                                            //������ǿ�
    {
        while(num!=p1->num&&p1->next!=NULL)
        {
            p2=p1;
            p1=p1->next;
        }
        if(num==p1->num)                                            //������
        {
            if(p1==head)                                            //��ͷ
                head=p1->next;
            else                                                    //�м䡢��β���Ժϲ���p1->num:ָp1ָ��Ľ��������ݣ�p1->next:ָp1ָ��Ľ�����һ������������
                p2->next=p1->next;
            printf("Deleted:%ld\n",num);
            n--;                                                    //ɾ��һ����㣬n��1
        }
        else                                                        //û����
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
    do                                                                //ʵ���ظ�����
    {
        printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");
        choice=-1;
        printf("Please Choose:");
        scanf("%d",&choice);
        getchar();                                                    //�̻��з�
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
