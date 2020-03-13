%{
#include <stdio.h>
#define FUNLEN      17
#define ERRORCHAR   1
#define FUNC        2
#define ADD			3
#define CALL		4
#define CMP			5
#define CVTSS2SD	6
#define JA			7
#define JE			8
#define JG			9
#define JL			10
#define JMP			11
#define JNE			12
#define LEA			13
#define MOV			14
#define POP			15
#define PUSH		16
#define REPZ		17
#define RET			18
#define XCHG		19
#define XOR		    20

%}

func <(.*?)>:
delim		[ \t \n]
ws			{delim}+

%%

{ws}	    { ; }
{func}      { return FUNC; }
add       	{ return ADD; }
call       	{ return CALL; }
cmp       	{ return CMP; }
cvtss2sd    { return CVTSS2SD; }
ja       	{ return JA; }
je       	{ return JE; }
jg       	{ return JG; }
jl       	{ return JL; }
jmp       	{ return JMP; }
jne       	{ return JNE; }
lea       	{ return LEA; }
mov       	{ return MOV; }
pop       	{ return POP; }
push       	{ return PUSH; }
repz       	{ return REPZ; }
ret       	{ return RET; }
xchg       	{ return XCHG; }
xor       	{ return XOR; }
.           { return ERRORCHAR; }

%%

void parseFunc()
{
    int len;

    for(int i = yyleng - 3; i > 0; i --) {  // 提取 <funname>: 中 funname 的部分
        fprintf(yyout, "%c", yytext[i]);    // 注意这里是逆序输出！！！！
    }
    fprintf(yyout, "\n");   
}

void writeFile(int num)
{
    switch(num) {
        case ERRORCHAR  : { break; }
        case FUNC       : { parseFunc(); break; }
        case ADD		: { fprintf(yyout, "add\n"); break; }
        case CALL	    : { fprintf(yyout, "call\n"); break; }
        case CMP		: { fprintf(yyout, "cmp\n"); break; }
        case CVTSS2SD   : { fprintf(yyout, "cvtss2sd\n"); break; }
        case JA		    : { fprintf(yyout, "ja\n"); break; }
        case JE		    : { fprintf(yyout, "je\n"); break; }
        case JG		    : { fprintf(yyout, "jg\n"); break; }
        case JL		    : { fprintf(yyout, "jl\n"); break; }
        case JMP		: { fprintf(yyout, "jmp\n"); break; }
        case JNE		: { fprintf(yyout, "jne\n"); break; }
        case LEA		: { fprintf(yyout, "lea\n"); break; }
        case MOV		: { fprintf(yyout, "mov\n"); break; }
        case POP		: { fprintf(yyout, "pop\n"); break; }
        case PUSH	    : { fprintf(yyout, "push\n"); break; }
        case REPZ	    : { fprintf(yyout, "repz\n"); break; }
        case RET		: { fprintf(yyout, "ret\n"); break; }
        case XCHG	    : { fprintf(yyout, "xchg\n"); break; }
        case XOR		: { fprintf(yyout, "xor\n"); break; }
    }
}

int main(int argc, char **argv)
{
    int num;

    if(argc == 3) {
        yyin = fopen(argv[1], "r");
        yyout = fopen(argv[2], "w");
        if(yyin == NULL) {
            printf("open err!\n");

            return 0;
        }
        while(num = yylex()) {
            writeFile(num);
        }
    } else {
        printf("some err.\n");
    }
}
