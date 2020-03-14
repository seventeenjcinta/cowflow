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
        /* empty */
    }
}

}
