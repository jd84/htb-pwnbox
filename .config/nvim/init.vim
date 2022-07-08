set number
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4
syntax on

"Enable mouse click for nvim
set mouse=a
"Fix cursor replacement after closing nvim
set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

" Suspend with Ctrl+f
inoremap <C-f> :sus<cr>
vnoremap <C-f> :sus<cr>
nnoremap <C-f> :sus<cr>

" Jump to start and end of line using the home row keys
map H ^
map L $

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" Quick save
nmap <leader>w :w<CR>

"See invisible characters
set list listchars=tab:>\ ,trail:+,eol:$
