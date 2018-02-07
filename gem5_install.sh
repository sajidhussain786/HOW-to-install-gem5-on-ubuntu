echo "" 
echo ""  
echo "" 
echo "--------------------------------------------------------"
echo "-  welcome to gem5 installing with SAJID HUSSAIN       -" 
echo "--------------------------------------------------------"
echo "" 
echo ""  
echo ""  
echo "cecking updates ---"
 
sudo apt-get update; sudo apt-get upgrade 
echo "some pre-req tools are required for gem5 buidling running"
echo "installing pre-req for gem5 "
#sudo apt-get install mercurial scons swig gcc m4 python python-dev libgoogle-perftools-dev g++  build-essential

sudo apt-get install swig gcc m4 python python-dev libgoogle-perftools-dev  g++  scons  mercurial  zlib1g-dev libgoogle-perftools-dev protobuf-compiler libprotobuf-dev build-essential
echo "----------------------congrats --------------------------------- " 
echo "-------pre-req tools installation done here --------------------" 
echo ""
echo ""
echo "NOW downloading gem5"
sudo hg clone http://repo.gem5.org/gem5   # this is a developer version
  cd gem5/
echo "----------------------------------------------------------"
echo ""
echo "Now building Gem5 (with ARM by default)"
echo ""
echo "be passion it will take time depending upon the performance of your machine"
echo ""

# Gem5 uses scons build system instead of make
sudo scons build/ARM/gem5.opt 

## To test the System Emulation mode you can run one of the programs shipped with Gem5
$ ./build/ARM/gem5.opt configs/example/se.py -c tests/test-progs/hello/bin/arm/linux/hel­lo
