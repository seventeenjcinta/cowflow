#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#define LEN sizeof(struct student)
struct student
  {long num;
   float score;      
   struct student *next;
  };
int n; 

struct student *creat()
  {struct student *head;
   struct student *p1,*p2;
   n=0;
   p1=p2=( struct student*) malloc(LEN);
   scanf("%ld,%f",&p1->num,&p1->score);
   head=NULL;
   while(p1->num!=0)
    {n=n+1;
     if(n==1)head=p1;
	 else p2->next=p1;
	 p2=p1;
	 p1=(struct student*)malloc(LEN);
	 scanf("%ld,%f",&p1->num,&p1->score);
	}
   p2->next=NULL;
   return(head);
  }

struct student *del(struct student *head,long num)
  {struct student *p1,*p2;
   if (head==NULL)
     {printf("\nlist null!\n");
      return(head);
     }
   p1=head;
   while(num!=p1->num && p1->next!=NULL)
      {p2=p1;p1=p1->next;}
   if(num==p1->num)
	  {if(p1==head)head=p1->next;
	   else p2->next=p1->next;
	   printf("delete:%ld\n",num);
	   n=n-1;
         }
   else printf("%ld not been found!\n",num);    
   return(head);
  }

struct student *insert(struct student *head, struct student *stud)
   {struct student *p0,*p1,*p2;
    p1=head;
    p0=stud;               
    if(head==NULL) 
	  {head=p0; p0->next=NULL;}  
    else
      {while((p0->num>p1->num) && (p1->next!=NULL))
         {p2=p1;     
          p1=p1->next;
         }          
       if(p0->num<=p1->num)
         {if(head==p1) head=p0; 
          else p2->next=p0;      
          p0->next=p1;
         }
       else
         {p1->next=p0; p0->next=NULL;}
       }
     n=n+1;                 
     return(head);
    }

void print(struct student *head)
   {struct student *p;
    printf("\nNow,These %d records are:\n",n);  
	p=head;
    if(head!=NULL)
      do
 	    {printf("%ld %5.1f\n",p->num,p->score);
         p=p->next;
        }while(p!=NULL);
   }
int main()
	{struct student *head,*p;
	 long del_num;
	 int choice;
	 
	 printf("*****Creat list!*****\n");
	 printf("Please input records:\n");
	 head=creat();
	 print(head);
	 
	 do
		 {
		 	printf("\n1.INSERT 2.DELETE 3.EXIT\n");
		 	choice=-1;
		 	printf("PLease choose:");
		 	scanf("%d",&choice);
		 	getchar();
		 	switch(choice)
		 		{case 1:
		 			    printf("please input num and score:");
		 			    p=(struct student *)malloc(LEN);
		 			    scanf("%ld,%f",&p->num,&p->score);
		 			    head=insert(head,p);
		 			    printf("Inserted:%ld\n",p->num);
		 			    print(head);
		 			    break;
		 		 case 2:
		 		 		printf("please input num:");
		 		 		scanf("%ld",&del_num);
		 		 		head=del(head,del_num);
		 		 		print(head);
		 		 		break; 
		 		 case 3:
				  		exit(0);
				 }
		 }while(choice!=0);
	return 0;
	}
