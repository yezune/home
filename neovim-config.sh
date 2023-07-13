#!/usr/bin/env bash
sudo apt install powerline fonts-powerline
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
curl -fLo "${HOME}"/.config/nvim/init.vim --create-dirs \
    https://raw.githubusercontent.com/yezune/home/main/.config/nvim/init.vim
