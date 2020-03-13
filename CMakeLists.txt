add_clang_executable(find-class-decls dfsAST.cpp)
target_link_libraries(find-class-decls clangTooling)