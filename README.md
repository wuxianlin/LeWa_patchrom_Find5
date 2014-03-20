LeWa patchrom for OPPO Find 5
===========

开源说明
----------------

1.开源的代码由[wuxianlin](http://www.wuxianlin.tk)基于OPPO X909官方ColorOS 1024公测版本底包适配LeWa OS 5 jellybean42分支的代码

2.LeWa代码更新至2014.2.14第113期版本代码，后期可能不再更新维护

3.目前LeWa OS官网的[LeWa for Find 5](http://bbs.lewaos.com/down_detail.php?id=86)是以官方ColorOS更新的版本固件为底包适配的，故开源旧版本代码

4.如果你对本项目感兴趣或者有什么意见或建议,欢迎联系[wuxianlinwxl@gmail.com](mailto:wuxianlinwxl@gmail.com)

编译教程
---------------
1.安装Java SDK和Android SDK 附：[AOSP编译环境搭建](https://source.android.com/source/initializing.html) [一键搭建编译环境脚本](https://github.com/TeamRadium/tr-be-script)

2.安装[Git and Repo](https://source.android.com/source/downloading.html)

$ mkdir ~/bin

$ PATH=~/bin:$PATH

$ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

$ chmod a+x ~/bin/repo


3.同步代码

$ mkdir LEWA && cd LEWA

$ repo init -u git://github.com/LeWaCode/patchrom.git -b jellybean42

$ repo sync -j4

$ git clone https://github.com/wuxianlin/LeWa_patchrom_Find5 Find5

4.编译LeWa

$ source build/envsetup.sh && cd Find5

$ make fullota

5.输出目录out下的fullota.zip即为所得LeWa ROM

感谢
--------
感谢LeWa官方开源patchrom

感谢github上无私奉献代码的朋友

