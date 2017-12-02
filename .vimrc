" -- GENERAL
  set nocompatible
  set noswapfile
  set paste
  set autoread
  syntax on
  filetype plugin indent on
  set clipboard=unnamedplus
  set linebreak
  set wrap
  set splitbelow
  set splitright
  set expandtab
  set tabstop=4
  set shiftwidth=4

  " - Persistent undo
    set undodir=~/.vim/undodir
    set undofile
    set undolevels=1000
    set undoreload=10000
  " - Mouse
    set ttymouse=xterm2
    set mouse=a
  " - Encode
    set fileencoding=utf-8
    set encoding=utf-8
    set termencoding=utf-8
    "set keymap=ukrainian-jcukenwin
    set iminsert=0
    set imsearch=0 


" -- MAPS
  " - Panes
    let mapleader = ','
    let g:mapleader = ","
    noremap <leader>1 1gt
    noremap <leader>2 2gt
    noremap <leader>3 3gt
    noremap <leader>4 4gt
    noremap <leader>5 5gt
    noremap <leader>6 6gt
    noremap <leader>7 7gt
    noremap <leader>8 8gt
    noremap <leader>9 9gt
  " - Tabs
    nnoremap <C-t>     :tabnew<CR>
  " - Save file
    noremap <Leader>s :update<CR>


" -- PLUGIN CONFIGs
  " - FileTree
    map <C-n> :NERDTreeToggle<CR>
  " - Terraform
    "Syntastic Config
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    "(Optional)Remove Info(Preview) window
    set completeopt-=preview
    "(Optional)Hide Info(Preview) window after completions
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
    " (Optional) Enable terraform plan to be include in filter
    let g:syntastic_terraform_tffilter_plan = 1
  
  " - Airline
    let g:airline_powerline_fonts = 1
    "let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#xkblayout#enabled = 0

  " - Python-mode
    " Load pylint code plugin
    let g:pymode_lint = 1
    nnoremap <leader>p :PymodeLint<cr>
    
    " Switch pylint, pyflakes, pep8, mccabe code-checkers
    " Can have multiply values "pep8,pyflakes,mcccabe"
    let g:pymode_lint_checker = "pyflakes,pep8,mccabe"
    
    " Autoremove unused whitespaces
    let g:pymode_utils_whitespaces = 0
    
    " Enable python folding
    let g:pymode_folding = 1
    
    " Skip errors and warnings
    " E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and
    " etc
    "let g:pymode_lint_ignore = "E501"
    
    " Select errors and warnings
    " E.g. "E4,W"
    "let g:pymode_lint_select = ""
    
    " Check code every save
    let g:pymode_lint_write = 1
    
    " Place error signs
    let g:pymode_lint_signs = 1
    
    " Auto open cwindow if errors be finded
    let g:pymode_lint_cwindow = 0
    
    " Run linter on the fly
    let g:pymode_lint_onfly = 1
    
    " Auto fix vim python paths if virtualenv enabled
    let g:pymode_virtualenv = 1
    
    " Minimal height of pylint error window
    let g:pymode_lint_minheight = 3
    
    " Maximal height of pylint error window
    let g:pymode_lint_maxheight = 6
    
    " Set default pymode python indent options
    let g:pymode_options_indent = 1
    
    " Disable pymode python other options. XXX for disabling 'nowrap' option
    let g:pymode_options_other = 0
    
    " Enable pymode's custom syntax highlighting
    let g:pymode_syntax = 1
    
    " Enable all python highlightings
    let g:pymode_syntax_all = 1
    
    " Highlight "print" as function
    let g:pymode_syntax_print_as_function = 0
    
    " Highlight indentation errors
    let g:pymode_syntax_indent_errors = g:pymode_syntax_all
    
    " Highlight trailing spaces
    let g:pymode_syntax_space_errors = g:pymode_syntax_all
    
    " Highlight string formatting
    let g:pymode_syntax_string_formatting = g:pymode_syntax_all
    
    " Highlight str.format syntax
    let g:pymode_syntax_string_format = g:pymode_syntax_all
    
    " Highlight string.Template syntax
    let g:pymode_syntax_string_templates = g:pymode_syntax_all
    
    " Highlight doc-tests
    let g:pymode_syntax_doctests = g:pymode_syntax_all
    
    " Highlight builtin objects (__doc__, self, etc)
    let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
    
    " Highlight builtin functions
    let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all
    
    " Highlight exceptions
    let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
    
    " For fast machines
    let g:pymode_syntax_slow_sync = 0
    
    " DISABLE freezing
    let g:pymode_rope_lookup_project = 0
    let g:pymode_rope = 0



