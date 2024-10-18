" Initialize vim-plug
call plug#begin('~/.config/nvim/plugged')

" List your plugins here
Plug 'tpope/vim-fugitive'  " Git integration
Plug 'preservim/nerdtree'  " File explorer
Plug 'vim-airline/vim-airline'  " Status line
Plug 'vim-airline/vim-airline-themes'  " Themes for vim-airline
Plug 'sheerun/vim-polyglot'  " Syntax highlighting for many languages
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " Catpuccin theme
Plug 'lervag/vimtex'  " LaTeX support
Plug 'SirVer/ultisnips'  " Snippets engine

" End vim-plug initialization
call plug#end()

" VimTeX configuration
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" UltiSnips configuration
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'mysnippets']

" Set the leader key to space

let mapleader = " "

" Enable syntax highlighing
syntax on

" Enable line numbers
set number

" Enable relative line numbers
set relativenumber

" Enable mouse support
set mouse=a

" Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Enable auto-indentation
set autoindent

" Enable smart indent
set smartindent

" Enable line wrapping
set wrap

" Set the color scheme
colorscheme catppuccin-mocha

" Enable filetype detection and plugin loading
filetype plugin on

" Enable status line
set laststatus=2

" Show command in the last line of the screen
set showcmd

" Enable incremental search
set incsearch

" Highlight search results
set hlsearch

" Enable case-insensitive search
set ignorecase

" Enable smart case search
set smartcase

" Enable cursor line highlighting
set cursorline

" Enable global clipboard
set clipboard+=unnamedplus

" Toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Compile LaTeX document
nnoremap <leader>c :VimtexCompile<CR>

" View PDF
nnoremap <leader>v :VimtexView<CR>

" Split window and open PDF
nnoremap <leader>s :vsplit<CR>:VimtexView<CR>
