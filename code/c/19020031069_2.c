#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct stud)
//������������ڵ㡢ɾ���ڵ� 
struct stud 
{
	long num;
	float score;
	struct stud * next;
};
int n=0;//ȫ�ֱ������ڽ��д������� 
struct stud * insert (struct stud *head,struct stud *p0)
{
	struct stud *p1=head,*p2=NULL;
	if(head==NULL)
		{
			head=p0;
			p0->next=NULL; 
		}
	else
	{	while(p1->num<p0->num&&p1->next!=NULL)//������ѧ�Ŵ��ڵ�ǰѧ��---���� &&һֱ�Ƶ�������һ�� 
		{
			p2=p1;
			p1=p1->next;
		}
		if(p1->num>=p0->num) //!!!����>=p0->num�Ľڵ㣬�����뵽�õ�֮�� 
		{
			if(p1==head)//���뵽��ͷǰ�� 
			{
				head=p0;
				p0->next=p1;
			}
			else		//���뵽�м�
			{	
				p2->next=p0;
				p0->next=p1;
			}
		}
		else //����next==NULL��p1��ѧ��С������ѧ�� 
		{
			if(p1==head)//����ֻ��һ���ڵ���Ҫ���뵽��ͷ���� 
			{
				p1->next=p0;
				p0->next=NULL;
			}
			else	   //���뵽��β�ĺ��� 
			{
				p1->next=p0;
				p0->next=NULL;
			}	
		}
	}
	n++; 
	return head;		
}
struct stud* create () //0,0---ֹͣ���� 
{
 
	struct stud *p,*head=NULL;
	p=(struct stud *)malloc(LEN);//�˴��� 
	scanf("%ld%f",&p->num,&p->score);
	while(p->num!=0&&p->score!=0)
	{
		head=insert(head,p);
		p=(struct stud*)malloc(LEN);
		scanf("%ld%f",&p->num,&p->score);			
	}
	free(p); //�˴� 
	return head;
}
struct stud * del(struct stud *head, int num)
{
	struct stud *p1=head,*p2;
	if(head==NULL)
	{
 		printf("List is null!\n");
 		return head;
 	}
	while(num>p1->num&&p1->next!=NULL)//���ѧ��n�����ƣ�ֱ�������һ���ڵ㣻 
	{
		p2=p1;
		p1=p1->next;
	}
	if(num==p1->num)
	{
		{if(p1==head)
			head=p1->next;
		else 	
			p2->next=p1->next;} 
		n--;//��Ҫ���� 
		free(p1);//�˴� 
		printf("Deleted:%ld\n",num);
	}
	else 
		printf("Not find\n");	
	return head;
}
void put(struct stud *head)
{
	int i;
	struct stud *p=head;
	if(head==NULL)	printf("Sorry!No records now\n");
	else
		printf("There are %d records are:\n",n);
		for(i=0;i<n;i++,p=p->next)
		{		
			printf("%ld %.1f\n",p->num,p->score);
		}
}
int main()
{
	printf("*****creat list*****");
	printf("������ѧ����ɼ���(0,0�������)\n");
	struct stud *head=NULL,*p;
	int choice,num;
	head=create(); 
	put(head);
	do{
		choice=-1;
		printf("\n1.INSERT\t2.DELETE\t0.EXIT\n");
		printf("Please Choose: ");
		scanf("%d",&choice);
		//getchar();		
		switch(choice)
		{
			case 1:printf("Please input num and score:");  
				   p=(struct stud *)malloc(LEN);
				   scanf("%ld%f",&p->num,&p->score);
				   head=insert(head,p);
				   put(head);
				   break;//��Ҫ����ŶŶŶ������ 
			case 2:printf("Please input num:");
				   scanf("%ld",&num);
				
				   head=del(head,num);
				   put(head);
				  // break;	����Ҫ			
		}
	}while(choice!=0);
	return 0;
}
