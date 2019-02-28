#!/bin/bash
source /etc/bash_completion
mkdir /setup
cd /setup
git clone https://github.com/Machiry/llvmdocker.git llvmdocker
cd llvmdocker/dockerimages/setupscripts
python setup_llvm.py -o /tools/llvmdeps -b release_70
echo 'export LLVM_ROOT=/tools/llvmdeps/llvm/build' >> ~/.bashrc
echo 'export PATH=$LLVM_ROOT/bin:/tools/llvmdeps/sparse:$PATH' >> ~/.bashrc
export LLVM_ROOT=/tools/llvmdeps/llvm/build
export PATH=$LLVM_ROOT/bin:/tools/llvmdeps/sparse:$PATH
