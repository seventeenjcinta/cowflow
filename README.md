#### 一些指令

生成LLVM 字节码文件
clang -O3 -emit-llvm test.c -c -o test.bc
llvm-dis-6.0 test2.b

生成LLVM 可视化字节码文件
clang -O3 -emit-llvm test.c -S -o test.ll

反汇编字节码文件
llvm-dis < test.bc | less

编译字节码为汇编文件
llc test.bc -o test.s

将.bc文件生成.ll文件：
llvm-dis  AAA.bc -o AAA.ll


clang -Xclang -ast-dump -fsyntax-only -fno-color-diagnostics test.cc 

usage: llvm-config <OPTION>... [<COMPONENT>...]

Get various configuration information needed to compile programs which use
LLVM.  Typically called from 'configure' scripts.  Examples:
  llvm-config --cxxflags
  llvm-config --ldflags
  llvm-config --libs engine bcreader scalaropts

Options:
  --version         Print LLVM version.
  --prefix          Print the installation prefix.
  --src-root        Print the source root LLVM was built from.
  --obj-root        Print the object root used to build LLVM.
  --bindir          Directory containing LLVM executables.
  --includedir      Directory containing LLVM headers.
  --libdir          Directory containing LLVM libraries.
  --cmakedir        Directory containing LLVM cmake modules.
  --cppflags        C preprocessor flags for files that include LLVM headers.
  --cflags          C compiler flags for files that include LLVM headers.
  --cxxflags        C++ compiler flags for files that include LLVM headers.
  --ldflags         Print Linker flags.
  --system-libs     System Libraries needed to link against LLVM components.
  --libs            Libraries needed to link against LLVM components.
  --libnames        Bare library names for in-tree builds.
  --libfiles        Fully qualified library filenames for makefile depends.
  --components      List of all possible components.
  --targets-built   List of all targets currently built.
  --host-target     Target triple used to configure LLVM.
  --build-mode      Print build mode of LLVM tree (e.g. Debug or Release).
  --assertion-mode  Print assertion mode of LLVM tree (ON or OFF).
  --build-system    Print the build system used to build LLVM (always cmake).
  --has-rtti        Print whether or not LLVM was built with rtti (YES or NO).
  --has-global-isel Print whether or not LLVM was built with global-isel support (ON or OFF).
  --shared-mode     Print how the provided components can be collectively linked (`shared` or `static`).
  --link-shared     Link the components as shared libraries.
  --link-static     Link the component libraries statically.
  --ignore-libllvm  Ignore libLLVM and link component libraries instead.
Typical components:
  all               All LLVM libraries (default).
  engine            Either a native JIT or a bitcode interpreter.