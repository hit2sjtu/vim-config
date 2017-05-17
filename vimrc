set nocompatible              " be iMproved, required
filetype off                  " required

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
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

"Taglist
let Tlist_Exit_OnlyWindow=1

"Open TlistToggle using F2
map <silent> <F2> :TlistToggle<cr>

"Repalce all tabs using F3
map <F3> :retab <CR> :wq! <CR>

:colorscheme elflord "This is printer friendly

autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR

inoremap <F3> <C-O>za
nnoremap <F3> za
onoremap <F3> <C-C>za
vnoremap <F3> zf

execute pathogen#infect()
