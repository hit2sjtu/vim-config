filetype off                  " required
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator' ", { 'branch': 'stable'}

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:ycm_global_ycm_extra_conf = '/Users/qiangw/.vim/ycm_extra_conf.py'

set nu
"tags related
set tags=tags;
"filetype plugin on

:syntax enable

"OmniComplete
set nocp
filetype on
" set up the  ctags using below information
"    ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
"

"Color related
let g:molokai_original = 1

"Highlight space at end of line
autocmd Filetype * match Error /\s\+$/

"Tab related
:set tabstop=4
:set shiftwidth=4
:set expandtab
:retab

"search related
:set hlsearch

"Repalce all line ending spaces
autocmd FileType c,cpp,java,php,mm autocmd BufWritePre <buffer> :%s/\s\+$//e

"Taglist
let Tlist_Exit_OnlyWindow=1

"Open TlistToggle using F2
map <silent> <F2> :TlistToggle<cr>

"Repalce all tabs using F3
map <F3> :retab <CR> :wq! <CR>

:colorscheme elflord "This is printer friendly

autocmd Syntax c,cpp,cc,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,cc,vim,xml,html,xhtml,perl normal zR

inoremap <F3> <C-O>za
nnoremap <F3> za
onoremap <F3> <C-C>za
vnoremap <F3> zf

execute pathogen#infect()

:hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
:hi TabLine ctermfg=Blue ctermbg=Yellow
:hi TabLineSel ctermfg=Red ctermbg=Yellow
