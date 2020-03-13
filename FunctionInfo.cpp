#include "llvm/Pass.h"
// #include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/SymbolTableListTraits.h"
#include "llvm/IR/Instruction.h"

#include <iostream>

using namespace llvm;

namespace {
  class FunctionInfo : public FunctionPass {
  public:
    static char ID;
    FunctionInfo() : FunctionPass(ID) { }
    ~FunctionInfo() { }


    void getAnalysisUsage(AnalysisUsage &AU) const override {
      AU.setPreservesAll();
    }


    bool doInitialization(Module &M) override {

      // outs() << "Name,\tArgs,\tCalls,\tBlocks,\tInsns\n";
      // outs() << M.getName() << '\t';

      return false;
    }

    // Print output for each function
    bool runOnFunction(Function &F) override {
      outs() << "name" << ",\t" << "args" << ",\t" << "calls" << ",\t" << "bbs" << ",\t" << "insts" << "\n";
      outs() << F.getName() << '\t';
      // outs() << F.getInstructionCount() << '\t';
      outs() << F.arg_size() << '\t';
      int inst_size = 0;
      int call_size = 0;
      for(Function::iterator b = F.begin(), be = F.end(); b != be; ++b){
         // BasicBlock* bb = dyn_cast<BasicBlock>(&*b);
         BasicBlock::InstListType &instlist = b->getInstList();

         for(BasicBlock::InstListType::iterator x = instlist.begin(); x != instlist.end(); x++){
            if(x->isFuncletPad())
              call_size++;
         }

         inst_size += instlist.size();

      } 
      outs() << call_size << '\t';
      outs() << F.getBasicBlockList().size() << '\t';
      outs() << inst_size << '\t';



      // // outs() << F.getNumParams() << '\t';
      // // outs() << F.getBasicBlockList().size() << '\t';
      // // outs() << F.getInstructionCount() << '\n';
      outs() << '\n';

      return false;
    }
  };
}

char FunctionInfo::ID = 0;
static RegisterPass<FunctionInfo> X("function-info", "Function Information", false, false);
