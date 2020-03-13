#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/IR/CFG.h"
#include <set>
using namespace llvm;

namespace {
struct PassEraseDeadBlock: public FunctionPass 
{
    static char ID;
    PassEraseDeadBlock(): FunctionPass(ID) {}
    ~PassEraseDeadBlock() {}
    virtual bool runOnFunction(llvm::Function &F) override 
    {
        bool changed;   // 是否改变了目标 function
        std::set<BasicBlock*> visitedSet;
        std::set<BasicBlock*> unreachableSet;
        
        changed = false;
        // 从 EntryBlock 开始 dfs 整个函数内可以访问的 BaseBlock
        // 将已被访问过的 BaseBlock 存放在visitedSet中
        // df_ext_iterator<T, SetTy> df_ext_begin(const T& G, SetTy &S): dfs T 相关节点，并将 已访问 集存储在外部集 SetTy 中
        for(auto i = df_begin(&F.getEntryBlock()); i != df_end(&F.getEntryBlock()); i ++) {
            err
            visitedSet.insert(*i);
        }        
        // for (auto i = df_ext_begin<BasicBlock*, std::set<BasicBlock*>>(&F.getEntryBlock(), visitedSet), ed = df_ext_end<BasicBlock*, std::set<BasicBlock*>>(&F.getEntryBlock(), visitedSet); i != ed; i ++) {
        //     /* empty */
        // }
        // 遍历函数内所有BaseBlock，将不在vistitedSet中的BaseBlock添加到unreachableSet中
        for(BasicBlock & baseBlock : F) {
            if(visitedSet.find(&baseBlock) == visitedSet.end()) {
                unreachableSet.insert(& baseBlock);
            }
        }
        // 标记目标函数是否会被修改
        if (!unreachableSet.empty()) {
            changed = true;
        }
        for (BasicBlock *baseBlock : unreachableSet) {
            for (auto i = succ_begin(baseBlock); i != succ_end(baseBlock); i ++) {
                i -> removePredecessor(baseBlock);
            }
            baseBlock -> eraseFromParent();
        }
        
        return changed;
    }
};
}

char PassEraseDeadBlock::ID = 0;
static RegisterPass<PassEraseDeadBlock> X("EraseDeadBlock", "pass erase dead block", true, false);