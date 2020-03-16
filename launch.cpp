#include <bits/stdc++.h>
#include <dirent.h>
// #include <iomanip.h>
#include <iostream>
#include <iomanip>
#include <sys/time.h>
#include <unistd.h>
#include "config.h"
#include "log.h"
#include "cal.h"
#define pb push_back

void init(config::Config config);	// 初始化全局变量
std::vector<std::string> readFileList(const char *basePath);
cal::Cal calcu;

int main()
{
	config::Config config;
	std::vector<std::string> fileListAssembler;
	std::vector<std::string> fileListParse;
	std::vector<std::vector<function::Function> > parseAssemnlerList;
	std::set<std::string> S;
	std::string filePath;
	std::string filePathAssembler;
	std::string filePathParse;
	std::fstream fileAns;
	int fileAssemblerSize;
	int fileParseSize;
	int cmpCnt;
	double averageTime;

	// myLog::Log log(myLog::Log::INFO, "log.txt", myLog::Log::OVER);
	
	std::cout << "start" << std::endl;
	if(!config.ReadConfig("config.ini")) {
		printf("read config.ini error\n");
		exit(0);
	}
	// 初始化
	init(config);
	averageTime = 0;
	cmpCnt = 0;
	// 读取配置
	filePath = config.ReadString("FILE_PATH", "");
	filePathAssembler = config.ReadString("FILE_PATH_ASSEMBLER", "");
	filePathParse = config.ReadString("FILE_PATH_PARSE", "");
	// 计算
	fileListAssembler = readFileList(filePathAssembler.c_str());
	fileAssemblerSize = fileListAssembler.size();
	for(int i = 0; i < fileAssemblerSize; i ++) {
		std::string assemblerFileName;
		std::string parseFileName;

		assemblerFileName = filePathAssembler + fileListAssembler[i];
		parseFileName = filePathParse + fileListAssembler[i];
		parseFileName[parseFileName.size() - 1] = 'p';			// 随便拍脑袋想出来的后缀
		function::parseAssembler(assemblerFileName.c_str(), parseFileName.c_str());
	}
	// 狗逼学生提交不能编译的代码，导致 parse 列表和 assembler 列表里数目不匹配
	fileListParse = readFileList(filePathParse.c_str());
	fileParseSize = fileListParse.size();
	// 一次性读取文件到内存里，虽然丑了一点，但是防止多次读文件
	for(int i = 0; i < fileParseSize; i ++) {
		std::fstream fileIn;
		std::string buff;
		std::string parseFileName;
		std::vector<function::Function> functionList;

		parseFileName = filePathParse + fileListParse[i];
		// std::cout << fileListParse[i] << std::endl;
		fileIn.open(parseFileName.c_str(), std::ios::in);
		while(getline(fileIn, buff)) {
			function::Function func;

			// std::cout << buff << std::endl;
			if(buff[buff.size() - 1] == '>') {	
				S.insert(buff);
				func.name = buff;
				getline(fileIn, buff);	// get len
				func.len = std::stoi(buff);
				for(int i = 0; i < func.len; i ++) {
					getline(fileIn, buff);
					func.V.pb(buff);
				}
			} else {
				LogErr("the parse: %s struct err\n", parseFileName.c_str());
				exit(1);
			}
			functionList.pb(func);
		}
		parseAssemnlerList.pb(functionList);
		fileIn.close();
	}
	fileAns.open("ans", std::ios::out);
	// solve porblem
	// fileParseSize
	for(int i = 0; i < 20; i ++) {
		for(int j = i + 1; j < 20; j ++) {
			double ansAToB;
			double ansBToA;
			double costTime;
			struct timeval start;
			struct timeval end;
			
			gettimeofday(&start, NULL);
			// fileAns << "cmp:" << i << " " << fileListParse[i].c_str() << " " << j << " " << fileListParse[j].c_str() << std::endl;
			// printf("cmp: (%d %s) (%d %s)\n", i, fileListParse[i].c_str(), j, fileListParse[j].c_str());
			// printf("size: %d %d\n", functionListA.size(), functionListB.size());
			ansAToB = calcu.Solve(parseAssemnlerList[i], parseAssemnlerList[j]);
			ansBToA = calcu.Solve(parseAssemnlerList[j], parseAssemnlerList[i]);
			gettimeofday(&end, NULL);
			costTime = 1000000 * (end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec);
			averageTime += costTime / 1000;
			cmpCnt ++;
			fileAns << "result:" 
					<< fileListParse[i].c_str() 
					<< " " 
					<< fileListParse[j].c_str() 
					<< " (" 
					<< ansAToB 
					<< "%, " 
					<< ansBToA 
					<< "%) = "
					<< std::max(ansAToB, ansBToA)
					<< "% "
					<< "cost time: "
					<< std::fixed 
					<< std::setprecision(5)
					<< costTime / 1000
					<< std::endl;
		}
	}
	// 记录函数列表，偶尔看看是否有遗漏的需删除函数
	for(auto it : S) {
		// std::cout << it << std::endl;
		LogInfo("all function list: %s\n", it.c_str());
	}
	averageTime /= cmpCnt;
	std::cout << "program over\n"
				<< "average cost time: "
				<< std::fixed 
				<< std::setprecision(5)
				<< averageTime
				<< "ms"
				<< std::endl;
	// for(int i = 0; i < fileSize; i ++) {
	// 	int vSize;

	// 	functionListA = function::parseAssembler(filePath + fileList[i], "wasteA");
	// 	vSize = functionListA.size();
	// 	for(int j = 0; j < vSize; j ++) {
	// 		S.insert(functionListA[j].V[k]);
	// 	}
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

void init(config::Config config)	// 初始化全局变量
{
	int logLevel;
	int logType;
	std::string logFile;

	logLevel = config.ReadInt("LOG_LEVEL", -1);
	logFile = config.ReadString("LOG_FILE", "");
	logType = config.ReadInt("LOG_TYPE", -1);
	myLog::loli.Init(myLog::Log::INFO, "log.txt", myLog::Log::OVER);
}

void parseRevealAllTheDetails()
{

}