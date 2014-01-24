
" infect -
execute pathogen#infect()

" general - 
" syntax on
set number
filetype plugin on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab


" vim omincomplete - 
set omnifunc=syntaxcomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" happy ending with end added - shift+enter
imap <S-CR> <CR><CR>end<Esc>-cc

" get better syntex for js libs - 
let g:used_javascript_libs = 'jquery'

" change leader - 
:let mapleader = ","

" no escape please - 
:imap jj <Esc>

" better looking indent lines - 
let g:indentLine_char = '|'

" closing paranthesis mappings - 
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap        {  {}<Left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
