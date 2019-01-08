set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim"
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'"


Plugin 'chun-yang/auto-pairs'
Plugin 'wolfgangmehner/c-support'
Plugin 'tpope/vim-surround'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'pangloss/vim-javascript'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'mattn/emmet-vim'
Plugin 'groenewege/vim-less'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'othree/html5.vim'
Plugin 'klen/python-mode'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'leafgarland/typescript-vim'
Plugin 'sirver/ultisnips'
Plugin 'valloric/youcompleteme'
Plugin 'honza/vim-snippets'



syntax on
filetype plugin indent on
set autoread
set ignorecase
set showmatch
set ai
set si
set number
" Track the engine.

" Snippets are separated from the engine. Add this if you want them:


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

 call vundle#end()            " required
 filetype plugin indent on    " required
