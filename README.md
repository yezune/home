# User setting files like vim, tmux
## 0.Quick Start
```sh
curl https://raw.githubusercontent.com/yezune/home/main/install.sh | bash
```
## Or
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  && \
curl -L https://raw.githubusercontent.com/yezune/home/main/.vimrc > .vimrc  &&\
curl -L https://raw.githubusercontent.com/yezune/home/main/.tmux.conf > .tmux.conf
```
## 1.vim
File store related a VIM editor  stuffs like  .vimrc  and plugin manager setting

### Install vim-plug

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Install .vimrc file

```sh
curl -L https://raw.githubusercontent.com/yezune/home/main/.vimrc > .vimrc
```

## 2.tmux

```sh
curl -L https://raw.githubusercontent.com/yezune/home/main/.tmux.conf > .tmux.conf
```




