#include <string>
#include <stdarg.h>
#include <fstream>
#include <cassert>
#include <cstring>
#include <ctime>
#include <iostream>
#define LogInfo(M, ...) myLog::loli.logWrite(__FILE__, __LINE__, myLog::Log::INFO, M, ##__VA_ARGS__)
#define LogDebug(M, ...) myLog::loli.logWrite(__FILE__, __LINE__, myLog::Log::DEBUG, M, ##__VA_ARGS__)
#define LogErr(M, ...) myLog::loli.logWrite(__FILE__, __LINE__, myLog::Log::ERR, M, ##__VA_ARGS__)

namespace myLog {

const int MESSAGELEN = 430;

class Log
{
private:
    std::ofstream of_;
    int minlevel_;
 
public:
    enum Type
    {
        ADD = 0,
        OVER
    };

    enum Level
    {
        DEBUG = 0,
        INFO,
        ERR
    };

    Log();
    Log(const int level, const std::string &logfile, const int type);
    ~Log();
    void Init(const int level, const std::string &logfile, const int type);
    void logWrite(const std::string &codefile, const int codeline, const int level, const char* format, ...);
};

extern Log loli;

}