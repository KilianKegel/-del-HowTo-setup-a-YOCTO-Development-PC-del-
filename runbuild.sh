git clone -b dunfell git://git.yoctoproject.org/poky.git poky-dunfell
cd poky-dunfell
git checkout 5a63668dbbc410489ac6a88cb79e1a265cde77ac

git clone -b dunfell git://git.openembedded.org/meta-openembedded
cd meta-openembedded
git checkout cc6fc6b1641ab23089c1e3bba11e0c6394f0867c
cd ..

git clone -b dunfell https://github.com/meta-qt5/meta-qt5
cd meta-qt5
git checkout 0e7015f7a86dda995a39662edbb5c26da647c496
cd ..

git clone -b dunfell git://git.yoctoproject.org/meta-raspberrypi
cd meta-raspberrypi
git checkout 93c468ddb6915956b465d8570fa79cda5c2e2f34
cd ..

git clone -b dunfell git://git.yoctoproject.org/meta-security.git
cd meta-security
git checkout 982a29bbb7ef32475aea7c4bb56c620065a50927
cd ..

git clone -b dunfell https://github.com/jumpnow/meta-jumpnow
cd meta-jumpnow
git checkout d6ed30cca4f5d9c0244919e9cab8017dd90d781d
cd ..

cd ~
mkdir ~/rpi64
cd ~/rpi64
git clone -b dunfell git://github.com/jumpnow/meta-rpi64
cd meta-rpi64
git checkout 6787a11cfe91b6c6c8e3d95b9b85847f82286c75
cd ..

clear
ls -l
cd ~
source poky-dunfell/oe-init-build-env ~/rpi64/build

cd ~/rpi64

cp meta-rpi64/conf/local.conf.sample build/conf/local.conf
cp meta-rpi64/conf/bblayers.conf.sample build/conf/bblayers.conf

bitbake qt5-image