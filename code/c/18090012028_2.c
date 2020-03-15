#include <stdio.h>
#include <stdlib.h>
#define LEN sizeof(struct student)
int n = 0;		//�����н��ĸ��� 
struct student           //�����ṹ������struct student
{
	long num;
	float score;
	struct student *next;
};
void meau()				//��ӡ�˵����� 
{
	printf("\n1.INSERT \t2.DELETE \t0.EXIT\n");
}
struct student *insert(struct student *head,struct student *stu)  //�������Ԫ�� 
{
	struct student *p0 = stu,*p1 = head,*p2;
	if(head == NULL)  //�ձ�,����ͷ�ڵ�
	{
		head = p0;
		p0->next = NULL;
	}
	else
	{	
		//printf("%d!%d",head->next,head);
		while(p0->num > p1->num && p1->next != NULL)
		{
			p2 = p1;
			p1 = p1->next;
		}
		if(p0->num <= p1->num)  //�����С ��ǰ�� 
		{
			if(p1 == head)//��ͷ֮ǰ 
			{
				head = p0;
				p0->next = p1;
			}
			else//�м� 
			{
				p2->next = p0;
				p0->next = p1;
			}
		}
		else//����Ĵ�ź���  ��β֮�� 
		{
			p1->next = p0;
			p0->next = NULL;
		}
	}
	n++;
	return (head);
}
struct student *creat(void)			//�������� 
{
	struct student *p,*head;
	head =  NULL;
	p = (struct student *)malloc(LEN);
	scanf("%ld,%f",&p->num,&p->score);
	while(p->score != 0)
	{
		head = insert(head,p);
		p = (struct student *)malloc(LEN);
		scanf("%ld,%f",&p->num,&p->score); 
	}	
	if(p->score == 0) free(p);	
	return (head);
}
struct student *del(struct student *head,long num)       //ɾ��Ԫ�� 
{
	int i = 0;
	struct student *p1 = head,*p2;
	while(num != p1->num && p1->next != NULL)
	{
		p2 = p1;
		p1 = p1->next;
	}
	
	if(p1->next == NULL)//δ�ҵ����޲������� head
	{
		printf("Not,found!\n");
		return (head);
	}
	
	if(p1 == head)//ɾ��Ԫ��Ϊͷ���		
	{
		head = p1->next;
		free(p1);
		n--;
	}
	else//��Ԫ��Ϊ�м���
	{
		p2->next = p1->next;
		n--;
	}

	return (head);
}

void print(struct student *p)				//��ӡ���� 
{
	int i;
	if(n == 0) printf("\nNow,there is no record!\n");
	else if(n == 1) printf("\nNow,there %d record is:\n",n);	
	else printf("\nNow,there %d records are:\n",n);	
	while(p)//for(i = 0;i < n;i++)	�ɸ���ȫ�ֱ���n��������� 
	{
		printf("%-3ld%5.1f\n",p->num,p->score);
		p = p->next;
	}
	printf("\n");
}
int main() 
{
	struct student *head,*p;
	long del_num;
	int choice; 
	
	printf("******Create list!******\n");
	printf("Please input records:<0,0 for exit>\n");
	head = creat();//�������� 
	print(head);//��ӡ���� 
	
	do
	{
		meau();//��ӡ�˵� 
		choice = -1;
		printf("\nPlease choose:");
		scanf("%d",&choice);
		
		switch(choice)
		{
			case 1:
					printf("Please input num and score:");
					p = (struct student *)malloc(LEN);
					scanf("%ld,%f",&p->num,&p->score);
					head = insert(head,p);
					printf("Inserted: %ld\n",p->num);
					print(head);
					break;
			case 2:
					printf("Please input num:");
					scanf("%ld",&del_num);
					head = del(head,del_num);
					print(head);
					break;
		}
	}while(choice != 0);

	return 0;
}
