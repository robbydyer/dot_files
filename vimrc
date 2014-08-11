set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set smartcase
set incsearch
set showmatch
set paste
set hlsearch
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Go stuff
set rtp+=/usr/local/go/misc/vim

syntax on
filetype plugin indent on
nnoremap <LEADER>e :Errors<CR>
let g:puppet_module_detect=1
"set statusline+=%{SyntasticStatuslineFlag()}
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_jump=1
"let g:syntastic_auto_loc_list=1

" JSON
au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source /etc/vim/json.vim
