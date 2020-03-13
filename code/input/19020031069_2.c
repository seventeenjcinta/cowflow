#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct stud)
//创建链表、插入节点、删除节点 
struct stud 
{
	long num;
	float score;
	struct stud * next;
};
int n=0;//全局变量便于进行处理数据 
struct stud * insert (struct stud *head,struct stud *p0)
{
	struct stud *p1=head,*p2=NULL;
	if(head==NULL)
		{
			head=p0;
			p0->next=NULL; 
		}
	else
	{	while(p1->num<p0->num&&p1->next!=NULL)//当输入学号大于当前学号---后移 &&一直移到倒数第一个 
		{
			p2=p1;
			p1=p1->next;
		}
		if(p1->num>=p0->num) //!!!存在>=p0->num的节点，即插入到该点之后 
		{
			if(p1==head)//插入到表头前面 
			{
				head=p0;
				p0->next=p1;
			}
			else		//插入到中间
			{	
				p2->next=p0;
				p0->next=p1;
			}
		}
		else //由于next==NULL且p1的学号小于输入学号 
		{
			if(p1==head)//表中只有一个节点且要插入到表头后面 
			{
				p1->next=p0;
				p0->next=NULL;
			}
			else	   //插入到表尾的后面 
			{
				p1->next=p0;
				p0->next=NULL;
			}	
		}
	}
	n++; 
	return head;		
}
struct stud* create () //0,0---停止建立 
{
 
	struct stud *p,*head=NULL;
	p=(struct stud *)malloc(LEN);//此处啊 
	scanf("%ld%f",&p->num,&p->score);
	while(p->num!=0&&p->score!=0)
	{
		head=insert(head,p);
		p=(struct stud*)malloc(LEN);
		scanf("%ld%f",&p->num,&p->score);			
	}
	free(p); //此处 
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
	while(num>p1->num&&p1->next!=NULL)//如果学号n，后移，直至到最后一个节点； 
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
		n--;//不要忘记 
		free(p1);//此处 
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
	printf("请输入学号与成绩：(0,0代表结束)\n");
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
				   break;//不要忘记哦哦哦！！！ 
			case 2:printf("Please input num:");
				   scanf("%ld",&num);
				
				   head=del(head,num);
				   put(head);
				  // break;	不需要			
		}
	}while(choice!=0);
	return 0;
}
