# Top thing to do after install ubuntu 

* Update ubuntu `sudo apt update && sudo apt upgrade -y`

* Download [vscode](https://code.visualstudio.com/)

* Install vscode `sudo dpkg -i code*.deb`

* `sudo apt install ubuntu-restricted-extras -y` 

* Download [Cascadia Code](https://github.com/microsoft/cascadia-code/releases)

* Move font to ~/.fonts folder

* `sudo apt install git -y`

* Generate ssh [ssh keygen](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

* Add ssh key to github

* Clone this repo `git clone git@github.com:fadzrilizad/top.git`

* `sudo chmod +x install.sh`
 
* `./install.sh`

* Open nvim and `:PlugInstall`

## Optional 

* Install zsh & ohmyzsh 
```bash
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* Install emacs27
```bash
sudo add-apt-repository ppa:kelleyk/emacs -y
sudo apt update -y
sudo apt install emacs27 -y
```

* Install [doom emacs](https://github.com/hlissner/doom-emacs)

* Adding aliases in .bashrc or .zshrc
```bash
alias vim="nvim"
alias vimrc="cd ~/.config/nvim/"
alias cl="clear"
alias tm="tmux new -s a"
alias update="sudo apt update && sudo apt -y upgrade"
alias em="emacs"
```