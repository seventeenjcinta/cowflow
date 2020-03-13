#include "log.h"

namespace myLog {

Log loli;

Log::Log()
{
    
}

Log::Log(const int level, const std::string &logfile, const int type) : minlevel_(level)
{
    assert((this -> ERR == level || this -> INFO == level || this -> DEBUG == level) && "Logfile create failed, please check the level(Log::ERR or Log::INFO.");
    if (type == this -> ADD) {
        this -> of_.open(logfile.c_str(), std::ios_base::out | std::ios_base::app);
    } else if (type == this -> OVER) {
        this -> of_.open(logfile.c_str(), std::ios_base::out | std::ios_base::trunc);
    } else {
        assert(0 && "Logfile create failed, please check the type(Log::OVER or Log::ADD).");
    }
    assert(this -> of_.is_open() && "Logfile create failed, please check the logfile's name and path.");
}

Log::~Log()
{
    if (this -> of_.is_open()) {
        this -> of_.close();
    }
}

void Log::Init(const int level, const std::string &logfile, const int type)
{
    minlevel_ = level;
    assert((this -> ERR == level || this -> INFO == level || this -> DEBUG == level) && "Logfile create failed, please check the level(Log::ERR or Log::INFO or LOG::DEBUG.");
    if (type == this -> ADD) {
        this -> of_.open(logfile.c_str(), std::ios_base::out | std::ios_base::app);
    } else if (type == this -> OVER) {
        this -> of_.open(logfile.c_str(), std::ios_base::out | std::ios_base::trunc);
    } else {
        assert(0 && "Logfile create failed, please check the type(Log::OVER or Log::ADD).");
    }
    assert(this -> of_.is_open() && "Logfile create failed, please check the logfile's name and path.");
}

void Log::logWrite(const std::string &codefile, const int codeline, const int level, const char* format, ...)
{
    char message[MESSAGELEN];
    va_list args;

    memset(message, 0, sizeof(message)); 
    va_start(args, format);    
    // printf("%c\n", va_arg(args, char*));
    vsprintf(message, format, args);
    va_end(args); 
    std::string res(message);
    if(sizeof(message) <= res.size()){
        assert("parameter too long");
    }
    assert(this -> of_.is_open() && "Logfile write failed.");
    if(level == this -> ERR) {
        this -> of_ << "[ERROR] ";
    } else if (level == this -> INFO) {
        if (this -> INFO >= this -> minlevel_) {
            this -> of_ << "[INFO] ";
        } else {
            return ;
        }
    } else if(level == this -> DEBUG) {
        if(this -> DEBUG >= this -> minlevel_) {
            this -> of_ << "[DEBUG]";
        } else {
            return ;
        }
    } else {
        assert(0 && "Log write failed, please check the level(Log::ERR or Log::INFO.");
    }
    time_t sectime = time(NULL);
    tm tmtime;
#ifdef _WIN32
#if _MSC_VER < 1600
    tmtime = *localtime(&sectime);
#else
    localtime_s(&tmtime, &sectime);
#endif
#else
    localtime_r(&sectime, &tmtime);
#endif
    this -> of_ << tmtime.tm_year + 1900 
                << '-' << tmtime.tm_mon + 1 
                << '-' << tmtime.tm_mday 
                << ' ' << tmtime.tm_hour 
                << ':' << tmtime.tm_min 
                << ':' << tmtime.tm_sec 
                << ' ' << codefile 
                << '(' << codeline << ") " 
                << message;
    return;
}

}

// myLog::Log loli(myLog::Log::INFO, "log.txt", myLog::Log::OVER);