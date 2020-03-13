#include <fstream>
#include <stdlib.h>
#include <iostream>
#include "config.h"

namespace config
{

bool Config::isSpace(char ch)
{
	if(ch == ' ' || ch == '\t') {
		return true;
	} else {
		return false;
	}
}

bool Config::isCommentChar(char ch)
{
	switch(ch) {
	case '#':
		return true;
	default:
		return false;
	}
}

void Config::trim(std::string &str)
{
	int strSize;
	int index;
	bool isEmptyStr;
	int startPos;
	int endPos;

	if(str.empty()) {
		return ;
	}
	isEmptyStr = true;	// 是否全为{空格、tab}
	strSize = str.size();
	startPos = 0;
	endPos = strSize - 1;
	for(int i = 0; i < strSize; i ++) {		// 删除首{空格、tab}
		if(!isSpace(str[i])) {
			isEmptyStr = false;
			startPos = i;
			break;
		}
	}
	if(isEmptyStr) {
		str = "";

		return ;
	}
	for(int i = strSize - 1; i >= 0; i --) {	// 删除尾{空格、tab}
		if(!isSpace(str[i])) {
			endPos = i;
			break;
		}
	}
	str = str.substr(startPos, endPos - startPos + 1);
}

// bool Config::analyseLine(const std::string &line, std::string &section, std::string &key, std::string &value)
// {
// 	std::string newLine;
// 	int tmpPos;
// 	int stratPos;
// 	int endPos;
// 	int bracketsStartPos;	// '['
// 	int bracketsEndPos;		// ']'

// 	if(line.empty()) {
// 		return false;
// 	}	
// 	stratPos = 0;
// 	endPos = line.size() - 1;
// 	tmpPos = line.find('#');
// 	if(tmpPos != -1) {
// 		if(!tmpPos) {
// 			return false;
// 		} else {
// 			endPos = tmpPos - 1;
// 		}
// 	}
// 	bracketsStartPos = line.find('[');
// 	bracketsEndPos = line.find(']');
// 	if(bracketsStartPos != -1 && bracketsEndPos != -1) {
// 		section = line.substr(bracketsStartPos + 1, bracketsEndPos - 1);

// 		return true;
// 	}
// 	newLine = line.substr(stratPos, stratPos - endPos + 1);
// 	tmpPos = newLine.find('=');
// 	if(tmpPos == -1) {
// 		return false;
// 	}
// 	key = newLine.substr(0, tmpPos);
// 	value = newLine.substr(tmpPos + 1, endPos - (tmpPos + 1) + 1);	// [endPos, tmpPos + 1]
// 	trim(key);
// 	if(key.empty()) {
// 		return false;
// 	}
// 	trim(value);
// 	tmpPos = value.find('\r');
// 	if(tmpPos > 0) {
// 		value.replace(tmpPos, 1, "");
// 	}
// 	tmpPos = value.find('\n');
// 	if(tmpPos > 0) {
// 		value.replace(tmpPos, 1, "");
// 	}

// 	return true;
// }


bool Config::analyseLine(const std::string &line, std::string &key, std::string &value)
{
	std::string newLine;
	int tmpPos;
	int stratPos;
	int endPos;

	if(line.empty()) {
		return false;
	}	
	stratPos = 0;
	endPos = line.size() - 1;
	tmpPos = line.find('#');
	if(tmpPos != -1) {
		if(!tmpPos) {
			return false;
		} else {
			endPos = tmpPos - 1;
		}
	}
	newLine = line.substr(stratPos, stratPos - endPos + 1);
	tmpPos = newLine.find('=');
	if(tmpPos == -1) {
		return false;
	}
	key = newLine.substr(0, tmpPos);
	value = newLine.substr(tmpPos + 1, endPos - (tmpPos + 1) + 1);	// [endPos, tmpPos + 1]
	trim(key);
	if(key.empty()) {
		return false;
	}
	trim(value);
	tmpPos = value.find('\r');
	if(tmpPos > 0) {
		value.replace(tmpPos, 1, "");
	}
	tmpPos = value.find('\n');
	if(tmpPos > 0) {
		value.replace(tmpPos, 1, "");
	}

	return true;
}

bool Config::parseValue(const std::string key, std::string &value)
{
	int strSize;
	std::string newValue;
	std::string newKey;
	std::map<std::string, std::string>::iterator it;

	if(value[0] == '$') {
		strSize = value.size();
		for(int i = 2; i < strSize; i ++) {
			if(value[i] == ')') {
				// std::cout << newKey << " qqq " << settings[newKey] << std::endl;
				it = settings.find(newKey);
				if(it == settings.end()) {
					// std::cout << key << " " << value << std::endl;

					return false;
				} else {
					newValue = settings[newKey];
					// std::cout << "new valuee" << " " << newValue << std::endl;
					for(int j = i + 1; j < strSize; j ++) {
						newValue += value[j];
					}
					value = newValue;

					return true;
				}
			} else {
				newKey += value[i];
			}
		}

		return false;
	}

	return true;
}

bool Config::ReadConfig(const std::string &filename)
{
	std::string line;
	std::string key;
	std::string value;
	std::map<std::string, std::string>::iterator it;
	
	settings.clear();
	std::ifstream inFile(filename.c_str());
	if(!inFile) {
		return false;
	}
	while(getline(inFile, line)) {
		if(analyseLine(line, key, value)) {
			if(!parseValue(key, value)) {
				return false;
			}
			settings[key] = value;
			// std::cout << key << " " << value << std::endl;
		}
		key.clear();
		value.clear();
	}
	inFile.close();

	return true;
}

std::string Config::ReadString(const std::string item, const char *defaultValue)
{
	std::string def(defaultValue);
	std::map<std::string, std::string>::iterator it;

	it = settings.find(item);
	if(it == settings.end()) {
		return def;
	}

	return it -> second;
}

int Config::ReadInt(const std::string item, const int &defaultValue)
{
	std::map<std::string, std::string>::iterator it;

	it = settings.find(item);
	if(it == settings.end()) {
		return defaultValue;
	}

	return atoi(it -> second.c_str());
}

float Config::ReadFloat(const std::string item, const float &defaultValue)
{
	std::map<std::string, std::string>::iterator it;

	it = settings.find(item);
	if(it == settings.end()) {
		return defaultValue;
	}

	return atoi(it -> second.c_str());
}

}
