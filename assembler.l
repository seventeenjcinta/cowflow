%{
#include <cstdio>
#include <vector>
#include <string>
#include <fstream>
#define WASTE_FUNCTION_LIST_SIZE 28
#define pb push_back

// token
enum
{
    ERRORCHAR = 1,
    FUNC,
    ADD,
    AND,
    CALL,
    CLT,
    CMOV,
    CMP,
    CVTSD2SS,
    CVTSS2SD,
    DIV,
    JA,
    JB,
    JE,
    JG,
    JL,
    JMP,
    JN,
    JP,
    JS,
    LEA,
    MOV,
    MUL,
    NEG,
    POP,
    PUSH,
    REP,
    RET,
    SET,
    SUB,
    TEST,
    UCOMISD,
    UCOMISS,
    XCHG,
    XOR
};

int cnt = 0;
bool beginMark = false;
std::vector<std::string> opCodes;
std::string funcName;
// 最终需要删除的函数名，新增内容时需要同步更新 WASTE_FUNCTION_LIST_SIZE
// WASTE_FUNCTION_LIST_SIZE 个数为 （行号 - 56 + 1）
std::vector<std::string>wasteFunctionList = {".plt",  
                                                "__do_global_dtors_aux",
                                                "__isoc99_scanf@plt",
                                                "__libc_csu_fini",
                                                "__libc_csu_init",
                                                "_dl_relocate_static_pie",
                                                "_fini",
                                                "_init",
                                                "_IO_getc@plt",
                                                "_IO_putc@plt",
                                                "_start",
                                                "cos@plt",
                                                "deregister_tm_clones",
                                                "exit@plt",
                                                "exp@plt",
                                                "frame_dummy",
                                                "free@plt",
                                                "get_newNode",
                                                "malloc@plt",
                                                "meau",
                                                "printf@plt",
                                                "putchar@plt",
                                                "puts@plt",
                                                "register_tm_clones",
                                                "search_List",
                                                "sin@plt",
                                                "system@plt",
                                                "plt"};

bool parseFuncName();

%}
%option c++
%option outfile="assembler.cpp"
%option header-file="assembler.h"

func        <(.*?)>:
delim		[ \t \n]
ws			{delim}+

%%

{ws}	    { ; }
{func}      {
                yyless(YYLeng() - 1); /* 去除最后的 ":" */ 
                if(beginMark && parseFuncName()) {
                    yyout << funcName << std::endl;
                    yyout << cnt << std::endl;
                    for(int i = 0; i < cnt; i ++) {
                        yyout << opCodes[i] << std::endl;
                    }
                }
                beginMark = true;
                cnt = 0;
                opCodes.clear();
                funcName = YYText();

                return FUNC; 
            }
add         { /* 这里可以调用函数，用于处理 yytext */ 
              opCodes.pb(YYText()); cnt ++; return ADD; }
and         { opCodes.pb(YYText()); cnt ++; return AND; }
call        { opCodes.pb(YYText()); cnt ++; return CALL; } 
clt         { opCodes.pb(YYText()); cnt ++; return CLT; }
cmov        { opCodes.pb(YYText()); cnt ++; return CMOV; } 
cmp         { opCodes.pb(YYText()); cnt ++; return CMP; }
cvtsd2ss    { opCodes.pb(YYText()); cnt ++; return CVTSD2SS; }     
cvtss2sd    { opCodes.pb(YYText()); cnt ++; return CVTSS2SD; }     
div         { opCodes.pb(YYText()); cnt ++; return DIV; } 
ja          { opCodes.pb(YYText()); cnt ++; return JA; }
jb          { opCodes.pb(YYText()); cnt ++; return JB; }
je          { opCodes.pb(YYText()); cnt ++; return JE; }
jg          { opCodes.pb(YYText()); cnt ++; return JG; }
jl          { opCodes.pb(YYText()); cnt ++; return JL; }
jmp         { opCodes.pb(YYText()); cnt ++; return JMP; }
jn          { opCodes.pb(YYText()); cnt ++; return JN; }
jp          { opCodes.pb(YYText()); cnt ++; return JP; }
js          { opCodes.pb(YYText()); cnt ++; return JS; }
lea         { opCodes.pb(YYText()); cnt ++; return LEA; }
mov         { opCodes.pb(YYText()); cnt ++; return MOV; }
mul         { opCodes.pb(YYText()); cnt ++; return MUL; }
neg         { opCodes.pb(YYText()); cnt ++; return NEG; }
pop         { opCodes.pb(YYText()); cnt ++; return POP; }
push        { opCodes.pb(YYText()); cnt ++; return PUSH; } 
rep         { opCodes.pb(YYText()); cnt ++; return REP; }
ret         { opCodes.pb(YYText()); cnt ++; return RET; }
set         { opCodes.pb(YYText()); cnt ++; return SET; }
sub         { opCodes.pb(YYText()); cnt ++; return SUB; }
test        { opCodes.pb(YYText()); cnt ++; return TEST; } 
ucomisd     { opCodes.pb(YYText()); cnt ++; return UCOMISD; } 
ucomiss     { opCodes.pb(YYText()); cnt ++; return UCOMISS; } 
xchg        { opCodes.pb(YYText()); cnt ++; return XCHG; } 
xor         { opCodes.pb(YYText()); cnt ++; return XOR; }
.           { return ERRORCHAR; }

%%

int yyFlexLexer::yywrap()
{
    if(parseFuncName()) {
        yyout << funcName << std::endl;
        yyout << cnt << std::endl;
        for(int i = 0; i < cnt; i ++) {
            yyout << opCodes[i] << std::endl;
        }
    }
    cnt = 0;
    opCodes.clear();

    return 1;
}

// 如果不需要对函数进行筛选，直接返回 true
bool parseFuncName()
{
    std::string::size_type res;

    for(int i = 0; i < WASTE_FUNCTION_LIST_SIZE; i ++) {
        res = funcName.find(wasteFunctionList[i]);
        if(res != std::string::npos) {
            return false;
        } 
    }

    return true;
}

// 用于单测，需要将 %opyion 删除 outfile 和 header-file
// int main()
// {   
//     FlexLexer *lexer;
//     std::ifstream input;
//     std::ofstream output;
//     char *fileI = "tmp";
//     char *fileO = "tmpout";

//     input.open(fileI);
//     output.open(fileO);
//     lexer = new yyFlexLexer();
//     while(lexer -> yylex(&input, &output)) {
//         // lexer -> yy// LexerInput(str, 10);
//         /* empty */
//     }

//     return 0;
// }
