
" infect -
execute pathogen#infect()

" general - 
syntax on
set number
filetype plugin on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftwidth=4
set expandtab


" vim omincomplete - 
set omnifunc=syntaxcomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" happy ending with end added - shift+enter
imap <S-CR> <CR><CR>end<Esc>-cc
