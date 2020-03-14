#include <bits/stdc++.h>
#include <dirent.h>
#include <unistd.h>
#include "config.h"
#include "log.h"
#include "cal.h"
#define pb push_back

void Init(config::Config config);	// 初始化全局变量
std::vector<std::string> readFileList(const char *basePath);

int main()
{
	config::Config config;
	std::vector<std::string> fileList;
	std::vector<function::Function> functionListA;
	std::vector<function::Function> functionListB;
	std::set<std::string> S;
	std::string filePath;
	std::string filePathOutput;
	std::string filePathParse;
	std::fstream fileOut;
	int fileSize;
	// myLog::Log log(myLog::Log::INFO, "log.txt", myLog::Log::OVER);
	
	if(!config.ReadConfig("config.ini")) {
		printf("read config.ini error\n");
		exit(0);
	}
	Init(config);
	filePath = config.ReadString("FILE_PATH", "");
	filePathOutput = config.ReadString("FILE_PATH_OUTPUT", "");
	filePathParse = config.ReadString("FILE_PATH_PARSE", "");
	fileList = readFileList(filePathOutput.c_str());
	fileSize = fileList.size();
	for(int i = 0; i < fileSize; i ++) {
		std::string output;
		std::string parse;

		output = filePathOutput + fileList[i];
		parse = filePathParse + fileList[i];
		parse[parse.size() - 1] = 'p';
		functionListA = function::parseAssembler(output.c_str(), parse.c_str());
	}

	// for(int i = 0; i < fileSize; i ++) {
	// 	int vSize;

	// 	functionListA = function::parseAssembler(filePath + fileList[i], "wasteA");
	// 	vSize = functionListA.size();
	// 	for(int j = 0; j < vSize; j ++) {
	// 		S.insert(functionListA[j].V[k]);
	// 	}
	// }
	// for(auto it : S) {
	// 	std::cout << it << std::endl;
	// }
	// fileOut.open("ans", std::ios::out);
	// for(int i = 0; i < 20; i ++) {
	// 	for(int j = i + 1; j < 20; j ++) {
	// 		cal::Cal calAToB;
	// 		cal::Cal calBToA;
	// 		double ansAToB;
	// 		double ansBToA;
			
	// 		fileOut << "cmp:" << i << " " << fileList[i] << " " << j << " " << fileList[j] << std::endl;
	// 		printf("cmp: (%d %s) (%d %s)\n", i, fileList[i].c_str(), j, fileList[j].c_str());
	// 		functionListA = function::parseAssembler(filePath + fileList[i], "wasteA");
    // 		functionListB = function::parseAssembler(filePath + fileList[j], "wasteB");
	// 		printf("size: %d %d\n", functionListA.size(), functionListB.size());
	// 		ansAToB = calAToB.Solve(functionListA, functionListB);
	// 		ansBToA = calBToA.Solve(functionListB, functionListA);
	// 		fileOut << "ans:" << fileList[i] << " " << fileList[j] << " " << ansAToB << " " << ansBToA << std::endl;
	// 		printf("(%s %s) = (%lf %lf)\n", fileList[i].c_str(), fileList[j].c_str(), ansAToB, ansBToA);
	// 	}
		
	// }


	// fileAIn = config.ReadString("fileAIn", "");
	// fileAOut = config.ReadString("fileAOut", "");
	// fileBIn = config.ReadString("fileBIn", "");
	// fileBOut = config.ReadString("fileBOut", "");

	// LogDebug("begin\n");
	// printf("%lf\n", calAToB.Solve(functionListA, functionListB));
	// printf("%lf\n", calBToA.Solve(functionListB, functionListA));

	/* test log */
	// int x;
	
	// x = 3;
	// LogInfo("%d\n", x);
	// loli.logWrite(__FILE__, __LINE__, myLog::Log::INFO, "%d", x);
	//  #define LogInfo(M, ...) log.logWrite(__FILE__, __LINE__, Log::INFO, parseMessage(M))
	/* test log */

    /* test config */
    // config::Config config;
	// config.ReadConfig("config.ini");
	// std::string HostName = config.ReadString("MYSQL", "HostName", "");
	// int Port = config.ReadInt("MYSQL", "Port", 0);
	// std::string UserName = config.ReadString("MYSQL", "UserName", "");

	// std::cout << "HostName=" << HostName << std::endl;
	// std::cout << "Port=" << Port << std::endl;
	// std::cout << "UserName=" << UserName << std::endl;
	/* test config */

    return 0;
}

std::vector<std::string> readFileList(const char *basePath)
{
    std::vector<std::string> res;
    DIR *dir;
    struct dirent *ptr;
    char base[1000];

	dir = opendir(basePath);
    if(dir == NULL) {
        perror("Open dir error...");
        exit(1);
    }
    while((ptr=readdir(dir)) != NULL) {
        if(strcmp(ptr -> d_name,".")==0 || !strcmp(ptr->d_name,"..")) {    // current dir OR parrent dir
            continue;
		}
        else if(ptr -> d_type == 8) {   // file
            res.pb(std::string(ptr -> d_name));
		}
        else if(ptr -> d_type == 10) {   // link file
            res.pb(std::string(ptr -> d_name));
		}
        else if(ptr -> d_type == 4) {   // dir
            memset(base,'\0',sizeof(base));
            strcpy(base,basePath);
            strcat(base,"/");
            strcat(base, ptr -> d_name);
            res.pb(std::string(ptr -> d_name));
            readFileList(base);
        }
    }
    closedir(dir);

    return res;
}

void Init(config::Config config)	// 初始化全局变量
{
	int logLevel;
	int logType;
	std::string logFile;

	logLevel = config.ReadInt("LOG_LEVEL", -1);
	logFile = config.ReadString("LOG_FILE", "");
	logType = config.ReadInt("LOG_TYPE", -1);
	myLog::loli.Init(myLog::Log::INFO, "log.txt", myLog::Log::OVER);
}