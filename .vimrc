set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Bundle 'scrooloose/syntastic'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline'

Plugin 'prettier/vim-prettier'

Plugin 'mattn/emmet-vim'

Plugin 'vim-python/python-syntax'

Plugin 'airblade/vim-gitgutter'

" Plugin 'dense-analysis/ale'

Plugin 'Chiel92/vim-autoformat'

Plugin 'morhetz/gruvbox'

Plugin 'arcticicestudio/nord-vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" To see docstrings in folded code
let g:SimpylFold_docstring_preview=1

" to call bg schemes
nnoremap <F5> :call togglebg#map() <cr>

" invoke terminal
nnoremap <c-d> :term <cr>

" <t-k>
nnoremap <c-k> :tabnext <cr>
nnoremap <c-l> :tabedit <cr>
nnoremap <c-j> :tabprevious <cr>

noremap <F3> :Autoformat<CR>

" colorscheme
set background=dark    " Setting dark mode
colorscheme nord

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


let g:user_emmet_leader_key='<C-J>'

let g:python_highlight_all = 1

syntax on
set splitbelow

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic for python3
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
