set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=a                 " full mouse control
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=90                   " set an 80 column border for good coding style

set nocompatible
syntax on
filetype plugin indent on

" toggle spelling
nnoremap <leader>s :set invspell<CR>

" color scheme
" colorscheme tir_black


" // GLOBAL CONFIG

" NERDTree
" autocmd VimEnter * NERDTree | wincmd p
nmap <F6> :NERDTreeToggle<CR>

" ZoomWin
" nunmap <C-w>o
" nnoremap <silent> <C-w>o :ZoomWin<CR>

" AirLine
let g:airline#extensions#tabline#enabled = 1 " smarttab
let g:airline_powerline_fonts = 1
" //


" // PLUGINGS
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" Plug 'airblade/vim-gitgutter'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'

Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/ZoomWin'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'martinda/Jenkinsfile-vim-syntax'

" GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'

" Python
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" 
" Plug 'ryanolsonx/vim-lsp-python'


  " UI related
  Plug 'chriskempson/base16-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Better Visual Guide
  Plug 'Yggdroot/indentLine'
  " syntax check
  Plug 'w0rp/ale'
  " Autocomplete
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-path'
  Plug 'ncm2/ncm2-jedi'
  " Formater
  Plug 'Chiel92/vim-autoformat'



" Initialize plugin system
call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
" Terraform
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1
call deoplete#initialize()


" Python
" if executable('pyls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'whitelist': ['python'],
"         \ })
" endif
" vim-autoformat
noremap <F3> :Autoformat<CR>
" NCM2
augroup NCM2
  autocmd!
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  " :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect
  " When the <Enter> key is pressed while the popup menu is visible, it only
  " hides the menu. Use this mapping to close the menu and also start a new line.
  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
  " uncomment this block if you use vimtex for LaTex
  " autocmd Filetype tex call ncm2#register_source({
  "           \ 'name': 'vimtex',
  "           \ 'priority': 8,
  "           \ 'scope': ['tex'],
  "           \ 'mark': 'tex',
  "           \ 'word_pattern': '\w+',
  "           \ 'complete_pattern': g:vimtex#re#ncm2,
  "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
  "           \ })
augroup END
" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let g:airline_powerline_fonts = 1
