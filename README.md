**一、安装zsh(MacOS默认使用zsh作为shell解释器)**

```shell
brew install zsh
```

ubuntu

```shell
sudo apt-get update
sudo apt-get install zsh
```

Arch

```shell
pacman -S zsh
```

设置zsh作为默认的shell

```shell
sudo chsh -s /bin/zsh
```

重启查看是否生效

```shell
echo $SHELL
```

**二、安装oh my zsh**

使用国内镜像（官方github经常失败）

```shell
wget https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh && chmod 777 install.sh && ./install.sh
```

**三、安装powerlever10k主题**

```shell
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

此时.oh my zsh文件夹下的custom有themes就是p10k，下载位置是zsh的custom的themes下

再编辑~/.zshrc把主题修改为p10k

```shell
ZSH_THEME="powerlevel10k/powerlevel10k”
```

重启终端：exit后输入zsh会进入p10k的设置界面，或者输入

```shell
p10k configure
```

下载我的p10k配置文件,覆盖~/.p10k.zsh文件

```shell
https://github.com/upupGuan/dotfiles.git
```

然后exit退出后重新进入zsh进入p10k配置文件，发现乱码，因为字体没有安装，

```
https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k
```

按照这里的要求，下载字体文件，并在自己的终端配置（注意哦，字体下载到本机电脑，不是服务器上）

再终端选择MesloLGS NF 这个字体（不同终端配置字体的方式不一样）

VSCODE是 设置 搜索font 选择终端，输入MesloLGS NF 

xshell是右键会话选择属性，里面的外观选择MesloLGS NF 字体



四、安装zsh插件

最常用的两款插件：

```
# zsh-autosuggestions自动提示插件
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting语法高亮插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

修改~/.zshrc

```shell
# 启用插件
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```









