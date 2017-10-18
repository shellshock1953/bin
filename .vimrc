" ------------------ GENERAL
set splitbelow
set splitright
set paste

" -- Mouse
set ttymouse=xterm2
set mouse=a


" ------------------ ENCODING
" -- UTF-8
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
" Ukrainian support
" set keymap=ukrainian-enhanced
set keymap=ukrainian-jcukenwin
" Default - latin layout
set iminsert=0
" Default - latin layout in search mode
set imsearch=0 


" ------------------ MAPS
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
map <C-n> :NERDTreeToggle<CR>



" ------------------ APT VIM
execute pathogen#infect()
call pathogen#helptags()
