" set runtimepath^=~/.vim runtimepath+=~/.vim/after
"    let &packpath = &runtimepath
"    source ~/.vimrc
"

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


Plug 'chun-yang/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'myhere/vim-nodejs-complete'
Plug 'mattn/emmet-vim'
Plug 'groenewege/vim-less'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'othree/html5.vim'
Plug 'klen/python-mode'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sjl/gundo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'thaerkh/vim-workspace'
Plug 'godlygeek/tabular'
Plug 'tibabit/vim-templates'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'ryanoasis/nerd-fonts', {'do': './install.sh Hack'}
Plug 'arakashic/chromatica.nvim'
Plug 'bfredl/nvim-miniyank'
Plug 'roxma/vim-tmux-clipboard'
Plug 'Yggdroot/indentLine'
" this plug in should be the last one to load
Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

"letM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" Header template info     
let g:tmpl_author_email = 'joseaugusto978@gmail.com'
let g:tmpl_author_name = 'Jose Gonzalez'
let g:tmpl_license = 'GNU AGPLv3'

set encoding=UTF-8
syntax  on
filetype plugin indent on
set autoread
set ignorecase
set showmatch
set ai
set si
set number
" Track the engine.

" Snippets are separated from the engine. Add this if you want them:

" the below  code section can be use as temple 
nmap <F6> :NERDTreeToggle<CR>
autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -o %:r % && ./%:r<CR>
filetype plugin indent on    " required

nnoremap tn :tabnew<Space>
let g:airline#extensions#tabline#enabled = 1
