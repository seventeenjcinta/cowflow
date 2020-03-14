## COWFLOW

### 使用
- 将需要查重的代码放在 ./code/input 目录下，并在 ./code 目录下执行 make
- ./code 目录下 make 后得到的汇编代码在 ./code/output 下
- 再在初始目录执行 make

### 目录结构
- config.ini 为配置文件，只能为 key = value 的形式，"#" 后为注释
- log.txt 为日志输出，日志等级等具体配置见 config.ini
- ./code/input 内为需要查重的代码集
- ./code/ouput 为代码集编译后得到的汇编代码
- ./code/parse 为经处理后只保留函数名和有用的操作码后的汇编

### 阅读说明
- 宏定义采用全大写 + 下划线分隔
- 变量名采用驼峰命名法，全局变量首字母大写，其他变量首字母小写
- public 函数名首字母必须大写
- private 函数名首字母必须小写

### for xyz
需要关注的两个个文件：`assembler.l`、`function.cpp`、`Makefile`

#### assembler.l
用于通过 lex 生成词法分析程序

只定义了两种类型的 token：
- 函数名：形如尖括号后跟一个冒号，尖括号内的即为函数名。正则表达式：`<(.*?)>:`。同时会掉用 `parseFuncName` 忽略 `wasteFunctionList` 列表里的函数名
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
- `.l` 文件内如果想要输出，用 `yyout << something`

#### function.cpp
用了 `lex` 后 `function.cpp` 内没什么东西了，就简单看一下怎么从 `.cpp ` 用 `lex` 生成的头文件

#### Makefile
关注一下 `assembler` 前缀的文件的编译链即可，没什么坑点，注意需要放在被 `include` 的文件之前

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