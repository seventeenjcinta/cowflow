#include <fstream>
#include <algorithm>
#include <string>
#include <vector>
#include "function.h"
#include "assembler.h"
#include "log.h"
#define pb push_back

namespace function {

// extern myLog::Log loli;
const int DEFAULT_FUNCTION_LIST_SIZE = 20;

std::string defaultFunctioBameList[] = {"_init",    // 0
                                        ".plt",
                                        "__printf_chk@plt",
                                        "memset@plt",
                                        "__cxa_atexit@plt",
                                        "scanf@plt",
                                        "_z",
                                        "_Z",
                                        "_GLOBAL",
                                        "__cxa_finalize@plt",
                                        "_GLOBAL__sub_I_Function",
                                        "_start",
                                        "deregister_tm_clones",
                                        "register_tm_clones",
                                        "__do_global_dtors_aux",
                                        "frame_dummy",
                                        "__libc_csu_init",
                                        "__libc_csu_fini",
                                        "_fini",
                                        "@plt"};                  

bool functionNameCheck(std::string functionName)
{
    std::string::size_type res;

    for(int i = 0; i < DEFAULT_FUNCTION_LIST_SIZE; i ++) {
        // printf("%s\n", functionName.c_str());
        res = functionName.find(defaultFunctioBameList[i]);
        if(res != std::string::npos) {
            LogDebug("%s %s %d\n", functionName.c_str(), defaultFunctioBameList[i].c_str(), i);

            return false;
        } 
    }

    return true;
}

std::vector<Function> parseAssembler(const char *fileI, const char *fileO)
{
    int num;
    char *str;
    std::ifstream i;
    std::ofstream o;
    FlexLexer *lexer;
    
    i.open(fileI);
    o.open(fileO);
    // printf("%s %s\n", fileI, fileO);
    lexer = new yyFlexLexer;
    while(num = lexer -> yylex(&i, &o)) {
        // printf("num = %d\n", num);
        /* empty */
    }
}

}

// int main()
// {
//     parse::parseAssembler((char*)"test1.s", (char*)"out1");     // solve warning
//     // parse::parseAssembler((char*)"test2.s", (char*)"out2");     // solve warning

//     return 0;
// }