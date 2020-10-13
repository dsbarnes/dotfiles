" Plugins:
call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " LSP
  Plug 'sheerun/vim-polyglot' " Syntax, indent, some other things sometimes.
  Plug 'godlygeek/tabular' " Makes tables
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'morhetz/gruvbox'
call plug#end()


"Fake Fuzzy Find:
set path +=~/Documents/Dev/*


let g:coc_global_extensions = [
	\'coc-emmet',
	\'coc-json',
    \'coc-rls',
	\'coc-pyls',
	\]


" Use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" End codeblock for <Tab> completion


" Basics:
packadd vimball
set spelllang=en_us
set spell
filetype plugin on
syntax enable
syntax on
set spelllang=en_us
set nocompatible
set nobackup
set nowritebackup
set noswapfile


" Make_things_pretty:
colorscheme gruvbox
let g:netrw_liststyle = 3
set termguicolors
set scrolloff=15
set nowrap
set nohlsearch
set cursorline
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline 
set ruler
set number
"set relativenumber
set colorcolumn=80
set incsearch
set ignorecase
set cmdheight=2
set showtabline=2


" Tab_settings:
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


" Statusline:
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set laststatus=2
set statusline=
set statusline=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#GruvboxBlueSign#
set statusline+=\ [%f]
set statusline+=%m
set statusline+=%=
set statusline+=%#GruvboxYellowSign#
set statusline+=\ %y
set statusline+=\ [%l/%L:%c] 
set statusline+=\ [%p%%]


" Custom_commands:
:command -nargs=1 Vres :vertical-resize <args>
:command -nargs=0 Cheat :!VimCheatSheet.sh


" Custom_functions:
" NONE


" The_Forgotten:
" set showmatch
" set showcmd
" set autoindent
" set hidden
" set updatetime=300
