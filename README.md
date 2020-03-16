## COWFLOW

### 目录结构
.
├── ans             最终结果输出文件  
├── assembler.cpp   汇编词法分析
├── assembler.h
├── assembler.l     汇编词法分析lex 文件
├── cal.cpp         代码相似程度计算
├── cal.h
├── code            用于查重以及处理后的代码
│   ├── assembler   反汇编得到的汇编代码
│   │   ├── *.s
│   │   └── ...
│   ├── c           用于查重的源代码
│   │   ├── *.c
│   │   └── ...
│   ├── parse       提取并筛选函数名、操作码后的汇编代码  .p 是随便想的后缀
│   │   ├── *.p
│   │   └── ...
│   └── Makefile    负责编译查重的 c 代码并反汇编成汇编文件
├── config.cpp      读取 config.ini 配置文件
├── config.h
├── config.ini      cowflow 配置文件
├── function.cpp    从 ./code/assembler 里的汇编代码中提取需要的函数名和操作码，输出到 ./code/parse
├── function.h
├── getFunc.sh      从汇编代码里根据函数名找到函数下的操作码
├── km.cpp          KuhnMunkres 算法，用于解决二分图最大权匹配问题
├── km.h
├── launch.cpp      main 函数，负责初始化等操作
├── lcs.cpp         计算字符串的 lcs
├── log.cpp         日志，非线程安全
├── log.h
├── log.txt         最终输出的日志文件
├── Makefile
├── netflow.cpp     SPFA 增广，用于解决费用流问题
├── netflow.h
└── README.md

### 使用
- 将需要查重的代码放在 ./code/c 目录下，并在 ./code 目录下执行 make
- ./code 目录下 make 后得到的汇编代码在 ./code/assembler 下
- 再在初始目录执行 make
- 运行 ./cowflow

### 代码阅读说明
- 宏定义采用全大写，用下划线分隔
- 变量名采用驼峰命名法，全局变量首字母大写，其他变量首字母小写
- public 函数名首字母必须大写
- private 函数名首字母必须小写

### lex
和 lex 相关的三个文件：`assembler.l`、`function.cpp`、`Makefile`

#### 原则
**不希望和 lex 相关的变量、宏定义对外暴露**

#### 缺点
- 目前只支持词法分析输出到文件，想获得到词法分析的内容还需要再从文件读取

#### assembler.l
用于通过 lex 生成词法分析程序，对汇编代码进行词法分析，筛选需要的函数和操作码

只定义了两种类型的 token：
- 函数名：形如尖括号后跟一个冒号，尖括号内的即为函数名。正则表达式：`<(.*?)>:`。同时会调用 `parseFuncName` 忽略 `wasteFunctionList` 列表里的函数名
- 操作码：目前只添加了常见的且**去除后缀**的操作码。如想补全，链接：https://www.felixcloutier.com/x86/index.html

lex 相关
- `%option c++` 用于生成 `c++` 的词法分析程序
- `%option outfile="assembler.cpp"` 用于生成指定名称的 `.cpp` 代码（之前默认是 lex.yy.cc）
- `%option header-file="assembler.h"` 用于生成被 `include` 的 `.h` 代码
- `yyless(num)`：返回匹配到的 `token` 的前面 `num` 个字符，`num` 后的内容**回退到输入**
- `YYLeng()`：`c++` 模式下替代 `yyleng`
- `YYText()`：`c++` 模式下替代 `yytext`

用法及输出
- 文档：http://dinosaur.compilertools.net/flex/flex_19.html
- 源码：https://casa.nrao.edu/doxygen/classyyFlexLexer.html

- ```c++
  FlexLexer *lexer;
  std::ifstream in;
  std::ofstream out;
  
  i.open(fileInput);	// fileInput fileOutput 类型为 char*，即输入输出的文件名
  o.open(fileOutput);
  lexer = new yyFlexLexer;
  while(num = lexer -> yylex(&i, &o)) {	// 如果不带参数默认标准输入输出
      /* empty */
  }
  ```
- `.l` 文件内如果想要输出到目标输出，用 `yyout << something`

#### function.cpp
用了 `lex` 后 `function.cpp` 内没什么东西了，就简单看一下怎么从 `.cpp ` 用 `lex` 生成的头文件

#### Makefile
关注一下 `assembler` 前缀的文件的编译链即可，没什么坑点，注意需要放在被 `include` 的文件之前

### TODO
- 部分变量名不是很直观
- 注释补全
- 算法性能优化
- 汇编语言再分析

### 以下是施工区
一些指令
生成LLVM 字节码文件 clang -O3 -emit-llvm test.c -c -o test.bc llvm-dis-6.0 test2.b

生成LLVM 可视化字节码文件 clang -O3 -emit-llvm test.c -S -o test.ll

反汇编字节码文件 llvm-dis < test.bc | less

编译字节码为汇编文件 llc test.bc -o test.s

将.bc文件生成.ll文件： llvm-dis AAA.bc -o AAA.ll

clang -Xclang -ast-dump -fsyntax-only -fno-color-diagnostics test.cc

usage: llvm-config ... [...]

Get various configuration information needed to compile programs which use LLVM. Typically called from 'configure' scripts. Examples: llvm-config --cxxflags llvm-config --ldflags llvm-config --libs engine bcreader scalaropts

Options: --version Print LLVM version. --prefix Print the installation prefix. --src-root Print the source root LLVM was built from. --obj-root Print the object root used to build LLVM. --bindir Directory containing LLVM executables. --includedir Directory containing LLVM headers. --libdir Directory containing LLVM libraries. --cmakedir Directory containing LLVM cmake modules. --cppflags C preprocessor flags for files that include LLVM headers. --cflags C compiler flags for files that include LLVM headers. --cxxflags C++ compiler flags for files that include LLVM headers. --ldflags Print Linker flags. --system-libs System Libraries needed to link against LLVM components. --libs Libraries needed to link against LLVM components. --libnames Bare library names for in-tree builds. --libfiles Fully qualified library filenames for makefile depends. --components List of all possible components. --targets-built List of all targets currently built. --host-target Target triple used to configure LLVM. --build-mode Print build mode of LLVM tree (e.g. Debug or Release). --assertion-mode Print assertion mode of LLVM tree (ON or OFF). --build-system Print the build system used to build LLVM (always cmake). --has-rtti Print whether or not LLVM was built with rtti (YES or NO). --has-global-isel Print whether or not LLVM was built with global-isel support (ON or OFF). --shared-mode Print how the provided components can be collectively linked (shared or static). --link-shared Link the components as shared libraries. --link-static Link the component libraries statically. --ignore-libllvm Ignore libLLVM and link component libraries instead. Typical components: all All LLVM libraries (default). engine Either a native JIT or a bitcode interpreter.
