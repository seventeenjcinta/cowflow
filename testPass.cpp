#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/SymbolTableListTraits.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
#define DEBUG_TYPE "test"

namespace {
    struct PassTest : public FunctionPass {
        static char ID;
        PassTest() : FunctionPass(ID) {}
        bool runOnFunction(Function &F) override {
            errs() << "run function:";
            errs() << F.getName() << "\n";

            return false;
        }
    };
}


char PassTest::ID = 0;
static RegisterPass<PassTest> X("passtest", "Hello World Pass");