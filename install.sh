#!/usr/bin/env bash

# install basic app
function install() {
   
    echo "Install basic software? [Y/n]"
    read install 

    if [[ "$install" == "y" || "$install" == "Y" ]]
    then
        sudo apt install vim -y  
        sudo apt install neovim -y  
        sudo apt install tmux -y  
        sudo apt install curl -y  
        sudo apt install texinfo 
        sudo apt install build-essential -y
        sudo apt install -y gnutls-bin 
        sudo apt install -y libxpm-dev 
        sudo apt install -y libjpeg-dev
        sudo apt install -y libgif-dev 
        sudo apt install -y libtiff-dev
        sudo apt install -y gnutls-bin 
        sudo apt install -y libgnutls28-dev
        sudo apt install -y libtinfo-dev 
        sudo apt install autoconf -y
      
    fi 

    [[ "$install" == "n" && "$install" == "N" ]] && continue
}

# install dev setup 
function dev() {
   
    echo "install dev setup? [Y/n]"
    read setup

    if [[ "$setup" == "y" || "$setup" == "Y" ]]
    then
        echo "install vim plug" 
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'  

        echo "install nvm" 
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash 
        export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

        echo "install node" 
        nvm install --lts  
        npm install -g live-server 
    fi 

    [[ "$setup" == "n" && "$setup" == "N" ]] && continue
}

# install update config 
function config(){
    echo "Update config? [Y/n]"
    read config

    if [[ "$config" == "y" || "$config" == "Y" ]]
    then
        mkdir -p ~/.config/nvim
        cp init.vim ~/.config/nvim
        cp .tmux.conf ~/.tmux.conf

    fi

    [[ "$config" == "n" && "$config" == "N" ]] && continue

}

install || dev || config