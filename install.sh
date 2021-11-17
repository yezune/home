#!/usr/bin/env bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  && \
curl -L https://raw.githubusercontent.com/yezune/home/main/.vimrc > ~/.vimrc  &&\
curl -L https://raw.githubusercontent.com/yezune/home/main/.tmux.conf > ~/.tmux.conf
