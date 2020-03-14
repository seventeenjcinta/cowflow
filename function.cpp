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
    return true;
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

std::vector<Function> parseAssembler(const std::string fileI, const std::string fileO)
{
    std::vector<Function> functionList;
    std::fstream fileIn;
    std::fstream fileOut;
    std::string buff;
    Function nowFunction;
    int functionListSize;

    fileIn.open(fileI.c_str(), std::ios::in);
    fileOut.open(fileO.c_str(), std::ios::out);
    LogInfo("open file %s %s\n", fileI.c_str(), fileO.c_str());
    while(getline(fileIn, buff)) {
        int buffSize;
        int index;

        buffSize = buff.size();
        if(buffSize > 4) {
            if(buff[buffSize - 1] == ':' && buff[buffSize - 2] == '>') {
                std::string name;

                index = buffSize - 3;
                while(buff[index] != '<') {
                    name += buff[index];
                    index --;
                }        
                std::reverse(name.begin(), name.end());
                nowFunction.name = name;
                // std::cout << "findname:::: " << name << "\n";
                break;
            }
        }
    }
    while(getline(fileIn, buff)) {
        int buffSize;
        int index;

        index = 0;
        buffSize = buff.size();
        if(buffSize <= 4 || buff[0] == '#' || buff[0] == '\n' || buff[0] == 'D') { // 注释行或空行或 Disassembly
            continue;
        } else if(buff[buffSize - 1] == ':' && buff[buffSize - 2] == '>') {
            std::string name;
            Function newFunction;

            index = buffSize - 3;
            while(buff[index] != '<') {
                name += buff[index];
                index --;
            } 
            std::reverse(name.begin(), name.end());
            nowFunction.len = nowFunction.V.size();
            if(functionNameCheck(nowFunction.name)) {
                functionList.pb(nowFunction);
                LogInfo("get function: %s in file: %s\n", nowFunction.name.c_str(), fileI.c_str());
            }
            newFunction.name = name;
            nowFunction = newFunction;
            // std::cout << "findname: " << name << "\n";
        } else {
            std::string opcode;
            std::string tmp;
            // for(int i = 0; i < buffSize; i ++) {
            //     printf("%d %c\n", i, buff[i]);
            // }
            // std::cout << buff << std::endl;
            // printf("111 = %c\n", buff[32]);
            if(buff[0] == ' ' && buff[1] == ' ') {
                index = 32;
            } else {
                index = 28;
            }
            if(buffSize < index) {
                continue;
            }
            while(buff[index] != ' ' && index < buffSize) {
                // printf("222 = %c\n", buff[index]);
                opcode += buff[index];
                index ++;
            }
            // std::cout << opcode << std::endl;
            nowFunction.V.pb(opcode);
        }
    }
    nowFunction.len = nowFunction.V.size();
    if(functionNameCheck(nowFunction.name)) {
        functionList.pb(nowFunction);
        LogInfo("get function: %s in file: %s\n", nowFunction.name.c_str(), fileI.c_str());
    }
    functionListSize = functionList.size();
    for(int i = 0; i < functionListSize; i ++) {
        int lineSize;

        lineSize = functionList[i].V.size();
        // std::cout << "name = " << functionList[i].name << std::endl;
        // std::cout << functionList[i].len << std::endl;
        fileOut << functionList[i].name << std::endl;
        fileOut << functionList[i].len << std::endl;
        for(int j = 0; j < lineSize; j ++) {
            // std::cout << functionList[i].V[j] <<std:: endl;
            fileOut << functionList[i].V[j] <<std:: endl;
        }
    }
    fileIn.close();
    fileOut.close();

    return functionList;
}

}

// int main()
// {
//     parse::parseAssembler((char*)"test1.s", (char*)"out1");     // solve warning
//     // parse::parseAssembler((char*)"test2.s", (char*)"out2");     // solve warning

//     return 0;
// }