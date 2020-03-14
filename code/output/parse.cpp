#include <bits/stdc++.h>
#include <dirent.h>
#include <unistd.h>
#define pb push_back

std::vector<std::string> readFileList(const char *basePath);

int main()
{
    std::vector<std::string> fileList;
    std::string filePath("/home/seventeen/cowflow/code/output/");
    int fileSize;
    
    fileList = readFileList(filePath.c_str());
    fileSize = fileList.size();
    for(int i = 0; i < fileSize; i ++)

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