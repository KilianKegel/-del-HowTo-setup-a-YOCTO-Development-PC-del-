# HowTo-setup-a-YOCTO-Development-PC
#### 1. install a Ubuntu 20.04 64 PC<br>
   1. if running in a VM, disable SECURE BOOT
   2. get `Ubuntu-20.04-desktop-amd64.iso` from https://ubuntu.com/download/desktop/thank-you?version=20.04.1&architecture=amd64 <br>
   3. create a bootable USB stick from the ISO image: https://ubuntu.com/tutorials/create-a-usb-stick-on-windows#1-overview <br>

#### 2. change screen resolution
   * `sudo vi /etc/default/grub`
   * add/replace `GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:1920x1080"`
   * `sudo update-grub`

#### 3. enable source code updates
   * `sudo software-properties-gtk`
    
    ![software-properties-gtk.png](readme/software-properties-gtk.png)
      
#### 4. install YOCTO project in WSL / Ubuntu 20.04
   * download install script:<br>
     `wget https://raw.githubusercontent.com/KilianKegel/HowTo-setup-a-YOCTO-Development-PC/master/install.sh`
   * set x attribute: `chmod +x install.sh`
   * run `./install.sh`
    
    https://www.yoctoproject.org/docs/3.1.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
    
    
