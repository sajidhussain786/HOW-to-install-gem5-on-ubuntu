# HOW-to-install-gem5-on-ubuntu
Execute only 5 commands and have gem5 ready. A very simple script to install gem5 on linux based system. I checked it with ubuntu 16.4 but it can work with any linux machine . --------------------------------------------------------------------------------------------

Execute the gem5_install.sh in sudo mode and have it all. 
----------------------------------------------------------------------------


Below is the discription of all the process
----------------------------------------------------------
Assuming you have a fresh Ubuntu 16.4 installed, and I assume you already understand what is the python script gem5.opt, gem5.debug, gem5.fast … etc if not you can easily visit the official website of Gem5 documentation http://m5sim.org/Documentation

$ sudo apt-get update; sudo apt-get upgrade

# installing the needed packages for Gem5 

sudo apt-get install swig gcc m4 python python-dev libgoogle-perftools-dev  g++  scons  mercurial  zlib1g-dev libgoogle-perftools-dev protobuf-compiler libprotobuf-dev build-essential 

# you can download the .tar.gz file and extract it but I prefer grabbing from the repo just in # case you needed to run $ hg pull to update the code or to commit

$ hg clone http://repo.gem5.org/gem5   # this is a developer version

$ cd gem5/

# Gem5 uses scons build system instead of make

$ scons build/ARM/gem5.opt

## To test the System Emulation mode you can run one of the programs shipped with Gem5
$ ./build/ARM/gem5.opt configs/example/se.py -c tests/test-progs/hello/bin/arm/linux/hel­lo



