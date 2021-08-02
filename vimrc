
" require vim-plug
call plug#begin('~/.vim/plugged')

Plug 'lifepillar/vim-mucomplete'
Plug 'prabirshrestha/vim-lsp'

call plug#end()

if executable('svls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'svls',
        \ 'cmd': {server_info->['svls']},
        \ 'whitelist': ['systemverilog'],
        \ })
endif


set nowrap
set t_Co=256
set number
set relativenumber
set hlsearch
set cursorline
set hidden
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c
let g:mucomplete#completion_delay = 1

set completefunc=LanguageClient#complete
map S :wq<CR>
noremap z :close<CR>
imap jj <Esc> 

let g:LanguageClient_serverCommands = {
 \ 'rust': ['rust-analyzer'],
 \ }


" Edit vimrc
nnoremap cfge :e $MYVIMRC<CR>

" Reload vimrc
nnoremap cfgr :source $MYVIMRC<CR>
