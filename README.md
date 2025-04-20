# compile-python
This is a repo for compilling and installing Python from scratch


1) `sudo apt-get update`

2) `sudo apt-get install build-essential gdb lcov libbz2-dev libffi-dev libgdbm-dev liblzma-dev libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev lzma lzma-dev tk-dev uuid-dev zlib1g-dev`

3) go to python.org and get the latest prod release. I'll just use "Python 3.10.5" for now

4) Copy link address of "Gzipped source tarball"

5) wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz

6) `tar zxvf Python-3.10.5.tgz` to uncompress the file

7) `rm Python-3.10.5.tgz` since it's no longer needed

8) `cd Python-3.10.5`

9) `./configure --enable-optimizations` to configure optimizations, it creates the makefile

10) `make -j 4` I have 4 cores in the Github Codespace instance, to compile on all 8 cores

11) `sudo make altinstall`, after this - Python is installed

12) `python` - You'll see the system python is still there, not the one we just installed

13) `/usr/local/bin/python3.10` - will allow us to use it, however, on a new terminal session, it goes away

13b) To make it permanent on every new terminal session - `nano ~/.bashrc`

At the end of the bashrc file, add the below 

--------------------------------

#new python

alias python="/usr/local/bin/python3.10"

--------------------------------

14) `source ~/.bashrc` - to activate or refresh the bashrc

15) Type `python` again to confirm - voila!
