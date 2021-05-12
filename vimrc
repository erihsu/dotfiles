''Plug 'lifepillar/vim-mucomplete'


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
