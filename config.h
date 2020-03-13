// 配置文件为 key = value 形式
// # 为注释
#include <string>
#include <map>
namespace config
{

class Config
{
public:
	Config()
	{
        /* empty */
	}
	~Config()
	{
        /* empty */
	}
	bool ReadConfig(const std::string &fileName);
	std::string ReadString(const std::string item, const char* defaultValue);
	int ReadInt(const std::string item, const int &defaultValue);
	float ReadFloat(const std::string item, const float &defaultValue);
private:
	bool isSpace(char c);
	bool isCommentChar(char c);
	void trim(std::string &str);
	bool analyseLine(const std::string &line, std::string &key, std::string &value);
	bool parseValue(const std::string key, std::string &value);
	std::map<std::string, std::string> settings;
};

}
