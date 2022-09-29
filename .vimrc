syntax on

set path+=**

" set wildmenu
set laststatus=2

"set termguicolors

set ts=4

" command! MakeTags !ctags -R .

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
Plug 'vim-airline/vim-airline-themes'

"Vim syntax for TOML.
Plug 'cespare/vim-toml', { 'branch': 'main'}

"Rust-lang Configuration
Plug 'rust-lang/rust.vim'

"vim color scheme
Plug 'morhetz/gruvbox'
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/edge'
"Plug 'sainnhe/everforest'
"Plug 'sainnhe/gruvbox-material'

"YOUCOMPLETEME: A CODE-COMPLETION ENGINE FOR VIM
Plug 'valloric/youcompleteme'

"Copilot: github source code assistance'
Plug 'github/copilot.vim'

" Initialize plugin system
call plug#end()

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'

set background=dark

autocmd VimEnter * colorscheme gruvbox

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#formatter='unique_tail_improved'


"ctrl + n 에 NERDTree 수행 커맨드 할당
map <c-n> :NERDTreeToggle<CR>

" vim 수행 시 파일 미지정 또는 디렉터리 지정 시 NERDTree 수행되도록 설정
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
