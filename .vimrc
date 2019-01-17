

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim"
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'"


Plugin 'chun-yang/auto-pairs'
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
Plugin 'valloric/youcompleteme'
Plugin 'SirVer/ultisnips'
Bundle 'ervandew/supertab'
Plugin 'honza/vim-snippets'
Plugin 'luochen1990/rainbow'
Plugin 'alpertuna/vim-header'


"letM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"auto header configuration
let g:header_field_author = 'Jose Gonzalez'
let g:header_field_author_email = 'joseaugusto978@gmail.com'
let g:header_field_copyright = 'GNU AGPLv3'

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


nmap <F6> :NERDTreeToggle<CR>
 call vundle#end()            " required
 filetype plugin indent on    " required

