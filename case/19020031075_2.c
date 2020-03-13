#include <stdio.h>
#include <stdlib.h> 
typedef int Elemtype;
typedef struct Node
{
	Elemtype data;
	struct Node *next;
}
Node,*LinkList;
///����ͷ��� 
void create_ListHead(LinkList *pHead)	//��ʼ�����������ö���ָ��	�������û�жԲ������м�� 
{	
*pHead=(LinkList)malloc(sizeof(Node));
	if(NULL!=pHead)
		(*pHead)->next=NULL;
	else
		printf("�����ڴ�ʧ��\n"); 
} //�����½�� 
LinkList get_newNode(Elemtype e)
{
	LinkList newNode=(LinkList)malloc(sizeof(Node));
	if(NULL!=newNode)
	{		
newNode->data=e;
		newNode->next=NULL;
		return newNode;	
}
else
	{
 		printf("�����ڴ�ʧ��\n");
		return 0;
	} 
}//ͷ��
void push_Front(LinkList *L,Elemtype e)
{
	LinkList p;
	p=get_newNode(e);
	p->next=(*L)->next;
	(*L)->next=p;
 }
//β��
void push_Back(LinkList *L,Elemtype e)
{
	LinkList tail;
 	tail=*L;
	while(NULL!=tail->next)    //��tailָ�����һ�����
 		tail=tail->next;
	tail->next=get_newNode(e);
}
//ͷɾ 
void pop_Front(LinkList *L)
{	
LinkList p;
	p=(*L)->next;	if(p!=NULL)
 	{		
(*L)->next=p->next;
		free(p);
		p=NULL;		//�����ͷ��ڴ��ָ�븳ֵ�ɿյ�ϰ�ߣ���ֹ���ΪҰָ�� 		
printf("OK\n");
}
} 
//βɾ 
void pop_Back(LinkList *L)
{
	LinkList p,q;	p=*L;
	while(p->next!=NULL)
	{
		q=p;
		p=p->next;
	}
	free(p);
	p=NULL;
	q->next=NULL;
	printf("OK\n");
  } 
//ָ��Ԫ��ɾ�� 
void delete_List(LinkList *L,Elemtype key)
{
	LinkList p,q;
	for(p=*L;NULL!=p->next;p=p->next)
	{
		if(p->next->data==key)
		{
			q=p->next;		//��Ϊ���Ҫ�ͷű�ɾ���Ľ�㣬�����ȼ�¼���� 			p->next=q->next;
			free(q);
			q=NULL;
			printf("ɾ���ɹ�\n");
			return;
		}
	}
 	printf("ɾ��ʧ��\n");
 }
//��ӡ 
void print_List(LinkList *L)
{
	LinkList p;
	p=(*L)->next;	if(p==NULL)
		printf("NULL\n");
	else
	{
		while(NULL!=p)
		{
		 	printf("%d ",p->data);
		 	p=p->next;
		}
	 	printf("\n");
 	}
}
 //�󳤶�
 int length_List(LinkList *L)
{
	LinkList p=(*L)->next;
	int length=0;
	while(NULL!=p)
	{
		length++;
		p=p->next;
	}
	return length;
}
 //���� 
int search_List(LinkList *L,Elemtype e)
{
	LinkList p=(*L)->next;
	int i=1;
	while(NULL!=p)
	{
		if(p->data==e)
			return i;	
	else	
		p=p->next;
		i++;	
}
	printf("�����ڵ�\n");
	return 0;
 }
//����ɾ�� ������ͷ��㣩 
void destory_List(LinkList *L)
{	LinkList p,q;	p=(*L)->next;	while(p!=NULL)
	{
		q=p->next;
		free(p);
		p=q;
	}
	(*L)->next=NULL;	printf("OK\n");
  }
  //����
 void invert(LinkList L)
  {
      LinkList p,q;
      p=L->next;
      L->next=NULL;
      while(p)
      {
             q=p->next; 
                   p->next=L->next; 
         L->next=p;   
     p=q; 
     }
  } 
   int main()
{
	LinkList L;int e,i,temp;
	while((i=getchar())!='#')
		//����#�˳�ѭ�� 	
{
		switch(i)
		{
			case '1':
create_ListHead(&L);
break;
 			case '2':printf("��������β��ֵ\n");					 scanf("%d",&e);
					 push_Back(&L,e);
					 break;
 			case '3':printf("��������ͷ��ֵ\n");
					 scanf("%d",&e);
					 push_Front(&L,e);
break;
 			case '4':pop_Front(&L);
break;
			case '5':pop_Back(&L);
break;
 			case '6':print_List(&L);
break;
 			case '7':printf("����ɾ����ֵ\n");
					 scanf("%d",&e);
					 delete_List(&L,e);
					 break;
			case '8':printf("����Ϊ%d\n",length_List(&L));
break;
 			case '9':printf("������ҵ�ֵ\n");
					 scanf("%d",&e);
					 temp=search_List(&L,e);
					 if(temp!=0)
					 	printf("%d�ڵ�%d��λ��\n",e,temp);
					 break;
			case '0':destory_List(&L);
break; 
                       case 'a':invert(L);
break;
                }
	}
	destory_List(&L);
 	free(L);
	L=NULL;	return 0;
} 


