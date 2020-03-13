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