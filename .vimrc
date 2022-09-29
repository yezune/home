syntax on

set path+=**

set wildmenu

set ts=4

command! MakeTags !ctags -R .

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

"Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'

"Vim syntax for TOML.
Plug 'cespare/vim-toml', { 'branch': 'main'}

"Rust-lang Configuration
Plug 'rust-lang/rust.vim'

"YOUCOMPLETEME: A CODE-COMPLETION ENGINE FOR VIM
Plug 'valloric/youcompleteme'

"Copilot: github source code assistance'
Plug 'github/copilot.vim'

" Initialize plugin system
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
