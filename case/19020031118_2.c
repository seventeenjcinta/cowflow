#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)
struct Student
    {long num;
    float score;
    struct Student *next;
    };
struct Student *create()    //�����б�
{
    struct Student *head;
    head=(struct Student *)malloc(LEN);
    head->next=NULL;
    return head;
}
struct Student *insert(struct Student *head,struct Student *stu)//��������
{
    struct Student *p=head;
    while(p->next!=NULL&&(stu->num>p->next->num))//�ر�ע��&&���Ҳ���д��,��stu���,���p->next=NULL,p->next->score���г���
        p=p->next;
    if(p->next==NULL) //stu->score������� //��ʵ����������Բ���һ��д
    {
        p->next=stu;     //���ӽ��
        stu->next=NULL;  //����һ�䲻���Խ���λ��
    }
    else
    {
        stu->next=p->next;
         p->next=stu; //���ӽ��
    }
    return head ;
    }
struct Student *del(struct Student *head,long del_num,int n)
{
    struct Student *p1,*p2;
    int flag=0; //�Ƿ�������ѧ�ŵ�ѧ��
    p1=head;
    if(head->next==NULL) return n;  //����ǿ��б�
    else
    {
        while((del_num!=p1->num)&&(NULL!=p1->next))
        {
            p2=p1;
            p1=p1->next;
            if(del_num==p1->num)
            {
                if(head==p1->next) head=p1->next;
                else p2->next=p1->next;
                free(p1);
                flag=1;
                n--;
            }
        }
        if(!flag) printf("***There is not this student in the list.\n");//û�д�ѧ��������
    }
    return n;
}
void print(struct Student *head,int n)              //�������
{
    struct Student *p;
    p=head->next;    //����p=head;
    if(p!=NULL)      //�����head!=NULL,����!p,�����return����������
    {
        printf("**********The list has %d records:*********\n",n);
        printf("*   number    score                      *\n");
        do
        {
        printf("*   %ld%11.2f                    *\n",p->num,p->score);
            p=p->next;
        }while(p!=NULL);
    }
    else printf("There is no record.\n");
        printf("******************************************\n");
    printf("\n");
}
int main()
{
    struct Student *create();
    void print(struct Student *head,int n);
    struct Student *insert(struct Student *head,struct Student *stu);
    struct Student *del(struct Student *head,long del_num,int n);
    struct Student *head,*p;
    long del_num;
    int choice;
    int n=0;
    printf("Please input records:(0 for exit)\n");
    head=create();
    do
    {
        printf("1. Insert\t2. Delete\t0.Exit\n");
        choice=-1;
        printf("Your Choice:");
        scanf("%d",&choice);
        switch(choice)
        {
            case 1: printf("Please input number and score:");
                    p=(struct Student *)malloc(LEN);
                    scanf("%ld%f",&p->num,&p->score);
                    n++;
                    head=insert(head,p);    //����create��������������
                    printf("Inserted:%ld\n",p->num);
                    printf("\n");
                    print(head,n);   //����ȥָ��head���������ѧ����ѧ�źͳɼ�
                    break;
            case 2: printf("Please input number:");
                    scanf("%ld",&del_num);
                    n=del(head,del_num,n);  //����delete������ɾ������
                    printf("\n");
                    print(head,n);  //����ȥָ��head���������ѧ����ѧ�źͳɼ�
         }
    }while(choice!=0);  //����0�˳�
    return 0;
}
