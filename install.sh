#!/usr/bin/env bash
sudo apt install powerline fonts-powerline
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  && \
curl -L https://raw.githubusercontent.com/yezune/home/main/.vimrc > ~/.vimrc  && \
curl -L https://raw.githubusercontent.com/yezune/home/main/.tmux.conf > ~/.tmux.conf && \
curl -L https://raw.githubusercontent.com/yezune/home/main/.config/nvim/init.vim ~/.config/nvim/init.vim
