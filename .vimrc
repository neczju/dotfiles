" my minimal vimrc

" vim-plug
call plug#begin()

Plug 'yegappan/lsp'
Plug 'morhetz/gruvbox'

call plug#end()

" lsp config
let lspOpts = #{autoHighlightDiags: v:true, showDiagOnStatusLine: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [#{
	\	  name: 'clang',
	\	  filetype: ['c', 'cpp'],
	\	  path: '/usr/bin/clangd',
	\	  args: ['--background-index', '--clang-tidy']
	\ },
    \ #{
    \     name: 'pylsp',
    \     filetype: ['python'],
    \     path: '/usr/bin/pylsp',
    \     args: [],
    \ }]
autocmd User LspSetup call LspAddServer(lspServers)

" settings
syntax enable
filetype plugin indent on
set nocompatible
set number
set termguicolors
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest

" Colorscheme
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'bg0'
colorscheme gruvbox
