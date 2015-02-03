
" infect -
execute pathogen#infect()

" turn off vi compatible mode
set nocompatible

" general - 
syntax on
set number
filetype plugin on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" indent - 
set smartindent
set autoindent
filetype indent on


" vim omincomplete - 
set omnifunc=syntaxcomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" vim extensions - 
" 1. ctrlp - http://kien.github.io/ctrlp.vim/#installation
set runtimepath^=~/.vim/bundle/ctrlp.vim

" happy ending with end added - shift+enter
imap <S-CR> <CR><CR>end<Esc>-cc

" get better syntex for js libs - 
let g:used_javascript_libs = 'jquery'

" change leader - 
:let mapleader = ","

" no escape please - 
:imap jj <Esc>

" better looking indent lines - 
" let g:indentLine_char = '|'

" closing paranthesis mappings - 
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap        {  {}<Left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

" settings specific codeschool theme - 
" let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized
" set guifont=Monaco:h12
"let g:NERDTreeWinPos = "right"
"set guioptions-=T " Removes top toolbar
"set guioptions-=r " Removes right hand scroll bar
"set go-=L " Removes left hand scroll bar
"autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
":set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

" colorcolum settings to keep widths in check - 
" :set colorcolumn=80

" heighlight current line - 
" :set cursorline

" faster grep - 
set grepprg=ack-grep
