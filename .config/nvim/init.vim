"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"    let &packpath = &runtimepath
"    source ~/.vimrc
"

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'chun-yang/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'mattn/emmet-vim'
Plug 'groenewege/vim-less'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'vifm/vifm.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tomtom/tcomment_vim'
Plug 'thaerkh/vim-workspace'
Plug 'godlygeek/tabular'
Plug 'ryanoasis/nerd-fonts', {'do': './install.sh Hack'}
Plug 'arakashic/chromatica.nvim'
Plug 'bfredl/nvim-miniyank'
Plug 'roxma/vim-tmux-clipboard'
Plug '907th/vim-auto-save'
Plug 'dense-analysis/ale'
Plug 'OmniSharp/omnisharp-vim'
" this plug in should be the last one to load
Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

"vim auto save
"let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
"letM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

set encoding=UTF-8
syntax  on
filetype plugin indent on
set autoread
set hlsearch
set ignorecase
set smartcase
set showmatch
set ai
set si
set number

" the below  code section can be use as temple 
autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -o %:r % && ./%:r<CR>
filetype plugin indent on    " required
nnoremap tn :tabnew<Space>
"makes go to file opne on and new tab
nnoremap gf <C-W>gf
vnoremap gf <C-W>gf

" Makes double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='angr'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" nerdtree settings
nmap <F6> :NERDTreeToggle<CR>
nnoremap nt :NERDTreeToggle<Enter>
" control p opens 
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
let g:user_emmet_leader_key=','

" Use the stdio version of OmniSharp-roslyn:
let g:OmniSharp_server_stdio = 1

" Use the HTTP version of OmniSharp-roslyn:
" let g:OmniSharp_server_stdio = 0

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}
let g:ale_sign_column_always = 1
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
