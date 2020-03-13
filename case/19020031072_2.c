#include<stdio.h>
#include<stdlib.h>
#define LEN sizeof(struct Student)//用sizeof测量结构体struct Student的长度，防止浪费存储空间 
struct Student
{
	long num;
	float score;
	struct Student * next;
};
int n=0;
struct Student *insert(struct Student *head,struct Student *stud)//用来插入元素的子函数 
{
	struct Student *p1,*p2;
	p2=NULL;
	p1=head;
	if(head==NULL)//若为空链表，则插入的元素为仅有的元素 
	{
		head=stud;
		stud->next=NULL;
	}
	else
	{
		while(p1->num<stud->num&&p1->next!=NULL)//用来找到待插入的位置 
		{
			p2=p1;
			p1=p1->next;	
		} 
		if(p1->num<stud->num)//待插入的位置为链表的末尾 
		{
			p1->next=stud;
			stud->next=NULL;
		}
		else
		{
			if(p1==head)//待插入的位置为链表的开头 
			{
				stud->next=head;
				head=stud;
			}
			else//待插入的位置为链表的中间部分 
			{
				p2->next=stud;
				stud->next=p1;
			}
		}
	}
	n++;//每插入一个数，链表的元素数量加一 
	return(head);
}
struct Student *del(struct Student *head,long num)//用来删除元素的子函数 
{
	struct Student *p1,*p2;
	if(head==NULL)//若为空表，则没有元素可以删除 
	{
		printf("List is null!\n");
		return(head);
	}
	p1=head;
	while(p1->num!=num&&p1->next!=NULL)//用来找到待删除的元素 
	{
		p2=p1;
		p1=p1->next;
	}
	if(num==p1->num)//若存在链表中存在待删除的数 
	{
		if(p1==head)//若待删除的元素为起始元素 
		{
			head=p1->next;
			free(p1);
		}
		else if(p1->next!=NULL)//若待删除的元素为末尾元素 
		{
			p2->next=p1->next;
			free(p1);
		}
		else//若待删除的元素在链表的中间部位 
		{
			p2->next=NULL;
			free(p1);
		}
		printf("Deleted %d\n",num);
	}
	else//若链表中不存在待删除元素 
	{
		printf("\nThere is no matching data!");
		n++;//若没有删除元素，则链表中元素数量不变 
	}
	n--;
	return(head);
}
struct Student *creat(struct Student *head)//用来创建链表的子函数 
{
	struct Student *p;
	while(1)
	{
		p=(struct Student *)malloc(LEN);
		scanf("%ld %f",&p->num,&p->score);
		p->next=NULL;
		if(p->num==0&&p->score==0)//若读入的数据为0 0 
		{
			free(p);//释放p的存储空间 
			break;
		}
		else
			head=insert(head,p);//将待插入的元素插入，并进行有序正向排序 
	}
	return(head);
}
void print(struct Student *head)//用来将链表输出的子函数 
{
	int i;
	struct Student *p=head;
	printf("\nNow there %d records are:\n", n);
	for(i=0;i<n;i++)
	{
		printf("%-5d %-5.2f\n",p->num,p->score);
		p=p->next;
	}
}
int main()
{
	struct Student *head,*p;
	long del_num;//del_num为链表中要被删除的元素的num 
	int choice;
	printf("*****Creat list!*****\n");
	printf("Please input records : (0 0 for exit)\n");//若输入0 0则停止输入num和score 
	head=NULL;
	head=creat(head);//创建链表 
	print(head);//输出链表 
	do
	{
		printf("\n1. INSERT\t2. DELETE\t0. EXIT\n");
		printf("Please Choose: ");
		scanf("%d",&choice);
		switch(choice)
		{
			case 1://选择1的时候把数插入 
				printf("Please input num and score:");
				p=(struct Student *)malloc(LEN);
				scanf("%ld %f",&p->num,&p->score);//读入要插入元素的num和score 
				printf("Inserted: %ld\n",p->num);
				head=insert(head,p);//插入新的元素，并将新的链表重新有序正向排序 
				print(head);//将链表各元素输出 
				break;
			case 2:
				printf("Please input num: ");
				scanf("%ld",&del_num);//读入要被删除元素的num 
				head=del(head,del_num);//将特定元素删除，并将新的链表重新有序正向排序 
				print(head);//将链表各元素输出 
				break;		
		}
	}while(choice!=0);//当choice不为0的时候进行循环 
	return 0;
}
