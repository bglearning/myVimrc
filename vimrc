
 "{{{ SETUP ======================= 
 
 " be iMproved, required 
  set nocompatible
  
 " With a map leader it's possible to do extra key combinations
  let mapleader = " "

 "======================= }}}

 "{{{ PLUGINS ======================= 
  filetype off	"required

 " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

 " let Vundle manage Vundle, required
  Plugin 'gmarik/Vundle.vim'

 " Colorschemes
  Plugin 'flazz/vim-colorschemes'

 " Precision colors for machines and people
  Plugin 'altercation/vim-colors-solarized'

 " Tree explorer plugin for vim
  Plugin 'scrooloose/nerdtree'

 " Full path fuzzy file, buffer, mru, tag ... finder
  Plugin 'kien/ctrlp.vim'

 " Quoting/parenthesizing made simple
  Plugin 'tpope/vim-surround'

 " A code-completion engine for Vim
  Plugin 'Valloric/YouCompleteMe'

 " All of your Plugins must be added before the following line
  call vundle#end()            " required

 "======================= }}}
 
 " Enable filetype detection and do language-dependent indenting
  filetype plugin indent on    " required

 "{{{ GENERAL  ======================= 

 " Show line numbers
  set number
 
 " Show cursor line
  set cursorline

 " Show the matching character
  set showmatch

 " Allow hidden buffers, don't limit to 1 file per window/split
  set hidden

 " Display command as you type
  set showcmd

 " Store a ton of history (default is 20)
  set history=1000

 " Set encoding to utf-8 (defualt is latin1)
  scriptencoding utf-8


 "======================= }}}
 
 "{{{ APPEARANCE ======================= 
 
 " Use 256 colors
  set t_Co=256
 " We love the dark
  set background=dark
  colorscheme xoria256
 
 " Switch syntax highlighting on
  syntax on
  syntax enable 
    

 "======================= }}}
 
 "{{{ FORMATTING ======================= 
 
 " Indent at the same level of the previous line
  set autoindent

 " TABs are spaces. Not TABS
  set expandtab

 " Number of visual spaces per TAB
  set tabstop=4

 " Number of spaces in tab when editing
  set softtabstop=4
 
 " Make backspace behave in a sane manner
  set backspace=indent,eol,start 

 " Do not wrap long lines 
  set nowrap 	

 " Put new vsplit window to the right of the current
  set splitright
 
 " Put new split window to the left of the current 
  set splitbelow

 " Set incremental search
  set incsearch

 "======================= }}}
 
 " Load skeleton codes
  autocmd bufnewfile *.cpp 0r /home/yokai/Templates/cpp.cpp 
  autocmd bufnewfile *.html 0r /home/yokai/Templates/html.html
 
 "{{{ MAPPINGS ======================= 
 
 
 " Mapping the escape key
  inoremap jk <Esc>
  inoremap JK <Esc>

 " Remap ` to ' 
   "By default: ' moves to the beginning of the line containing a mark
   "After remap: ` moves to the exact location of the mark 
  nnoremap ' `
  nnoremap ` '

  " Tab navigation made easier
  noremap <S-h> gT
  noremap <S-l> gt

 " Mappings to improve switching between splits
  nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split
  nnoremap <C-K> <C-W><C-K> "Ctrl-k to move down a split
  nnoremap <C-L> <C-W><C-L> "Ctrl-l to move down a split
  nnoremap <C-H> <C-W><C-H> "Ctrl-h to move down a split

 " NERDTree Mappings
  map <C-b> :NERDTreeToggle<CR>

 " Add a newline 
  nmap <leader>o o<Esc><cr>

 " Toggle highlighted search
  noremap <leader>h :set hlsearch! hlsearch?<CR> 

 " Laravel Mappings
  nmap <leader>lr :tabe app/Http/routes.php<CR>

 "======================= }}}
