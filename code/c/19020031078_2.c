#include<stdio.h>
#include<stdlib.h>   //�ṩmalloc����ԭ��
#define LEN sizeof(struct stud)
int n;   //�����ж��ٸ�����
struct stud
{
    long num;
    float score;
    struct stud *next;
};


struct stud *insert(struct stud *head,struct stud *stu)  //���в������ �����������Ԫ�ص���ʼ��ַ
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
    }                 //��p1ֱ�����ڵ���stu��ѧ��
    if(p1->num >= stu->num)
    {
        stu->next = p1;
        if(p1 != head)
            p2->next = stu;  //�����м䴦��
        else
            head = stu;      //��ͷ����
    }
    else  //��β����
    {
        p1->next = stu;
    }
    n++;
    return(head);
}


struct stud *del(struct stud *head,int num)  //����ɾ������
{
    struct stud *p1,*p2,*temp;
    p1 = head;
    while(p1->num < num&& p1->next != NULL)
    {
        p2 = p1;
        p1 = p1->next; //�ҵ��ٽ���λ�õ�ѧ��  p2��¼ǰһ��ѧ��
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
        }        //�����ͷ
        else if(p1!=head && p1->next != NULL)
        {
            temp = p1;    //��¼tempΪҪɾ����Ԫ�أ�����ɾ��
            p1 = p1->next;  //����Ҫɾ����Ԫ�أ�����һ��
            p2->next = p1;   //��ɾ��Ԫ�ص�ǰһ�� ָ�� ��ɾ��Ԫ�ص�ǰһ��
            free(temp);
        }    //�����м�
        else if(p1->next == NULL)
        {
            p2->next = NULL;
            free(p1);
        }   //�����β
    }
    n--;
    return(head);
}


int  print(struct stud * head) //��ӡ�������
{
    if(head == NULL)
    {
        printf("\nSorry! No record!\n");
        return(0);
    }                     //�������Ϊ�գ�ֱ�����û�м�¼

    struct stud *p1;
    p1 = head;
    printf("\nNow record!\n");
    printf("Total students: %d\n",n);
    do
    {
        printf("%d %.1f\n",p1->num,p1->score);
        p1 = p1->next;
    }while(p1 != NULL); //ע���жϵ���p1������p1ָ���next,p1��ʱ����ѧ�ŵ�ַ����ʱ����next�������ֵ
    return(0);
}


struct stud *creat() //������ʼ����
{
    struct stud *head = NULL;
    struct stud *p1;
    printf("Please enter the information of students:\n");
    p1 = (struct stud*)malloc(LEN);
    scanf("%d%f",&p1->num,&p1->score);
    p1->next = NULL;    //�����ʼ����
    while(p1->num != 0)
    {
        head = insert(head,p1); //���в���
        p1 = (struct stud*)malloc(LEN);    //������һ������
        scanf("%d%f",&p1->num,&p1->score);  //������һ������
        p1->next = NULL;
    }
    free(p1);
    printf("----Create finished!----\n");
    return(head);
}


void main()
{
    int choice=-1;  //���в��룬ɾ����ѡ����
    int num;    //��Ҫɾ����ѧ��
    struct stud *stu;  //��Ҫ�����ѧ���ṹ�����
    struct stud *head;
    head = creat();
    printf("Your create data are:\n");
    print(head);

    printf("\n1.INSERT\t 2.DELETE\t 3.EXIT\n");   //���в��룬ɾ������
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
