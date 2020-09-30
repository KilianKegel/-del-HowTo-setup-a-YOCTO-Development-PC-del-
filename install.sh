sudo dpkg --configure -a
read -p "Choose NO!, disable DASH, enable BASH\n weiter mit beliebiger Taste"
sudo dpkg-reconfigure dash
sudo apt-get install software-properties-common -y
sudo apt-add-repository universe -y
sudo apt-get update -y
sudo apt-get install --fix-missing -y
sudo apt update -y
sudo apt-get upgrade -y
sudo apt-get install gawk -y
sudo apt-get install wget -y
sudo apt-get install git-core -y
sudo apt-get install diffstat -y
sudo apt-get install unzip -y
sudo apt-get install texinfo  -y
sudo apt-get install install-info info -y
sudo apt-get install gcc-multilib -y
sudo apt-get install build-essential -y
sudo apt-get install chrpath -y
sudo apt-get install socat -y
sudo apt-get install cpio -y
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
sudo apt-get install python3-pexpect -y
sudo apt-get install python3-git -y
sudo apt-get install python3-jinja2 -y
sudo apt-get install python3-distutils -y
sudo apt-get install xz-utils -y
sudo apt-get install debianutils -y
sudo apt-get install iputils-ping -y
sudo apt-get install libegl1-mesa -y
sudo apt-get install libsdl1.2-dev -y
sudo apt-get install pylint3 -y
sudo apt-get install xterm -y
sudo apt install chrpath -y
sudo apt install libncurses5-dev -y
sudo apt-get install python3-distutils -y
#
# get bison, flex, m4
#
sudo apt install bison -y
sudo apt install flex -y
sudo apt install m4 -y
sudo apt install autoconf -y
sudo apt install automake -y
sudo apt install libtool-bin -y
#
# get latest binutils containing the patch to support **Torito LINK**
#
git clone --recursive https://github.com/KilianKegel/binutils-for-Torito-C-Library.git
cd binutils-for-Torito-C-Library/binutils-2.35
chmod +x configure
sudo  ./configure --enable-targets=x86_64-linux,x86_64-pep
sudo make
